-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ipshared/204c/src/Aging.sv" \
  "../../../bd/design_1/ipshared/204c/src/Combinatorial_Dispatcher.sv" \
  "../../../bd/design_1/ipshared/204c/src/Combinatorial_FP.sv" \
  "../../../bd/design_1/ipshared/204c/src/Combinatorial_Selector.sv" \
  "../../../bd/design_1/ipshared/204c/src/ConfigurationPort.sv" \
  "../../../bd/design_1/ipshared/204c/src/Dispatcher.sv" \
  "../../../bd/design_1/ipshared/204c/src/EDF.sv" \
  "../../../bd/design_1/ipshared/204c/src/FP.sv" \
  "../../../bd/design_1/ipshared/204c/src/Gallois16.sv" \
  "../../../bd/design_1/ipshared/204c/src/LFSR16.sv" \
  "../../../bd/design_1/ipshared/204c/src/MaxSelector.sv" \
  "../../../bd/design_1/ipshared/204c/src/MemGuard.sv" \
  "../../../bd/design_1/ipshared/204c/src/NonAXIDomain.sv" \
  "../../../bd/design_1/ipshared/204c/src/Packetizer.sv" \
  "../../../bd/design_1/ipshared/204c/src/Queue.sv" \
  "../../../bd/design_1/ipshared/204c/src/Scheduler.sv" \
  "../../../bd/design_1/ipshared/204c/src/Selector.sv" \
  "../../../bd/design_1/ipshared/204c/src/Seralizer.sv" \
  "../../../bd/design_1/ipshared/204c/src/TDMA.sv" \
  "../../../bd/design_1/ipshared/204c/src/MemorEDF.sv" \
  "../../../bd/design_1/ip/design_1_MemorEDF_0_0/sim/design_1_MemorEDF_0_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_1 -sv \
  "../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_vip_0_2/sim/design_1_axi_vip_0_2_pkg.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_1 -sv \
  "../../../../MemorEDF.srcs/sources_1/bd/design_1/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_vip_0_2/sim/design_1_axi_vip_0_2.sv" \
  "../../../bd/design_1/ip/design_1_axi_vip_1_0/sim/design_1_axi_vip_1_0_pkg.sv" \
  "../../../bd/design_1/ip/design_1_axi_vip_1_0/sim/design_1_axi_vip_1_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_vip_0_0/sim/design_1_axi_vip_0_0_pkg.sv" \
  "../../../bd/design_1/ip/design_1_axi_vip_0_0/sim/design_1_axi_vip_0_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_vip_2_0/sim/design_1_axi_vip_2_0_pkg.sv" \
  "../../../bd/design_1/ip/design_1_axi_vip_2_0/sim/design_1_axi_vip_2_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ipshared/0220/hdl/porttoportmapping_v1_0.v" \
  "../../../bd/design_1/ip/design_1_porttoportmapping_v1_0_0_0/sim/design_1_porttoportmapping_v1_0_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

