vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_1
vlib activehdl/axi_vip_v1_1_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 activehdl/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 activehdl/axi_vip_v1_1_1

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_vip_0_1/sim/design_1_axi_vip_0_1_pkg.sv" \

vlog -work axi_vip_v1_1_1  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_vip_0_1/sim/design_1_axi_vip_0_1.sv" \
"../../../bd/design_1/ipshared/000f/src/Combinatorial_Dispatcher.sv" \
"../../../bd/design_1/ipshared/000f/src/ConfigurationPort.sv" \
"../../../bd/design_1/ipshared/000f/src/Dispatcher.sv" \
"../../../bd/design_1/ipshared/000f/src/EDF.sv" \
"../../../bd/design_1/ipshared/000f/src/NonAXIDomain.sv" \
"../../../bd/design_1/ipshared/000f/src/Packetizer.sv" \
"../../../bd/design_1/ipshared/000f/src/Queue.sv" \
"../../../bd/design_1/ipshared/000f/src/Scheduler.sv" \
"../../../bd/design_1/ipshared/000f/src/Selector.sv" \
"../../../bd/design_1/ipshared/000f/src/Seralizer.sv" \
"../../../bd/design_1/ipshared/000f/src/TDMA.sv" \
"../../../bd/design_1/ipshared/000f/src/MemorEDF.sv" \
"../../../bd/design_1/ip/design_1_MemorEDF_0_0/sim/design_1_MemorEDF_0_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_vip_0_0/sim/design_1_axi_vip_0_0_pkg.sv" \
"../../../bd/design_1/ip/design_1_axi_vip_0_0/sim/design_1_axi_vip_0_0.sv" \
"../../../bd/design_1/ip/design_1_axi_vip_0_2/sim/design_1_axi_vip_0_2_pkg.sv" \
"../../../bd/design_1/ip/design_1_axi_vip_0_2/sim/design_1_axi_vip_0_2.sv" \

vlog -work xil_defaultlib \
"glbl.v"

