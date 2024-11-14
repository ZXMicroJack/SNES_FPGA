set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVTTL} [get_ports SPI_DO]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVTTL} [get_ports SPI_DI]
set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVTTL} [get_ports SPI_SCK]
set_property -dict {PACKAGE_PIN W9 IOSTANDARD LVTTL} [get_ports CONF_DATA0]
set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVTTL} [get_ports SPI_SS2]
set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVTTL} [get_ports SPI_SS3]
set_property -dict {PACKAGE_PIN W4 IOSTANDARD LVTTL} [get_ports SPI_SS4]


#define GPIO_RP2U_XLOAD       26 // AA4
#define GPIO_RP2U_XSCK        27 // AB5
#define GPIO_RP2U_XDATA       28 // AA6


#set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets pong_inst/user_io/SPI_MISO_i_13_0]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets SPI_SCK_IBUF]

#16  v8_miso \   uart0 tx, SPI0RX
#17  w9_mosi |-- sdcard high level / uart0 rx, SPI0CSN
#18  w7_sck  |   SPI0SCK
#19  v7_cs   /   SPI0TX


