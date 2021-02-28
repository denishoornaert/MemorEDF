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

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"/home/renato/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/renato/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/renato/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/renato/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_static_bleacher/ip/design_static_bleacher_axi_vip_0_0/sim/design_static_bleacher_axi_vip_0_0_pkg.sv" \

vlog -work axi_vip_v1_1_1  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_static_bleacher/ip/design_static_bleacher_axi_vip_0_0/sim/design_static_bleacher_axi_vip_0_0.sv" \
"../../../bd/design_static_bleacher/ip/design_static_bleacher_axi_vip_0_1/sim/design_static_bleacher_axi_vip_0_1_pkg.sv" \
"../../../bd/design_static_bleacher/ip/design_static_bleacher_axi_vip_0_1/sim/design_static_bleacher_axi_vip_0_1.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl" "+incdir+../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/verilog" "+incdir+/home/renato/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_static_bleacher/sim/design_static_bleacher.v" \
"../../../bd/design_static_bleacher/ipshared/0d6a/hdl/porttoportmapping_v1_0.v" \
"../../../bd/design_static_bleacher/ip/design_static_bleacher_porttoportmapping_v1_0_0_0/sim/design_static_bleacher_porttoportmapping_v1_0_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

