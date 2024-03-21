# This is a list of messages with extra options.
# The format is easy to understand

################### General messages that can be used in different modules
$json{ModuleGeneral}{Messages}{ButtonPress}{Data}{PerByte}{'0'}{Name} = "Button" ;
$json{ModuleGeneral}{Messages}{ButtonPress}{Data}{PerByte}{'0'}{Match}{'%.'}{Convert} = "Channel" ;
$json{ModuleGeneral}{Messages}{ButtonPress}{Data}{PerByte}{'0'}{Match}{'%.'}{Value} = "pressed" ;

$json{ModuleGeneral}{Messages}{ButtonPress}{Data}{PerByte}{'1'}{Name} = "Button" ;
$json{ModuleGeneral}{Messages}{ButtonPress}{Data}{PerByte}{'1'}{Match}{'%.'}{Convert} = "Channel" ;
$json{ModuleGeneral}{Messages}{ButtonPress}{Data}{PerByte}{'1'}{Match}{'%.'}{Value} = "released" ;

$json{ModuleGeneral}{Messages}{ButtonPress}{Data}{PerByte}{'2'}{Name} = "Button" ;
$json{ModuleGeneral}{Messages}{ButtonPress}{Data}{PerByte}{'2'}{Match}{'%.'}{Convert} = "Channel" ;
$json{ModuleGeneral}{Messages}{ButtonPress}{Data}{PerByte}{'2'}{Match}{'%.'}{Value} = "longpressed" ;

# Thermostat info: used in touch panels and in VMB1TS
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Name} = "Operating mode" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%.100....'}{Name} = "ThermostatMode" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%.100....'}{Value} = "Comfort mode" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%.100....'}{openHAB} = "1" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%.010....'}{Name} = "ThermostatMode" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%.010....'}{Value} = "Day mode" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%.010....'}{openHAB} = "2" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%.001....'}{Name} = "ThermostatMode" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%.001....'}{Value} = "Night mode" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%.001....'}{openHAB} = "3" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%.000....'}{Name} = "ThermostatMode" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%.000....'}{Value} = "Safe temp mode (anti frost)" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%.000....'}{openHAB} = "4" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%1.......'}{Name} = "ThermostatCoHeMode" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%1.......'}{Value} = "Cooler mode" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%1.......'}{openHAB} = "1" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%0.......'}{Name} = "ThermostatCoHeMode" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%0.......'}{Value} = "Heater mode" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'0'}{Match}{'%0.......'}{openHAB} = "0" ;

$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'4'}{Name} = "ThermostatTarget" ;
$json{ModuleGeneral}{Messages}{Thermostat}{Data}{PerByte}{'4'}{Match}{'%.'}{Convert} = "Temperature" ;

# The Channels in byte 3 are calculated with an offset = TemperatureChannel for the touch panels
$json{ModuleGeneral}{Messages}{ThermostatChannelTouch}{Data}{PerByte}{'3'}{Match}{'%.'}{Name} = "ThermostatChannel" ;
$json{ModuleGeneral}{Messages}{ThermostatChannelTouch}{Data}{PerByte}{'3'}{Match}{'%.'}{Convert} = "ChannelBitStatus:8" ;

$json{ModuleGeneral}{Messages}{PirOutput}{Data}{Name} = "Sensor" ;
$json{ModuleGeneral}{Messages}{PirOutput}{Data}{PerByte}{'0'}{Match}{'%.'}{Convert} = "Channel" ;
$json{ModuleGeneral}{Messages}{PirOutput}{Data}{PerByte}{'0'}{Match}{'%.'}{Value} = "pressed" ;

$json{ModuleGeneral}{Messages}{PirOutput}{Data}{PerByte}{'1'}{Match}{'%.'}{Convert} = "Channel" ;
$json{ModuleGeneral}{Messages}{PirOutput}{Data}{PerByte}{'1'}{Match}{'%.'}{Value} = "released" ;

$json{ModuleGeneral}{Messages}{PirOutput}{Data}{PerByte}{'2'}{Match}{'%.'}{Convert} = "Channel" ;
$json{ModuleGeneral}{Messages}{PirOutput}{Data}{PerByte}{'2'}{Match}{'%.'}{Value} = "longpressed" ;

$json{ModuleGeneral}{Messages}{ButtonChannelStatus}{Data}{PerByte}{'0'}{Name} = "Button" ;
$json{ModuleGeneral}{Messages}{ButtonChannelStatus}{Data}{PerByte}{'0'}{Match}{'%.'}{Convert} = "ChannelBitStatus:8" ;

$json{ModuleGeneral}{Messages}{OpenCollectorChannelStatus124}{Data}{PerByte}{'3'}{Name} = "Relay" ;
$json{ModuleGeneral}{Messages}{OpenCollectorChannelStatus124}{Data}{PerByte}{'3'}{Match}{'%0.......'}{Value} = "OFF" ;
$json{ModuleGeneral}{Messages}{OpenCollectorChannelStatus124}{Data}{PerByte}{'3'}{Match}{'%1.......'}{Value} = "ON" ;
$json{ModuleGeneral}{Messages}{OpenCollectorChannelStatus124}{Data}{PerByte}{'3'}{Match}{'%........'}{Channel} = "18" ;

$json{ModuleGeneral}{Messages}{OpenCollectorChannelStatusO}{Data}{PerByte}{'3'}{Name} = "Relay" ;
$json{ModuleGeneral}{Messages}{OpenCollectorChannelStatusO}{Data}{PerByte}{'3'}{Match}{'%0.......'}{Value} = "OFF" ;
$json{ModuleGeneral}{Messages}{OpenCollectorChannelStatusO}{Data}{PerByte}{'3'}{Match}{'%1.......'}{Value} = "ON" ;
$json{ModuleGeneral}{Messages}{OpenCollectorChannelStatusO}{Data}{PerByte}{'3'}{Match}{'%........'}{Channel} = "42" ;

$json{ModuleGeneral}{Messages}{LightSensorChannelStatus7}{Data}{PerMessage}{Convert} = "LightSensor" ;
$json{ModuleGeneral}{Messages}{LightSensorChannelStatus7}{Data}{PerByte}{'0'}{Name} = "Sensor" ;
$json{ModuleGeneral}{Messages}{LightSensorChannelStatus7}{Data}{PerByte}{'0'}{Match}{'%.'}{Convert} = "ChannelBitStatus:7" ;

$json{ModuleGeneral}{Messages}{LightSensorChannelStatus8}{Data}{PerMessage}{Convert} = "LightSensor" ;
$json{ModuleGeneral}{Messages}{LightSensorChannelStatus8}{Data}{PerByte}{'0'}{Name} = "Sensor" ;
$json{ModuleGeneral}{Messages}{LightSensorChannelStatus8}{Data}{PerByte}{'0'}{Match}{'%.'}{Convert} = "ChannelBitStatus:8" ;

# 5 byte version
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{Channel} = "97" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'0'}{Name} = "Palette" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'0'}{Match}{'........'}{Convert} = "Decimal" ;

$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'1'}{Match}{'%0.......'}{Name} = "Color" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'1'}{Match}{'%0.......'}{Value} = "RGB-color" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'1'}{Match}{'%1.......'}{Name} = "Color" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'1'}{Match}{'%1.......'}{Value} = "White" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'1'}{Match}{'%.(.......)'}{Name} = "Saturation" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'1'}{Match}{'%.(.......)'}{Convert} = "Decimal" ;

$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'2'}{Name} = "Red" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'2'}{Match}{'%.'}{Convert} = "Decimal" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'3'}{Name} = "Green" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'3'}{Match}{'%.'}{Convert} = "Decimal" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'4'}{Name} = "Blue" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:5'}{'4'}{Match}{'%.'}{Convert} = "Decimal" ;

# 3 byte version
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'0'}{Name} = "Background" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'0'}{Match}{'%.......0'}{Value} = "do not apply to background" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'0'}{Match}{'%.......1'}{Value} = "apply to background" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'0'}{Match}{'%......0.'}{Value} = "do not apply to continuous feedback" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'0'}{Match}{'%......1.'}{Value} = "apply to continuous feedback" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'0'}{Match}{'%.....0..'}{Value} = "do not apply to slow blinking feedback" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'0'}{Match}{'%.....1..'}{Value} = "apply to slow blinking feedback" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'0'}{Match}{'%....0...'}{Value} = "do not apply to fast blinking feedback" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'0'}{Match}{'%....1...'}{Value} = "apply to fast blinking feedback" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'0'}{Match}{'%0.......'}{Value} = "Default palette" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'0'}{Match}{'%1.......'}{Value} = "Custom palette" ;

#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%.......0'}{Value} = "do not apply to left edge" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%.......1'}{Value} = "left" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%......0.'}{Value} = "do not apply to top edge" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%......1.'}{Value} = "top" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%.....0..'}{Value} = "do not apply to right edge" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%.....1..'}{Value} = "right" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%....0...'}{Value} = "do not apply to bottom edge" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%....1...'}{Value} = "bottom" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%0000xxxx'}{Value} = "apply to button page 1 (only for feedback light)" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%0001xxxx'}{Value} = "apply to button page 2 (only for feedback light)" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%0010xxxx'}{Value} = "apply to button page 3 (only for feedback light)" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%0011xxxx'}{Value} = "apply to button page 4 (only for feedback light)" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%0100xxxx'}{Value} = "apply to button page 5 (only for feedback light)" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%0101xxxx'}{Value} = "apply to button page 6 (only for feedback light)" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%0110xxxx'}{Value} = "apply to button page 7 (only for feedback light)" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%0111xxxx'}{Value} = "apply to button page 8 (only for feedback light)" ;
#$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'1'}{Match}{'%1.......'}{Value} = "Apply to all button pages" ;

$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'2'}{Match}{'%0.......'}{Value} = "not blinking" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'2'}{Match}{'%1.......'}{Value} = "blinking" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'2'}{Match}{'%.00.....'}{Value} = "Default palette" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'2'}{Match}{'%.01.....'}{Value} = "Custom color with lowest priority" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'2'}{Match}{'%.10.....'}{Value} = "Custom color with mid priority" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'2'}{Match}{'%.11.....'}{Value} = "Custom color with highest priority" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'2'}{Match}{'%...(.....)'}{Name} = "Palette" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'2'}{Match}{'%...(.....)'}{Value} = "Palette" ;
$json{ModuleGeneral}{Messages}{EdgeLit}{Data}{'PerByte:3'}{'2'}{Match}{'%...(.....)'}{Convert} = "Decimal" ;

# Not used anymore
#$json{ModuleGeneral}{Messages}{TouchCoolerMode}{Data}{PerByte}{'0'}{Match}{'%........'}{Name} = "ThermostatCoHeMode" ;
#   $json{ModuleGeneral}{Messages}{TouchCoolerMode}{Data}{PerByte}{'0'}{Match}{'%........'}{Value} = "Cooler mode" ;
#   $json{ModuleGeneral}{Messages}{TouchCoolerMode}{Data}{PerByte}{'0'}{Match}{'%........'}{openHAB} = "1" ;
## Not used anymore
#$json{ModuleGeneral}{Messages}{TouchHeaterMode}{Data}{PerByte}{'0'}{Match}{'%........'}{Name} = "ThermostatCoHeMode" ;
#   $json{ModuleGeneral}{Messages}{TouchHeaterMode}{Data}{PerByte}{'0'}{Match}{'%........'}{Value} = "Heater mode" ;
#   $json{ModuleGeneral}{Messages}{TouchHeaterMode}{Data}{PerByte}{'0'}{Match}{'%........'}{openHAB} = "0" ;

###################
# Temperature Sensor Module : VMB1TS
$json{ModuleTypes}{'0C'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "01" ; # Temperature sensor is CH10
$json{ModuleTypes}{'0C'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "01" ; # Temperature sensor is CH10
$json{ModuleTypes}{'0C'}{Messages}{'EA'}{General} = "Thermostat" ;

################### Relays: messages
# 1-channel relay module: VMB1RY
$json{ModuleTypes}{'02'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'02'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000001'}{Channel} = "01" ;

$json{ModuleTypes}{'02'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Name} = "Status" ;
$json{ModuleTypes}{'02'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'00000000'}{Value} = "OFF" ;
$json{ModuleTypes}{'02'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'00000001'}{Value} = "ON" ;

# 4-channel relay module: VMB4RY
$json{ModuleTypes}{'08'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'08'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000001'}{Channel} = "01" ;
$json{ModuleTypes}{'08'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000010'}{Channel} = "02" ;
$json{ModuleTypes}{'08'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000100'}{Channel} = "03" ;
$json{ModuleTypes}{'08'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00001000'}{Channel} = "04" ;

$json{ModuleTypes}{'08'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Name} = "Status" ;
$json{ModuleTypes}{'08'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'00000000'}{Value} = "OFF" ;
$json{ModuleTypes}{'08'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'00000001'}{Value} = "ON" ;
$json{ModuleTypes}{'08'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'00000010'}{Value} = "ON" ;
$json{ModuleTypes}{'08'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'00000100'}{Value} = "ON" ;
$json{ModuleTypes}{'08'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'00001000'}{Value} = "ON" ;

# 4 channel relay module with directload connections: VMB4RYLD
# FB = COMMAND_RELAY_STATUS
$json{ModuleTypes}{'10'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'10'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000001'}{Channel} = "01" ;
$json{ModuleTypes}{'10'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000010'}{Channel} = "02" ;
$json{ModuleTypes}{'10'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000100'}{Channel} = "03" ;
$json{ModuleTypes}{'10'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00001000'}{Channel} = "04" ;
$json{ModuleTypes}{'10'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00010000'}{Channel} = "05" ; # Virtual channel

$json{ModuleTypes}{'10'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Name} = "Status" ;
$json{ModuleTypes}{'10'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'%......00'}{Value} = "OFF" ;
$json{ModuleTypes}{'10'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'%......01'}{Value} = "ON" ;
$json{ModuleTypes}{'10'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'%......11'}{Value} = "ON" ; # Timer on

# 4 channel relay module with normalopen contacts: VMB4RYNO
# FB = COMMAND_RELAY_STATUS
$json{ModuleTypes}{'11'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'11'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000001'}{Channel} = "01" ;
$json{ModuleTypes}{'11'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000010'}{Channel} = "02" ;
$json{ModuleTypes}{'11'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000100'}{Channel} = "03" ;
$json{ModuleTypes}{'11'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00001000'}{Channel} = "04" ;
$json{ModuleTypes}{'11'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00010000'}{Channel} = "05" ; # Virtual channel

$json{ModuleTypes}{'11'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Name} = "Status" ;
$json{ModuleTypes}{'11'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'%......00'}{Value} = "OFF" ;
$json{ModuleTypes}{'11'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'%......01'}{Value} = "ON" ;
$json{ModuleTypes}{'11'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'%......11'}{Value} = "ON" ; # Timer on

# 4 channel relay module with normalopen contacts: VMB1RYNO
# FB = COMMAND_RELAY_STATUS
$json{ModuleTypes}{'1B'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'1B'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000001'}{Channel} = "01" ;
$json{ModuleTypes}{'1B'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000010'}{Channel} = "02" ; # Virtual channel
$json{ModuleTypes}{'1B'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000100'}{Channel} = "03" ; # Virtual channel
$json{ModuleTypes}{'1B'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00001000'}{Channel} = "04" ; # Virtual channel
$json{ModuleTypes}{'1B'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00010000'}{Channel} = "05" ; # Virtual channel

$json{ModuleTypes}{'1B'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Name} = "Status" ;
$json{ModuleTypes}{'1B'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'%......00'}{Value} = "OFF" ;
$json{ModuleTypes}{'1B'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'%......01'}{Value} = "ON" ;
$json{ModuleTypes}{'1B'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'%......11'}{Value} = "ON" ; # Timer on

# 1 channel relay module: VMB1RYNOS
$json{ModuleTypes}{'29'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'29'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000001'}{Channel} = "01" ;
$json{ModuleTypes}{'29'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000010'}{Channel} = "02" ; # Virtual channel
$json{ModuleTypes}{'29'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000100'}{Channel} = "03" ; # Virtual channel
$json{ModuleTypes}{'29'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00001000'}{Channel} = "04" ; # Virtual channel
$json{ModuleTypes}{'29'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00010000'}{Channel} = "05" ; # Virtual channel

$json{ModuleTypes}{'29'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Name} = "Status" ;
$json{ModuleTypes}{'29'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'00000000'}{Value} = "OFF" ;
$json{ModuleTypes}{'29'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'00000001'}{Value} = "ON" ;

# Mini 1-kanaals wisselrelaismodule (voor standalone en velbus werking): VMB1RYS
$json{ModuleTypes}{'41'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'41'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'41'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000001'}{Channel} = "01" ;
$json{ModuleTypes}{'41'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000010'}{Channel} = "02" ; # Virtual channel
$json{ModuleTypes}{'41'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00000100'}{Channel} = "03" ; # Virtual channel
$json{ModuleTypes}{'41'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00001000'}{Channel} = "04" ; # Virtual channel
$json{ModuleTypes}{'41'}{Messages}{'FB'}{Data}{PerByte}{'0'}{Match}{'00010000'}{Channel} = "05" ; # Virtual channel

$json{ModuleTypes}{'41'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Name} = "Status" ;
$json{ModuleTypes}{'41'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'00000000'}{Value} = "OFF" ;
$json{ModuleTypes}{'41'}{Messages}{'FB'}{Data}{PerByte}{'2'}{Match}{'00000001'}{Value} = "ON" ;

################### Dimmers: messages
# Dimmer module: VMB1DM
# 0F = COMMAND_SLIDER_STATUS
$json{ModuleTypes}{'07'}{Messages}{'0F'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'07'}{Messages}{'0F'}{Data}{PerByte}{'0'}{Match}{'01'}{Channel} = "01" ;
$json{ModuleTypes}{'07'}{Messages}{'0F'}{Data}{PerByte}{'1'}{Name} = "Status" ;
$json{ModuleTypes}{'07'}{Messages}{'0F'}{Data}{PerByte}{'1'}{Match}{'%.'}{Convert} = "Decimal" ;

# EE = COMMAND_DIMMER_STATUS
$json{ModuleTypes}{'07'}{Messages}{'EE'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'07'}{Messages}{'EE'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "01" ;
$json{ModuleTypes}{'07'}{Messages}{'EE'}{Data}{PerByte}{'1'}{Name} = "Status" ;
$json{ModuleTypes}{'07'}{Messages}{'EE'}{Data}{PerByte}{'1'}{Match}{'%.'}{Convert} = "Decimal" ;

# PWM LED strip dimmer module: VMB1LED
# 0F = COMMAND_SLIDER_STATUS
$json{ModuleTypes}{'0F'}{Messages}{'0F'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'0F'}{Messages}{'0F'}{Data}{PerByte}{'0'}{Match}{'01'}{Channel} = "01" ;
$json{ModuleTypes}{'0F'}{Messages}{'0F'}{Data}{PerByte}{'1'}{Name} = "Status" ;
$json{ModuleTypes}{'0F'}{Messages}{'0F'}{Data}{PerByte}{'1'}{Match}{'%.'}{Convert} = "Decimal" ;

# EE = COMMAND_DIMMER_STATUS
$json{ModuleTypes}{'0F'}{Messages}{'EE'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'0F'}{Messages}{'EE'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "01" ;
$json{ModuleTypes}{'0F'}{Messages}{'EE'}{Data}{PerByte}{'1'}{Name} = "Status" ;
$json{ModuleTypes}{'0F'}{Messages}{'EE'}{Data}{PerByte}{'1'}{Match}{'%.'}{Convert} = "Decimal" ;

# 0/1 to 10V dimmer controller module: VMB4DC
# 07 = COMMAND_SET_DIMVALUE
$json{ModuleTypes}{'12'}{Messages}{'07'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'12'}{Messages}{'07'}{Data}{PerByte}{'0'}{Match}{'01'}{Channel} = "01" ;
$json{ModuleTypes}{'12'}{Messages}{'07'}{Data}{PerByte}{'0'}{Match}{'02'}{Channel} = "02" ;
$json{ModuleTypes}{'12'}{Messages}{'07'}{Data}{PerByte}{'0'}{Match}{'04'}{Channel} = "03" ;
$json{ModuleTypes}{'12'}{Messages}{'07'}{Data}{PerByte}{'0'}{Match}{'08'}{Channel} = "04" ;
$json{ModuleTypes}{'12'}{Messages}{'07'}{Data}{PerByte}{'1'}{Name} = "Status" ;
$json{ModuleTypes}{'12'}{Messages}{'07'}{Data}{PerByte}{'1'}{Match}{'%.'}{Convert} = "Decimal" ;

# B8 = COMMAND_DIMMERCONTROLLER_STATUS: answer to 07 = COMMAND_SET_DIMVALUE
$json{ModuleTypes}{'12'}{Messages}{'B8'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'12'}{Messages}{'B8'}{Data}{PerByte}{'0'}{Match}{'00000001'}{Channel} = "01" ;
$json{ModuleTypes}{'12'}{Messages}{'B8'}{Data}{PerByte}{'0'}{Match}{'00000010'}{Channel} = "02" ;
$json{ModuleTypes}{'12'}{Messages}{'B8'}{Data}{PerByte}{'0'}{Match}{'00000100'}{Channel} = "03" ;
$json{ModuleTypes}{'12'}{Messages}{'B8'}{Data}{PerByte}{'0'}{Match}{'00001000'}{Channel} = "04" ;
$json{ModuleTypes}{'12'}{Messages}{'B8'}{Data}{PerByte}{'2'}{Name} = "Status" ;
$json{ModuleTypes}{'12'}{Messages}{'B8'}{Data}{PerByte}{'2'}{Match}{'%.'}{Convert} = "Decimal" ;

# Dimmer module: VMBDME
# 0F = COMMAND_SLIDER_STATUS
$json{ModuleTypes}{'14'}{Messages}{'0F'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'14'}{Messages}{'0F'}{Data}{PerByte}{'0'}{Match}{'01'}{Channel} = "01" ;
$json{ModuleTypes}{'14'}{Messages}{'0F'}{Data}{PerByte}{'1'}{Name} = "Status" ;
$json{ModuleTypes}{'14'}{Messages}{'0F'}{Data}{PerByte}{'1'}{Match}{'%.'}{Convert} = "Decimal" ;

# Velbus dimmer for resistive orinductive load: VMBDMI
# 0F = COMMAND_SLIDER_STATUS
$json{ModuleTypes}{'15'}{Messages}{'0F'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'15'}{Messages}{'0F'}{Data}{PerByte}{'0'}{Match}{'01'}{Channel} = "01" ;
$json{ModuleTypes}{'15'}{Messages}{'0F'}{Data}{PerByte}{'1'}{Name} = "Status" ;
$json{ModuleTypes}{'15'}{Messages}{'0F'}{Data}{PerByte}{'1'}{Match}{'%.'}{Convert} = "Decimal" ;

# B8 = COMMAND_DIMMERCONTROLLER_STATUS: answer to 07 = COMMAND_SET_DIMVALUE
$json{ModuleTypes}{'15'}{Messages}{'B8'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'15'}{Messages}{'B8'}{Data}{PerByte}{'0'}{Match}{'00000001'}{Channel} = "01" ;
$json{ModuleTypes}{'15'}{Messages}{'B8'}{Data}{PerByte}{'2'}{Name} = "Status" ;
$json{ModuleTypes}{'15'}{Messages}{'B8'}{Data}{PerByte}{'2'}{Match}{'%.'}{Convert} = "Decimal" ;

# Velbus dimmer for resistive orinductive load: VMBDMI-R
# 0F = COMMAND_SLIDER_STATUS
$json{ModuleTypes}{'2F'}{Messages}{'0F'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'2F'}{Messages}{'0F'}{Data}{PerByte}{'0'}{Match}{'01'}{Channel} = "01" ;
$json{ModuleTypes}{'2F'}{Messages}{'0F'}{Data}{PerByte}{'1'}{Name} = "Status" ;
$json{ModuleTypes}{'2F'}{Messages}{'0F'}{Data}{PerByte}{'1'}{Match}{'%.'}{Convert} = "Decimal" ;

# B8 = COMMAND_DIMMERCONTROLLER_STATUS: answer to 07 = COMMAND_SET_DIMVALUE
$json{ModuleTypes}{'2F'}{Messages}{'B8'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'2F'}{Messages}{'B8'}{Data}{PerByte}{'0'}{Match}{'00000001'}{Channel} = "01" ;
$json{ModuleTypes}{'2F'}{Messages}{'B8'}{Data}{PerByte}{'2'}{Name} = "Status" ;
$json{ModuleTypes}{'2F'}{Messages}{'B8'}{Data}{PerByte}{'2'}{Match}{'%.'}{Convert} = "Decimal" ;

################### Blinds: messages
# Blind Control Module: VMB1BL
# EC = COMMAND_BLIND_STATUS
$json{ModuleTypes}{'03'}{Messages}{'EC'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'03'}{Messages}{'EC'}{Data}{PerByte}{'0'}{Match}{'03'}{Channel} = "01" ;

# Blind status
# No Procent in Byte 4
$json{ModuleTypes}{'03'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Name} = "Status" ;
$json{ModuleTypes}{'03'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000000'}{Value} = "Blinds off" ;
$json{ModuleTypes}{'03'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000001'}{Value} = "Blind 1 up" ;
$json{ModuleTypes}{'03'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000001'}{openHAB} = "0" ;
$json{ModuleTypes}{'03'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000001'}{Channel} = "01" ;

$json{ModuleTypes}{'03'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000010'}{Value} = "Blind 1 down" ;
$json{ModuleTypes}{'03'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000010'}{openHAB} = "100" ;
$json{ModuleTypes}{'03'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000010'}{Channel} = "01" ;

# 2-channel Blind Control Module: VMB2BL
# EC = COMMAND_BLIND_STATUS
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'0'}{Match}{'03'}{Channel} = "01" ;
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'0'}{Match}{'0C'}{Channel} = "02" ;

# Blind status
# No Procent in Byte 4
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Name} = "Status" ;
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000000'}{Value} = "Blinds off" ;
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000001'}{Value} = "Blind 1 up" ;
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000001'}{openHAB} = "0" ;
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000001'}{Channel} = "01" ;

$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000010'}{Value} = "Blind 1 down" ;
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000010'}{openHAB} = "100" ;
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000010'}{Channel} = "01" ;

$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000100'}{Value} = "Blind 2 up" ;
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000100'}{openHAB} = "0" ;
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00000100'}{Channel} = "02" ;

$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00001000'}{Value} = "Blind 2 down" ;
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00001000'}{openHAB} = "100" ;
$json{ModuleTypes}{'09'}{Messages}{'EC'}{Data}{PerByte}{'2'}{Match}{'00001000'}{Channel} = "02" ;

# Blind Control Module: VMB1BLS
# EC = COMMAND_BLIND_STATUS
$json{ModuleTypes}{'2E'}{Messages}{'EC'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'2E'}{Messages}{'EC'}{Data}{PerByte}{'0'}{Match}{'01'}{Channel} = "01" ;

# blind position (0% = up...100%=down)
$json{ModuleTypes}{'2E'}{Messages}{'EC'}{Data}{PerByte}{'4'}{Name} = "Status" ;
$json{ModuleTypes}{'2E'}{Messages}{'EC'}{Data}{PerByte}{'4'}{Match}{'%.'}{Convert} = "Decimal" ;

# 2 channel blind module: VMB2BLE
# EC = COMMAND_BLIND_STATUS
$json{ModuleTypes}{'1D'}{Messages}{'EC'}{Data}{PerByte}{'0'}{Name} = "Channel" ;
$json{ModuleTypes}{'1D'}{Messages}{'EC'}{Data}{PerByte}{'0'}{Match}{'01'}{Channel} = "01" ;
$json{ModuleTypes}{'1D'}{Messages}{'EC'}{Data}{PerByte}{'0'}{Match}{'02'}{Channel} = "02" ;

# blind position (0% = up...100%=down)
$json{ModuleTypes}{'1D'}{Messages}{'EC'}{Data}{PerByte}{'4'}{Name} = "Status" ;
$json{ModuleTypes}{'1D'}{Messages}{'EC'}{Data}{PerByte}{'4'}{Match}{'%.'}{Convert} = "Decimal" ;

################### Touch panels: messages
# One, two or four touch buttonsmodule: VMBGP1
$json{ModuleTypes}{'1E'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'1E'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'1E'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'1E'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'1E'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;

# One, two or four touch buttonsmodule: VMBGP2
$json{ModuleTypes}{'1F'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'1F'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'1F'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'1F'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'1F'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;

# One, two or four touch buttonsmodule: VMBGP4
$json{ModuleTypes}{'20'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'20'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'20'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'20'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'20'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;

# VMBGPO (21): Touch panel with Oled display
$json{ModuleTypes}{'21'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'21'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "34" ; # Temperature sensor is CH34 in velbusLink
$json{ModuleTypes}{'21'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "34" ; # Temperature sensor is CH34 in velbusLink
$json{ModuleTypes}{'21'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'21'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;

# Four touch buttons with PIR detectormodule: VMBGP4PIR
$json{ModuleTypes}{'2D'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'2D'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'2D'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'2D'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'2D'}{Messages}{'ED'}{General} = "ButtonChannelStatus LightSensorChannelStatus7" ;

# Touch panel with Oled display: VMBGPOD
$json{ModuleTypes}{'28'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'28'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "34" ; # Temperature sensor is CH34 in velbusLink
$json{ModuleTypes}{'28'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "34" ; # Temperature sensor is CH34 in velbusLink
$json{ModuleTypes}{'28'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'28'}{Messages}{'AC'}{Data}{PerMessage}{Convert} = "MemoText" ;
$json{ModuleTypes}{'28'}{Messages}{'AC'}{Data}{PerMessage}{Channel} = "99" ;
$json{ModuleTypes}{'28'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;

# VMBEL1 (34): Edge-lit one, two or four touch buttons module
$json{ModuleTypes}{'34'}{Messages}{'00'}{General} = "ButtonPress OpenCollectorChannelStatus124" ;
$json{ModuleTypes}{'34'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "09" ; # Temperature sensor is CH09 in velbusLink
$json{ModuleTypes}{'34'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "09" ; # Temperature sensor is CH09 in velbusLink
$json{ModuleTypes}{'34'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'34'}{Messages}{'D4'}{General} = "EdgeLit" ;
$json{ModuleTypes}{'34'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;
$json{ModuleTypes}{'34'}{Messages}{'FB'}{Data} = "yes" ; # This is tricky. This message is not available for the module but have to define it so the open collector (Type=Relay) will be enabled (FB = status message for Relay).

# VMBEL2 (35): Edge-lit one, two or four touch buttons module
$json{ModuleTypes}{'35'}{Messages}{'00'}{General} = "ButtonPress OpenCollectorChannelStatus124" ;
$json{ModuleTypes}{'35'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "09" ; # Temperature sensor is CH09 in velbusLink
$json{ModuleTypes}{'35'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "09" ; # Temperature sensor is CH09 in velbusLink
$json{ModuleTypes}{'35'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'35'}{Messages}{'D4'}{General} = "EdgeLit" ;
$json{ModuleTypes}{'35'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;
$json{ModuleTypes}{'35'}{Messages}{'FB'}{Data} = "yes" ; # This is tricky. This message is not available for the module but have to define it so the open collector (Type=Relay) will be enabled (FB = status message for Relay).

# VMBEL4 (36): Edge-lit one, two or four touch buttons module
$json{ModuleTypes}{'36'}{Messages}{'00'}{General} = "ButtonPress OpenCollectorChannelStatus124" ;
$json{ModuleTypes}{'36'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "09" ; # Temperature sensor is CH09 in velbusLink
$json{ModuleTypes}{'36'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "09" ; # Temperature sensor is CH09 in velbusLink
$json{ModuleTypes}{'36'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'36'}{Messages}{'D4'}{General} = "EdgeLit" ;
$json{ModuleTypes}{'36'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;
$json{ModuleTypes}{'36'}{Messages}{'FB'}{Data} = "yes" ; # This is tricky. This message is not available for the module but have to define it so the open collector (Type=Relay) will be enabled (FB = status message for Relay).

# VMBELO (37): Edge-lit touch panel with Oled display
$json{ModuleTypes}{'37'}{Messages}{'00'}{General} = "ButtonPress OpenCollectorChannelStatusO" ;
$json{ModuleTypes}{'37'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "33" ; # Temperature sensor is CH33 in velbusLink
$json{ModuleTypes}{'37'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "33" ; # Temperature sensor is CH33 in velbusLink
$json{ModuleTypes}{'37'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'37'}{Messages}{'AC'}{Data}{PerMessage}{Convert} = "MemoText" ;
$json{ModuleTypes}{'37'}{Messages}{'AC'}{Data}{PerMessage}{Channel} = "99" ;
$json{ModuleTypes}{'37'}{Messages}{'D4'}{General} = "EdgeLit" ;
$json{ModuleTypes}{'37'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;
$json{ModuleTypes}{'37'}{Messages}{'FB'}{Data} = "yes" ; # This is tricky. This message is not available for the module but have to define it so the open collector (Type=Relay) will be enabled (FB = status message for Relay).

# VMBGP1-2 (3A): One, two or four touch buttons module (ed2)e
$json{ModuleTypes}{'3A'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'3A'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'3A'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'3A'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'3A'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;

# VMBGP2-2 (3B): One, two or four touch buttons module (ed2)e
$json{ModuleTypes}{'3B'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'3B'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'3B'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'3B'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'3B'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;

# VMBGP4-2 (3C): One, two or four touch buttons module (ed2)e
$json{ModuleTypes}{'3C'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'3C'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'3C'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "10" ; # Temperature sensor is CH10 in velbusLink
$json{ModuleTypes}{'3C'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'3C'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;

# VMBGPOD-2 (3D): Touch panel with Oled display (ed2)
$json{ModuleTypes}{'3D'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'3D'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "34" ; # Temperature sensor is CH34 in velbusLink
$json{ModuleTypes}{'3D'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "34" ; # Temperature sensor is CH34 in velbusLink
$json{ModuleTypes}{'3D'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'3D'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;
$json{ModuleTypes}{'3D'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;

# VMBGP4PIR-2 (3E): Four touch buttons with PIR detector module (ed2)
$json{ModuleTypes}{'3E'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'3E'}{Messages}{'EA'}{Data}{PerByte}{'0'}{Match}{'%.'}{Channel} = "34" ; # Temperature sensor is CH34 in velbusLink
$json{ModuleTypes}{'3E'}{Messages}{'EA'}{Data}{PerByte}{'4'}{Match}{'%.'}{Channel} = "34" ; # Temperature sensor is CH34 in velbusLink
$json{ModuleTypes}{'3E'}{Messages}{'EA'}{General} = "Thermostat ThermostatChannelTouch" ;
$json{ModuleTypes}{'3E'}{Messages}{'ED'}{General} = "ButtonChannelStatus LightSensorChannelStatus7" ;

################### Input: messages
# 8-channel Push button interface module: VMB8PB
$json{ModuleTypes}{'01'}{Messages}{'00'}{General} = "ButtonPress" ;

# 6-Channel Input Module :VMB6IN
$json{ModuleTypes}{'05'}{Messages}{'00'}{General} = "ButtonPress" ;

# 6-Channel Input Module :VMB6PB-20
$json{ModuleTypes}{'4C'}{Messages}{'00'}{General} = "ButtonPress" ;

# 8-channel Push button interface module: VMB8PBU
$json{ModuleTypes}{'16'}{Messages}{'00'}{General} = "ButtonPress" ;

# 7 channel input module: VMB7IN
$json{ModuleTypes}{'22'}{Messages}{'00'}{General} = "ButtonPress" ;
$json{ModuleTypes}{'22'}{Messages}{'BE'}{Data}{PerByte}{'0'}{Match}{'%........'}{Convert} = "Divider" ;
$json{ModuleTypes}{'22'}{Messages}{'BE'}{Data}{PerByte}{'0'}{Match}{'%........'}{Name} = "Divider" ;
$json{ModuleTypes}{'22'}{Messages}{'BE'}{Data}{PerByte}{'1'}{Match}{'%.'}{Convert} = "Counter" ;
$json{ModuleTypes}{'22'}{Messages}{'BE'}{Data}{PerByte}{'2'}{Match}{'%.'}{Convert} = "Counter" ;
$json{ModuleTypes}{'22'}{Messages}{'BE'}{Data}{PerByte}{'3'}{Match}{'%.'}{Convert} = "Counter" ;
$json{ModuleTypes}{'22'}{Messages}{'BE'}{Data}{PerByte}{'4'}{Match}{'%.'}{Convert} = "Counter" ;
$json{ModuleTypes}{'22'}{Messages}{'ED'}{General} = "ButtonChannelStatus" ;

# Push button and timer panel: VMB4PD
$json{ModuleTypes}{'0B'}{Messages}{'00'}{General} = "ButtonPress" ;

# Push button module for 1 or 2 NIKO push buttons : VMB2PBN
$json{ModuleTypes}{'18'}{Messages}{'00'}{General} = "ButtonPress" ;

# Push button interface module for 4 or 6 NIKO push buttons : VMB6PBN
$json{ModuleTypes}{'17'}{Messages}{'00'}{General} = "ButtonPress" ;

################### PIR Sensors: Messages
# Mini PIR detector module: VMBPIRM
$json{ModuleTypes}{'2A'}{Messages}{'00'}{General} = "PirOutput" ;
$json{ModuleTypes}{'2A'}{Messages}{'ED'}{General} = "LightSensorChannelStatus7" ;

# VMBPIRC (2B): Ceiling PIR detector module
$json{ModuleTypes}{'2B'}{Messages}{'00'}{General} = "PirOutput" ;
$json{ModuleTypes}{'2B'}{Messages}{'ED'}{General} = "LightSensorChannelStatus7" ;

# Outdour PIR sensor: VMBPIRO
$json{ModuleTypes}{'2C'}{Messages}{'00'}{General} = "PirOutput" ;
$json{ModuleTypes}{'2C'}{Messages}{'ED'}{General} = "LightSensorChannelStatus8" ;

################### Other
# VMBMETEO (31): Meteo station
$json{ModuleTypes}{'31'}{Messages}{'00'}{General} = "PirOutput" ;
$json{ModuleTypes}{'31'}{Messages}{'AC'}{Data}{PerMessage}{Convert} = "SensorNumber" ;

# VMB4AN (32): Analog I/O module
$json{ModuleTypes}{'32'}{Messages}{'AC'}{Data}{PerMessage}{Convert} = "SensorNumber" ;

$json{ModuleTypes}{'32'}{Messages}{'A9'}{Data}{Name} = "SensorType" ;
$json{ModuleTypes}{'32'}{Messages}{'A9'}{Data}{PerByte}{'0'}{Match}{'%.'}{Convert} = "Channel" ;
$json{ModuleTypes}{'32'}{Messages}{'A9'}{Data}{PerByte}{'1'}{Match}{'%......00'}{Value} = "Voltage" ;
$json{ModuleTypes}{'32'}{Messages}{'A9'}{Data}{PerByte}{'1'}{Match}{'%......01'}{Value} = "Current" ;
$json{ModuleTypes}{'32'}{Messages}{'A9'}{Data}{PerByte}{'1'}{Match}{'%......10'}{Value} = "Resistance" ;
$json{ModuleTypes}{'32'}{Messages}{'A9'}{Data}{PerByte}{'1'}{Match}{'%......11'}{Value} = "Period" ;

# VMBVP1 (33): Doorbird interface module
$json{ModuleTypes}{'33'}{Messages}{'00'}{General} = "ButtonPress" ;

# Merge the {General} information
foreach my $ModuleType (sort keys %{$json{ModuleTypes}}) {
   foreach my $MessageType (sort keys %{$json{ModuleTypes}{$ModuleType}{Messages}}) {
      if ( defined $json{ModuleTypes}{$ModuleType}{Messages}{$MessageType}{General} ) {
         foreach my $GeneralType (split " ", $json{ModuleTypes}{$ModuleType}{Messages}{$MessageType}{General} ) {
            if ( defined $json{ModuleGeneral}{Messages}{$GeneralType} ) {
               %{$json{ModuleTypes}{$ModuleType}{Messages}{$MessageType}} = %{ merge( \%{$json{ModuleTypes}{$ModuleType}{Messages}{$MessageType}}, \%{$json{ModuleGeneral}{Messages}{$GeneralType}} ) };
            }
         }
         delete $json{ModuleTypes}{$ModuleType}{Messages}{$MessageType}{General} ;
      }
   }
}

return 1 ;
