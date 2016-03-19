#------------------GLOBAL--------------------#
set_global_assignment -name FAMILY "Cyclone IV E"
set_global_assignment -name DEVICE EP4CE6F17C8
set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
set_global_assignment -name ENABLE_INIT_DONE_OUTPUT OFF

#复位引脚
set_location_assignment	PIN_E15	-to RSTn

#时钟引脚
set_location_assignment	PIN_E1	-to CLK

#LED对应的引脚
set_location_assignment	PIN_G15	-to LED_Out[0]
set_location_assignment	PIN_F16	-to LED_Out[1]
set_location_assignment	PIN_F15	-to LED_Out[2]
set_location_assignment	PIN_D16	-to LED_Out[3]





