//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sat Feb 27 13:31:57 2021
//Host        : buflightdev running 64-bit Ubuntu 16.04.7 LTS
//Command     : generate_target design_6.bd
//Design      : design_6
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_6,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_6,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,da_zynq_ultra_ps_e_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_6.hwdef" *) 
module design_6
   ();

  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]porttoportmapping_v1_0_0_m00_axi_ARADDR;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]porttoportmapping_v1_0_0_m00_axi_ARBURST;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]porttoportmapping_v1_0_0_m00_axi_ARCACHE;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]porttoportmapping_v1_0_0_m00_axi_ARID;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]porttoportmapping_v1_0_0_m00_axi_ARLEN;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_ARLOCK;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]porttoportmapping_v1_0_0_m00_axi_ARPROT;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]porttoportmapping_v1_0_0_m00_axi_ARQOS;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_ARREADY;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]porttoportmapping_v1_0_0_m00_axi_ARSIZE;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]porttoportmapping_v1_0_0_m00_axi_ARUSER;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_ARVALID;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]porttoportmapping_v1_0_0_m00_axi_AWADDR;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]porttoportmapping_v1_0_0_m00_axi_AWBURST;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]porttoportmapping_v1_0_0_m00_axi_AWCACHE;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]porttoportmapping_v1_0_0_m00_axi_AWID;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]porttoportmapping_v1_0_0_m00_axi_AWLEN;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_AWLOCK;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]porttoportmapping_v1_0_0_m00_axi_AWPROT;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]porttoportmapping_v1_0_0_m00_axi_AWQOS;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_AWREADY;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]porttoportmapping_v1_0_0_m00_axi_AWSIZE;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]porttoportmapping_v1_0_0_m00_axi_AWUSER;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_AWVALID;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]porttoportmapping_v1_0_0_m00_axi_BID;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_BREADY;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]porttoportmapping_v1_0_0_m00_axi_BRESP;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_BVALID;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]porttoportmapping_v1_0_0_m00_axi_RDATA;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]porttoportmapping_v1_0_0_m00_axi_RID;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_RLAST;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_RREADY;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]porttoportmapping_v1_0_0_m00_axi_RRESP;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_RVALID;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]porttoportmapping_v1_0_0_m00_axi_WDATA;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_WLAST;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_WREADY;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]porttoportmapping_v1_0_0_m00_axi_WSTRB;
  (* CONN_BUS_INFO = "porttoportmapping_v1_0_0_m00_axi xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire porttoportmapping_v1_0_0_m00_axi_WVALID;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [48:0]smartconnect_0_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]smartconnect_0_M00_AXI_ARUSER;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [48:0]smartconnect_0_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]smartconnect_0_M00_AXI_AWUSER;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]smartconnect_0_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]smartconnect_0_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]smartconnect_0_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]smartconnect_0_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]smartconnect_0_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_WVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_FPD xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  design_6_porttoportmapping_v1_0_0_0 porttoportmapping_v1_0_0
       (.m00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m00_axi_araddr(porttoportmapping_v1_0_0_m00_axi_ARADDR),
        .m00_axi_arburst(porttoportmapping_v1_0_0_m00_axi_ARBURST),
        .m00_axi_arcache(porttoportmapping_v1_0_0_m00_axi_ARCACHE),
        .m00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .m00_axi_arid(porttoportmapping_v1_0_0_m00_axi_ARID),
        .m00_axi_arlen(porttoportmapping_v1_0_0_m00_axi_ARLEN),
        .m00_axi_arlock(porttoportmapping_v1_0_0_m00_axi_ARLOCK),
        .m00_axi_arprot(porttoportmapping_v1_0_0_m00_axi_ARPROT),
        .m00_axi_arqos(porttoportmapping_v1_0_0_m00_axi_ARQOS),
        .m00_axi_arready(porttoportmapping_v1_0_0_m00_axi_ARREADY),
        .m00_axi_arsize(porttoportmapping_v1_0_0_m00_axi_ARSIZE),
        .m00_axi_aruser(porttoportmapping_v1_0_0_m00_axi_ARUSER),
        .m00_axi_arvalid(porttoportmapping_v1_0_0_m00_axi_ARVALID),
        .m00_axi_awaddr(porttoportmapping_v1_0_0_m00_axi_AWADDR),
        .m00_axi_awburst(porttoportmapping_v1_0_0_m00_axi_AWBURST),
        .m00_axi_awcache(porttoportmapping_v1_0_0_m00_axi_AWCACHE),
        .m00_axi_awid(porttoportmapping_v1_0_0_m00_axi_AWID),
        .m00_axi_awlen(porttoportmapping_v1_0_0_m00_axi_AWLEN),
        .m00_axi_awlock(porttoportmapping_v1_0_0_m00_axi_AWLOCK),
        .m00_axi_awprot(porttoportmapping_v1_0_0_m00_axi_AWPROT),
        .m00_axi_awqos(porttoportmapping_v1_0_0_m00_axi_AWQOS),
        .m00_axi_awready(porttoportmapping_v1_0_0_m00_axi_AWREADY),
        .m00_axi_awsize(porttoportmapping_v1_0_0_m00_axi_AWSIZE),
        .m00_axi_awuser(porttoportmapping_v1_0_0_m00_axi_AWUSER),
        .m00_axi_awvalid(porttoportmapping_v1_0_0_m00_axi_AWVALID),
        .m00_axi_bid(porttoportmapping_v1_0_0_m00_axi_BID),
        .m00_axi_bready(porttoportmapping_v1_0_0_m00_axi_BREADY),
        .m00_axi_bresp(porttoportmapping_v1_0_0_m00_axi_BRESP),
        .m00_axi_bvalid(porttoportmapping_v1_0_0_m00_axi_BVALID),
        .m00_axi_rdata(porttoportmapping_v1_0_0_m00_axi_RDATA),
        .m00_axi_rid(porttoportmapping_v1_0_0_m00_axi_RID),
        .m00_axi_rlast(porttoportmapping_v1_0_0_m00_axi_RLAST),
        .m00_axi_rready(porttoportmapping_v1_0_0_m00_axi_RREADY),
        .m00_axi_rresp(porttoportmapping_v1_0_0_m00_axi_RRESP),
        .m00_axi_rvalid(porttoportmapping_v1_0_0_m00_axi_RVALID),
        .m00_axi_wdata(porttoportmapping_v1_0_0_m00_axi_WDATA),
        .m00_axi_wlast(porttoportmapping_v1_0_0_m00_axi_WLAST),
        .m00_axi_wready(porttoportmapping_v1_0_0_m00_axi_WREADY),
        .m00_axi_wstrb(porttoportmapping_v1_0_0_m00_axi_WSTRB),
        .m00_axi_wvalid(porttoportmapping_v1_0_0_m00_axi_WVALID),
        .s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .s00_axi_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .s00_axi_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .s00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s00_axi_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .s00_axi_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .s00_axi_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .s00_axi_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .s00_axi_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .s00_axi_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .s00_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .s00_axi_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .s00_axi_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .s00_axi_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .s00_axi_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .s00_axi_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .s00_axi_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .s00_axi_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .s00_axi_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .s00_axi_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .s00_axi_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .s00_axi_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .s00_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .s00_axi_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .s00_axi_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .s00_axi_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .s00_axi_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .s00_axi_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .s00_axi_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .s00_axi_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .s00_axi_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .s00_axi_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .s00_axi_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .s00_axi_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .s00_axi_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .s00_axi_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .s00_axi_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .s00_axi_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .s00_axi_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .s00_axi_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID));
  design_6_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_6_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_aruser(smartconnect_0_M00_AXI_ARUSER),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awuser(smartconnect_0_M00_AXI_AWUSER),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(porttoportmapping_v1_0_0_m00_axi_ARADDR),
        .S00_AXI_arburst(porttoportmapping_v1_0_0_m00_axi_ARBURST),
        .S00_AXI_arcache(porttoportmapping_v1_0_0_m00_axi_ARCACHE),
        .S00_AXI_arid(porttoportmapping_v1_0_0_m00_axi_ARID),
        .S00_AXI_arlen(porttoportmapping_v1_0_0_m00_axi_ARLEN),
        .S00_AXI_arlock(porttoportmapping_v1_0_0_m00_axi_ARLOCK),
        .S00_AXI_arprot(porttoportmapping_v1_0_0_m00_axi_ARPROT),
        .S00_AXI_arqos(porttoportmapping_v1_0_0_m00_axi_ARQOS),
        .S00_AXI_arready(porttoportmapping_v1_0_0_m00_axi_ARREADY),
        .S00_AXI_arsize(porttoportmapping_v1_0_0_m00_axi_ARSIZE),
        .S00_AXI_aruser(porttoportmapping_v1_0_0_m00_axi_ARUSER),
        .S00_AXI_arvalid(porttoportmapping_v1_0_0_m00_axi_ARVALID),
        .S00_AXI_awaddr(porttoportmapping_v1_0_0_m00_axi_AWADDR),
        .S00_AXI_awburst(porttoportmapping_v1_0_0_m00_axi_AWBURST),
        .S00_AXI_awcache(porttoportmapping_v1_0_0_m00_axi_AWCACHE),
        .S00_AXI_awid(porttoportmapping_v1_0_0_m00_axi_AWID),
        .S00_AXI_awlen(porttoportmapping_v1_0_0_m00_axi_AWLEN),
        .S00_AXI_awlock(porttoportmapping_v1_0_0_m00_axi_AWLOCK),
        .S00_AXI_awprot(porttoportmapping_v1_0_0_m00_axi_AWPROT),
        .S00_AXI_awqos(porttoportmapping_v1_0_0_m00_axi_AWQOS),
        .S00_AXI_awready(porttoportmapping_v1_0_0_m00_axi_AWREADY),
        .S00_AXI_awsize(porttoportmapping_v1_0_0_m00_axi_AWSIZE),
        .S00_AXI_awuser(porttoportmapping_v1_0_0_m00_axi_AWUSER),
        .S00_AXI_awvalid(porttoportmapping_v1_0_0_m00_axi_AWVALID),
        .S00_AXI_bid(porttoportmapping_v1_0_0_m00_axi_BID),
        .S00_AXI_bready(porttoportmapping_v1_0_0_m00_axi_BREADY),
        .S00_AXI_bresp(porttoportmapping_v1_0_0_m00_axi_BRESP),
        .S00_AXI_bvalid(porttoportmapping_v1_0_0_m00_axi_BVALID),
        .S00_AXI_rdata(porttoportmapping_v1_0_0_m00_axi_RDATA),
        .S00_AXI_rid(porttoportmapping_v1_0_0_m00_axi_RID),
        .S00_AXI_rlast(porttoportmapping_v1_0_0_m00_axi_RLAST),
        .S00_AXI_rready(porttoportmapping_v1_0_0_m00_axi_RREADY),
        .S00_AXI_rresp(porttoportmapping_v1_0_0_m00_axi_RRESP),
        .S00_AXI_rvalid(porttoportmapping_v1_0_0_m00_axi_RVALID),
        .S00_AXI_wdata(porttoportmapping_v1_0_0_m00_axi_WDATA),
        .S00_AXI_wlast(porttoportmapping_v1_0_0_m00_axi_WLAST),
        .S00_AXI_wready(porttoportmapping_v1_0_0_m00_axi_WREADY),
        .S00_AXI_wstrb(porttoportmapping_v1_0_0_m00_axi_WSTRB),
        .S00_AXI_wvalid(porttoportmapping_v1_0_0_m00_axi_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(1'b1));
  design_6_system_ila_0_1 system_ila_0
       (.SLOT_0_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .SLOT_0_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .SLOT_0_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .SLOT_0_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .SLOT_0_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .SLOT_0_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .SLOT_0_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .SLOT_0_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .SLOT_0_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .SLOT_0_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .SLOT_0_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .SLOT_0_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .SLOT_0_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .SLOT_0_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .SLOT_0_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .SLOT_0_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .SLOT_0_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .SLOT_0_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .SLOT_0_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .SLOT_0_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .SLOT_0_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .SLOT_0_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .SLOT_0_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .SLOT_0_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .SLOT_0_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .SLOT_0_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .SLOT_0_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .SLOT_0_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .SLOT_0_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .SLOT_0_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .SLOT_0_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .SLOT_0_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .SLOT_0_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .SLOT_0_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .SLOT_0_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .SLOT_0_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .SLOT_0_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .SLOT_0_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .SLOT_0_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .SLOT_1_AXI_araddr(porttoportmapping_v1_0_0_m00_axi_ARADDR),
        .SLOT_1_AXI_arburst(porttoportmapping_v1_0_0_m00_axi_ARBURST),
        .SLOT_1_AXI_arcache(porttoportmapping_v1_0_0_m00_axi_ARCACHE),
        .SLOT_1_AXI_arid(porttoportmapping_v1_0_0_m00_axi_ARID),
        .SLOT_1_AXI_arlen(porttoportmapping_v1_0_0_m00_axi_ARLEN),
        .SLOT_1_AXI_arlock(porttoportmapping_v1_0_0_m00_axi_ARLOCK),
        .SLOT_1_AXI_arprot(porttoportmapping_v1_0_0_m00_axi_ARPROT),
        .SLOT_1_AXI_arqos(porttoportmapping_v1_0_0_m00_axi_ARQOS),
        .SLOT_1_AXI_arready(porttoportmapping_v1_0_0_m00_axi_ARREADY),
        .SLOT_1_AXI_arsize(porttoportmapping_v1_0_0_m00_axi_ARSIZE),
        .SLOT_1_AXI_aruser(porttoportmapping_v1_0_0_m00_axi_ARUSER),
        .SLOT_1_AXI_arvalid(porttoportmapping_v1_0_0_m00_axi_ARVALID),
        .SLOT_1_AXI_awaddr(porttoportmapping_v1_0_0_m00_axi_AWADDR),
        .SLOT_1_AXI_awburst(porttoportmapping_v1_0_0_m00_axi_AWBURST),
        .SLOT_1_AXI_awcache(porttoportmapping_v1_0_0_m00_axi_AWCACHE),
        .SLOT_1_AXI_awid(porttoportmapping_v1_0_0_m00_axi_AWID),
        .SLOT_1_AXI_awlen(porttoportmapping_v1_0_0_m00_axi_AWLEN),
        .SLOT_1_AXI_awlock(porttoportmapping_v1_0_0_m00_axi_AWLOCK),
        .SLOT_1_AXI_awprot(porttoportmapping_v1_0_0_m00_axi_AWPROT),
        .SLOT_1_AXI_awqos(porttoportmapping_v1_0_0_m00_axi_AWQOS),
        .SLOT_1_AXI_awready(porttoportmapping_v1_0_0_m00_axi_AWREADY),
        .SLOT_1_AXI_awsize(porttoportmapping_v1_0_0_m00_axi_AWSIZE),
        .SLOT_1_AXI_awuser(porttoportmapping_v1_0_0_m00_axi_AWUSER),
        .SLOT_1_AXI_awvalid(porttoportmapping_v1_0_0_m00_axi_AWVALID),
        .SLOT_1_AXI_bid(porttoportmapping_v1_0_0_m00_axi_BID),
        .SLOT_1_AXI_bready(porttoportmapping_v1_0_0_m00_axi_BREADY),
        .SLOT_1_AXI_bresp(porttoportmapping_v1_0_0_m00_axi_BRESP),
        .SLOT_1_AXI_bvalid(porttoportmapping_v1_0_0_m00_axi_BVALID),
        .SLOT_1_AXI_rdata(porttoportmapping_v1_0_0_m00_axi_RDATA),
        .SLOT_1_AXI_rid(porttoportmapping_v1_0_0_m00_axi_RID),
        .SLOT_1_AXI_rlast(porttoportmapping_v1_0_0_m00_axi_RLAST),
        .SLOT_1_AXI_rready(porttoportmapping_v1_0_0_m00_axi_RREADY),
        .SLOT_1_AXI_rresp(porttoportmapping_v1_0_0_m00_axi_RRESP),
        .SLOT_1_AXI_rvalid(porttoportmapping_v1_0_0_m00_axi_RVALID),
        .SLOT_1_AXI_wdata(porttoportmapping_v1_0_0_m00_axi_WDATA),
        .SLOT_1_AXI_wlast(porttoportmapping_v1_0_0_m00_axi_WLAST),
        .SLOT_1_AXI_wready(porttoportmapping_v1_0_0_m00_axi_WREADY),
        .SLOT_1_AXI_wstrb(porttoportmapping_v1_0_0_m00_axi_WSTRB),
        .SLOT_1_AXI_wvalid(porttoportmapping_v1_0_0_m00_axi_WVALID),
        .SLOT_2_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .SLOT_2_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .SLOT_2_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .SLOT_2_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .SLOT_2_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .SLOT_2_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .SLOT_2_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .SLOT_2_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .SLOT_2_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .SLOT_2_AXI_aruser(smartconnect_0_M00_AXI_ARUSER),
        .SLOT_2_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .SLOT_2_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .SLOT_2_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .SLOT_2_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .SLOT_2_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .SLOT_2_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .SLOT_2_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .SLOT_2_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .SLOT_2_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .SLOT_2_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .SLOT_2_AXI_awuser(smartconnect_0_M00_AXI_AWUSER),
        .SLOT_2_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .SLOT_2_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .SLOT_2_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .SLOT_2_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .SLOT_2_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .SLOT_2_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .SLOT_2_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .SLOT_2_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .SLOT_2_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .SLOT_2_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .SLOT_2_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .SLOT_2_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .SLOT_2_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .SLOT_2_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .resetn(rst_ps8_0_99M_peripheral_aresetn));
  design_6_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp2_araddr(smartconnect_0_M00_AXI_ARADDR),
        .saxigp2_arburst(smartconnect_0_M00_AXI_ARBURST),
        .saxigp2_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlen(smartconnect_0_M00_AXI_ARLEN),
        .saxigp2_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .saxigp2_arprot(smartconnect_0_M00_AXI_ARPROT),
        .saxigp2_arqos(smartconnect_0_M00_AXI_ARQOS),
        .saxigp2_arready(smartconnect_0_M00_AXI_ARREADY),
        .saxigp2_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .saxigp2_aruser(smartconnect_0_M00_AXI_ARUSER),
        .saxigp2_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .saxigp2_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .saxigp2_awburst(smartconnect_0_M00_AXI_AWBURST),
        .saxigp2_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlen(smartconnect_0_M00_AXI_AWLEN),
        .saxigp2_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .saxigp2_awprot(smartconnect_0_M00_AXI_AWPROT),
        .saxigp2_awqos(smartconnect_0_M00_AXI_AWQOS),
        .saxigp2_awready(smartconnect_0_M00_AXI_AWREADY),
        .saxigp2_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .saxigp2_awuser(smartconnect_0_M00_AXI_AWUSER),
        .saxigp2_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .saxigp2_bready(smartconnect_0_M00_AXI_BREADY),
        .saxigp2_bresp(smartconnect_0_M00_AXI_BRESP),
        .saxigp2_bvalid(smartconnect_0_M00_AXI_BVALID),
        .saxigp2_rdata(smartconnect_0_M00_AXI_RDATA),
        .saxigp2_rlast(smartconnect_0_M00_AXI_RLAST),
        .saxigp2_rready(smartconnect_0_M00_AXI_RREADY),
        .saxigp2_rresp(smartconnect_0_M00_AXI_RRESP),
        .saxigp2_rvalid(smartconnect_0_M00_AXI_RVALID),
        .saxigp2_wdata(smartconnect_0_M00_AXI_WDATA),
        .saxigp2_wlast(smartconnect_0_M00_AXI_WLAST),
        .saxigp2_wready(smartconnect_0_M00_AXI_WREADY),
        .saxigp2_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .saxigp2_wvalid(smartconnect_0_M00_AXI_WVALID),
        .saxihp0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule
