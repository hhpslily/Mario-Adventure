## Clock signal
	set_property PACKAGE_PIN W5 [get_ports clk]
		set_property IOSTANDARD LVCMOS33 [get_ports clk]
		create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

##Buttons
	#btnC
	#set_property PACKAGE_PIN U18 [get_ports reset]
	#set_property IOSTANDARD LVCMOS33 [get_ports reset]
	
##Pmod Header JB
	##Sch name = JB1
	set_property PACKAGE_PIN A14 [get_ports pmod_1]
	set_property IOSTANDARD LVCMOS33 [get_ports pmod_1]
	##Sch name = JB2
	set_property PACKAGE_PIN A16 [get_ports pmod_2]
	set_property IOSTANDARD LVCMOS33 [get_ports {pmod_2}]
	##Sch name = JB4
	set_property PACKAGE_PIN B16 [get_ports pmod_4]
	set_property IOSTANDARD LVCMOS33 [get_ports pmod_4]

	set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
	set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
	set_property CONFIG_MODE SPIx4 [current_design]

	set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]

	set_property CONFIG_VOLTAGE 3.3 [current_design]
	set_property CFGBVS VCCO [current_design]
