vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_1
vlib activehdl/axi_vip_v1_1_1
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_1
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_12

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 activehdl/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 activehdl/axi_vip_v1_1_1
vmap zynq_ultra_ps_e_vip_v1_0_1 activehdl/zynq_ultra_ps_e_vip_v1_0_1
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_1  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_2/ip/design_2_zynq_ultra_ps_e_0_0/sim/design_2_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_2/ipshared/3dde/src/Combinatorial_Dispatcher.sv" \
"../../../bd/design_2/ipshared/3dde/src/ConfigurationPort.sv" \
"../../../bd/design_2/ipshared/3dde/src/Dispatcher.sv" \
"../../../bd/design_2/ipshared/3dde/src/EDF.sv" \
"../../../bd/design_2/ipshared/3dde/src/FP.sv" \
"../../../bd/design_2/ipshared/3dde/src/MaxSelector.sv" \
"../../../bd/design_2/ipshared/3dde/src/MemGuard.sv" \
"../../../bd/design_2/ipshared/3dde/src/NonAXIDomain.sv" \
"../../../bd/design_2/ipshared/3dde/src/Packetizer.sv" \
"../../../bd/design_2/ipshared/3dde/src/Queue.sv" \
"../../../bd/design_2/ipshared/3dde/src/Scheduler.sv" \
"../../../bd/design_2/ipshared/3dde/src/Selector.sv" \
"../../../bd/design_2/ipshared/3dde/src/Seralizer.sv" \
"../../../bd/design_2/ipshared/3dde/src/TDMA.sv" \
"../../../bd/design_2/ipshared/3dde/src/MemorEDF.sv" \
"../../../bd/design_2/ip/design_2_MemorEDF_0_0/sim/design_2_MemorEDF_0_0.sv" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_2/ip/design_2_rst_ps8_0_99M_0/sim/design_2_rst_ps8_0_99M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6180/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a08d/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/6851/hdl/verilog" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/82bb/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_2/sim/design_2.v" \
"../../../bd/design_2/ip/design_2_ila_0_0/sim/design_2_ila_0_0.v" \
"../../../bd/design_2/ip/design_2_ila_0_1/sim/design_2_ila_0_1.v" \
"../../../bd/design_2/ipshared/bf80/hdl/AXI_PerfectTranslator_v1_0_S00_AXI.v" \
"../../../bd/design_2/ipshared/bf80/hdl/AXI_PerfectTranslator_v1_0_M00_AXI.v" \
"../../../bd/design_2/ipshared/bf80/hdl/AXI_PerfectTranslator_v1_0.v" \
"../../../bd/design_2/ip/design_2_AXI_PerfectTranslator_0_0/sim/design_2_AXI_PerfectTranslator_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

