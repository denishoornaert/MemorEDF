//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sat Jun  6 22:00:47 2020
//Host        : CELSIUS running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=3,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=14,da_zynq_ultra_ps_e_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   ();

  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [48:0]AXI_PerfectTranslator_0_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_0_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_0_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]AXI_PerfectTranslator_0_M00_AXI_ARID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]AXI_PerfectTranslator_0_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_0_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_0_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_0_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_0_M00_AXI_ARUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [48:0]AXI_PerfectTranslator_0_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_0_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_0_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]AXI_PerfectTranslator_0_M00_AXI_AWID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]AXI_PerfectTranslator_0_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_0_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_0_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_0_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_0_M00_AXI_AWUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]AXI_PerfectTranslator_0_M00_AXI_BID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_0_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_0_M00_AXI_BUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]AXI_PerfectTranslator_0_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]AXI_PerfectTranslator_0_M00_AXI_RID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_0_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_0_M00_AXI_RUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]AXI_PerfectTranslator_0_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]AXI_PerfectTranslator_0_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_0_M00_AXI_WUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_0_M00_AXI_WVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [48:0]AXI_PerfectTranslator_1_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_1_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_1_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]AXI_PerfectTranslator_1_M00_AXI_ARID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]AXI_PerfectTranslator_1_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_1_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_1_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_1_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_1_M00_AXI_ARUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [48:0]AXI_PerfectTranslator_1_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_1_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_1_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]AXI_PerfectTranslator_1_M00_AXI_AWID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]AXI_PerfectTranslator_1_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_1_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]AXI_PerfectTranslator_1_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]AXI_PerfectTranslator_1_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_1_M00_AXI_AWUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]AXI_PerfectTranslator_1_M00_AXI_BID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_1_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_1_M00_AXI_BUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]AXI_PerfectTranslator_1_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]AXI_PerfectTranslator_1_M00_AXI_RID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]AXI_PerfectTranslator_1_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_1_M00_AXI_RUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]AXI_PerfectTranslator_1_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]AXI_PerfectTranslator_1_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]AXI_PerfectTranslator_1_M00_AXI_WUSER;
  (* CONN_BUS_INFO = "AXI_PerfectTranslator_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_PerfectTranslator_1_M00_AXI_WVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]MemorEDF_0_m00_axi_ARADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]MemorEDF_0_m00_axi_ARBURST;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]MemorEDF_0_m00_axi_ARCACHE;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]MemorEDF_0_m00_axi_ARID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]MemorEDF_0_m00_axi_ARLEN;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_ARLOCK;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]MemorEDF_0_m00_axi_ARPROT;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]MemorEDF_0_m00_axi_ARQOS;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_ARREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]MemorEDF_0_m00_axi_ARREGION;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]MemorEDF_0_m00_axi_ARSIZE;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]MemorEDF_0_m00_axi_ARUSER;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_ARVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]MemorEDF_0_m00_axi_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]MemorEDF_0_m00_axi_AWBURST;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]MemorEDF_0_m00_axi_AWCACHE;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]MemorEDF_0_m00_axi_AWID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]MemorEDF_0_m00_axi_AWLEN;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_AWLOCK;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]MemorEDF_0_m00_axi_AWPROT;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]MemorEDF_0_m00_axi_AWQOS;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_AWREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]MemorEDF_0_m00_axi_AWREGION;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]MemorEDF_0_m00_axi_AWSIZE;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]MemorEDF_0_m00_axi_AWUSER;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_AWVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]MemorEDF_0_m00_axi_BID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_BREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]MemorEDF_0_m00_axi_BRESP;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_BVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]MemorEDF_0_m00_axi_RDATA;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]MemorEDF_0_m00_axi_RID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_RLAST;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_RREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]MemorEDF_0_m00_axi_RRESP;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_RVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]MemorEDF_0_m00_axi_WDATA;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_WLAST;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_WREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]MemorEDF_0_m00_axi_WSTRB;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire MemorEDF_0_m00_axi_WVALID;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
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
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  (* CONN_BUS_INFO = "zynq_ultra_ps_e_0_M_AXI_HPM0_LPD xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
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

  design_2_AXI_PerfectTranslator_0_0 AXI_PerfectTranslator_0
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
        .m00_axi_buser(1'b0),
        .m00_axi_bvalid(AXI_PerfectTranslator_0_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(1'b0),
        .m00_axi_rdata(AXI_PerfectTranslator_0_M00_AXI_RDATA),
        .m00_axi_rid(AXI_PerfectTranslator_0_M00_AXI_RID),
        .m00_axi_rlast(AXI_PerfectTranslator_0_M00_AXI_RLAST),
        .m00_axi_rready(AXI_PerfectTranslator_0_M00_AXI_RREADY),
        .m00_axi_rresp(AXI_PerfectTranslator_0_M00_AXI_RRESP),
        .m00_axi_ruser(1'b0),
        .m00_axi_rvalid(AXI_PerfectTranslator_0_M00_AXI_RVALID),
        .m00_axi_wdata(AXI_PerfectTranslator_0_M00_AXI_WDATA),
        .m00_axi_wlast(AXI_PerfectTranslator_0_M00_AXI_WLAST),
        .m00_axi_wready(AXI_PerfectTranslator_0_M00_AXI_WREADY),
        .m00_axi_wstrb(AXI_PerfectTranslator_0_M00_AXI_WSTRB),
        .m00_axi_wuser(AXI_PerfectTranslator_0_M00_AXI_WUSER),
        .m00_axi_wvalid(AXI_PerfectTranslator_0_M00_AXI_WVALID),
        .s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s00_axi_araddr(MemorEDF_0_m00_axi_ARADDR),
        .s00_axi_arburst(MemorEDF_0_m00_axi_ARBURST),
        .s00_axi_arcache(MemorEDF_0_m00_axi_ARCACHE),
        .s00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s00_axi_arid(MemorEDF_0_m00_axi_ARID),
        .s00_axi_arlen(MemorEDF_0_m00_axi_ARLEN),
        .s00_axi_arlock(MemorEDF_0_m00_axi_ARLOCK),
        .s00_axi_arprot(MemorEDF_0_m00_axi_ARPROT),
        .s00_axi_arqos(MemorEDF_0_m00_axi_ARQOS),
        .s00_axi_arready(MemorEDF_0_m00_axi_ARREADY),
        .s00_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_arsize(MemorEDF_0_m00_axi_ARSIZE),
        .s00_axi_aruser(MemorEDF_0_m00_axi_ARUSER),
        .s00_axi_arvalid(MemorEDF_0_m00_axi_ARVALID),
        .s00_axi_awaddr(MemorEDF_0_m00_axi_AWADDR),
        .s00_axi_awburst(MemorEDF_0_m00_axi_AWBURST),
        .s00_axi_awcache(MemorEDF_0_m00_axi_AWCACHE),
        .s00_axi_awid(MemorEDF_0_m00_axi_AWID),
        .s00_axi_awlen(MemorEDF_0_m00_axi_AWLEN),
        .s00_axi_awlock(MemorEDF_0_m00_axi_AWLOCK),
        .s00_axi_awprot(MemorEDF_0_m00_axi_AWPROT),
        .s00_axi_awqos(MemorEDF_0_m00_axi_AWQOS),
        .s00_axi_awready(MemorEDF_0_m00_axi_AWREADY),
        .s00_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awsize(MemorEDF_0_m00_axi_AWSIZE),
        .s00_axi_awuser(MemorEDF_0_m00_axi_AWUSER),
        .s00_axi_awvalid(MemorEDF_0_m00_axi_AWVALID),
        .s00_axi_bid(MemorEDF_0_m00_axi_BID),
        .s00_axi_bready(MemorEDF_0_m00_axi_BREADY),
        .s00_axi_bresp(MemorEDF_0_m00_axi_BRESP),
        .s00_axi_bvalid(MemorEDF_0_m00_axi_BVALID),
        .s00_axi_rdata(MemorEDF_0_m00_axi_RDATA),
        .s00_axi_rid(MemorEDF_0_m00_axi_RID),
        .s00_axi_rlast(MemorEDF_0_m00_axi_RLAST),
        .s00_axi_rready(MemorEDF_0_m00_axi_RREADY),
        .s00_axi_rresp(MemorEDF_0_m00_axi_RRESP),
        .s00_axi_rvalid(MemorEDF_0_m00_axi_RVALID),
        .s00_axi_wdata(MemorEDF_0_m00_axi_WDATA),
        .s00_axi_wlast(MemorEDF_0_m00_axi_WLAST),
        .s00_axi_wready(MemorEDF_0_m00_axi_WREADY),
        .s00_axi_wstrb(MemorEDF_0_m00_axi_WSTRB),
        .s00_axi_wvalid(MemorEDF_0_m00_axi_WVALID));
  design_2_AXI_PerfectTranslator_0_1 AXI_PerfectTranslator_1
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
        .m00_axi_buser(1'b0),
        .m00_axi_bvalid(AXI_PerfectTranslator_1_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(1'b0),
        .m00_axi_rdata(AXI_PerfectTranslator_1_M00_AXI_RDATA),
        .m00_axi_rid(AXI_PerfectTranslator_1_M00_AXI_RID),
        .m00_axi_rlast(AXI_PerfectTranslator_1_M00_AXI_RLAST),
        .m00_axi_rready(AXI_PerfectTranslator_1_M00_AXI_RREADY),
        .m00_axi_rresp(AXI_PerfectTranslator_1_M00_AXI_RRESP),
        .m00_axi_ruser(1'b0),
        .m00_axi_rvalid(AXI_PerfectTranslator_1_M00_AXI_RVALID),
        .m00_axi_wdata(AXI_PerfectTranslator_1_M00_AXI_WDATA),
        .m00_axi_wlast(AXI_PerfectTranslator_1_M00_AXI_WLAST),
        .m00_axi_wready(AXI_PerfectTranslator_1_M00_AXI_WREADY),
        .m00_axi_wstrb(AXI_PerfectTranslator_1_M00_AXI_WSTRB),
        .m00_axi_wuser(AXI_PerfectTranslator_1_M00_AXI_WUSER),
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
  design_2_MemorEDF_0_0 MemorEDF_0
       (.m00_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m00_axi_araddr(MemorEDF_0_m00_axi_ARADDR),
        .m00_axi_arburst(MemorEDF_0_m00_axi_ARBURST),
        .m00_axi_arcache(MemorEDF_0_m00_axi_ARCACHE),
        .m00_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .m00_axi_arid(MemorEDF_0_m00_axi_ARID),
        .m00_axi_arlen(MemorEDF_0_m00_axi_ARLEN),
        .m00_axi_arlock(MemorEDF_0_m00_axi_ARLOCK),
        .m00_axi_arprot(MemorEDF_0_m00_axi_ARPROT),
        .m00_axi_arqos(MemorEDF_0_m00_axi_ARQOS),
        .m00_axi_arready(MemorEDF_0_m00_axi_ARREADY),
        .m00_axi_arsize(MemorEDF_0_m00_axi_ARSIZE),
        .m00_axi_aruser(MemorEDF_0_m00_axi_ARUSER),
        .m00_axi_arvalid(MemorEDF_0_m00_axi_ARVALID),
        .m00_axi_awaddr(MemorEDF_0_m00_axi_AWADDR),
        .m00_axi_awburst(MemorEDF_0_m00_axi_AWBURST),
        .m00_axi_awcache(MemorEDF_0_m00_axi_AWCACHE),
        .m00_axi_awid(MemorEDF_0_m00_axi_AWID),
        .m00_axi_awlen(MemorEDF_0_m00_axi_AWLEN),
        .m00_axi_awlock(MemorEDF_0_m00_axi_AWLOCK),
        .m00_axi_awprot(MemorEDF_0_m00_axi_AWPROT),
        .m00_axi_awqos(MemorEDF_0_m00_axi_AWQOS),
        .m00_axi_awready(MemorEDF_0_m00_axi_AWREADY),
        .m00_axi_awsize(MemorEDF_0_m00_axi_AWSIZE),
        .m00_axi_awuser(MemorEDF_0_m00_axi_AWUSER),
        .m00_axi_awvalid(MemorEDF_0_m00_axi_AWVALID),
        .m00_axi_bid(MemorEDF_0_m00_axi_BID),
        .m00_axi_bready(MemorEDF_0_m00_axi_BREADY),
        .m00_axi_bresp(MemorEDF_0_m00_axi_BRESP),
        .m00_axi_bvalid(MemorEDF_0_m00_axi_BVALID),
        .m00_axi_rdata(MemorEDF_0_m00_axi_RDATA),
        .m00_axi_rid(MemorEDF_0_m00_axi_RID),
        .m00_axi_rlast(MemorEDF_0_m00_axi_RLAST),
        .m00_axi_rready(MemorEDF_0_m00_axi_RREADY),
        .m00_axi_rresp(MemorEDF_0_m00_axi_RRESP),
        .m00_axi_rvalid(MemorEDF_0_m00_axi_RVALID),
        .m00_axi_wdata(MemorEDF_0_m00_axi_WDATA),
        .m00_axi_wlast(MemorEDF_0_m00_axi_WLAST),
        .m00_axi_wready(MemorEDF_0_m00_axi_WREADY),
        .m00_axi_wstrb(MemorEDF_0_m00_axi_WSTRB),
        .m00_axi_wvalid(MemorEDF_0_m00_axi_WVALID),
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
        .s00_axi_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .s01_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s01_axi_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .s01_axi_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .s01_axi_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .s01_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s01_axi_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .s01_axi_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .s01_axi_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .s01_axi_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .s01_axi_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .s01_axi_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .s01_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s01_axi_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .s01_axi_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .s01_axi_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .s01_axi_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .s01_axi_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .s01_axi_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .s01_axi_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .s01_axi_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .s01_axi_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .s01_axi_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .s01_axi_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .s01_axi_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .s01_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s01_axi_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .s01_axi_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .s01_axi_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .s01_axi_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .s01_axi_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .s01_axi_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .s01_axi_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .s01_axi_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .s01_axi_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .s01_axi_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .s01_axi_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .s01_axi_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .s01_axi_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .s01_axi_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .s01_axi_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .s01_axi_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .s01_axi_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .s01_axi_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID));
  design_2_ila_0_0 ila_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .probe0(MemorEDF_0_m00_axi_WREADY),
        .probe1(MemorEDF_0_m00_axi_AWADDR),
        .probe10(MemorEDF_0_m00_axi_RDATA),
        .probe11(MemorEDF_0_m00_axi_AWVALID),
        .probe12(MemorEDF_0_m00_axi_AWREADY),
        .probe13(MemorEDF_0_m00_axi_RRESP),
        .probe14(MemorEDF_0_m00_axi_WDATA),
        .probe15(MemorEDF_0_m00_axi_WSTRB),
        .probe16(MemorEDF_0_m00_axi_RVALID),
        .probe17(MemorEDF_0_m00_axi_ARPROT),
        .probe18(MemorEDF_0_m00_axi_AWPROT),
        .probe19(MemorEDF_0_m00_axi_AWID),
        .probe2(MemorEDF_0_m00_axi_BRESP),
        .probe20(MemorEDF_0_m00_axi_BID),
        .probe21(MemorEDF_0_m00_axi_AWLEN),
        .probe22(1'b0),
        .probe23(MemorEDF_0_m00_axi_AWSIZE),
        .probe24(MemorEDF_0_m00_axi_AWBURST),
        .probe25(MemorEDF_0_m00_axi_ARID),
        .probe26(MemorEDF_0_m00_axi_AWLOCK),
        .probe27(MemorEDF_0_m00_axi_ARLEN),
        .probe28(MemorEDF_0_m00_axi_ARSIZE),
        .probe29(MemorEDF_0_m00_axi_ARBURST),
        .probe3(MemorEDF_0_m00_axi_BVALID),
        .probe30(MemorEDF_0_m00_axi_ARLOCK),
        .probe31(MemorEDF_0_m00_axi_ARCACHE),
        .probe32(MemorEDF_0_m00_axi_AWCACHE),
        .probe33(MemorEDF_0_m00_axi_ARREGION),
        .probe34(MemorEDF_0_m00_axi_ARQOS),
        .probe35(MemorEDF_0_m00_axi_ARUSER),
        .probe36(MemorEDF_0_m00_axi_AWREGION),
        .probe37(MemorEDF_0_m00_axi_AWQOS),
        .probe38(MemorEDF_0_m00_axi_RID),
        .probe39(MemorEDF_0_m00_axi_AWUSER),
        .probe4(MemorEDF_0_m00_axi_BREADY),
        .probe40(MemorEDF_0_m00_axi_RLAST),
        .probe41(1'b0),
        .probe42(MemorEDF_0_m00_axi_WLAST),
        .probe43(1'b0),
        .probe5(MemorEDF_0_m00_axi_ARADDR),
        .probe6(MemorEDF_0_m00_axi_RREADY),
        .probe7(MemorEDF_0_m00_axi_WVALID),
        .probe8(MemorEDF_0_m00_axi_ARVALID),
        .probe9(MemorEDF_0_m00_axi_ARREADY));
  design_2_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_2_system_ila_0_0 system_ila_0
       (.SLOT_0_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .SLOT_0_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .SLOT_0_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .SLOT_0_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .SLOT_0_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .SLOT_0_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .SLOT_0_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .SLOT_0_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .SLOT_0_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .SLOT_0_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .SLOT_0_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .SLOT_0_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .SLOT_0_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .SLOT_0_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .SLOT_0_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .SLOT_0_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .SLOT_0_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .SLOT_0_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .SLOT_0_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .SLOT_0_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .SLOT_0_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .SLOT_0_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .SLOT_0_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .SLOT_0_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .SLOT_0_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .SLOT_0_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .SLOT_0_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .SLOT_0_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .SLOT_0_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .SLOT_0_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .SLOT_0_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .SLOT_0_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .SLOT_0_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .SLOT_0_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .SLOT_0_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .SLOT_0_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .SLOT_0_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .SLOT_0_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .SLOT_0_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .SLOT_1_AXI_araddr(AXI_PerfectTranslator_0_M00_AXI_ARADDR),
        .SLOT_1_AXI_arburst(AXI_PerfectTranslator_0_M00_AXI_ARBURST),
        .SLOT_1_AXI_arcache(AXI_PerfectTranslator_0_M00_AXI_ARCACHE),
        .SLOT_1_AXI_arid(AXI_PerfectTranslator_0_M00_AXI_ARID),
        .SLOT_1_AXI_arlen(AXI_PerfectTranslator_0_M00_AXI_ARLEN),
        .SLOT_1_AXI_arlock(AXI_PerfectTranslator_0_M00_AXI_ARLOCK),
        .SLOT_1_AXI_arprot(AXI_PerfectTranslator_0_M00_AXI_ARPROT),
        .SLOT_1_AXI_arqos(AXI_PerfectTranslator_0_M00_AXI_ARQOS),
        .SLOT_1_AXI_arready(AXI_PerfectTranslator_0_M00_AXI_ARREADY),
        .SLOT_1_AXI_arsize(AXI_PerfectTranslator_0_M00_AXI_ARSIZE),
        .SLOT_1_AXI_aruser(AXI_PerfectTranslator_0_M00_AXI_ARUSER),
        .SLOT_1_AXI_arvalid(AXI_PerfectTranslator_0_M00_AXI_ARVALID),
        .SLOT_1_AXI_awaddr(AXI_PerfectTranslator_0_M00_AXI_AWADDR),
        .SLOT_1_AXI_awburst(AXI_PerfectTranslator_0_M00_AXI_AWBURST),
        .SLOT_1_AXI_awcache(AXI_PerfectTranslator_0_M00_AXI_AWCACHE),
        .SLOT_1_AXI_awid(AXI_PerfectTranslator_0_M00_AXI_AWID),
        .SLOT_1_AXI_awlen(AXI_PerfectTranslator_0_M00_AXI_AWLEN),
        .SLOT_1_AXI_awlock(AXI_PerfectTranslator_0_M00_AXI_AWLOCK),
        .SLOT_1_AXI_awprot(AXI_PerfectTranslator_0_M00_AXI_AWPROT),
        .SLOT_1_AXI_awqos(AXI_PerfectTranslator_0_M00_AXI_AWQOS),
        .SLOT_1_AXI_awready(AXI_PerfectTranslator_0_M00_AXI_AWREADY),
        .SLOT_1_AXI_awsize(AXI_PerfectTranslator_0_M00_AXI_AWSIZE),
        .SLOT_1_AXI_awuser(AXI_PerfectTranslator_0_M00_AXI_AWUSER),
        .SLOT_1_AXI_awvalid(AXI_PerfectTranslator_0_M00_AXI_AWVALID),
        .SLOT_1_AXI_bid(AXI_PerfectTranslator_0_M00_AXI_BID),
        .SLOT_1_AXI_bready(AXI_PerfectTranslator_0_M00_AXI_BREADY),
        .SLOT_1_AXI_bresp(AXI_PerfectTranslator_0_M00_AXI_BRESP),
        .SLOT_1_AXI_buser(AXI_PerfectTranslator_0_M00_AXI_BUSER),
        .SLOT_1_AXI_bvalid(AXI_PerfectTranslator_0_M00_AXI_BVALID),
        .SLOT_1_AXI_rdata(AXI_PerfectTranslator_0_M00_AXI_RDATA),
        .SLOT_1_AXI_rid(AXI_PerfectTranslator_0_M00_AXI_RID),
        .SLOT_1_AXI_rlast(AXI_PerfectTranslator_0_M00_AXI_RLAST),
        .SLOT_1_AXI_rready(AXI_PerfectTranslator_0_M00_AXI_RREADY),
        .SLOT_1_AXI_rresp(AXI_PerfectTranslator_0_M00_AXI_RRESP),
        .SLOT_1_AXI_ruser(AXI_PerfectTranslator_0_M00_AXI_RUSER),
        .SLOT_1_AXI_rvalid(AXI_PerfectTranslator_0_M00_AXI_RVALID),
        .SLOT_1_AXI_wdata(AXI_PerfectTranslator_0_M00_AXI_WDATA),
        .SLOT_1_AXI_wlast(AXI_PerfectTranslator_0_M00_AXI_WLAST),
        .SLOT_1_AXI_wready(AXI_PerfectTranslator_0_M00_AXI_WREADY),
        .SLOT_1_AXI_wstrb(AXI_PerfectTranslator_0_M00_AXI_WSTRB),
        .SLOT_1_AXI_wuser(AXI_PerfectTranslator_0_M00_AXI_WUSER),
        .SLOT_1_AXI_wvalid(AXI_PerfectTranslator_0_M00_AXI_WVALID),
        .SLOT_2_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .SLOT_2_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .SLOT_2_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .SLOT_2_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .SLOT_2_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .SLOT_2_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .SLOT_2_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .SLOT_2_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .SLOT_2_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .SLOT_2_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .SLOT_2_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .SLOT_2_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .SLOT_2_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .SLOT_2_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .SLOT_2_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .SLOT_2_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .SLOT_2_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .SLOT_2_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .SLOT_2_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .SLOT_2_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .SLOT_2_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .SLOT_2_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .SLOT_2_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .SLOT_2_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .SLOT_2_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .SLOT_2_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .SLOT_2_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .SLOT_2_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .SLOT_2_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .SLOT_2_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .SLOT_2_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .SLOT_2_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .SLOT_2_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .SLOT_2_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .SLOT_2_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .SLOT_2_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .SLOT_2_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .SLOT_2_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .SLOT_2_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .SLOT_3_AXI_araddr(AXI_PerfectTranslator_1_M00_AXI_ARADDR),
        .SLOT_3_AXI_arburst(AXI_PerfectTranslator_1_M00_AXI_ARBURST),
        .SLOT_3_AXI_arcache(AXI_PerfectTranslator_1_M00_AXI_ARCACHE),
        .SLOT_3_AXI_arid(AXI_PerfectTranslator_1_M00_AXI_ARID),
        .SLOT_3_AXI_arlen(AXI_PerfectTranslator_1_M00_AXI_ARLEN),
        .SLOT_3_AXI_arlock(AXI_PerfectTranslator_1_M00_AXI_ARLOCK),
        .SLOT_3_AXI_arprot(AXI_PerfectTranslator_1_M00_AXI_ARPROT),
        .SLOT_3_AXI_arqos(AXI_PerfectTranslator_1_M00_AXI_ARQOS),
        .SLOT_3_AXI_arready(AXI_PerfectTranslator_1_M00_AXI_ARREADY),
        .SLOT_3_AXI_arsize(AXI_PerfectTranslator_1_M00_AXI_ARSIZE),
        .SLOT_3_AXI_aruser(AXI_PerfectTranslator_1_M00_AXI_ARUSER),
        .SLOT_3_AXI_arvalid(AXI_PerfectTranslator_1_M00_AXI_ARVALID),
        .SLOT_3_AXI_awaddr(AXI_PerfectTranslator_1_M00_AXI_AWADDR),
        .SLOT_3_AXI_awburst(AXI_PerfectTranslator_1_M00_AXI_AWBURST),
        .SLOT_3_AXI_awcache(AXI_PerfectTranslator_1_M00_AXI_AWCACHE),
        .SLOT_3_AXI_awid(AXI_PerfectTranslator_1_M00_AXI_AWID),
        .SLOT_3_AXI_awlen(AXI_PerfectTranslator_1_M00_AXI_AWLEN),
        .SLOT_3_AXI_awlock(AXI_PerfectTranslator_1_M00_AXI_AWLOCK),
        .SLOT_3_AXI_awprot(AXI_PerfectTranslator_1_M00_AXI_AWPROT),
        .SLOT_3_AXI_awqos(AXI_PerfectTranslator_1_M00_AXI_AWQOS),
        .SLOT_3_AXI_awready(AXI_PerfectTranslator_1_M00_AXI_AWREADY),
        .SLOT_3_AXI_awsize(AXI_PerfectTranslator_1_M00_AXI_AWSIZE),
        .SLOT_3_AXI_awuser(AXI_PerfectTranslator_1_M00_AXI_AWUSER),
        .SLOT_3_AXI_awvalid(AXI_PerfectTranslator_1_M00_AXI_AWVALID),
        .SLOT_3_AXI_bid(AXI_PerfectTranslator_1_M00_AXI_BID),
        .SLOT_3_AXI_bready(AXI_PerfectTranslator_1_M00_AXI_BREADY),
        .SLOT_3_AXI_bresp(AXI_PerfectTranslator_1_M00_AXI_BRESP),
        .SLOT_3_AXI_buser(AXI_PerfectTranslator_1_M00_AXI_BUSER),
        .SLOT_3_AXI_bvalid(AXI_PerfectTranslator_1_M00_AXI_BVALID),
        .SLOT_3_AXI_rdata(AXI_PerfectTranslator_1_M00_AXI_RDATA),
        .SLOT_3_AXI_rid(AXI_PerfectTranslator_1_M00_AXI_RID),
        .SLOT_3_AXI_rlast(AXI_PerfectTranslator_1_M00_AXI_RLAST),
        .SLOT_3_AXI_rready(AXI_PerfectTranslator_1_M00_AXI_RREADY),
        .SLOT_3_AXI_rresp(AXI_PerfectTranslator_1_M00_AXI_RRESP),
        .SLOT_3_AXI_ruser(AXI_PerfectTranslator_1_M00_AXI_RUSER),
        .SLOT_3_AXI_rvalid(AXI_PerfectTranslator_1_M00_AXI_RVALID),
        .SLOT_3_AXI_wdata(AXI_PerfectTranslator_1_M00_AXI_WDATA),
        .SLOT_3_AXI_wlast(AXI_PerfectTranslator_1_M00_AXI_WLAST),
        .SLOT_3_AXI_wready(AXI_PerfectTranslator_1_M00_AXI_WREADY),
        .SLOT_3_AXI_wstrb(AXI_PerfectTranslator_1_M00_AXI_WSTRB),
        .SLOT_3_AXI_wuser(AXI_PerfectTranslator_1_M00_AXI_WUSER),
        .SLOT_3_AXI_wvalid(AXI_PerfectTranslator_1_M00_AXI_WVALID),
        .SLOT_4_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .SLOT_4_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .SLOT_4_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .SLOT_4_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .SLOT_4_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .SLOT_4_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .SLOT_4_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .SLOT_4_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .SLOT_4_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .SLOT_4_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .SLOT_4_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .SLOT_4_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .SLOT_4_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .SLOT_4_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .SLOT_4_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .SLOT_4_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .SLOT_4_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .SLOT_4_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .SLOT_4_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .SLOT_4_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .SLOT_4_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .SLOT_4_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .SLOT_4_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .SLOT_4_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .SLOT_4_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .SLOT_4_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .SLOT_4_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .SLOT_4_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .SLOT_4_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .SLOT_4_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .SLOT_4_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .SLOT_4_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .SLOT_4_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .SLOT_4_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .SLOT_4_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .SLOT_4_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .SLOT_4_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .SLOT_4_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .SLOT_4_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .resetn(rst_ps8_0_99M_peripheral_aresetn));
  design_2_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
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
        .maxigp2_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .maxigp2_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .maxigp2_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .maxigp2_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .maxigp2_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .maxigp2_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .maxigp2_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .maxigp2_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .maxigp2_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .maxigp2_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .maxigp2_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .maxigp2_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .maxigp2_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .maxigp2_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .maxigp2_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .maxigp2_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .maxigp2_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .maxigp2_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .maxigp2_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .maxigp2_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .maxigp2_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .maxigp2_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .maxigp2_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .maxigp2_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .maxigp2_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .maxigp2_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .maxigp2_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .maxigp2_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .maxigp2_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .maxigp2_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .maxigp2_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .maxigp2_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .maxigp2_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .maxigp2_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .maxigp2_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .maxigp2_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .maxigp2_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .maxigp2_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .maxigp2_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .maxihpm1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp2_araddr(AXI_PerfectTranslator_0_M00_AXI_ARADDR),
        .saxigp2_arburst(AXI_PerfectTranslator_0_M00_AXI_ARBURST),
        .saxigp2_arcache(AXI_PerfectTranslator_0_M00_AXI_ARCACHE),
        .saxigp2_arid(AXI_PerfectTranslator_0_M00_AXI_ARID),
        .saxigp2_arlen(AXI_PerfectTranslator_0_M00_AXI_ARLEN),
        .saxigp2_arlock(AXI_PerfectTranslator_0_M00_AXI_ARLOCK),
        .saxigp2_arprot(AXI_PerfectTranslator_0_M00_AXI_ARPROT),
        .saxigp2_arqos(AXI_PerfectTranslator_0_M00_AXI_ARQOS),
        .saxigp2_arready(AXI_PerfectTranslator_0_M00_AXI_ARREADY),
        .saxigp2_arsize(AXI_PerfectTranslator_0_M00_AXI_ARSIZE),
        .saxigp2_aruser(AXI_PerfectTranslator_0_M00_AXI_ARUSER),
        .saxigp2_arvalid(AXI_PerfectTranslator_0_M00_AXI_ARVALID),
        .saxigp2_awaddr(AXI_PerfectTranslator_0_M00_AXI_AWADDR),
        .saxigp2_awburst(AXI_PerfectTranslator_0_M00_AXI_AWBURST),
        .saxigp2_awcache(AXI_PerfectTranslator_0_M00_AXI_AWCACHE),
        .saxigp2_awid(AXI_PerfectTranslator_0_M00_AXI_AWID),
        .saxigp2_awlen(AXI_PerfectTranslator_0_M00_AXI_AWLEN),
        .saxigp2_awlock(AXI_PerfectTranslator_0_M00_AXI_AWLOCK),
        .saxigp2_awprot(AXI_PerfectTranslator_0_M00_AXI_AWPROT),
        .saxigp2_awqos(AXI_PerfectTranslator_0_M00_AXI_AWQOS),
        .saxigp2_awready(AXI_PerfectTranslator_0_M00_AXI_AWREADY),
        .saxigp2_awsize(AXI_PerfectTranslator_0_M00_AXI_AWSIZE),
        .saxigp2_awuser(AXI_PerfectTranslator_0_M00_AXI_AWUSER),
        .saxigp2_awvalid(AXI_PerfectTranslator_0_M00_AXI_AWVALID),
        .saxigp2_bid(AXI_PerfectTranslator_0_M00_AXI_BID),
        .saxigp2_bready(AXI_PerfectTranslator_0_M00_AXI_BREADY),
        .saxigp2_bresp(AXI_PerfectTranslator_0_M00_AXI_BRESP),
        .saxigp2_bvalid(AXI_PerfectTranslator_0_M00_AXI_BVALID),
        .saxigp2_rdata(AXI_PerfectTranslator_0_M00_AXI_RDATA),
        .saxigp2_rid(AXI_PerfectTranslator_0_M00_AXI_RID),
        .saxigp2_rlast(AXI_PerfectTranslator_0_M00_AXI_RLAST),
        .saxigp2_rready(AXI_PerfectTranslator_0_M00_AXI_RREADY),
        .saxigp2_rresp(AXI_PerfectTranslator_0_M00_AXI_RRESP),
        .saxigp2_rvalid(AXI_PerfectTranslator_0_M00_AXI_RVALID),
        .saxigp2_wdata(AXI_PerfectTranslator_0_M00_AXI_WDATA),
        .saxigp2_wlast(AXI_PerfectTranslator_0_M00_AXI_WLAST),
        .saxigp2_wready(AXI_PerfectTranslator_0_M00_AXI_WREADY),
        .saxigp2_wstrb(AXI_PerfectTranslator_0_M00_AXI_WSTRB),
        .saxigp2_wvalid(AXI_PerfectTranslator_0_M00_AXI_WVALID),
        .saxigp3_araddr(AXI_PerfectTranslator_1_M00_AXI_ARADDR),
        .saxigp3_arburst(AXI_PerfectTranslator_1_M00_AXI_ARBURST),
        .saxigp3_arcache(AXI_PerfectTranslator_1_M00_AXI_ARCACHE),
        .saxigp3_arid(AXI_PerfectTranslator_1_M00_AXI_ARID),
        .saxigp3_arlen(AXI_PerfectTranslator_1_M00_AXI_ARLEN),
        .saxigp3_arlock(AXI_PerfectTranslator_1_M00_AXI_ARLOCK),
        .saxigp3_arprot(AXI_PerfectTranslator_1_M00_AXI_ARPROT),
        .saxigp3_arqos(AXI_PerfectTranslator_1_M00_AXI_ARQOS),
        .saxigp3_arready(AXI_PerfectTranslator_1_M00_AXI_ARREADY),
        .saxigp3_arsize(AXI_PerfectTranslator_1_M00_AXI_ARSIZE),
        .saxigp3_aruser(AXI_PerfectTranslator_1_M00_AXI_ARUSER),
        .saxigp3_arvalid(AXI_PerfectTranslator_1_M00_AXI_ARVALID),
        .saxigp3_awaddr(AXI_PerfectTranslator_1_M00_AXI_AWADDR),
        .saxigp3_awburst(AXI_PerfectTranslator_1_M00_AXI_AWBURST),
        .saxigp3_awcache(AXI_PerfectTranslator_1_M00_AXI_AWCACHE),
        .saxigp3_awid(AXI_PerfectTranslator_1_M00_AXI_AWID),
        .saxigp3_awlen(AXI_PerfectTranslator_1_M00_AXI_AWLEN),
        .saxigp3_awlock(AXI_PerfectTranslator_1_M00_AXI_AWLOCK),
        .saxigp3_awprot(AXI_PerfectTranslator_1_M00_AXI_AWPROT),
        .saxigp3_awqos(AXI_PerfectTranslator_1_M00_AXI_AWQOS),
        .saxigp3_awready(AXI_PerfectTranslator_1_M00_AXI_AWREADY),
        .saxigp3_awsize(AXI_PerfectTranslator_1_M00_AXI_AWSIZE),
        .saxigp3_awuser(AXI_PerfectTranslator_1_M00_AXI_AWUSER),
        .saxigp3_awvalid(AXI_PerfectTranslator_1_M00_AXI_AWVALID),
        .saxigp3_bid(AXI_PerfectTranslator_1_M00_AXI_BID),
        .saxigp3_bready(AXI_PerfectTranslator_1_M00_AXI_BREADY),
        .saxigp3_bresp(AXI_PerfectTranslator_1_M00_AXI_BRESP),
        .saxigp3_bvalid(AXI_PerfectTranslator_1_M00_AXI_BVALID),
        .saxigp3_rdata(AXI_PerfectTranslator_1_M00_AXI_RDATA),
        .saxigp3_rid(AXI_PerfectTranslator_1_M00_AXI_RID),
        .saxigp3_rlast(AXI_PerfectTranslator_1_M00_AXI_RLAST),
        .saxigp3_rready(AXI_PerfectTranslator_1_M00_AXI_RREADY),
        .saxigp3_rresp(AXI_PerfectTranslator_1_M00_AXI_RRESP),
        .saxigp3_rvalid(AXI_PerfectTranslator_1_M00_AXI_RVALID),
        .saxigp3_wdata(AXI_PerfectTranslator_1_M00_AXI_WDATA),
        .saxigp3_wlast(AXI_PerfectTranslator_1_M00_AXI_WLAST),
        .saxigp3_wready(AXI_PerfectTranslator_1_M00_AXI_WREADY),
        .saxigp3_wstrb(AXI_PerfectTranslator_1_M00_AXI_WSTRB),
        .saxigp3_wvalid(AXI_PerfectTranslator_1_M00_AXI_WVALID),
        .saxihp0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule
