# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  #Adding Group
  set Coloring/bleaching_parameters [ipgui::add_group $IPINST -name "Coloring/bleaching parameters" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "C_M00_AXI_TARGET_SLAVE_BASE_ADDR" -parent ${Coloring/bleaching_parameters}
  ipgui::add_param $IPINST -name "COLOR_BITS_UPPER_BOUND" -parent ${Coloring/bleaching_parameters}
  ipgui::add_param $IPINST -name "COLOR_BITS_LOWER_BOUND" -parent ${Coloring/bleaching_parameters}

  #Adding Group
  set AXI [ipgui::add_group $IPINST -name "AXI" -parent ${Page_0} -display_name {AXI parameters} -layout horizontal]
  #Adding Group
  set Master [ipgui::add_group $IPINST -name "Master" -parent ${AXI}]
  ipgui::add_param $IPINST -name "C_M00_AXI_ID_WIDTH" -parent ${Master}
  ipgui::add_param $IPINST -name "C_M00_AXI_ADDR_WIDTH" -parent ${Master} -widget comboBox
  ipgui::add_param $IPINST -name "C_M00_AXI_DATA_WIDTH" -parent ${Master} -widget comboBox
  ipgui::add_param $IPINST -name "C_M00_AXI_AWUSER_WIDTH" -parent ${Master}
  ipgui::add_param $IPINST -name "C_M00_AXI_WUSER_WIDTH" -parent ${Master}
  ipgui::add_param $IPINST -name "C_M00_AXI_ARUSER_WIDTH" -parent ${Master}
  ipgui::add_param $IPINST -name "C_M00_AXI_RUSER_WIDTH" -parent ${Master}
  ipgui::add_param $IPINST -name "C_M00_AXI_BUSER_WIDTH" -parent ${Master}

  #Adding Group
  set Slave [ipgui::add_group $IPINST -name "Slave" -parent ${AXI}]
  ipgui::add_param $IPINST -name "C_S00_AXI_ID_WIDTH" -parent ${Slave}
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Slave} -widget comboBox
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Slave} -widget comboBox
  ipgui::add_param $IPINST -name "C_S00_AXI_AWUSER_WIDTH" -parent ${Slave}
  ipgui::add_param $IPINST -name "C_S00_AXI_WUSER_WIDTH" -parent ${Slave}
  ipgui::add_param $IPINST -name "C_S00_AXI_ARUSER_WIDTH" -parent ${Slave}
  ipgui::add_param $IPINST -name "C_S00_AXI_RUSER_WIDTH" -parent ${Slave}
  ipgui::add_param $IPINST -name "C_S00_AXI_BUSER_WIDTH" -parent ${Slave}




}

proc update_PARAM_VALUE.COLOR_BITS_LOWER_BOUND { PARAM_VALUE.COLOR_BITS_LOWER_BOUND } {
	# Procedure called to update COLOR_BITS_LOWER_BOUND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLOR_BITS_LOWER_BOUND { PARAM_VALUE.COLOR_BITS_LOWER_BOUND } {
	# Procedure called to validate COLOR_BITS_LOWER_BOUND
	return true
}

proc update_PARAM_VALUE.COLOR_BITS_UPPER_BOUND { PARAM_VALUE.COLOR_BITS_UPPER_BOUND } {
	# Procedure called to update COLOR_BITS_UPPER_BOUND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLOR_BITS_UPPER_BOUND { PARAM_VALUE.COLOR_BITS_UPPER_BOUND } {
	# Procedure called to validate COLOR_BITS_UPPER_BOUND
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

proc update_PARAM_VALUE.C_M00_AXI_BUSER_WIDTH { PARAM_VALUE.C_M00_AXI_BUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_BUSER_WIDTH { PARAM_VALUE.C_M00_AXI_BUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_BUSER_WIDTH
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

proc update_PARAM_VALUE.C_M00_AXI_RUSER_WIDTH { PARAM_VALUE.C_M00_AXI_RUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_RUSER_WIDTH { PARAM_VALUE.C_M00_AXI_RUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M00_AXI_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M00_AXI_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_WUSER_WIDTH { PARAM_VALUE.C_M00_AXI_WUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_WUSER_WIDTH { PARAM_VALUE.C_M00_AXI_WUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_WUSER_WIDTH
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

proc update_PARAM_VALUE.C_S00_AXI_BUSER_WIDTH { PARAM_VALUE.C_S00_AXI_BUSER_WIDTH } {
	# Procedure called to update C_S00_AXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BUSER_WIDTH { PARAM_VALUE.C_S00_AXI_BUSER_WIDTH } {
	# Procedure called to validate C_S00_AXI_BUSER_WIDTH
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

proc update_PARAM_VALUE.C_S00_AXI_RUSER_WIDTH { PARAM_VALUE.C_S00_AXI_RUSER_WIDTH } {
	# Procedure called to update C_S00_AXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_RUSER_WIDTH { PARAM_VALUE.C_S00_AXI_RUSER_WIDTH } {
	# Procedure called to validate C_S00_AXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_WUSER_WIDTH { PARAM_VALUE.C_S00_AXI_WUSER_WIDTH } {
	# Procedure called to update C_S00_AXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_WUSER_WIDTH { PARAM_VALUE.C_S00_AXI_WUSER_WIDTH } {
	# Procedure called to validate C_S00_AXI_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.SPM_SIZE_IN_BYTE { PARAM_VALUE.SPM_SIZE_IN_BYTE } {
	# Procedure called to update SPM_SIZE_IN_BYTE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SPM_SIZE_IN_BYTE { PARAM_VALUE.SPM_SIZE_IN_BYTE } {
	# Procedure called to validate SPM_SIZE_IN_BYTE
	return true
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

proc update_MODELPARAM_VALUE.C_S00_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_S00_AXI_AWUSER_WIDTH PARAM_VALUE.C_S00_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ARUSER_WIDTH PARAM_VALUE.C_S00_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_WUSER_WIDTH { MODELPARAM_VALUE.C_S00_AXI_WUSER_WIDTH PARAM_VALUE.C_S00_AXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_RUSER_WIDTH { MODELPARAM_VALUE.C_S00_AXI_RUSER_WIDTH PARAM_VALUE.C_S00_AXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_BUSER_WIDTH { MODELPARAM_VALUE.C_S00_AXI_BUSER_WIDTH PARAM_VALUE.C_S00_AXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M00_AXI_TARGET_SLAVE_BASE_ADDR}
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

proc update_MODELPARAM_VALUE.C_M00_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_AWUSER_WIDTH PARAM_VALUE.C_M00_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_ARUSER_WIDTH PARAM_VALUE.C_M00_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_WUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_WUSER_WIDTH PARAM_VALUE.C_M00_AXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_RUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_RUSER_WIDTH PARAM_VALUE.C_M00_AXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_BUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_BUSER_WIDTH PARAM_VALUE.C_M00_AXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.COLOR_BITS_UPPER_BOUND { MODELPARAM_VALUE.COLOR_BITS_UPPER_BOUND PARAM_VALUE.COLOR_BITS_UPPER_BOUND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLOR_BITS_UPPER_BOUND}] ${MODELPARAM_VALUE.COLOR_BITS_UPPER_BOUND}
}

proc update_MODELPARAM_VALUE.COLOR_BITS_LOWER_BOUND { MODELPARAM_VALUE.COLOR_BITS_LOWER_BOUND PARAM_VALUE.COLOR_BITS_LOWER_BOUND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLOR_BITS_LOWER_BOUND}] ${MODELPARAM_VALUE.COLOR_BITS_LOWER_BOUND}
}

proc update_MODELPARAM_VALUE.SPM_SIZE_IN_BYTE { MODELPARAM_VALUE.SPM_SIZE_IN_BYTE PARAM_VALUE.SPM_SIZE_IN_BYTE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SPM_SIZE_IN_BYTE}] ${MODELPARAM_VALUE.SPM_SIZE_IN_BYTE}
}

