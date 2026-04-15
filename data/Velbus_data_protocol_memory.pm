# This files contains all information needed when reading the memory of the modules.
# Some information like the name of the module can only be found by reading the memory.
# For some modules, different memory addresses are needed depending on the build of the module.

# VMB8PB
$json{ModuleTypes}{'01'}{Memory}{ModuleName} = "" ; # No support for ModuleName in the firmware

# VMB1RY
$json{ModuleTypes}{'02'}{Memory}{ModuleName} = "0070:007F" ;

# VMB1BL
$json{ModuleTypes}{'03'}{Memory}{ModuleName} = "0070:007F" ;

# VMBPSUMNGR-20
$json{ModuleTypes}{'04'}{Memory}{ModuleName} = "07BC:07FB" ;

# VMB6IN
$json{ModuleTypes}{'05'}{Memory}{ModuleName} = "" ;

# VMB4LEDPWM-20
$json{ModuleTypes}{'06'}{Memory}{ModuleName} = "062C:066B" ;

# VMB1DM
$json{ModuleTypes}{'07'}{Memory}{ModuleName} = "00F0:00FF" ;

# VMB4RY
$json{ModuleTypes}{'08'}{Memory}{ModuleName} = "" ;

# VMB2BL
$json{ModuleTypes}{'09'}{Memory}{ModuleName} = "" ;

# VMB8IR
$json{ModuleTypes}{'0A'}{Memory}{ModuleName} = "" ;

# VMB4PD
$json{ModuleTypes}{'0B'}{Memory}{ModuleName} = "" ;

# VMB1RYS-20
$json{ModuleTypes}{'0D'}{Memory}{ModuleName} = "07BC:07FB" ;

# VMB1TC
$json{ModuleTypes}{'0E'}{Memory}{ModuleName} = "00F0-00FF" ;

# VMB1LED
$json{ModuleTypes}{'0F'}{Memory}{ModuleName} = "" ;

# VMB1TS
$json{ModuleTypes}{'0C'}{Memory}{ModuleName} = "" ; # No support for ModuleName in the firmware

# VMB4RYLD
$json{ModuleTypes}{'10'}{Memory}{ModuleName} = "00E3-00EF;01E3-01EF;02E3-02EF;03E3-03EF;04E3-04EE" ;

# VMB4RYNO
$json{ModuleTypes}{'11'}{Memory}{ModuleName} = "00E3-00EF;01E3-01EF;02E3-02EF;03E3-03EF;04E3-04EE" ;

# VMB4DC
$json{ModuleTypes}{'12'}{Memory}{ModuleName} = "00E0-00EF;01E0-01EF" ;

# VMBLCDWB
$json{ModuleTypes}{'13'}{Memory}{ModuleName} = "" ;

# VMBDME
$json{ModuleTypes}{'14'}{Memory}{ModuleName} = "" ;

# VMBDMI
$json{ModuleTypes}{'15'}{Memory}{ModuleName} = "00B0:00EF" ;

# VMBDMI-R
$json{ModuleTypes}{'2F'}{Memory}{ModuleName} = "00B0-00EF" ;

# VMB8PBU
$json{ModuleTypes}{'16'}{Memory}{ModuleName} = "03C0-03FF" ;

# VMB6PBN
$json{ModuleTypes}{'17'}{Memory}{ModuleName} = "03C0-03FF" ;

# VMB2PBN
$json{ModuleTypes}{'18'}{Memory}{ModuleName} = "03C0-03FF" ;

# VMB4RF
$json{ModuleTypes}{'1A'}{Memory}{ModuleName} = "02C0-02FF" ;

# VMB1RYNO
$json{ModuleTypes}{'1B'}{Memory}{ModuleName} = "00E3-00EF;01E3-01EF;02E3-02EF;03E3-03EF;04E3-04EE" ;

# VMB2BLE
$json{ModuleTypes}{'1D'}{Memory}{ModuleName} = "004C-008B" ;

# VMBGP1D
$json{ModuleTypes}{'1E'}{Memory}{ModuleName} = "03C0-03FF" ;
# VMBGP2D
$json{ModuleTypes}{'1F'}{Memory}{ModuleName} = "03C0-03FF" ;
# VMBGP4D
$json{ModuleTypes}{'20'}{Memory}{ModuleName} = "03C0-03FF" ;

# VMBGPO
$json{ModuleTypes}{'21'}{Memory}{ModuleName} = "09BE-09FD" ;

# VMB7IN
$json{ModuleTypes}{'22'}{Memory}{ModuleName} = "03AC-03EB" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'%......00'}{Value} = "reserved" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'%......01'}{Value} = "liter" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'%......10'}{Value} = "m3" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'%......11'}{Value} = "kWh" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'%......[01][01]'}{Channel} = "01" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'%......[01][01]'}{SubName} = "Unit" ;

$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'2'}{'%....00..'}{Value} = "reserved" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'2'}{'%....01..'}{Value} = "liter" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'2'}{'%....10..'}{Value} = "m3" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'2'}{'%....11..'}{Value} = "kWh" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'2'}{'%....[01][01]..'}{Channel} = "02" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'2'}{'%....[01][01]..'}{SubName} = "Unit" ;

$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'3'}{'%..00....'}{Value} = "reserved" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'3'}{'%..01....'}{Value} = "liter" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'3'}{'%..10....'}{Value} = "m3" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'3'}{'%..11....'}{Value} = "kWh" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'3'}{'%..[01][01]....'}{Channel} = "03" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'3'}{'%..[01][01]....'}{SubName} = "Unit" ;

$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'4'}{'%00......'}{Value} = "reserved" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'4'}{'%01......'}{Value} = "liter" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'4'}{'%10......'}{Value} = "m3" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'4'}{'%11......'}{Value} = "kWh" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'4'}{'%[01][01]......'}{Channel} = "04" ;
$json{ModuleTypes}{'22'}{Memory}{Address}{'03FE'}{Match}{'4'}{'%[01][01]......'}{SubName} = "Unit" ;

#$json{ModuleTypes}{'22'}{Memory}{Address}{'00E4'}{Match}{'%........'}{Value} = "PulsePerUnits" ;
#$json{ModuleTypes}{'22'}{Memory}{Address}{'00E4'}{Match}{'%........'}{SubName} = "Divider" ;
#$json{ModuleTypes}{'22'}{Memory}{Address}{'00E4'}{Match}{'%........'}{Channel} = "01" ;

#$json{ModuleTypes}{'22'}{Memory}{Address}{'00E9'}{Match}{'%........'}{Value} = "PulsePerUnits" ;
#$json{ModuleTypes}{'22'}{Memory}{Address}{'00E9'}{Match}{'%........'}{SubName} = "Divider" ;
#$json{ModuleTypes}{'22'}{Memory}{Address}{'00E9'}{Match}{'%........'}{Channel} = "02" ;

#$json{ModuleTypes}{'22'}{Memory}{Address}{'00EE'}{Match}{'%........'}{Value} = "PulsePerUnits" ;
#$json{ModuleTypes}{'22'}{Memory}{Address}{'00EE'}{Match}{'%........'}{SubName} = "Divider" ;
#$json{ModuleTypes}{'22'}{Memory}{Address}{'00EE'}{Match}{'%........'}{Channel} = "03" ;

#$json{ModuleTypes}{'22'}{Memory}{Address}{'00F3'}{Match}{'%........'}{Value} = "PulsePerUnits" ;
#$json{ModuleTypes}{'22'}{Memory}{Address}{'00F3'}{Match}{'%........'}{SubName} = "Divider" ;
#$json{ModuleTypes}{'22'}{Memory}{Address}{'00F3'}{Match}{'%........'}{Channel} = "04" ;

# VMBPIRO-10
$json{ModuleTypes}{'23'}{Memory}{ModuleName} = "00B0:00EF" ;

# VMB2DC-20
$json{ModuleTypes}{'24'}{Memory}{ModuleName} = "06F4:0733" ;

# VMB4RYLD-20
$json{ModuleTypes}{'26'}{Memory}{ModuleName} = "07BC:07FB" ;

# VMB4YNOD-20
$json{ModuleTypes}{'27'}{Memory}{ModuleName} = "07BC:07FB" ;

# VMBGPOD
$json{ModuleTypes}{'28'}{Memory}{ModuleName} = "09BE-09FD" ;

# VMB1RYNOS
$json{ModuleTypes}{'29'}{Memory}{ModuleName} = "00E3-00EF;01E3-01EF;02E3-02EF;03E3-03EF;04E3-04EE" ;

# VMBPIRM
$json{ModuleTypes}{'2A'}{Memory}{ModuleName} = "00B0-00EF" ;

# VMBPIRC
$json{ModuleTypes}{'2B'}{Memory}{ModuleName} = "00B0-00EF" ;

# VMBPIRO
$json{ModuleTypes}{'2C'}{Memory}{ModuleName} = "00B0-00EF" ;
#$json{ModuleTypes}{'2C'}{Memory}{SensorName}{'09'} = "0080-008F" ;
#$json{ModuleTypes}{'2C'}{Memory}{SensorChannel} = "09" ; # Temperature sensor is CH9

# VMBGP4PIR
$json{ModuleTypes}{'2D'}{Memory}{ModuleName} = "03C0-03FF" ;

# VMB1BLS
$json{ModuleTypes}{'2E'}{Memory}{ModuleName} = "004C-008B" ;

# VMBRFR8S
$json{ModuleTypes}{'30'}{Memory}{ModuleName} = "03C0:03FF" ;

# VMBMETEO
$json{ModuleTypes}{'31'}{Memory}{ModuleName} = "03C0-03FF" ;

# CH10 = temperature sensor
$json{ModuleTypes}{'31'}{Memory}{SensorName}{'10'} = "03B0-03BF" ;
# CH11 = rain
$json{ModuleTypes}{'31'}{Memory}{SensorName}{'11'} = "00C0-00CF" ;
# CH12 = light
$json{ModuleTypes}{'31'}{Memory}{SensorName}{'12'} = "00D0-00DF" ;
# CH13 = wind
$json{ModuleTypes}{'31'}{Memory}{SensorName}{'13'} = "00E0-00EF" ;

# VMB4AN
$json{ModuleTypes}{'32'}{Memory}{ModuleName} = "0000-003F" ;
$json{ModuleTypes}{'32'}{Memory}{Unit}{'09'} = "02E0-02E6" ;
$json{ModuleTypes}{'32'}{Memory}{Unit}{'10'} = "0412-0418" ;
$json{ModuleTypes}{'32'}{Memory}{Unit}{'11'} = "0544-054A" ;
$json{ModuleTypes}{'32'}{Memory}{Unit}{'12'} = "0676-067C" ;

# VMBVP1
$json{ModuleTypes}{'33'}{Memory}{ModuleName} = "00B0-00EF" ;

# VMBEL1
$json{ModuleTypes}{'34'}{Memory}{ModuleName} = "06C0-06CF" ;
# VMBEL2
$json{ModuleTypes}{'35'}{Memory}{ModuleName} = "06C0-06CF" ;
# VMBEL4
$json{ModuleTypes}{'36'}{Memory}{ModuleName} = "06C0-06CF" ;

# VMBELO
$json{ModuleTypes}{'37'}{Memory}{ModuleName} = "0F44-0F83" ;

# VMBEL1PIR
$json{ModuleTypes}{'38'}{Memory}{ModuleName} = "0678:06B7" ;

# VMBSIG
$json{ModuleTypes}{'39'}{Memory}{ModuleName} = "0000:003F" ;

# VMBGP1-2
$json{ModuleTypes}{'3A'}{Memory}{ModuleName} = "03C0-03FF" ;
# VMBGP2-2
$json{ModuleTypes}{'3B'}{Memory}{ModuleName} = "03C0-03FF" ;
# VMBGP4-2
$json{ModuleTypes}{'3C'}{Memory}{ModuleName} = "03C0-03FF" ;

# VMBGPOD-2
$json{ModuleTypes}{'3D'}{Memory}{ModuleName} = "09BE-09FD" ;

# VMBGP4PIR-2
$json{ModuleTypes}{'3E'}{Memory}{ModuleName} = "03C0-03FF" ;

# VMCM3
$json{ModuleTypes}{'3F'}{Memory}{ModuleName} = "0000:003F" ;

# VMBUSBIP
$json{ModuleTypes}{'40'}{Memory}{ModuleName} = "0000:003F" ;

# VMB1RYS
$json{ModuleTypes}{'41'}{Memory}{ModuleName} = "00DD-00E9;01DD-01E9;02DD-02E9;03DD-03E9;04DD-04E8" ;

# VMBKP
$json{ModuleTypes}{'42'}{Memory}{ModuleName} = "03BC:03FB" ;

# VMBKP
$json{ModuleTypes}{'42'}{Memory}{ModuleName} = "03BC:03FB" ;

# VMBIN
$json{ModuleTypes}{'43'}{Memory}{ModuleName} = "03BC:03FB" ;

# VMB4PB
$json{ModuleTypes}{'44'}{Memory}{ModuleName} = "03BC:03FB" ;

# VMBDALI
$json{ModuleTypes}{'45'}{Memory}{ModuleName} = "17AC-17EB" ;

# VMBEL2PIR
$json{ModuleTypes}{'47'}{Memory}{ModuleName} = "0678:06B7" ;

# VMB4RYLD-10
$json{ModuleTypes}{'48'}{Memory}{ModuleName} = "00E3:04EE" ;

# VMB4RYLD-10
$json{ModuleTypes}{'48'}{Memory}{ModuleName} = "00E3:00EF;01E3-01EF;02E3-04EE" ;

# VMB4RYNO-10
$json{ModuleTypes}{'49'}{Memory}{ModuleName} = "00E3:00EF;01E3-01EF;02E3-04EE" ;

# VMB2BLE-10
$json{ModuleTypes}{'4A'}{Memory}{ModuleName} = "004C:008B" ;

# VMB8DC-20
$json{ModuleTypes}{'4B'}{Memory}{ModuleName} = "049C:04DB" ;

# VMB6PB-20
$json{ModuleTypes}{'4C'}{Memory}{ModuleName} = "03BC:03FB" ;

# VMBPIR-20
$json{ModuleTypes}{'4D'}{Memory}{ModuleName} = "03BC:03FB" ;

# VMB8IN-20
$json{ModuleTypes}{'4E'}{Memory}{ModuleName} = "07BC:07FB" ;

# VMBELO-20
$json{ModuleTypes}{'52'}{Memory}{ModuleName} = "0FA8:0FE7" ;

# VMBEL1PIR-20
$json{ModuleTypes}{'53'}{Memory}{ModuleName} = "0678:06B7" ;

# VMBGP1-20
$json{ModuleTypes}{'54'}{Memory}{ModuleName} = "06C0:06FF" ;

# VMBGP2-20
$json{ModuleTypes}{'55'}{Memory}{ModuleName} = "06C0:06FF" ;

# VMBGP4-20
$json{ModuleTypes}{'56'}{Memory}{ModuleName} = "06C0:06FF" ;

# VMBGPO-20
$json{ModuleTypes}{'57'}{Memory}{ModuleName} = "0FA8:0FE7" ;

# VMBPIRO-20
$json{ModuleTypes}{'59'}{Memory}{ModuleName} = "" ;

# VMBDALI-20
$json{ModuleTypes}{'5A'}{Memory}{ModuleName} = "" ;

# VMBSIG-20
$json{ModuleTypes}{'5B'}{Memory}{ModuleName} = "" ;

# VMBEL2PIR-20
$json{ModuleTypes}{'5C'}{Memory}{ModuleName} = "0678:06B7" ;

# VMBEL4PIR-20
$json{ModuleTypes}{'5D'}{Memory}{ModuleName} = "06A8:06E7" ;

# VMBGP4PIR-20
$json{ModuleTypes}{'5F'}{Memory}{ModuleName} = "" ;

# VMBSIG-21
$json{ModuleTypes}{'60'}{Memory}{ModuleName} = "" ;

# VMB2BLE-20
$json{ModuleTypes}{'61'}{Memory}{ModuleName} = "07BC:07FB" ;

# Parse and rewrite the memory addresses for ModuleName and SensorName so we know for each possible memory address what it contains.
foreach my $ModuleType (sort keys %{$json{ModuleTypes}}) {
   if ( defined $json{ModuleTypes}{$ModuleType}{Memory} ) {
      my @StatusAddress ; # List of all addresses per ModuleType with relevant information

      if ( defined $json{ModuleTypes}{$ModuleType}{Memory}{ModuleName} and
                   $json{ModuleTypes}{$ModuleType}{Memory}{ModuleName} ne ""  ) {
         my $counter = 0 ; # Number of address
         my $AddressHex ; # The address in hex

         foreach my $loop (split ";", $json{ModuleTypes}{$ModuleType}{Memory}{ModuleName}) {
            my ($start,$end) = split "-", $loop ;
            $start = &hex_to_dec ($start) ;
            $end   = &hex_to_dec ($end) ;
            for ($i="$start"; $i <= "$end"; $i++) {
               $AddressHex = &dec_to_4hex($i) ;
               push @StatusAddress, $AddressHex ;
               if ( $counter eq "0" ) {
                  # First address
                  $json{ModuleTypes}{$ModuleType}{Memory}{Address}{$AddressHex}{ModuleName} = "$counter:Start" ;
               } else {
                  $json{ModuleTypes}{$ModuleType}{Memory}{Address}{$AddressHex}{ModuleName} = "$counter" ;
               }
               $counter ++ ;
            }
         }

         # Remember last adress
         $json{ModuleTypes}{$ModuleType}{Memory}{Address}{$AddressHex}{ModuleName} = "$counter:Save" ;
      }

      if ( defined $json{ModuleTypes}{$ModuleType}{Memory}{SensorName} ) {
         foreach my $Channel (sort keys %{$json{ModuleTypes}{$ModuleType}{Memory}{SensorName}}) {
            my $counter = 0 ; # Number of address
            my $AddressHex ; # The address in hex

            foreach my $loop (split ";", $json{ModuleTypes}{$ModuleType}{Memory}{SensorName}{$Channel}) {
               my ($start,$end) = split "-", $loop ;
               $start = &hex_to_dec ($start) ;
               $end   = &hex_to_dec ($end) ;
               for ($i="$start"; $i <= "$end"; $i++) {
                  $AddressHex = &dec_to_4hex($i) ;
                  push @StatusAddress, $AddressHex ;
                  if ( $counter eq "0" ) {
                     # First address
                     $json{ModuleTypes}{$ModuleType}{Memory}{Address}{$AddressHex}{SensorName} = "$Channel:$counter:Start" ;
                  } else {
                     $json{ModuleTypes}{$ModuleType}{Memory}{Address}{$AddressHex}{SensorName} = "$Channel:$counter" ;
                  }
                  $counter ++ ;
               }
            }

            # Remember last adress
            $json{ModuleTypes}{$ModuleType}{Memory}{Address}{$AddressHex}{SensorName} = "$Channel:$counter:Save" ;
         }
      }

      if ( defined $json{ModuleTypes}{$ModuleType}{Memory}{Unit} ) {
         foreach my $Channel (sort keys %{$json{ModuleTypes}{$ModuleType}{Memory}{Unit}}) {
            my $counter = 0 ; # Number of address
            my $AddressHex ; # The address in hex

            foreach my $loop (split ";", $json{ModuleTypes}{$ModuleType}{Memory}{Unit}{$Channel}) {
               #print "loop $loop\n" ;
               my ($start,$end) = split "-", $loop ;
               $start = &hex_to_dec ($start) ;
               $end   = &hex_to_dec ($end) ;
               for ($i="$start"; $i <= "$end"; $i++) {
                  $AddressHex = &dec_to_4hex($i) ;
                  push @StatusAddress, $AddressHex ;
                  if ( $counter eq "0" ) {
                     # First address
                     $json{ModuleTypes}{$ModuleType}{Memory}{Address}{$AddressHex}{Unit} = "$Channel:$counter:Start" ;
                  } else {
                     $json{ModuleTypes}{$ModuleType}{Memory}{Address}{$AddressHex}{Unit} = "$Channel:$counter" ;
                  }
                  $counter ++ ;
               }
            }

            # Remember last adress
            $json{ModuleTypes}{$ModuleType}{Memory}{Address}{$AddressHex}{Unit} = "$Channel:$counter:Save" ;
         }
      }

      if ( @StatusAddress ) {
         # Save all addresses for the get_status procedure
         $json{ModuleTypes}{$ModuleType}{Memory}{StatusAddress} = join ";", @StatusAddress ;
      }
   }
}

return 1 ;
