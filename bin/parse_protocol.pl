#!/usr/bin/perl

my %global ;

use Getopt::Long ;
&GetOptions (
             'verbose' => \$global{opts}{verbose} ,
             'skiptxt' => \$global{opts}{skiptxt} ,
             'help' => \$global{opts}{help} ) or &print_help ;

sub print_help {
   print "Possible options:\n" ;
   print "\n" ;
   print "  -v[erbose]: be more verbose\n" ;
   print "  -s[kiptxt]: skip converting pdf to txt\n" ;
   print "  -h[elp]: this message\n" ;
   print "\n" ;

   exit 1 ;
}

&print_help if $global{opts}{help} ;

use Data::Dumper ;
$Data::Dumper::Sortkeys = 1 ; # Sort the keys in the output
$Data::Dumper::Deepcopy = 1 ; # Enable deep copies of structures
$Data::Dumper::Indent = 1 ;   # Output in a reasonable style (but no array indexes)

use lib "data" ;

our %json ;

# Helper function needed for Velbus_data_protocol_memory.pm
# This is copied from velserver/lib/Velbus/Velbus_helper.pm
# Needed in Velbus_data_protocol_memory
sub hex_to_dec {
   my $hex = $_[0] ;
   return hex ($hex) ;
}
sub dec_to_4hex {
   my $dec = $_[0] ;
   return sprintf ("%04X",$dec) ;
}
# Cleanup text
sub clean () {
   my $text = $_[0] ;
   chomp $text ;
   $text =~ s/^ +//g ;
   $text =~ s/ +$//g ;
   $text =~ s/‘//g ;
   $text =~ s/’//g ;
   return $text ;
}

use Hash::Merge qw( merge );
Hash::Merge::set_behavior('RIGHT_PRECEDENT');
use JSON ;

# Add a version to the json
my  ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime() ;
$year = $year+1900 ;
$mon += 1 ;
$mon  = "0" . $mon  if $mon  < 10 ;
$mday = "0" . $mday if $mday < 10 ;
$json{Version} = "$year$mon$mday" ;

`mkdir -p txt` ;

if ( ! $global{opts}{skiptxt} ) {
   print "Convert pdf files to txt\n" ;
   # Convert the pdf's to text
   foreach my $pdf (sort `ls protocol*.pdf`) {
      chomp $pdf ;

      # skip pdf's that are not protocol files
      next if $pdf eq "protocol_vmb1rs.pdf" ;
      next if $pdf eq "protocol_vmb1usb.pdf" ;
      next if $pdf eq "protocol_vmb4pd_ir.pdf" ;
      next if $pdf eq "protocol_vmb4pd_ir_hexcodes.pdf" ;
      next if $pdf eq "protocol_vmbgpod_ir.pdf" ;
      next if $pdf eq "protocol_vmbgpod_ir_hexcodes.pdf" ;
      next if $pdf eq "protocol_vmbrsusb.pdf" ;

      # Skip some duplicate protocol files
      next if $pdf eq "protocol_vmb1tcw.pdf" ; # This is the same as protocol_vmb1tc.pdf
      next if $pdf eq "protocol_vmb1tsw.pdf" ; # This is the same as protocol_vmb1ts.pdf

      my $txt = $pdf ;
      $txt =~ s/\.pdf/.txt/g ;
      print "   - pdftotext -layout $pdf txt/$txt\n" if defined $global{opts}{verbose} ;
      `pdftotext -layout $pdf txt/$txt` ;
   }
}

print "\n" ;
print "Read txt files\n" ;

my %file ; # Contains all raw info read from the files

# Loop all files and process the raw input.
foreach my $file (sort `ls txt/protocol*.txt`) {
   chomp $file ;
   next if $file eq "txt/protocol_vmbelo.txt" ; # New file is txt/protocol_vmbelo_vmbelo_20.txt

   print "   - $file\n" if defined $global{opts}{verbose} ;

   open (FILE,"<$file") ;
   my @file = <FILE> ;
   close FILE ;

   $file =~ s/txt\/// ;  # Remove the starting txt/ from file filename

   # First line(s) of the file is the type of the module
   my $Module = &clean (shift @file) ;
   if ( $Module eq "VMBGP1" ) { # For VMBGP1, VMBGP2 and VMBGP4: the text is split on 3 lines
      shift @file ; # VMBGP2
      shift @file ; # VMBGP4
   } elsif ( $Module eq "VMBEL1" ) { # For VMBEL1, VMBEL2 and VMBEL4: the text is split on 3 lines
      shift @file ; # VMBEL2
      shift @file ; # VMBEL4
   } elsif ( $Module eq "VMBGP1-2" ) { # For VMBGP1-2, VMBGP2-3 and VMBGP4-2: the text is split on 3 lines
      shift @file ; # VMBGP2-2
      shift @file ; # VMBGP4-2
   } elsif ( $Module eq "VMBGPO" ) { # For VMBGPO and VMBGPTC: the text is split on 3 lines
      shift @file ; # &
      shift @file ; # VMBGPTC
   } elsif ( $Module eq "VMBSIG" ) { # For VMBSIG, VMBUSBIP and VMCM3
      shift @file ; # VMBUSBIP
      shift @file ; # VMCM3
   }
   $file{PerFile}{$file}{Info}{Module} = $Module ;

   # Second last line can be used to filter out the edition of the file
   &clean (pop @file) ;
   $file{PerFile}{$file}{Info}{Edition} = &clean (pop @file) ;
   if ( $file{PerFile}{$file}{Info}{Edition} =~ /(edition \d+ _ rev\d+)/ ) {
      $file{PerFile}{$file}{Info}{Edition} = $1 ;
   } elsif ( $file{PerFile}{$file}{Info}{Edition} =~ /(edition \d+)/ ) {
      $file{PerFile}{$file}{Info}{Edition} = $1 ;
   } elsif ( $file{PerFile}{$file}{Info}{Edition} =~ /(version \d+)/ ) {
      $file{PerFile}{$file}{Info}{Edition} = $1 ;
   } else {
      $file{PerFile}{$file}{Info}{Edition} = "" ;
   }

   # Second and optional the third line contains information about the module
   $file{PerFile}{$file}{Info}{ModuleText}  = &clean (shift @file) . " " ;
   $file{PerFile}{$file}{Info}{ModuleText} .= &clean (shift @file) ;
   $file{PerFile}{$file}{Info}{ModuleText} =~ s/PROTOCOL//g ; # Clean op some of the text
   $file{PerFile}{$file}{Info}{ModuleText} =~ s/for ?VELBUS ?system//ig ; # Clean op some of the text
   $file{PerFile}{$file}{Info}{ModuleText} =~ s/for ?VELBUS//ig ; # Clean op some of the text
   $file{PerFile}{$file}{Info}{ModuleText} =~ s/ +$//g ; # Clean op some of the text

   my $counter = 0 ; #  Counter will be incremented per found message

   my $previousline ;

   foreach my $line (@file) {
      chomp $line ;
      next if $line eq "" ; # Skip empty lines

      $line =~ s///g ; # Removing new page marker

      $line =~ s/^\s+//g ; # Remove spaces at start of line
      $line =~ s/\s+$//g ; # Remove spaces at end of line
      $line =~ s/\s+=\s+/=/g ; # Remove spaces around =

      # The page footer contains the text 'PROTOCOL –'.
      # The page footer contains some information about the version of the document
      if ( $line =~ /PROTOCOL –/ ) {
         if ( !defined $file{PerFile}{$file}{Info}{Version} ) {
            $file{PerFile}{$file}{Info}{Version} = &clean ($line) ;
         }
         next ;
      }

      my @split = split "=", $line ;
      # Priority of the message
      if ( $split[0] eq "SID10-SID9" ) {
         if ( $split[1] =~ /\((.+ priority)\)/ ) {
            $counter ++ ; # Incrementing the message counter
            $file{PerFile}{$file}{Messages}{$counter}{Prio} = $1 ;

            # The previous line is the tekst that belongs to this message
            $previousline =~ s/\(build\d+ or higher\)// ; # Filter out some unwanted text
            $previousline =~ s/\(build \d+ or higher\)// ; # Filter out some unwanted text
            $file{PerFile}{$file}{Messages}{$counter}{Info} = &clean($previousline) ;

         } else {
            print "Error: SID10-SID9 not correctly parsed: $line\n" ;
         }

      # Filtering out the address
      } elsif ( $split[0] eq "SID8...SID1" ) {
         $file{PerFile}{$file}{Messages}{$counter}{MessageAddress} .= $split[1] ;

      # Info about RTR in the message
      } elsif ( $split[0] eq "RTR" ) {
         $file{PerFile}{$file}{Messages}{$counter}{RTR} = $split[1] ;

      # Info about the databytes in the message
      } elsif ( $split[0] =~ /^DATABYTE/ ) {
         $file{PerFile}{$file}{Messages}{$counter}{DATABYTE} .= $line . "\n" ;

      } elsif ( $line =~ /Memory map:/i or
                $line =~ /Memory map build/i ) {
         last ;

      } else {
         $previousline = $line ;
      }
   }
}

print "\n" ;
print "Parse the data (1/2)\n" ;

my %data ; # Contains al parsed data

# Loop all the data we found in the files
foreach my $file (sort keys(%{$file{PerFile}})) {
   print "   - $file\n" if defined $global{opts}{verbose} ;
   my $Module = $file{PerFile}{$file}{Info}{Module} ; # Handier var

   # Make sure we see each ModuleType only once
   if ( defined $file{PerType}{$Module} ) {
      print "Error: file $file: We already had type $Module in file $file{PerType}{$Module}{File}\n" ;
      next ;
   } else {
      $file{PerType}{$Module}{File} = $file ; # Remember that we have seen the module
   }

   # Loop all the messages
   foreach my $counter (sort keys (%{$file{PerFile}{$file}{Messages}}) ) {
      # We need at least an address and text for each message
      if ( defined $file{PerFile}{$file}{Messages}{$counter}{MessageAddress} and
           defined $file{PerFile}{$file}{Messages}{$counter}{Info} ) {

         my $MessageAddress = $file{PerFile}{$file}{Messages}{$counter}{MessageAddress} ; # Handier var
         my $Info           = $file{PerFile}{$file}{Messages}{$counter}{Info} ;           # Handier var

         # Parse the info in $MessageAddress to find the type of address: broadcast, local or remote
         my $MessageAddressType ;
         if ( $MessageAddress eq 'H’00’' ) {
              $MessageAddressType = "broadcast" ;
         } elsif ( $MessageAddress =~ /^Address of the module/i or
                   $MessageAddress =~ /^Address set by hex switches/i or
                   $MessageAddress =~ /^Module Address/i or
                   $MessageAddress =~ /^Current module Address/i or
                   $MessageAddress =~ /^Program location Address/i or
                   $MessageAddress =~ /^Channel button address/i or
                   $MessageAddress =~ /Subaddress/i ) {
            $MessageAddressType = "local" ;
         } else {
            $MessageAddressType = "remote" ;
         }
         $file{PerFile}{$file}{Messages}{$counter}{MessageAddressType} = $MessageAddressType ; # Remember MessageAddressType

         # Remember the messages per MessageAddressType (broadcast, local of remote)
         # Can be used to check if the MessageAddressType is correct detected
         $file{PerMessageAddressTypeDebug}{$MessageAddressType}{$MessageAddress}{$file} .= $counter . " " ;

         $file{PerFile}{$file}{Messages}{$counter}{Info} =~ s/ \(Build.+ or higher\)//g ; # Filter out some unwanted text

         # Parse the Info to determine if the message is a message or a command and is it receive or transmit
         # "... command received:" The blind module can receive the following commands
         $file{PerFile}{$file}{Messages}{$counter}{Info} =~ s/://g ;
         #if (  $file{PerFile}{$file}{Messages}{$counter}{Info} =~ s/(.+) command received/$1/g ) {
         #   $MessageType = "ReceiveCommand" ;
         ## "... received:" The blind module can transmit the following messages
         #} elsif (  $file{PerFile}{$file}{Messages}{$counter}{Info} =~ s/(.+) received/$1/g ) {
         #   $MessageType = "ReceiveMessage" ;
         ## "Transmit: ... :" The blind module can transmit the following commands
         #} elsif (  $file{PerFile}{$file}{Messages}{$counter}{Info} =~ s/Transmit (.+)/$1/g )  {
         #   $MessageType = "TransmitCommand" ;
         ## "Transmits ... :" The blind module can transmit the following messages
         #} elsif (  $file{PerFile}{$file}{Messages}{$counter}{Info} =~ s/(Transmits .+)/$1/g )  {
         #   $MessageType = "TransmitMessage" ;
         #} else {
         #   print "REST $file{PerFile}{$file}{Messages}{$counter}{Info}\n" ;
         #}
         #$file{PerFile}{$file}{Messages}{$counter}{MessageType} = $MessageType if defined $MessageType ; # Remember MessageType

         # Priority....
         if ( $file{PerFile}{$file}{Messages}{$counter}{Prio} =~ /high/i ) {
            $file{PerFile}{$file}{Messages}{$counter}{Prio} = "High"
         } else {
            $file{PerFile}{$file}{Messages}{$counter}{Prio} = "Low"
         }

         # Parse the DATABYTE information
         foreach my $line (split "\n", $file{PerFile}{$file}{Messages}{$counter}{DATABYTE} ) {
            # First databyte contains the type of message
            if ( $line =~ /DATABYTE1/ ) {
               if ( $line =~ /DATABYTE1\d/) {

               } elsif ( $line =~ /DATABYTE1=(.+) \(H’(..)’\)/ or
                    $line =~ /DATABYTE1 (.+) \(H’(..)’\)/ or
                    $line =~ /DATABYTE1=(.+) \(0x(.+)\)/ or
                    $line =~ /DATABYTE1=(COMMAND_CANCEL_INHIBIT) \(0(17)\)/) {
                  my $CommandText = $1 ;
                  my $Command  = $2 ;
                  # Some text corrections so we have the same text for the different modules
                  $CommandText = "COMMAND_BUS_ERROR_COUNTER_STATUS_REQUEST" if $CommandText eq "COMMAND_BUS_ERROR_CONTER_STATUS_REQUEST" ;
                  $CommandText = "COMMAND_PUSH_BUTTON_STATUS"               if $CommandText eq "COMMAND_PUSHBUTTON_STATUS" ;
                  $CommandText = "COMMAND_MODULETYPE"                       if $CommandText eq "COMMAND_MODULE_TYPE" ;
                  $CommandText = "COMMAND_REALTIME_CLOCK_STATUS"            if $CommandText eq "COMMAND_SET_REALTIME_CLOCK" ;

                  $file{PerFile}{$file}{Messages}{$counter}{CommandText} = $CommandText ;
                  $file{PerFile}{$file}{Messages}{$counter}{Command}  = $Command ;

                  # Remember the message per AdressType
                  $file{PerMessageAddressType}{$MessageAddressType}{$file} .= $counter . " " ;

                  # Remember per file the $Command. We use this to quickly find message 'FF'.
                  # We need to make sure that the 'FF' message is for the local module and not for connected sensors
                  if ( $MessageAddressType eq "local" ) {
                     $file{PerCommand}{$file}{$Command} .= $counter . " " ;
                  }

               } elsif ( $line =~ /SOF-SID10/ ) {
                  # Ignore
                  #  DATABYTE1: <SOF-SID10...SID0-RTR-IDE-r0-DLC3...0-DATABYTE1...DATABYTEn-CRC14...CRC1-CRCDEL-ACK-ACKDEL-
               } else {
                  print "Error: DATABYTE1 format not recognized: $line\n" ;
               }
            } else {
               if ( $line =~ /DATABYTE(\d)=(.+)/ ) {
                  my $DATABYTE = $1 ;
                  $file{PerFile}{$file}{Messages}{$counter}{byte}{$DATABYTE}{text} = $2 ;
                  if ( $line =~ /100%/ ) {
                     $file{PerFile}{$file}{Messages}{$counter}{byte}{$DATABYTE}{type} = "%" ;
                  }
               }
            }
         }
      } else {
         # Some error messages
         if ( ! defined $file{PerFile}{$file}{Messages}{$counter}{MessageAddress} ) {
            print "Error: file $file, MessageAddress missing for $counter\n" ;
         }
         if ( ! defined $file{PerFile}{$file}{Messages}{$counter}{Info} ) {
            print "Error: file $file, Info missing for $counter\n" ;
         }
         print Dumper \%{$file{PerFile}{$file}{Messages}{$counter}}
      }
   }
}

print "\n" ;
print "Parse the data (2/2)\n" ;

# Loop all the data we found in the files a second time.
# We search for Message FF to find out the ModuleType.
# This time we will sort the data per Command. We do this to filter out the broadcast messages.
`mkdir -p out` ;

foreach my $file (sort keys(%{$file{PerFile}})) {
   print "   - $file\n" if defined $global{opts}{verbose} ;

   my $Module = $file{PerFile}{$file}{Info}{Module} ; # Handier var
   my $ModuleType ;

   # Parse Command FF
   my %ModuleType ;
   if ( defined $file{PerCommand}{$file}{'FF'} ) {
      my @counter = split " ", $file{PerCommand}{$file}{'FF'} ;
      my $counter = $counter[-1] ; # Take the last occurence of the command, this should be the one for the most recent firmware
      
      if ( defined $file{PerFile}{$file}{Messages}{$counter} ) {
         # filter out all possible formats for DATABYTE2
         # VMBGP1 type (H’3A’) VMBGP2 type (H’3B’) VMBGP4 type (H’3C’)
         # VMBSIG type (H’39’) / VMBUSBIP type (H’40’) / VMCM3 type (H’3F’)
         if ( $file{PerFile}{$file}{Messages}{$counter}{byte}{'2'}{text} =~ /(\S+) type \(H’(\S\S)’\) (\S+) type \(H’(\S\S)’\) (\S+) type \(H’(\S\S)’\)/ or
                   $file{PerFile}{$file}{Messages}{$counter}{byte}{'2'}{text} =~ /(\S+) type \(H’(\S\S)’\) \/ (\S+) type \(H’(\S\S)’\) \/ (\S+) type \(H’(\S\S)’\)/ ) {
            $ModuleType{$2} = $1 ;
            $ModuleType{$4} = $3 ;
            $ModuleType{$6} = $5 ;
         
         } elsif ( $file{PerFile}{$file}{Messages}{$counter}{byte}{'2'}{text} =~ /^NODETYPE_(\S+) \(H’(\S\S)’\)$/i or
              $file{PerFile}{$file}{Messages}{$counter}{byte}{'2'}{text} =~ /^(\S+)_MODULE \(H’(\S\S)’\)$/i or
              $file{PerFile}{$file}{Messages}{$counter}{byte}{'2'}{text} =~ /^(\S+)_TYPE \(H’(\S\S)’\)$/i or
              $file{PerFile}{$file}{Messages}{$counter}{byte}{'2'}{text} =~ /^(\S+)_TYPE \(0x(\S\S)\)$/i or
              $file{PerFile}{$file}{Messages}{$counter}{byte}{'2'}{text} =~ /^(\S+) TYPE \(H’(\S\S)’\)$/i or
              $file{PerFile}{$file}{Messages}{$counter}{byte}{'2'}{text} =~ /^(\S+) TYPE \(0x(\S\S)\)$/i ) {
            $ModuleType{$2} = $Module ;
                   
         } else {
            if ( $file{PerFile}{$file}{Messages}{$counter}{byte}{'2'}{text} =~ /^type \((.+)\)/ ) {
               my $type = $1 ;
               $type =~ s/ //g ;
               $type =~ s/\//;/g ;
               foreach $ele (split ";", $type) {
                  if ( $ele =~ /^0x(\S\S)=(\S+)/ ) {
                     $ModuleType{$1} = $2 ;
                  } else {
                     print "ERROR command FF not parsed: $ele\n" ;
                  }
               }
            } else {
               print "ERROR command FF not parsed: $file{PerFile}{$file}{Messages}{$counter}{byte}{'2'}{text}\n" ;
            }
         }

			if ( %ModuleType ) {
				# Take the first ModuleType as base module
				my @ModuleType = sort keys %ModuleType ;
				$ModuleType = shift @ModuleType ;

				# If there is more then 1 modupe type, remember this
			   if ( @ModuleType ) {
			   	foreach my $ModuleTypeLoop (@ModuleType) {
						$file{ModuleTypes}{$ModuleType}{SameModule}{$ModuleTypeLoop} = $ModuleType{$ModuleTypeLoop} ;
			   	}
			   }
				# We  have to force a copy from 1E to 1F and 20 for VMBGP1 because that info is missing in the protocol file
				if ( $ModuleType eq "1E" ) {
					$file{ModuleTypes}{'1E'}{SameModule}{'1F'} = "VMBGP2" ;
					$file{ModuleTypes}{'1E'}{SameModule}{'20'} = "VMBGP4" ;
				}

            if ( defined $file{PerType}{$ModuleType} ) {
               print "Error: we have ModuleType=$ModuleType for $file, but we already have that ModuleType in $file{PerType}{$ModuleType}!\n" ;
               next ;
            }
            $file{PerType}{$ModuleType} = $file ; # Remember all the Module Types
            $file{PerFile}{$file}{Info}{ModuleType} = join " ", @ModuleType ; # Remember the Module Type(s) per file

            # Step 1: Search for extra info in the FF message
            if ( defined $file{PerFile}{$file}{Messages}{$counter}{byte} ) {
               # For VMB1TSW (0C) this is wrong in the protocol files
               if ( $ModuleType eq "0C" ) {
                  $file{ModuleTypes}{$ModuleType}{Messages}{FF}{Data}{SerialHigh} = "4" ;
                  $file{ModuleTypes}{$ModuleType}{Messages}{FF}{Data}{SerialLow}  = "5" ;
                  $file{ModuleTypes}{$ModuleType}{Messages}{FF}{Data}{MemoryMap}  = "6" ;
                  $file{ModuleTypes}{$ModuleType}{Messages}{FF}{Data}{BuildYear}  = "7" ;
                  $file{ModuleTypes}{$ModuleType}{Messages}{FF}{Data}{BuildWeek}  = "8" ;

               } else {
                  foreach my $DATABYTE (sort keys %{$file{PerFile}{$file}{Messages}{$counter}{byte}}) {
                     next if $DATABYTE eq "2" ;
                     if ( $file{PerFile}{$file}{Messages}{$counter}{byte}{$DATABYTE}{text} =~ /Memorymap version/ or
                          $file{PerFile}{$file}{Messages}{$counter}{byte}{$DATABYTE}{text} =~ /Memory map version/ ) {
                        $file{ModuleTypes}{$ModuleType}{Messages}{FF}{Data}{MemoryMap} = $DATABYTE ;
                     } elsif ( $file{PerFile}{$file}{Messages}{$counter}{byte}{$DATABYTE}{text} =~ /High byte of serial number/ or
                               $file{PerFile}{$file}{Messages}{$counter}{byte}{$DATABYTE}{text} =~ /Serial number high/ ) {
                        $file{ModuleTypes}{$ModuleType}{Messages}{FF}{Data}{SerialHigh} = $DATABYTE ;
                     } elsif ( $file{PerFile}{$file}{Messages}{$counter}{byte}{$DATABYTE}{text} =~ /Low byte of serial number/ or
                               $file{PerFile}{$file}{Messages}{$counter}{byte}{$DATABYTE}{text} =~ /Serial number low/ ) {
                        $file{ModuleTypes}{$ModuleType}{Messages}{FF}{Data}{SerialLow} = $DATABYTE ;
                     } elsif ( $file{PerFile}{$file}{Messages}{$counter}{byte}{$DATABYTE}{text} =~ /Build year/i ) {
                        $file{ModuleTypes}{$ModuleType}{Messages}{FF}{Data}{BuildYear} = $DATABYTE ;
                     } elsif ( $file{PerFile}{$file}{Messages}{$counter}{byte}{$DATABYTE}{text} =~ /Build week/i ) {
                        $file{ModuleTypes}{$ModuleType}{Messages}{FF}{Data}{BuildWeek} = $DATABYTE ;
                     } elsif ( $file{PerFile}{$file}{Messages}{$counter}{byte}{$DATABYTE}{text} =~ /don’t care/i ) {
                     } else {
                        #print "Warning: DATABYTE=$DATABYTE = \"$file{PerFile}{$file}{Messages}{$counter}{byte}{$DATABYTE}{text}\" in $file\n" ;
                     }
                  }
               }
            }

            # Step 2: Save relevant data
            $file{ModuleTypes}{$ModuleType}{File}    = $file ;
            $file{ModuleTypes}{$ModuleType}{Type}    = $Module ;
            $file{ModuleTypes}{$ModuleType}{Info}    = $file{PerFile}{$file}{Info}{ModuleText} ;
            $file{ModuleTypes}{$ModuleType}{Version} = $file{PerFile}{$file}{Info}{Edition} ;

			}
      } else {
         print "ERROR command FF: $counter not found\n" ;
      }
   } else {
      print "ERROR: no message FF found in $file\n" ;
   }

   next if ! defined $ModuleType ; # We need a module type!

   # Parse Command F0 to get all the channels that will response to a name request
   if ( defined $file{PerCommand}{$file}{'F0'} ) {
      my @counter = split " ", $file{PerCommand}{$file}{'F0'} ;
      my $counter = $counter[-1] ; # Take the last occurence of the command, this should be the one for the most recent firmware

      if ( defined $file{PerFile}{$file}{Messages}{$counter} ) {
         # filter out all possible formats for DATABYTE2
         if ( defined $file{PerFile}{$file}{Messages}{$counter}{byte}{'2'}{text} ) {
            my $text = $file{PerFile}{$file}{Messages}{$counter}{byte}{'2'}{text} ;

            #print "$ModuleType  $text\n" ;
            #
            # VMBKP       42: channel number 1…8
            # VMBLCDWB    13: channel number (1…32)
            if      ( $text =~ /channel number (\d)…(\d+) or (\d+)/ ) {
               my $match3 = $3 ;
               $match3 = 0 . $match3 * 1 if $match3 < 10 ; # Make sure we have 2 digits
               $file{ModuleTypes}{$ModuleType}{ChannelsEditable}{$match3} = $text ;
               for my $i ($1..$2) {
                  $i = 0 . $i * 1 if $i < 10 ; # Make sure we have 2 digits
                  $file{ModuleTypes}{$ModuleType}{ChannelsEditable}{$i} = $text ;
               }

            } elsif ( $text =~ /channel number (\d)…(\d+)/ ) {
               for my $i ($1..$2) {
                  $i = 0 . $i * 1 if $i < 10 ; # Make sure we have 2 digits
                  $file{ModuleTypes}{$ModuleType}{ChannelsEditable}{$i} = $text ;
               }

            } elsif ( $text =~ /channel number \((\d)…(\d+)\)/ ) {
               for my $i ($1..$2) {
                  $i = 0 . $i * 1 if $i < 10 ; # Make sure we have 2 digits
                  $file{ModuleTypes}{$ModuleType}{ChannelsEditable}{$i} = $text ;
               }

            } else {
               $file{ModuleTypes}{$ModuleType}{ChannelsEditable}{ALL} = $text ;
            }

            # VMBELO      37: channel number 1…33 or 42 (channel 33=temperature sensor name, 42 for output name)
            if ( $ModuleType eq "37" ) { #

            # Sensor channel is +1 in VelusLink for some modules
            # VMBGPx      1E: channel number 1…9 (channel 9=temperature sensor name)
            # VMBGPx-2    3C: channel number 1…9 (channel 9=temperature sensor name)
            # NOT CONFIRMED!
            # VMBGP4PIR   2D: channel number 1…4, 9 (channel 9=temperature sensor name)
            # VMBGP4PIR-2 3E: channel number 1…4, 9 (channel 9=temperature sensor name)
            } elsif ( $ModuleType eq "1E" or
                      $ModuleType eq "3C" or
                      $ModuleType eq "2D" or
                      $ModuleType eq "3E" ) {
               delete $file{ModuleTypes}{$ModuleType}{ChannelsEditable}{'09'} ;
               $file{ModuleTypes}{$ModuleType}{ChannelsEditable}{'10'} = $text ;

            # Sensor channel is +1 in VelusLink for some modules
            # VMBGPO      21: channel number 1…33 (channel 33=temperature sensor name)
            # VMBGPOD     28: channel number 1…33 (channel 33=temperature sensor name)
            # VMBGPOD-2   3D: channel number 1…33 (channel 33=temperature sensor name)
            } elsif ( $ModuleType eq "21" or
                      $ModuleType eq "28" or
                      $ModuleType eq "3D" ) {
               delete $file{ModuleTypes}{$ModuleType}{ChannelsEditable}{'33'} ;
               $file{ModuleTypes}{$ModuleType}{ChannelsEditable}{'34'} = $text ;

            # NOT CONFIRMED!
            # VMBELPIR    38: channel number 1…2 or 18 (channel 9=temperature sensor, channel 18=output)
            #    Missing '9' in text
            } elsif ( $ModuleType eq "38" ) {
               $file{ModuleTypes}{$ModuleType}{ChannelsEditable}{'09'} = $text ;

            # NOT CONFIRMED!
            # VMBEL1      34: channel number 1…9 or 18 (channel 9=temperature sensor, channel 18=output)
            } else {
            }

         } else {
            #print "No DATABYTE2 found in $file for message counter $counter\n" ;
         }
      } else {
         #print "Message counter $counter not found in $file\n" ;
      }
   } else {
      #print "No message F0 in $file found\n" ;
   }

   # Loop all the messages
   foreach my $counter (sort keys (%{$file{PerFile}{$file}{Messages}}) ) {
      # When RTR is 1, we receive an empty request 'Module type request'
      # We ignore this message since this contains no extra HEX code for the command. The answer however, is type FF
      if ( $file{PerFile}{$file}{Messages}{$counter}{RTR} eq "1" ) {
      } else {
         my $MessageAddressType  = $file{PerFile}{$file}{Messages}{$counter}{MessageAddressType} ; # Handier var
         my $Command             = $file{PerFile}{$file}{Messages}{$counter}{Command} ;            # Handier var
         my $CommandText         = $file{PerFile}{$file}{Messages}{$counter}{CommandText} ;        # Handier var
         my $Info                = $file{PerFile}{$file}{Messages}{$counter}{Info} ;               # Handier var
         my $Prio                = $file{PerFile}{$file}{Messages}{$counter}{Prio} ;               # Handier var

         # Broadcast messages are stored and processed later
         # We keep all possible options by using them als keys for a hash
         if ( $MessageAddressType eq "broadcast" ) {
            $file{PerCommandBroadcast}{$Command}{CommandText}{$CommandText} .= "" ; # $file . ":" . $counter  . " " ;
            $file{PerCommandBroadcast}{$Command}{Info}{$Info} .= "" ; # . $file . ":" . $counter  . " " ;
            $file{PerCommandBroadcast}{$Command}{Prio}{$Prio} .= "" ; # . $file . ":" . $counter  . " " ;
         } elsif ( $MessageAddressType eq "remote" ) {
            $file{PerCommandRemote}{$ModuleType}{$Command}{CommandText}{$CommandText} .= "" ; # . $file . ":" . $counter  . " " ;
            $file{PerCommandRemote}{$ModuleType}{$Command}{Info}{$Info} .= "" ; # . $file . ":" . $counter  . " " ;
            $file{PerCommandRemote}{$ModuleType}{$Command}{Prio}{$Prio} .= "" ; # . $file . ":" . $counter  . " " ;
         } elsif ( $MessageAddressType eq "local" ) {
            $file{PerCommandLocal}{$ModuleType}{$Command}{CommandText}{$CommandText} .= "" ; # . $file . ":" . $counter  . " " ;
            $file{PerCommandLocal}{$ModuleType}{$Command}{Info}{$Info} .= "" ; # . $file . ":" . $counter  . " " ;
            $file{PerCommandLocal}{$ModuleType}{$Command}{Prio}{$Prio} .= "" ; # . $file . ":" . $counter  . " " ;
         }
      }
   }

	if ( $file{ModuleTypes}{$ModuleType}{SameModule} ) {
		foreach my $ModuleTypeLoop ( sort keys %{$file{ModuleTypes}{$ModuleType}{SameModule}} ) {
			%{$file{ModuleTypes}{$ModuleTypeLoop}} = %{$file{ModuleTypes}{$ModuleType}} ;
      	$file{ModuleTypes}{$ModuleTypeLoop}{Type} = $file{ModuleTypes}{$ModuleType}{SameModule}{$ModuleTypeLoop} ;
			print "   Copy $ModuleType ($Module) to $ModuleTypeLoop ($file{ModuleTypes}{$ModuleType}{SameModule}{$ModuleTypeLoop})\n" ;
		}
	}
}

print "\n" ;
print "Save the data\n" ;

# Per module and message
foreach my $ModuleType (sort keys %{$file{PerCommandLocal}}) {
   foreach my $Command (sort keys %{$file{PerCommandLocal}{$ModuleType}}) {
      if ( defined $file{PerCommandBroadcast}{$Command} ) {
      } else {
         my @Name = sort keys %{$file{PerCommandLocal}{$ModuleType}{$Command}{CommandText}} ;
         my @Info = sort keys %{$file{PerCommandLocal}{$ModuleType}{$Command}{Info}} ;
         my @Prio = sort keys %{$file{PerCommandLocal}{$ModuleType}{$Command}{Prio}} ; # TODO: what if we have different Prio for 1 command?

         my $Name = join ";", @Name ;
         my $Info = join ";", @Info ;
         my $Prio = join ";", @Prio    ;

         $file{ModuleTypes}{$ModuleType}{Messages}{$Command}{Name} = $Name ;
         $file{ModuleTypes}{$ModuleType}{Messages}{$Command}{Info} = $Info ;
         $file{ModuleTypes}{$ModuleType}{Messages}{$Command}{Prio} = $Prio ;

         # Copy the commands to the other modules if needed
			if ( $file{ModuleTypes}{$ModuleType}{SameModule} ) {
				foreach my $ModuleTypeLoop ( sort keys %{$file{ModuleTypes}{$ModuleType}{SameModule}} ) {
            	$file{ModuleTypes}{$ModuleTypeLoop}{Messages}{$Command}{Name} = $Name ;
            	$file{ModuleTypes}{$ModuleTypeLoop}{Messages}{$Command}{Info} = $Info ;
            	$file{ModuleTypes}{$ModuleTypeLoop}{Messages}{$Command}{Prio} = $Prio ;
				}
			}
      }
   }
}

# We only need the ModuleTypes information in the json
%{$json{ModuleTypes}} = %{ merge( \%{$json{ModuleTypes}}, \%{$file{ModuleTypes}} ) };

# Add broadcast messages
foreach my $Command (sort keys %{$file{PerCommandBroadcast}}) {
   my @Name = sort keys %{$file{PerCommandBroadcast}{$Command}{CommandText}} ;
   my @Info = sort keys %{$file{PerCommandBroadcast}{$Command}{Info}} ;
   my @Prio = sort keys %{$file{PerCommandBroadcast}{$Command}{Prio}} ;

   my $Name = join ";", @Name ;
   my $Info = join ";", @Info ;
   my $Prio = join ";", @Prio    ;

   $json{MessagesBroadCast}{$Command}{Name} = "$Name" ;
   $json{MessagesBroadCast}{$Command}{Info} = "$Info" ;
   $json{MessagesBroadCast}{$Command}{Prio} = "$Prio" ;
}

# Add the extra data files
# Order is important!
foreach my $file (
      "data/Velbus_data_protocol_memory.pm",
      "data/Velbus_data_protocol_messages.pm",
      "data/Velbus_data_protocol_channels.pm",
      "data/Velbus_data_channels.pm",
      "data/Velbus_data.pm"
   ) {

   if ( -f $file ) {
      open (FILE,"<",$file) ;
      my @lines = <FILE>;
      close FILE ;
      my $command = join "", @lines ;
      eval $command ;
      if ( $@ ) {
         print "Error in $file: $@\n" ;
      }
   } else {
      print "ERROR: file $file not found!\n" ;
   }
}

# Save the data in json format
open (OUTPUT,">","out/protocol.json") ;
my $json = JSON->new->allow_nonref;
$json->canonical(1) ;
$json->pretty(1) ;
print OUTPUT $json->encode( \%json) ;
close OUTPUT ;
