//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Fri Feb 26 10:22:40 2021
//Host        : buflightdev running 64-bit Ubuntu 16.04.7 LTS
//Command     : generate_target design_5.bd
//Design      : design_5
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_5,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_5,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=9,da_zynq_ultra_ps_e_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_5.hwdef" *) 
module design_5
   ();

  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]AXI_PerfectTranslator_0_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_0_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_0_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]AXI_PerfectTranslator_0_M00_AXI_ARID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]AXI_PerfectTranslator_0_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_0_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_0_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_0_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_0_M00_AXI_ARUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]AXI_PerfectTranslator_0_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_0_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_0_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]AXI_PerfectTranslator_0_M00_AXI_AWID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]AXI_PerfectTranslator_0_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_0_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_0_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_0_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_0_M00_AXI_AWUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]AXI_PerfectTranslator_0_M00_AXI_BID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_0_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]AXI_PerfectTranslator_0_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]AXI_PerfectTranslator_0_M00_AXI_RID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_0_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]AXI_PerfectTranslator_0_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]AXI_PerfectTranslator_0_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_WVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]AXI_PerfectTranslator_1_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_1_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_1_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]AXI_PerfectTranslator_1_M00_AXI_ARID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]AXI_PerfectTranslator_1_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_1_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_1_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_1_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_1_M00_AXI_ARUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]AXI_PerfectTranslator_1_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_1_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_1_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]AXI_PerfectTranslator_1_M00_AXI_AWID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]AXI_PerfectTranslator_1_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_1_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_1_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_1_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_1_M00_AXI_AWUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]AXI_PerfectTranslator_1_M00_AXI_BID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_1_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]AXI_PerfectTranslator_1_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]AXI_PerfectTranslator_1_M00_AXI_RID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_1_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]AXI_PerfectTranslator_1_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]AXI_PerfectTranslator_1_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_WVALID;
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
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM1_FPD xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  design_5_AXI_PerfectTranslator_0_2 AXI_PerfectTranslator_0
       (.m00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m00_axi_araddr(AXI_PerfectTranslator_0_M00_AXI_ARADDR),
        .m00_axi_arburst(AXI_PerfectTranslator_0_M00_AXI_ARBURST),
        .m00_axi_arcache(AXI_PerfectTranslator_0_M00_AXI_ARCACHE),
        .m00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .m00_axi_arid(AXI_PerfectTranslator_0_M00_AXI_ARID),
        .m00_axi_arlen(AXI_PerfectTranslator_0_M00_AXI_ARLEN),
        .m00_axi_arlock(AXI_PerfectTranslator_0_M00_AXI_ARLOCK),
        .m00_axi_arprot(AXI_PerfectTranslator_0_M00_AXI_ARPROT),
        .m00_axi_arqos(AXI_PerfectTranslator_0_M00_AXI_ARQOS),
        .m00_axi_arready(AXI_PerfectTranslator_0_M00_AXI_ARREADY),
        .m00_axi_arsize(AXI_PerfectTranslator_0_M00_AXI_ARSIZE),
        .m00_axi_aruser(AXI_PerfectTranslator_0_M00_AXI_ARUSER),
        .m00_axi_arvalid(AXI_PerfectTranslator_0_M00_AXI_ARVALID),
        .m00_axi_awaddr(AXI_PerfectTranslator_0_M00_AXI_AWADDR),
        .m00_axi_awburst(AXI_PerfectTranslator_0_M00_AXI_AWBURST),
        .m00_axi_awcache(AXI_PerfectTranslator_0_M00_AXI_AWCACHE),
        .m00_axi_awid(AXI_PerfectTranslator_0_M00_AXI_AWID),
        .m00_axi_awlen(AXI_PerfectTranslator_0_M00_AXI_AWLEN),
        .m00_axi_awlock(AXI_PerfectTranslator_0_M00_AXI_AWLOCK),
        .m00_axi_awprot(AXI_PerfectTranslator_0_M00_AXI_AWPROT),
        .m00_axi_awqos(AXI_PerfectTranslator_0_M00_AXI_AWQOS),
        .m00_axi_awready(AXI_PerfectTranslator_0_M00_AXI_AWREADY),
        .m00_axi_awsize(AXI_PerfectTranslator_0_M00_AXI_AWSIZE),
        .m00_axi_awuser(AXI_PerfectTranslator_0_M00_AXI_AWUSER),
        .m00_axi_awvalid(AXI_PerfectTranslator_0_M00_AXI_AWVALID),
        .m00_axi_bid(AXI_PerfectTranslator_0_M00_AXI_BID),
        .m00_axi_bready(AXI_PerfectTranslator_0_M00_AXI_BREADY),
        .m00_axi_bresp(AXI_PerfectTranslator_0_M00_AXI_BRESP),
        .m00_axi_bvalid(AXI_PerfectTranslator_0_M00_AXI_BVALID),
        .m00_axi_rdata(AXI_PerfectTranslator_0_M00_AXI_RDATA),
        .m00_axi_rid(AXI_PerfectTranslator_0_M00_AXI_RID),
        .m00_axi_rlast(AXI_PerfectTranslator_0_M00_AXI_RLAST),
        .m00_axi_rready(AXI_PerfectTranslator_0_M00_AXI_RREADY),
        .m00_axi_rresp(AXI_PerfectTranslator_0_M00_AXI_RRESP),
        .m00_axi_rvalid(AXI_PerfectTranslator_0_M00_AXI_RVALID),
        .m00_axi_wdata(AXI_PerfectTranslator_0_M00_AXI_WDATA),
        .m00_axi_wlast(AXI_PerfectTranslator_0_M00_AXI_WLAST),
        .m00_axi_wready(AXI_PerfectTranslator_0_M00_AXI_WREADY),
        .m00_axi_wstrb(AXI_PerfectTranslator_0_M00_AXI_WSTRB),
        .m00_axi_wvalid(AXI_PerfectTranslator_0_M00_AXI_WVALID),
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
  design_5_AXI_PerfectTranslator_0_3 AXI_PerfectTranslator_1
       (.m00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m00_axi_araddr(AXI_PerfectTranslator_1_M00_AXI_ARADDR),
        .m00_axi_arburst(AXI_PerfectTranslator_1_M00_AXI_ARBURST),
        .m00_axi_arcache(AXI_PerfectTranslator_1_M00_AXI_ARCACHE),
        .m00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .m00_axi_arid(AXI_PerfectTranslator_1_M00_AXI_ARID),
        .m00_axi_arlen(AXI_PerfectTranslator_1_M00_AXI_ARLEN),
        .m00_axi_arlock(AXI_PerfectTranslator_1_M00_AXI_ARLOCK),
        .m00_axi_arprot(AXI_PerfectTranslator_1_M00_AXI_ARPROT),
        .m00_axi_arqos(AXI_PerfectTranslator_1_M00_AXI_ARQOS),
        .m00_axi_arready(AXI_PerfectTranslator_1_M00_AXI_ARREADY),
        .m00_axi_arsize(AXI_PerfectTranslator_1_M00_AXI_ARSIZE),
        .m00_axi_aruser(AXI_PerfectTranslator_1_M00_AXI_ARUSER),
        .m00_axi_arvalid(AXI_PerfectTranslator_1_M00_AXI_ARVALID),
        .m00_axi_awaddr(AXI_PerfectTranslator_1_M00_AXI_AWADDR),
        .m00_axi_awburst(AXI_PerfectTranslator_1_M00_AXI_AWBURST),
        .m00_axi_awcache(AXI_PerfectTranslator_1_M00_AXI_AWCACHE),
        .m00_axi_awid(AXI_PerfectTranslator_1_M00_AXI_AWID),
        .m00_axi_awlen(AXI_PerfectTranslator_1_M00_AXI_AWLEN),
        .m00_axi_awlock(AXI_PerfectTranslator_1_M00_AXI_AWLOCK),
        .m00_axi_awprot(AXI_PerfectTranslator_1_M00_AXI_AWPROT),
        .m00_axi_awqos(AXI_PerfectTranslator_1_M00_AXI_AWQOS),
        .m00_axi_awready(AXI_PerfectTranslator_1_M00_AXI_AWREADY),
        .m00_axi_awsize(AXI_PerfectTranslator_1_M00_AXI_AWSIZE),
        .m00_axi_awuser(AXI_PerfectTranslator_1_M00_AXI_AWUSER),
        .m00_axi_awvalid(AXI_PerfectTranslator_1_M00_AXI_AWVALID),
        .m00_axi_bid(AXI_PerfectTranslator_1_M00_AXI_BID),
        .m00_axi_bready(AXI_PerfectTranslator_1_M00_AXI_BREADY),
        .m00_axi_bresp(AXI_PerfectTranslator_1_M00_AXI_BRESP),
        .m00_axi_bvalid(AXI_PerfectTranslator_1_M00_AXI_BVALID),
        .m00_axi_rdata(AXI_PerfectTranslator_1_M00_AXI_RDATA),
        .m00_axi_rid(AXI_PerfectTranslator_1_M00_AXI_RID),
        .m00_axi_rlast(AXI_PerfectTranslator_1_M00_AXI_RLAST),
        .m00_axi_rready(AXI_PerfectTranslator_1_M00_AXI_RREADY),
        .m00_axi_rresp(AXI_PerfectTranslator_1_M00_AXI_RRESP),
        .m00_axi_rvalid(AXI_PerfectTranslator_1_M00_AXI_RVALID),
        .m00_axi_wdata(AXI_PerfectTranslator_1_M00_AXI_WDATA),
        .m00_axi_wlast(AXI_PerfectTranslator_1_M00_AXI_WLAST),
        .m00_axi_wready(AXI_PerfectTranslator_1_M00_AXI_WREADY),
        .m00_axi_wstrb(AXI_PerfectTranslator_1_M00_AXI_WSTRB),
        .m00_axi_wvalid(AXI_PerfectTranslator_1_M00_AXI_WVALID),
        .s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .s00_axi_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .s00_axi_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .s00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s00_axi_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .s00_axi_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .s00_axi_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .s00_axi_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .s00_axi_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .s00_axi_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .s00_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .s00_axi_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .s00_axi_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .s00_axi_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .s00_axi_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .s00_axi_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .s00_axi_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .s00_axi_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .s00_axi_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .s00_axi_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .s00_axi_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .s00_axi_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .s00_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .s00_axi_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .s00_axi_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .s00_axi_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .s00_axi_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .s00_axi_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .s00_axi_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .s00_axi_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .s00_axi_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .s00_axi_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .s00_axi_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .s00_axi_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .s00_axi_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .s00_axi_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .s00_axi_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .s00_axi_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .s00_axi_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .s00_axi_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID));
  design_5_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_5_smartconnect_0_0 smartconnect_0
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
        .S00_AXI_araddr(AXI_PerfectTranslator_0_M00_AXI_ARADDR),
        .S00_AXI_arburst(AXI_PerfectTranslator_0_M00_AXI_ARBURST),
        .S00_AXI_arcache(AXI_PerfectTranslator_0_M00_AXI_ARCACHE),
        .S00_AXI_arid(AXI_PerfectTranslator_0_M00_AXI_ARID),
        .S00_AXI_arlen(AXI_PerfectTranslator_0_M00_AXI_ARLEN),
        .S00_AXI_arlock(AXI_PerfectTranslator_0_M00_AXI_ARLOCK),
        .S00_AXI_arprot(AXI_PerfectTranslator_0_M00_AXI_ARPROT),
        .S00_AXI_arqos(AXI_PerfectTranslator_0_M00_AXI_ARQOS),
        .S00_AXI_arready(AXI_PerfectTranslator_0_M00_AXI_ARREADY),
        .S00_AXI_arsize(AXI_PerfectTranslator_0_M00_AXI_ARSIZE),
        .S00_AXI_aruser(AXI_PerfectTranslator_0_M00_AXI_ARUSER),
        .S00_AXI_arvalid(AXI_PerfectTranslator_0_M00_AXI_ARVALID),
        .S00_AXI_awaddr(AXI_PerfectTranslator_0_M00_AXI_AWADDR),
        .S00_AXI_awburst(AXI_PerfectTranslator_0_M00_AXI_AWBURST),
        .S00_AXI_awcache(AXI_PerfectTranslator_0_M00_AXI_AWCACHE),
        .S00_AXI_awid(AXI_PerfectTranslator_0_M00_AXI_AWID),
        .S00_AXI_awlen(AXI_PerfectTranslator_0_M00_AXI_AWLEN),
        .S00_AXI_awlock(AXI_PerfectTranslator_0_M00_AXI_AWLOCK),
        .S00_AXI_awprot(AXI_PerfectTranslator_0_M00_AXI_AWPROT),
        .S00_AXI_awqos(AXI_PerfectTranslator_0_M00_AXI_AWQOS),
        .S00_AXI_awready(AXI_PerfectTranslator_0_M00_AXI_AWREADY),
        .S00_AXI_awsize(AXI_PerfectTranslator_0_M00_AXI_AWSIZE),
        .S00_AXI_awuser(AXI_PerfectTranslator_0_M00_AXI_AWUSER),
        .S00_AXI_awvalid(AXI_PerfectTranslator_0_M00_AXI_AWVALID),
        .S00_AXI_bid(AXI_PerfectTranslator_0_M00_AXI_BID),
        .S00_AXI_bready(AXI_PerfectTranslator_0_M00_AXI_BREADY),
        .S00_AXI_bresp(AXI_PerfectTranslator_0_M00_AXI_BRESP),
        .S00_AXI_bvalid(AXI_PerfectTranslator_0_M00_AXI_BVALID),
        .S00_AXI_rdata(AXI_PerfectTranslator_0_M00_AXI_RDATA),
        .S00_AXI_rid(AXI_PerfectTranslator_0_M00_AXI_RID),
        .S00_AXI_rlast(AXI_PerfectTranslator_0_M00_AXI_RLAST),
        .S00_AXI_rready(AXI_PerfectTranslator_0_M00_AXI_RREADY),
        .S00_AXI_rresp(AXI_PerfectTranslator_0_M00_AXI_RRESP),
        .S00_AXI_rvalid(AXI_PerfectTranslator_0_M00_AXI_RVALID),
        .S00_AXI_wdata(AXI_PerfectTranslator_0_M00_AXI_WDATA),
        .S00_AXI_wlast(AXI_PerfectTranslator_0_M00_AXI_WLAST),
        .S00_AXI_wready(AXI_PerfectTranslator_0_M00_AXI_WREADY),
        .S00_AXI_wstrb(AXI_PerfectTranslator_0_M00_AXI_WSTRB),
        .S00_AXI_wvalid(AXI_PerfectTranslator_0_M00_AXI_WVALID),
        .S01_AXI_araddr(AXI_PerfectTranslator_1_M00_AXI_ARADDR),
        .S01_AXI_arburst(AXI_PerfectTranslator_1_M00_AXI_ARBURST),
        .S01_AXI_arcache(AXI_PerfectTranslator_1_M00_AXI_ARCACHE),
        .S01_AXI_arid(AXI_PerfectTranslator_1_M00_AXI_ARID),
        .S01_AXI_arlen(AXI_PerfectTranslator_1_M00_AXI_ARLEN),
        .S01_AXI_arlock(AXI_PerfectTranslator_1_M00_AXI_ARLOCK),
        .S01_AXI_arprot(AXI_PerfectTranslator_1_M00_AXI_ARPROT),
        .S01_AXI_arqos(AXI_PerfectTranslator_1_M00_AXI_ARQOS),
        .S01_AXI_arready(AXI_PerfectTranslator_1_M00_AXI_ARREADY),
        .S01_AXI_arsize(AXI_PerfectTranslator_1_M00_AXI_ARSIZE),
        .S01_AXI_aruser(AXI_PerfectTranslator_1_M00_AXI_ARUSER),
        .S01_AXI_arvalid(AXI_PerfectTranslator_1_M00_AXI_ARVALID),
        .S01_AXI_awaddr(AXI_PerfectTranslator_1_M00_AXI_AWADDR),
        .S01_AXI_awburst(AXI_PerfectTranslator_1_M00_AXI_AWBURST),
        .S01_AXI_awcache(AXI_PerfectTranslator_1_M00_AXI_AWCACHE),
        .S01_AXI_awid(AXI_PerfectTranslator_1_M00_AXI_AWID),
        .S01_AXI_awlen(AXI_PerfectTranslator_1_M00_AXI_AWLEN),
        .S01_AXI_awlock(AXI_PerfectTranslator_1_M00_AXI_AWLOCK),
        .S01_AXI_awprot(AXI_PerfectTranslator_1_M00_AXI_AWPROT),
        .S01_AXI_awqos(AXI_PerfectTranslator_1_M00_AXI_AWQOS),
        .S01_AXI_awready(AXI_PerfectTranslator_1_M00_AXI_AWREADY),
        .S01_AXI_awsize(AXI_PerfectTranslator_1_M00_AXI_AWSIZE),
        .S01_AXI_awuser(AXI_PerfectTranslator_1_M00_AXI_AWUSER),
        .S01_AXI_awvalid(AXI_PerfectTranslator_1_M00_AXI_AWVALID),
        .S01_AXI_bid(AXI_PerfectTranslator_1_M00_AXI_BID),
        .S01_AXI_bready(AXI_PerfectTranslator_1_M00_AXI_BREADY),
        .S01_AXI_bresp(AXI_PerfectTranslator_1_M00_AXI_BRESP),
        .S01_AXI_bvalid(AXI_PerfectTranslator_1_M00_AXI_BVALID),
        .S01_AXI_rdata(AXI_PerfectTranslator_1_M00_AXI_RDATA),
        .S01_AXI_rid(AXI_PerfectTranslator_1_M00_AXI_RID),
        .S01_AXI_rlast(AXI_PerfectTranslator_1_M00_AXI_RLAST),
        .S01_AXI_rready(AXI_PerfectTranslator_1_M00_AXI_RREADY),
        .S01_AXI_rresp(AXI_PerfectTranslator_1_M00_AXI_RRESP),
        .S01_AXI_rvalid(AXI_PerfectTranslator_1_M00_AXI_RVALID),
        .S01_AXI_wdata(AXI_PerfectTranslator_1_M00_AXI_WDATA),
        .S01_AXI_wlast(AXI_PerfectTranslator_1_M00_AXI_WLAST),
        .S01_AXI_wready(AXI_PerfectTranslator_1_M00_AXI_WREADY),
        .S01_AXI_wstrb(AXI_PerfectTranslator_1_M00_AXI_WSTRB),
        .S01_AXI_wvalid(AXI_PerfectTranslator_1_M00_AXI_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(1'b1));
  design_5_system_ila_0_0 system_ila_0
       (.SLOT_0_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .SLOT_0_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .SLOT_0_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .SLOT_0_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .SLOT_0_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .SLOT_0_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .SLOT_0_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .SLOT_0_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .SLOT_0_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .SLOT_0_AXI_aruser(smartconnect_0_M00_AXI_ARUSER),
        .SLOT_0_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .SLOT_0_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .SLOT_0_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .SLOT_0_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .SLOT_0_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .SLOT_0_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .SLOT_0_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .SLOT_0_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .SLOT_0_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .SLOT_0_AXI_awuser(smartconnect_0_M00_AXI_AWUSER),
        .SLOT_0_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .SLOT_0_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .SLOT_0_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .SLOT_0_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .SLOT_0_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .SLOT_0_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .SLOT_0_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .SLOT_0_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .SLOT_0_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .SLOT_0_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .SLOT_0_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .SLOT_0_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .SLOT_0_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .SLOT_0_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .SLOT_1_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .SLOT_1_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .SLOT_1_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .SLOT_1_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .SLOT_1_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .SLOT_1_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .SLOT_1_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .SLOT_1_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .SLOT_1_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .SLOT_1_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .SLOT_1_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .SLOT_1_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .SLOT_1_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .SLOT_1_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .SLOT_1_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .SLOT_1_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .SLOT_1_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .SLOT_1_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .SLOT_1_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .SLOT_1_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .SLOT_1_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .SLOT_1_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .SLOT_1_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .SLOT_1_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .SLOT_1_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .SLOT_1_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .SLOT_1_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .SLOT_1_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .SLOT_1_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .SLOT_1_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .SLOT_1_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .SLOT_1_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .SLOT_1_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .SLOT_1_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .SLOT_1_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .SLOT_1_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .SLOT_1_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .SLOT_1_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .SLOT_1_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .SLOT_2_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .SLOT_2_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .SLOT_2_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .SLOT_2_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .SLOT_2_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .SLOT_2_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .SLOT_2_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .SLOT_2_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .SLOT_2_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .SLOT_2_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .SLOT_2_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .SLOT_2_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .SLOT_2_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .SLOT_2_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .SLOT_2_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .SLOT_2_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .SLOT_2_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .SLOT_2_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .SLOT_2_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .SLOT_2_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .SLOT_2_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .SLOT_2_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .SLOT_2_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .SLOT_2_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .SLOT_2_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .SLOT_2_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .SLOT_2_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .SLOT_2_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .SLOT_2_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .SLOT_2_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .SLOT_2_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .SLOT_2_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .SLOT_2_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .SLOT_2_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .SLOT_2_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .SLOT_2_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .SLOT_2_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .SLOT_2_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .SLOT_2_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .SLOT_3_AXI_araddr(AXI_PerfectTranslator_0_M00_AXI_ARADDR),
        .SLOT_3_AXI_arburst(AXI_PerfectTranslator_0_M00_AXI_ARBURST),
        .SLOT_3_AXI_arcache(AXI_PerfectTranslator_0_M00_AXI_ARCACHE),
        .SLOT_3_AXI_arid(AXI_PerfectTranslator_0_M00_AXI_ARID),
        .SLOT_3_AXI_arlen(AXI_PerfectTranslator_0_M00_AXI_ARLEN),
        .SLOT_3_AXI_arlock(AXI_PerfectTranslator_0_M00_AXI_ARLOCK),
        .SLOT_3_AXI_arprot(AXI_PerfectTranslator_0_M00_AXI_ARPROT),
        .SLOT_3_AXI_arqos(AXI_PerfectTranslator_0_M00_AXI_ARQOS),
        .SLOT_3_AXI_arready(AXI_PerfectTranslator_0_M00_AXI_ARREADY),
        .SLOT_3_AXI_arsize(AXI_PerfectTranslator_0_M00_AXI_ARSIZE),
        .SLOT_3_AXI_aruser(AXI_PerfectTranslator_0_M00_AXI_ARUSER),
        .SLOT_3_AXI_arvalid(AXI_PerfectTranslator_0_M00_AXI_ARVALID),
        .SLOT_3_AXI_awaddr(AXI_PerfectTranslator_0_M00_AXI_AWADDR),
        .SLOT_3_AXI_awburst(AXI_PerfectTranslator_0_M00_AXI_AWBURST),
        .SLOT_3_AXI_awcache(AXI_PerfectTranslator_0_M00_AXI_AWCACHE),
        .SLOT_3_AXI_awid(AXI_PerfectTranslator_0_M00_AXI_AWID),
        .SLOT_3_AXI_awlen(AXI_PerfectTranslator_0_M00_AXI_AWLEN),
        .SLOT_3_AXI_awlock(AXI_PerfectTranslator_0_M00_AXI_AWLOCK),
        .SLOT_3_AXI_awprot(AXI_PerfectTranslator_0_M00_AXI_AWPROT),
        .SLOT_3_AXI_awqos(AXI_PerfectTranslator_0_M00_AXI_AWQOS),
        .SLOT_3_AXI_awready(AXI_PerfectTranslator_0_M00_AXI_AWREADY),
        .SLOT_3_AXI_awsize(AXI_PerfectTranslator_0_M00_AXI_AWSIZE),
        .SLOT_3_AXI_awuser(AXI_PerfectTranslator_0_M00_AXI_AWUSER),
        .SLOT_3_AXI_awvalid(AXI_PerfectTranslator_0_M00_AXI_AWVALID),
        .SLOT_3_AXI_bid(AXI_PerfectTranslator_0_M00_AXI_BID),
        .SLOT_3_AXI_bready(AXI_PerfectTranslator_0_M00_AXI_BREADY),
        .SLOT_3_AXI_bresp(AXI_PerfectTranslator_0_M00_AXI_BRESP),
        .SLOT_3_AXI_bvalid(AXI_PerfectTranslator_0_M00_AXI_BVALID),
        .SLOT_3_AXI_rdata(AXI_PerfectTranslator_0_M00_AXI_RDATA),
        .SLOT_3_AXI_rid(AXI_PerfectTranslator_0_M00_AXI_RID),
        .SLOT_3_AXI_rlast(AXI_PerfectTranslator_0_M00_AXI_RLAST),
        .SLOT_3_AXI_rready(AXI_PerfectTranslator_0_M00_AXI_RREADY),
        .SLOT_3_AXI_rresp(AXI_PerfectTranslator_0_M00_AXI_RRESP),
        .SLOT_3_AXI_rvalid(AXI_PerfectTranslator_0_M00_AXI_RVALID),
        .SLOT_3_AXI_wdata(AXI_PerfectTranslator_0_M00_AXI_WDATA),
        .SLOT_3_AXI_wlast(AXI_PerfectTranslator_0_M00_AXI_WLAST),
        .SLOT_3_AXI_wready(AXI_PerfectTranslator_0_M00_AXI_WREADY),
        .SLOT_3_AXI_wstrb(AXI_PerfectTranslator_0_M00_AXI_WSTRB),
        .SLOT_3_AXI_wvalid(AXI_PerfectTranslator_0_M00_AXI_WVALID),
        .SLOT_4_AXI_araddr(AXI_PerfectTranslator_1_M00_AXI_ARADDR),
        .SLOT_4_AXI_arburst(AXI_PerfectTranslator_1_M00_AXI_ARBURST),
        .SLOT_4_AXI_arcache(AXI_PerfectTranslator_1_M00_AXI_ARCACHE),
        .SLOT_4_AXI_arid(AXI_PerfectTranslator_1_M00_AXI_ARID),
        .SLOT_4_AXI_arlen(AXI_PerfectTranslator_1_M00_AXI_ARLEN),
        .SLOT_4_AXI_arlock(AXI_PerfectTranslator_1_M00_AXI_ARLOCK),
        .SLOT_4_AXI_arprot(AXI_PerfectTranslator_1_M00_AXI_ARPROT),
        .SLOT_4_AXI_arqos(AXI_PerfectTranslator_1_M00_AXI_ARQOS),
        .SLOT_4_AXI_arready(AXI_PerfectTranslator_1_M00_AXI_ARREADY),
        .SLOT_4_AXI_arsize(AXI_PerfectTranslator_1_M00_AXI_ARSIZE),
        .SLOT_4_AXI_aruser(AXI_PerfectTranslator_1_M00_AXI_ARUSER),
        .SLOT_4_AXI_arvalid(AXI_PerfectTranslator_1_M00_AXI_ARVALID),
        .SLOT_4_AXI_awaddr(AXI_PerfectTranslator_1_M00_AXI_AWADDR),
        .SLOT_4_AXI_awburst(AXI_PerfectTranslator_1_M00_AXI_AWBURST),
        .SLOT_4_AXI_awcache(AXI_PerfectTranslator_1_M00_AXI_AWCACHE),
        .SLOT_4_AXI_awid(AXI_PerfectTranslator_1_M00_AXI_AWID),
        .SLOT_4_AXI_awlen(AXI_PerfectTranslator_1_M00_AXI_AWLEN),
        .SLOT_4_AXI_awlock(AXI_PerfectTranslator_1_M00_AXI_AWLOCK),
        .SLOT_4_AXI_awprot(AXI_PerfectTranslator_1_M00_AXI_AWPROT),
        .SLOT_4_AXI_awqos(AXI_PerfectTranslator_1_M00_AXI_AWQOS),
        .SLOT_4_AXI_awready(AXI_PerfectTranslator_1_M00_AXI_AWREADY),
        .SLOT_4_AXI_awsize(AXI_PerfectTranslator_1_M00_AXI_AWSIZE),
        .SLOT_4_AXI_awuser(AXI_PerfectTranslator_1_M00_AXI_AWUSER),
        .SLOT_4_AXI_awvalid(AXI_PerfectTranslator_1_M00_AXI_AWVALID),
        .SLOT_4_AXI_bid(AXI_PerfectTranslator_1_M00_AXI_BID),
        .SLOT_4_AXI_bready(AXI_PerfectTranslator_1_M00_AXI_BREADY),
        .SLOT_4_AXI_bresp(AXI_PerfectTranslator_1_M00_AXI_BRESP),
        .SLOT_4_AXI_bvalid(AXI_PerfectTranslator_1_M00_AXI_BVALID),
        .SLOT_4_AXI_rdata(AXI_PerfectTranslator_1_M00_AXI_RDATA),
        .SLOT_4_AXI_rid(AXI_PerfectTranslator_1_M00_AXI_RID),
        .SLOT_4_AXI_rlast(AXI_PerfectTranslator_1_M00_AXI_RLAST),
        .SLOT_4_AXI_rready(AXI_PerfectTranslator_1_M00_AXI_RREADY),
        .SLOT_4_AXI_rresp(AXI_PerfectTranslator_1_M00_AXI_RRESP),
        .SLOT_4_AXI_rvalid(AXI_PerfectTranslator_1_M00_AXI_RVALID),
        .SLOT_4_AXI_wdata(AXI_PerfectTranslator_1_M00_AXI_WDATA),
        .SLOT_4_AXI_wlast(AXI_PerfectTranslator_1_M00_AXI_WLAST),
        .SLOT_4_AXI_wready(AXI_PerfectTranslator_1_M00_AXI_WREADY),
        .SLOT_4_AXI_wstrb(AXI_PerfectTranslator_1_M00_AXI_WSTRB),
        .SLOT_4_AXI_wvalid(AXI_PerfectTranslator_1_M00_AXI_WVALID),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .resetn(rst_ps8_0_99M_peripheral_aresetn));
  design_5_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
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
        .maxigp1_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .maxigp1_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .maxigp1_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .maxigp1_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .maxigp1_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .maxigp1_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .maxigp1_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .maxigp1_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .maxigp1_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .maxigp1_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .maxigp1_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .maxigp1_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .maxigp1_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .maxigp1_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .maxigp1_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .maxigp1_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .maxigp1_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .maxigp1_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .maxigp1_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .maxigp1_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .maxigp1_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .maxigp1_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .maxigp1_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .maxigp1_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .maxigp1_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .maxigp1_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .maxigp1_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .maxigp1_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .maxigp1_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .maxigp1_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .maxigp1_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .maxigp1_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .maxigp1_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .maxigp1_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .maxigp1_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .maxigp1_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .maxigp1_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .maxigp1_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .maxigp1_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .maxihpm1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
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
