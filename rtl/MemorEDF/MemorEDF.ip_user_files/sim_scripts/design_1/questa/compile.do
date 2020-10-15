vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_checker_v2_0_1
vlib questa_lib/msim/axi_vip_v1_1_1

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 questa_lib/msim/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 questa_lib/msim/axi_vip_v1_1_1

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L zynq_ultra_ps_e_vip_v1_0_1 -L xil_defaultlib -L xilinx_vip "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L zynq_ultra_ps_e_vip_v1_0_1 -L xil_defaultlib -L xilinx_vip "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/23a4/src/Combinatorial_Dispatcher.sv" \
"../../../bd/design_1/ipshared/23a4/src/Combinatorial_FP.sv" \
"../../../bd/design_1/ipshared/23a4/src/Combinatorial_Selector.sv" \
"../../../bd/design_1/ipshared/23a4/src/ConfigurationPort.sv" \
"../../../bd/design_1/ipshared/23a4/src/Dispatcher.sv" \
"../../../bd/design_1/ipshared/23a4/src/EDF.sv" \
"../../../bd/design_1/ipshared/23a4/src/FP.sv" \
"../../../bd/design_1/ipshared/23a4/src/MaxSelector.sv" \
"../../../bd/design_1/ipshared/23a4/src/MemGuard.sv" \
"../../../bd/design_1/ipshared/23a4/src/NonAXIDomain.sv" \
"../../../bd/design_1/ipshared/23a4/src/Packetizer.sv" \
"../../../bd/design_1/ipshared/23a4/src/Queue.sv" \
"../../../bd/design_1/ipshared/23a4/src/Scheduler.sv" \
"../../../bd/design_1/ipshared/23a4/src/Selector.sv" \
"../../../bd/design_1/ipshared/23a4/src/Seralizer.sv" \
"../../../bd/design_1/ipshared/23a4/src/TDMA.sv" \
"../../../bd/design_1/ipshared/23a4/src/MemorEDF.sv" \
"../../../bd/design_1/ip/design_1_MemorEDF_0_0/sim/design_1_MemorEDF_0_0.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L zynq_ultra_ps_e_vip_v1_0_1 -L xil_defaultlib -L xilinx_vip "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L zynq_ultra_ps_e_vip_v1_0_1 -L xil_defaultlib -L xilinx_vip "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L zynq_ultra_ps_e_vip_v1_0_1 -L xil_defaultlib -L xilinx_vip "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_vip_0_2/sim/design_1_axi_vip_0_2_pkg.sv" \

vlog -work axi_vip_v1_1_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L zynq_ultra_ps_e_vip_v1_0_1 -L xil_defaultlib -L xilinx_vip "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L zynq_ultra_ps_e_vip_v1_0_1 -L xil_defaultlib -L xilinx_vip "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+/home/ro0zkhosh/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_vip_0_2/sim/design_1_axi_vip_0_2.sv" \
"../../../bd/design_1/ip/design_1_axi_vip_1_0/sim/design_1_axi_vip_1_0_pkg.sv" \
"../../../bd/design_1/ip/design_1_axi_vip_1_0/sim/design_1_axi_vip_1_0.sv" \
"../../../bd/design_1/ip/design_1_axi_vip_0_0/sim/design_1_axi_vip_0_0_pkg.sv" \
"../../../bd/design_1/ip/design_1_axi_vip_0_0/sim/design_1_axi_vip_0_0.sv" \

vlog -work xil_defaultlib \
"glbl.v"

