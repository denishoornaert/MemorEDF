# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -display_name {Scheduling Parameters}]
  #Adding Group
  set Ports [ipgui::add_group $IPINST -name "Ports" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "CONFIGURATION_PORT_ENABLED" -parent ${Ports}

  #Adding Group
  set Scheduling_policies [ipgui::add_group $IPINST -name "Scheduling policies" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "EDF_ENABLED" -parent ${Scheduling_policies}
  ipgui::add_param $IPINST -name "TDMA_ENABLED" -parent ${Scheduling_policies}
  ipgui::add_param $IPINST -name "FP_ENABLED" -parent ${Scheduling_policies}
  ipgui::add_param $IPINST -name "MG_ENABLED" -parent ${Scheduling_policies}
  ipgui::add_param $IPINST -name "PRNG_FIBONACCI_ENABLED" -parent ${Scheduling_policies}
  ipgui::add_param $IPINST -name "PRNG_GALLOIS_ENABLED" -parent ${Scheduling_policies}
  ipgui::add_param $IPINST -name "AGING_ENABLED" -parent ${Scheduling_policies}

  #Adding Group
  set Elements_size [ipgui::add_group $IPINST -name "Elements size" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "DATA_SIZE" -parent ${Elements_size}
  ipgui::add_param $IPINST -name "REGISTER_SIZE" -parent ${Elements_size}
  ipgui::add_param $IPINST -name "PRIORITY_SIZE" -parent ${Elements_size}

  #Adding Group
  set Queues_parameters [ipgui::add_group $IPINST -name "Queues parameters" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "NUMBER_OF_QUEUES" -parent ${Queues_parameters}
  ipgui::add_param $IPINST -name "QUEUE_LENGTH" -parent ${Queues_parameters}


  #Adding Page
  set AXI_parameters [ipgui::add_page $IPINST -name "AXI parameters"]
  #Adding Group
  set Classes [ipgui::add_group $IPINST -name "Classes" -parent ${AXI_parameters} -layout horizontal]
  #Adding Group
  set Slaves [ipgui::add_group $IPINST -name "Slaves" -parent ${Classes}]
  set_property tooltip {Slaves} ${Slaves}
  #Adding Group
  set Slave_port [ipgui::add_group $IPINST -name "Slave port" -parent ${Slaves} -display_name {Slave port 1}]
  set_property tooltip {Slave port 1} ${Slave_port}
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Slave_port} -widget comboBox
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Slave_port} -widget comboBox
  ipgui::add_param $IPINST -name "C_S00_AXI_ID_WIDTH" -parent ${Slave_port}
  ipgui::add_param $IPINST -name "C_S00_AXI_AWUSER_WIDTH" -parent ${Slave_port}
  ipgui::add_param $IPINST -name "C_S00_AXI_ARUSER_WIDTH" -parent ${Slave_port}

  #Adding Group
  set Slave_port_2 [ipgui::add_group $IPINST -name "Slave port 2" -parent ${Slaves}]
  set_property tooltip {Slave port 2} ${Slave_port_2}
  ipgui::add_param $IPINST -name "C_S02_AXI_ADDR_WIDTH" -parent ${Slave_port_2}
  ipgui::add_param $IPINST -name "C_S02_AXI_DATA_WIDTH" -parent ${Slave_port_2}
  ipgui::add_param $IPINST -name "C_S02_AXI_ID_WIDTH" -parent ${Slave_port_2}
  ipgui::add_param $IPINST -name "C_S02_AXI_AWUSER_WIDTH" -parent ${Slave_port_2}
  ipgui::add_param $IPINST -name "C_S02_AXI_ARUSER_WIDTH" -parent ${Slave_port_2}

  #Adding Group
  set Config_port [ipgui::add_group $IPINST -name "Config port" -parent ${Slaves}]
  ipgui::add_param $IPINST -name "C_S01_AXI_ADDR_WIDTH" -parent ${Config_port} -widget comboBox
  ipgui::add_param $IPINST -name "C_S01_AXI_DATA_WIDTH" -parent ${Config_port} -widget comboBox
  ipgui::add_param $IPINST -name "C_S01_AXI_ID_WIDTH" -parent ${Config_port}
  ipgui::add_param $IPINST -name "C_S01_AXI_AWUSER_WIDTH" -parent ${Config_port}
  ipgui::add_param $IPINST -name "C_S01_AXI_ARUSER_WIDTH" -parent ${Config_port}


  #Adding Group
  set Masters [ipgui::add_group $IPINST -name "Masters" -parent ${Classes}]
  set_property tooltip {Masters} ${Masters}
  #Adding Group
  set Master_port [ipgui::add_group $IPINST -name "Master port" -parent ${Masters} -display_name {Master port 1}]
  set_property tooltip {Master port 1} ${Master_port}
  ipgui::add_param $IPINST -name "C_M00_AXI_ADDR_WIDTH" -parent ${Master_port} -widget comboBox
  ipgui::add_param $IPINST -name "C_M00_AXI_DATA_WIDTH" -parent ${Master_port} -widget comboBox
  ipgui::add_param $IPINST -name "C_M00_AXI_ID_WIDTH" -parent ${Master_port}
  ipgui::add_param $IPINST -name "C_M00_AXI_AWUSER_WIDTH" -parent ${Master_port}
  ipgui::add_param $IPINST -name "C_M00_AXI_ARUSER_WIDTH" -parent ${Master_port}
  ipgui::add_param $IPINST -name "C_M00_AXI_BURST_LEN" -parent ${Master_port}




  ipgui::add_param $IPINST -name "UPPER_BOUND" -widget comboBox
  ipgui::add_param $IPINST -name "LOWER_BOUND" -widget comboBox

}

proc update_PARAM_VALUE.AGING_ENABLED { PARAM_VALUE.AGING_ENABLED } {
	# Procedure called to update AGING_ENABLED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AGING_ENABLED { PARAM_VALUE.AGING_ENABLED } {
	# Procedure called to validate AGING_ENABLED
	return true
}

proc update_PARAM_VALUE.CONFIGURATION_PORT_ENABLED { PARAM_VALUE.CONFIGURATION_PORT_ENABLED } {
	# Procedure called to update CONFIGURATION_PORT_ENABLED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONFIGURATION_PORT_ENABLED { PARAM_VALUE.CONFIGURATION_PORT_ENABLED } {
	# Procedure called to validate CONFIGURATION_PORT_ENABLED
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_ARUSER_WIDTH { PARAM_VALUE.C_M00_AXI_ARUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_ARUSER_WIDTH { PARAM_VALUE.C_M00_AXI_ARUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_AWUSER_WIDTH { PARAM_VALUE.C_M00_AXI_AWUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_AWUSER_WIDTH { PARAM_VALUE.C_M00_AXI_AWUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_BURST_LEN { PARAM_VALUE.C_M00_AXI_BURST_LEN } {
	# Procedure called to update C_M00_AXI_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_BURST_LEN { PARAM_VALUE.C_M00_AXI_BURST_LEN } {
	# Procedure called to validate C_M00_AXI_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to update C_M00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_ID_WIDTH { PARAM_VALUE.C_M00_AXI_ID_WIDTH } {
	# Procedure called to update C_M00_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_ID_WIDTH { PARAM_VALUE.C_M00_AXI_ID_WIDTH } {
	# Procedure called to validate C_M00_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ARUSER_WIDTH { PARAM_VALUE.C_S00_AXI_ARUSER_WIDTH } {
	# Procedure called to update C_S00_AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ARUSER_WIDTH { PARAM_VALUE.C_S00_AXI_ARUSER_WIDTH } {
	# Procedure called to validate C_S00_AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_AWUSER_WIDTH { PARAM_VALUE.C_S00_AXI_AWUSER_WIDTH } {
	# Procedure called to update C_S00_AXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_AWUSER_WIDTH { PARAM_VALUE.C_S00_AXI_AWUSER_WIDTH } {
	# Procedure called to validate C_S00_AXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ID_WIDTH { PARAM_VALUE.C_S00_AXI_ID_WIDTH } {
	# Procedure called to update C_S00_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ID_WIDTH { PARAM_VALUE.C_S00_AXI_ID_WIDTH } {
	# Procedure called to validate C_S00_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S01_AXI_ADDR_WIDTH { PARAM_VALUE.C_S01_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S01_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXI_ADDR_WIDTH { PARAM_VALUE.C_S01_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S01_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S01_AXI_ARUSER_WIDTH { PARAM_VALUE.C_S01_AXI_ARUSER_WIDTH } {
	# Procedure called to update C_S01_AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXI_ARUSER_WIDTH { PARAM_VALUE.C_S01_AXI_ARUSER_WIDTH } {
	# Procedure called to validate C_S01_AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S01_AXI_AWUSER_WIDTH { PARAM_VALUE.C_S01_AXI_AWUSER_WIDTH } {
	# Procedure called to update C_S01_AXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXI_AWUSER_WIDTH { PARAM_VALUE.C_S01_AXI_AWUSER_WIDTH } {
	# Procedure called to validate C_S01_AXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S01_AXI_DATA_WIDTH { PARAM_VALUE.C_S01_AXI_DATA_WIDTH } {
	# Procedure called to update C_S01_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXI_DATA_WIDTH { PARAM_VALUE.C_S01_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S01_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S01_AXI_ID_WIDTH { PARAM_VALUE.C_S01_AXI_ID_WIDTH } {
	# Procedure called to update C_S01_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S01_AXI_ID_WIDTH { PARAM_VALUE.C_S01_AXI_ID_WIDTH } {
	# Procedure called to validate C_S01_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_ADDR_WIDTH { PARAM_VALUE.C_S02_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S02_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_ADDR_WIDTH { PARAM_VALUE.C_S02_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S02_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_ARUSER_WIDTH { PARAM_VALUE.C_S02_AXI_ARUSER_WIDTH } {
	# Procedure called to update C_S02_AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_ARUSER_WIDTH { PARAM_VALUE.C_S02_AXI_ARUSER_WIDTH } {
	# Procedure called to validate C_S02_AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_AWUSER_WIDTH { PARAM_VALUE.C_S02_AXI_AWUSER_WIDTH } {
	# Procedure called to update C_S02_AXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_AWUSER_WIDTH { PARAM_VALUE.C_S02_AXI_AWUSER_WIDTH } {
	# Procedure called to validate C_S02_AXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_DATA_WIDTH { PARAM_VALUE.C_S02_AXI_DATA_WIDTH } {
	# Procedure called to update C_S02_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_DATA_WIDTH { PARAM_VALUE.C_S02_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S02_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S02_AXI_ID_WIDTH { PARAM_VALUE.C_S02_AXI_ID_WIDTH } {
	# Procedure called to update C_S02_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S02_AXI_ID_WIDTH { PARAM_VALUE.C_S02_AXI_ID_WIDTH } {
	# Procedure called to validate C_S02_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.DATA_SIZE { PARAM_VALUE.DATA_SIZE } {
	# Procedure called to update DATA_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_SIZE { PARAM_VALUE.DATA_SIZE } {
	# Procedure called to validate DATA_SIZE
	return true
}

proc update_PARAM_VALUE.EDF_ENABLED { PARAM_VALUE.EDF_ENABLED } {
	# Procedure called to update EDF_ENABLED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EDF_ENABLED { PARAM_VALUE.EDF_ENABLED } {
	# Procedure called to validate EDF_ENABLED
	return true
}

proc update_PARAM_VALUE.FP_ENABLED { PARAM_VALUE.FP_ENABLED } {
	# Procedure called to update FP_ENABLED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FP_ENABLED { PARAM_VALUE.FP_ENABLED } {
	# Procedure called to validate FP_ENABLED
	return true
}

proc update_PARAM_VALUE.LOWER_BOUND { PARAM_VALUE.LOWER_BOUND } {
	# Procedure called to update LOWER_BOUND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LOWER_BOUND { PARAM_VALUE.LOWER_BOUND } {
	# Procedure called to validate LOWER_BOUND
	return true
}

proc update_PARAM_VALUE.MG_ENABLED { PARAM_VALUE.MG_ENABLED } {
	# Procedure called to update MG_ENABLED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MG_ENABLED { PARAM_VALUE.MG_ENABLED } {
	# Procedure called to validate MG_ENABLED
	return true
}

proc update_PARAM_VALUE.NUMBER_OF_QUEUES { PARAM_VALUE.NUMBER_OF_QUEUES } {
	# Procedure called to update NUMBER_OF_QUEUES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUMBER_OF_QUEUES { PARAM_VALUE.NUMBER_OF_QUEUES } {
	# Procedure called to validate NUMBER_OF_QUEUES
	return true
}

proc update_PARAM_VALUE.PRIORITY_SIZE { PARAM_VALUE.PRIORITY_SIZE } {
	# Procedure called to update PRIORITY_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRIORITY_SIZE { PARAM_VALUE.PRIORITY_SIZE } {
	# Procedure called to validate PRIORITY_SIZE
	return true
}

proc update_PARAM_VALUE.PRNG_FIBONACCI_ENABLED { PARAM_VALUE.PRNG_FIBONACCI_ENABLED } {
	# Procedure called to update PRNG_FIBONACCI_ENABLED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRNG_FIBONACCI_ENABLED { PARAM_VALUE.PRNG_FIBONACCI_ENABLED } {
	# Procedure called to validate PRNG_FIBONACCI_ENABLED
	return true
}

proc update_PARAM_VALUE.PRNG_GALLOIS_ENABLED { PARAM_VALUE.PRNG_GALLOIS_ENABLED } {
	# Procedure called to update PRNG_GALLOIS_ENABLED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRNG_GALLOIS_ENABLED { PARAM_VALUE.PRNG_GALLOIS_ENABLED } {
	# Procedure called to validate PRNG_GALLOIS_ENABLED
	return true
}

proc update_PARAM_VALUE.QUEUE_LENGTH { PARAM_VALUE.QUEUE_LENGTH } {
	# Procedure called to update QUEUE_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.QUEUE_LENGTH { PARAM_VALUE.QUEUE_LENGTH } {
	# Procedure called to validate QUEUE_LENGTH
	return true
}

proc update_PARAM_VALUE.REGISTER_SIZE { PARAM_VALUE.REGISTER_SIZE } {
	# Procedure called to update REGISTER_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REGISTER_SIZE { PARAM_VALUE.REGISTER_SIZE } {
	# Procedure called to validate REGISTER_SIZE
	return true
}

proc update_PARAM_VALUE.TDMA_ENABLED { PARAM_VALUE.TDMA_ENABLED } {
	# Procedure called to update TDMA_ENABLED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDMA_ENABLED { PARAM_VALUE.TDMA_ENABLED } {
	# Procedure called to validate TDMA_ENABLED
	return true
}

proc update_PARAM_VALUE.UPPER_BOUND { PARAM_VALUE.UPPER_BOUND } {
	# Procedure called to update UPPER_BOUND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UPPER_BOUND { PARAM_VALUE.UPPER_BOUND } {
	# Procedure called to validate UPPER_BOUND
	return true
}


proc update_MODELPARAM_VALUE.CONFIGURATION_PORT_ENABLED { MODELPARAM_VALUE.CONFIGURATION_PORT_ENABLED PARAM_VALUE.CONFIGURATION_PORT_ENABLED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONFIGURATION_PORT_ENABLED}] ${MODELPARAM_VALUE.CONFIGURATION_PORT_ENABLED}
}

proc update_MODELPARAM_VALUE.NUMBER_OF_QUEUES { MODELPARAM_VALUE.NUMBER_OF_QUEUES PARAM_VALUE.NUMBER_OF_QUEUES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUMBER_OF_QUEUES}] ${MODELPARAM_VALUE.NUMBER_OF_QUEUES}
}

proc update_MODELPARAM_VALUE.DATA_SIZE { MODELPARAM_VALUE.DATA_SIZE PARAM_VALUE.DATA_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_SIZE}] ${MODELPARAM_VALUE.DATA_SIZE}
}

proc update_MODELPARAM_VALUE.QUEUE_LENGTH { MODELPARAM_VALUE.QUEUE_LENGTH PARAM_VALUE.QUEUE_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.QUEUE_LENGTH}] ${MODELPARAM_VALUE.QUEUE_LENGTH}
}

proc update_MODELPARAM_VALUE.REGISTER_SIZE { MODELPARAM_VALUE.REGISTER_SIZE PARAM_VALUE.REGISTER_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REGISTER_SIZE}] ${MODELPARAM_VALUE.REGISTER_SIZE}
}

proc update_MODELPARAM_VALUE.TDMA_ENABLED { MODELPARAM_VALUE.TDMA_ENABLED PARAM_VALUE.TDMA_ENABLED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TDMA_ENABLED}] ${MODELPARAM_VALUE.TDMA_ENABLED}
}

proc update_MODELPARAM_VALUE.EDF_ENABLED { MODELPARAM_VALUE.EDF_ENABLED PARAM_VALUE.EDF_ENABLED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EDF_ENABLED}] ${MODELPARAM_VALUE.EDF_ENABLED}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ID_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ID_WIDTH PARAM_VALUE.C_S00_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S01_AXI_ID_WIDTH { MODELPARAM_VALUE.C_S01_AXI_ID_WIDTH PARAM_VALUE.C_S01_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S01_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_S01_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S01_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S01_AXI_DATA_WIDTH PARAM_VALUE.C_S01_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S01_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S01_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S01_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S01_AXI_ADDR_WIDTH PARAM_VALUE.C_S01_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S01_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S01_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S01_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_S01_AXI_AWUSER_WIDTH PARAM_VALUE.C_S01_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S01_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_S01_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S01_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_S01_AXI_ARUSER_WIDTH PARAM_VALUE.C_S01_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S01_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_S01_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_BURST_LEN { MODELPARAM_VALUE.C_M00_AXI_BURST_LEN PARAM_VALUE.C_M00_AXI_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_BURST_LEN}] ${MODELPARAM_VALUE.C_M00_AXI_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_ID_WIDTH { MODELPARAM_VALUE.C_M00_AXI_ID_WIDTH PARAM_VALUE.C_M00_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_S00_AXI_AWUSER_WIDTH PARAM_VALUE.C_S00_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ARUSER_WIDTH PARAM_VALUE.C_S00_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_AWUSER_WIDTH PARAM_VALUE.C_M00_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_ARUSER_WIDTH PARAM_VALUE.C_M00_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.PRIORITY_SIZE { MODELPARAM_VALUE.PRIORITY_SIZE PARAM_VALUE.PRIORITY_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRIORITY_SIZE}] ${MODELPARAM_VALUE.PRIORITY_SIZE}
}

proc update_MODELPARAM_VALUE.FP_ENABLED { MODELPARAM_VALUE.FP_ENABLED PARAM_VALUE.FP_ENABLED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FP_ENABLED}] ${MODELPARAM_VALUE.FP_ENABLED}
}

proc update_MODELPARAM_VALUE.MG_ENABLED { MODELPARAM_VALUE.MG_ENABLED PARAM_VALUE.MG_ENABLED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MG_ENABLED}] ${MODELPARAM_VALUE.MG_ENABLED}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_ID_WIDTH { MODELPARAM_VALUE.C_S02_AXI_ID_WIDTH PARAM_VALUE.C_S02_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S02_AXI_DATA_WIDTH PARAM_VALUE.C_S02_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S02_AXI_ADDR_WIDTH PARAM_VALUE.C_S02_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_S02_AXI_AWUSER_WIDTH PARAM_VALUE.C_S02_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S02_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_S02_AXI_ARUSER_WIDTH PARAM_VALUE.C_S02_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S02_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_S02_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.PRNG_FIBONACCI_ENABLED { MODELPARAM_VALUE.PRNG_FIBONACCI_ENABLED PARAM_VALUE.PRNG_FIBONACCI_ENABLED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRNG_FIBONACCI_ENABLED}] ${MODELPARAM_VALUE.PRNG_FIBONACCI_ENABLED}
}

proc update_MODELPARAM_VALUE.PRNG_GALLOIS_ENABLED { MODELPARAM_VALUE.PRNG_GALLOIS_ENABLED PARAM_VALUE.PRNG_GALLOIS_ENABLED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRNG_GALLOIS_ENABLED}] ${MODELPARAM_VALUE.PRNG_GALLOIS_ENABLED}
}

proc update_MODELPARAM_VALUE.AGING_ENABLED { MODELPARAM_VALUE.AGING_ENABLED PARAM_VALUE.AGING_ENABLED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AGING_ENABLED}] ${MODELPARAM_VALUE.AGING_ENABLED}
}

proc update_MODELPARAM_VALUE.UPPER_BOUND { MODELPARAM_VALUE.UPPER_BOUND PARAM_VALUE.UPPER_BOUND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UPPER_BOUND}] ${MODELPARAM_VALUE.UPPER_BOUND}
}

proc update_MODELPARAM_VALUE.LOWER_BOUND { MODELPARAM_VALUE.LOWER_BOUND PARAM_VALUE.LOWER_BOUND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LOWER_BOUND}] ${MODELPARAM_VALUE.LOWER_BOUND}
}

