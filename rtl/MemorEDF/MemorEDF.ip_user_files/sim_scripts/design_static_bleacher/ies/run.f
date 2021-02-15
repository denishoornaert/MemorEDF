-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_1 -sv \
  "../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_static_bleacher/ip/design_static_bleacher_axi_vip_0_0/sim/design_static_bleacher_axi_vip_0_0_pkg.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_1 -sv \
  "../../../../MemorEDF.srcs/sources_1/bd/design_static_bleacher/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_static_bleacher/ip/design_static_bleacher_axi_vip_0_0/sim/design_static_bleacher_axi_vip_0_0.sv" \
  "../../../bd/design_static_bleacher/ip/design_static_bleacher_axi_vip_0_1/sim/design_static_bleacher_axi_vip_0_1_pkg.sv" \
  "../../../bd/design_static_bleacher/ip/design_static_bleacher_axi_vip_0_1/sim/design_static_bleacher_axi_vip_0_1.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_static_bleacher/sim/design_static_bleacher.v" \
  "../../../bd/design_static_bleacher/ipshared/549f/hdl/AXI_PerfectTranslator_v1_0_S00_AXI.v" \
  "../../../bd/design_static_bleacher/ipshared/549f/hdl/AXI_PerfectTranslator_v1_0_M00_AXI.v" \
  "../../../bd/design_static_bleacher/ipshared/549f/hdl/AXI_PerfectTranslator_v1_0.v" \
  "../../../bd/design_static_bleacher/ip/design_static_bleacher_AXI_PerfectTranslator_0_0/sim/design_static_bleacher_AXI_PerfectTranslator_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

