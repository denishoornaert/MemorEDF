-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_1 -sv \
  "../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_1 -sv \
  "../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/zynq_ultra_ps_e_vip_v1_0_1 -sv \
  "../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/cfaa/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_zynq_ultra_ps_e_0_0/sim/design_2_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
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
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../MemorEDF.srcs/sources_1/bd/design_2/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/ip/design_2_rst_ps8_0_99M_0/sim/design_2_rst_ps8_0_99M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_2/sim/design_2.v" \
  "../../../bd/design_2/ip/design_2_ila_0_0/sim/design_2_ila_0_0.v" \
  "../../../bd/design_2/ip/design_2_ila_0_1/sim/design_2_ila_0_1.v" \
  "../../../bd/design_2/ipshared/bf80/hdl/AXI_PerfectTranslator_v1_0_S00_AXI.v" \
  "../../../bd/design_2/ipshared/bf80/hdl/AXI_PerfectTranslator_v1_0_M00_AXI.v" \
  "../../../bd/design_2/ipshared/bf80/hdl/AXI_PerfectTranslator_v1_0.v" \
  "../../../bd/design_2/ip/design_2_AXI_PerfectTranslator_0_0/sim/design_2_AXI_PerfectTranslator_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

