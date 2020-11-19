//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun May 17 23:18:27 2020
//Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=19,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_axi4_s2mm_cnt=3,da_bram_cntlr_cnt=10,da_clkrst_cnt=13,da_zynq_ultra_ps_e_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   ();

  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]S00_AXI_1_ARADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]S00_AXI_1_ARBURST;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]S00_AXI_1_ARCACHE;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]S00_AXI_1_ARLEN;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]S00_AXI_1_ARPROT;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_ARREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]S00_AXI_1_ARSIZE;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_ARVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]S00_AXI_1_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]S00_AXI_1_AWBURST;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]S00_AXI_1_AWCACHE;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]S00_AXI_1_AWLEN;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]S00_AXI_1_AWPROT;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_AWREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]S00_AXI_1_AWSIZE;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_AWVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_BREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]S00_AXI_1_BRESP;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_BVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]S00_AXI_1_RDATA;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_RLAST;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_RREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]S00_AXI_1_RRESP;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_RVALID;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]S00_AXI_1_WDATA;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_WLAST;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_WREADY;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]S00_AXI_1_WSTRB;
  (* CONN_BUS_INFO = "S00_AXI_1 xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire S00_AXI_1_WVALID;
  wire [20:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [127:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [127:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [15:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [20:0]axi_bram_ctrl_0_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTB_CLK;
  wire [127:0]axi_bram_ctrl_0_BRAM_PORTB_DIN;
  wire [127:0]axi_bram_ctrl_0_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTB_EN;
  wire axi_bram_ctrl_0_BRAM_PORTB_RST;
  wire [15:0]axi_bram_ctrl_0_BRAM_PORTB_WE;
  wire [12:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_1_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTB_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTB_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTB_EN;
  wire axi_bram_ctrl_1_BRAM_PORTB_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTB_WE;
  wire [15:0]axi_bram_ctrl_2_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_2_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_2_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_2_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_2_BRAM_PORTA_EN;
  wire axi_bram_ctrl_2_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_2_BRAM_PORTA_WE;
  wire [15:0]axi_bram_ctrl_2_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_2_BRAM_PORTB_CLK;
  wire [31:0]axi_bram_ctrl_2_BRAM_PORTB_DIN;
  wire [31:0]axi_bram_ctrl_2_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_2_BRAM_PORTB_EN;
  wire axi_bram_ctrl_2_BRAM_PORTB_RST;
  wire [3:0]axi_bram_ctrl_2_BRAM_PORTB_WE;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_dma_1_M_AXI_S2MM_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_dma_1_M_AXI_S2MM_AWBURST;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_dma_1_M_AXI_S2MM_AWCACHE;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_dma_1_M_AXI_S2MM_AWLEN;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_dma_1_M_AXI_S2MM_AWPROT;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_S2MM_AWREADY;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_dma_1_M_AXI_S2MM_AWSIZE;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_S2MM_AWVALID;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_S2MM_BREADY;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_dma_1_M_AXI_S2MM_BRESP;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_S2MM_BVALID;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_dma_1_M_AXI_S2MM_WDATA;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_S2MM_WLAST;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_S2MM_WREADY;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_dma_1_M_AXI_S2MM_WSTRB;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_S2MM_WVALID;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_dma_1_M_AXI_SG_ARADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_dma_1_M_AXI_SG_ARBURST;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_dma_1_M_AXI_SG_ARCACHE;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_dma_1_M_AXI_SG_ARLEN;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_dma_1_M_AXI_SG_ARPROT;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_SG_ARREADY;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_dma_1_M_AXI_SG_ARSIZE;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_SG_ARVALID;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_dma_1_M_AXI_SG_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_dma_1_M_AXI_SG_AWBURST;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_dma_1_M_AXI_SG_AWCACHE;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_dma_1_M_AXI_SG_AWLEN;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_dma_1_M_AXI_SG_AWPROT;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_SG_AWREADY;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_dma_1_M_AXI_SG_AWSIZE;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_SG_AWVALID;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_SG_BREADY;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_dma_1_M_AXI_SG_BRESP;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_SG_BVALID;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_dma_1_M_AXI_SG_RDATA;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_SG_RLAST;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_SG_RREADY;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_dma_1_M_AXI_SG_RRESP;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_SG_RVALID;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_dma_1_M_AXI_SG_WDATA;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_SG_WLAST;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_SG_WREADY;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_dma_1_M_AXI_SG_WSTRB;
  (* CONN_BUS_INFO = "axi_dma_1_M_AXI_SG xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_1_M_AXI_SG_WVALID;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_dma_M_AXI_S2MM_AWADDR;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_dma_M_AXI_S2MM_AWBURST;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_dma_M_AXI_S2MM_AWCACHE;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_dma_M_AXI_S2MM_AWLEN;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_dma_M_AXI_S2MM_AWPROT;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_M_AXI_S2MM_AWREADY;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_dma_M_AXI_S2MM_AWSIZE;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_M_AXI_S2MM_AWVALID;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_M_AXI_S2MM_BREADY;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_dma_M_AXI_S2MM_BRESP;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_M_AXI_S2MM_BVALID;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_dma_M_AXI_S2MM_WDATA;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_M_AXI_S2MM_WLAST;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_M_AXI_S2MM_WREADY;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_dma_M_AXI_S2MM_WSTRB;
  (* CONN_BUS_INFO = "axi_dma_M_AXI_S2MM xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_dma_M_AXI_S2MM_WVALID;
  (* CONN_BUS_INFO = "axi_perf_mon_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [55:0]axi_perf_mon_0_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "axi_perf_mon_0_M_AXIS xilinx.com:interface:axis:1.0 None TID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_perf_mon_0_M_AXIS_TID;
  (* CONN_BUS_INFO = "axi_perf_mon_0_M_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_perf_mon_0_M_AXIS_TREADY;
  (* CONN_BUS_INFO = "axi_perf_mon_0_M_AXIS xilinx.com:interface:axis:1.0 None TSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [6:0]axi_perf_mon_0_M_AXIS_TSTRB;
  (* CONN_BUS_INFO = "axi_perf_mon_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_perf_mon_0_M_AXIS_TVALID;
  wire axi_perf_mon_0_interrupt;
  (* CONN_BUS_INFO = "axi_traffic_gen_0_M_AXIS_MASTER xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_traffic_gen_0_M_AXIS_MASTER_TDATA;
  (* CONN_BUS_INFO = "axi_traffic_gen_0_M_AXIS_MASTER xilinx.com:interface:axis:1.0 None TDEST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_traffic_gen_0_M_AXIS_MASTER_TDEST;
  (* CONN_BUS_INFO = "axi_traffic_gen_0_M_AXIS_MASTER xilinx.com:interface:axis:1.0 None TID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_traffic_gen_0_M_AXIS_MASTER_TID;
  (* CONN_BUS_INFO = "axi_traffic_gen_0_M_AXIS_MASTER xilinx.com:interface:axis:1.0 None TKEEP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_traffic_gen_0_M_AXIS_MASTER_TKEEP;
  (* CONN_BUS_INFO = "axi_traffic_gen_0_M_AXIS_MASTER xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_traffic_gen_0_M_AXIS_MASTER_TLAST;
  (* CONN_BUS_INFO = "axi_traffic_gen_0_M_AXIS_MASTER xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_traffic_gen_0_M_AXIS_MASTER_TREADY;
  (* CONN_BUS_INFO = "axi_traffic_gen_0_M_AXIS_MASTER xilinx.com:interface:axis:1.0 None TSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_traffic_gen_0_M_AXIS_MASTER_TSTRB;
  (* CONN_BUS_INFO = "axi_traffic_gen_0_M_AXIS_MASTER xilinx.com:interface:axis:1.0 None TUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_traffic_gen_0_M_AXIS_MASTER_TUSER;
  (* CONN_BUS_INFO = "axi_traffic_gen_0_M_AXIS_MASTER xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_traffic_gen_0_M_AXIS_MASTER_TVALID;
  (* CONN_BUS_INFO = "axis_subset_converter_M_AXIS xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axis_subset_converter_M_AXIS_TDATA;
  (* CONN_BUS_INFO = "axis_subset_converter_M_AXIS xilinx.com:interface:axis:1.0 None TID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axis_subset_converter_M_AXIS_TID;
  (* CONN_BUS_INFO = "axis_subset_converter_M_AXIS xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_subset_converter_M_AXIS_TLAST;
  (* CONN_BUS_INFO = "axis_subset_converter_M_AXIS xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_subset_converter_M_AXIS_TREADY;
  (* CONN_BUS_INFO = "axis_subset_converter_M_AXIS xilinx.com:interface:axis:1.0 None TSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axis_subset_converter_M_AXIS_TSTRB;
  (* CONN_BUS_INFO = "axis_subset_converter_M_AXIS xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_subset_converter_M_AXIS_TVALID;
  wire [0:0]rst_ps8_0_96M_interconnect_aresetn;
  wire [0:0]rst_ps8_0_96M_peripheral_aresetn;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]smartconnect_0_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]smartconnect_0_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]smartconnect_0_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]smartconnect_0_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]smartconnect_0_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]smartconnect_0_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M00_AXI_WVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [9:0]smartconnect_0_M01_AXI_ARADDR;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M01_AXI_ARREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M01_AXI_ARVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [9:0]smartconnect_0_M01_AXI_AWADDR;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M01_AXI_AWREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M01_AXI_AWVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M01_AXI_BREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]smartconnect_0_M01_AXI_BRESP;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M01_AXI_BVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]smartconnect_0_M01_AXI_RDATA;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M01_AXI_RREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]smartconnect_0_M01_AXI_RRESP;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M01_AXI_RVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]smartconnect_0_M01_AXI_WDATA;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M01_AXI_WREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  (* CONN_BUS_INFO = "smartconnect_0_M01_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M01_AXI_WVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [9:0]smartconnect_0_M02_AXI_ARADDR;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]smartconnect_0_M02_AXI_ARPROT;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M02_AXI_ARREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M02_AXI_ARVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [9:0]smartconnect_0_M02_AXI_AWADDR;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]smartconnect_0_M02_AXI_AWPROT;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M02_AXI_AWREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M02_AXI_AWVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M02_AXI_BREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]smartconnect_0_M02_AXI_BRESP;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M02_AXI_BVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]smartconnect_0_M02_AXI_RDATA;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M02_AXI_RREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]smartconnect_0_M02_AXI_RRESP;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M02_AXI_RVALID;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]smartconnect_0_M02_AXI_WDATA;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M02_AXI_WREADY;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]smartconnect_0_M02_AXI_WSTRB;
  (* CONN_BUS_INFO = "smartconnect_0_M02_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire smartconnect_0_M02_AXI_WVALID;
  wire [31:0]smartconnect_0_M03_AXI_ARADDR;
  wire [1:0]smartconnect_0_M03_AXI_ARBURST;
  wire [3:0]smartconnect_0_M03_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M03_AXI_ARLEN;
  wire [0:0]smartconnect_0_M03_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M03_AXI_ARPROT;
  wire [3:0]smartconnect_0_M03_AXI_ARQOS;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire [2:0]smartconnect_0_M03_AXI_ARSIZE;
  wire [15:0]smartconnect_0_M03_AXI_ARUSER;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [31:0]smartconnect_0_M03_AXI_AWADDR;
  wire [1:0]smartconnect_0_M03_AXI_AWBURST;
  wire [3:0]smartconnect_0_M03_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M03_AXI_AWLEN;
  wire [0:0]smartconnect_0_M03_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M03_AXI_AWPROT;
  wire [3:0]smartconnect_0_M03_AXI_AWQOS;
  wire smartconnect_0_M03_AXI_AWREADY;
  wire [2:0]smartconnect_0_M03_AXI_AWSIZE;
  wire [15:0]smartconnect_0_M03_AXI_AWUSER;
  wire smartconnect_0_M03_AXI_AWVALID;
  wire smartconnect_0_M03_AXI_BREADY;
  wire [1:0]smartconnect_0_M03_AXI_BRESP;
  wire smartconnect_0_M03_AXI_BVALID;
  wire [31:0]smartconnect_0_M03_AXI_RDATA;
  wire smartconnect_0_M03_AXI_RLAST;
  wire smartconnect_0_M03_AXI_RREADY;
  wire [1:0]smartconnect_0_M03_AXI_RRESP;
  wire smartconnect_0_M03_AXI_RVALID;
  wire [31:0]smartconnect_0_M03_AXI_WDATA;
  wire smartconnect_0_M03_AXI_WLAST;
  wire smartconnect_0_M03_AXI_WREADY;
  wire [3:0]smartconnect_0_M03_AXI_WSTRB;
  wire smartconnect_0_M03_AXI_WVALID;
  wire [39:0]smartconnect_0_M04_AXI_ARADDR;
  wire [1:0]smartconnect_0_M04_AXI_ARBURST;
  wire [3:0]smartconnect_0_M04_AXI_ARCACHE;
  wire [4:0]smartconnect_0_M04_AXI_ARID;
  wire [7:0]smartconnect_0_M04_AXI_ARLEN;
  wire [0:0]smartconnect_0_M04_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M04_AXI_ARPROT;
  wire [3:0]smartconnect_0_M04_AXI_ARQOS;
  wire smartconnect_0_M04_AXI_ARREADY;
  wire [2:0]smartconnect_0_M04_AXI_ARSIZE;
  wire [129:0]smartconnect_0_M04_AXI_ARUSER;
  wire smartconnect_0_M04_AXI_ARVALID;
  wire [39:0]smartconnect_0_M04_AXI_AWADDR;
  wire [1:0]smartconnect_0_M04_AXI_AWBURST;
  wire [3:0]smartconnect_0_M04_AXI_AWCACHE;
  wire [4:0]smartconnect_0_M04_AXI_AWID;
  wire [7:0]smartconnect_0_M04_AXI_AWLEN;
  wire [0:0]smartconnect_0_M04_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M04_AXI_AWPROT;
  wire [3:0]smartconnect_0_M04_AXI_AWQOS;
  wire smartconnect_0_M04_AXI_AWREADY;
  wire [2:0]smartconnect_0_M04_AXI_AWSIZE;
  wire [129:0]smartconnect_0_M04_AXI_AWUSER;
  wire smartconnect_0_M04_AXI_AWVALID;
  wire [4:0]smartconnect_0_M04_AXI_BID;
  wire smartconnect_0_M04_AXI_BREADY;
  wire [1:0]smartconnect_0_M04_AXI_BRESP;
  wire [113:0]smartconnect_0_M04_AXI_BUSER;
  wire smartconnect_0_M04_AXI_BVALID;
  wire [127:0]smartconnect_0_M04_AXI_RDATA;
  wire [4:0]smartconnect_0_M04_AXI_RID;
  wire smartconnect_0_M04_AXI_RLAST;
  wire smartconnect_0_M04_AXI_RREADY;
  wire [1:0]smartconnect_0_M04_AXI_RRESP;
  wire [13:0]smartconnect_0_M04_AXI_RUSER;
  wire smartconnect_0_M04_AXI_RVALID;
  wire [127:0]smartconnect_0_M04_AXI_WDATA;
  wire smartconnect_0_M04_AXI_WLAST;
  wire smartconnect_0_M04_AXI_WREADY;
  wire [15:0]smartconnect_0_M04_AXI_WSTRB;
  wire [13:0]smartconnect_0_M04_AXI_WUSER;
  wire smartconnect_0_M04_AXI_WVALID;
  wire [39:0]smartconnect_0_M05_AXI_ARADDR;
  wire [1:0]smartconnect_0_M05_AXI_ARBURST;
  wire [3:0]smartconnect_0_M05_AXI_ARCACHE;
  wire [4:0]smartconnect_0_M05_AXI_ARID;
  wire [7:0]smartconnect_0_M05_AXI_ARLEN;
  wire [0:0]smartconnect_0_M05_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M05_AXI_ARPROT;
  wire [3:0]smartconnect_0_M05_AXI_ARQOS;
  wire smartconnect_0_M05_AXI_ARREADY;
  wire [2:0]smartconnect_0_M05_AXI_ARSIZE;
  wire [129:0]smartconnect_0_M05_AXI_ARUSER;
  wire smartconnect_0_M05_AXI_ARVALID;
  wire [39:0]smartconnect_0_M05_AXI_AWADDR;
  wire [1:0]smartconnect_0_M05_AXI_AWBURST;
  wire [3:0]smartconnect_0_M05_AXI_AWCACHE;
  wire [4:0]smartconnect_0_M05_AXI_AWID;
  wire [7:0]smartconnect_0_M05_AXI_AWLEN;
  wire [0:0]smartconnect_0_M05_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M05_AXI_AWPROT;
  wire [3:0]smartconnect_0_M05_AXI_AWQOS;
  wire smartconnect_0_M05_AXI_AWREADY;
  wire [2:0]smartconnect_0_M05_AXI_AWSIZE;
  wire [129:0]smartconnect_0_M05_AXI_AWUSER;
  wire smartconnect_0_M05_AXI_AWVALID;
  wire [4:0]smartconnect_0_M05_AXI_BID;
  wire smartconnect_0_M05_AXI_BREADY;
  wire [1:0]smartconnect_0_M05_AXI_BRESP;
  wire [113:0]smartconnect_0_M05_AXI_BUSER;
  wire smartconnect_0_M05_AXI_BVALID;
  wire [127:0]smartconnect_0_M05_AXI_RDATA;
  wire [4:0]smartconnect_0_M05_AXI_RID;
  wire smartconnect_0_M05_AXI_RLAST;
  wire smartconnect_0_M05_AXI_RREADY;
  wire [1:0]smartconnect_0_M05_AXI_RRESP;
  wire [13:0]smartconnect_0_M05_AXI_RUSER;
  wire smartconnect_0_M05_AXI_RVALID;
  wire [127:0]smartconnect_0_M05_AXI_WDATA;
  wire smartconnect_0_M05_AXI_WLAST;
  wire smartconnect_0_M05_AXI_WREADY;
  wire [15:0]smartconnect_0_M05_AXI_WSTRB;
  wire [13:0]smartconnect_0_M05_AXI_WUSER;
  wire smartconnect_0_M05_AXI_WVALID;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [12:0]smartconnect_1_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]smartconnect_1_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]smartconnect_1_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]smartconnect_1_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DONT_TOUCH *) wire [0:0]smartconnect_1_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]smartconnect_1_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DONT_TOUCH *) wire [3:0]smartconnect_1_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire smartconnect_1_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]smartconnect_1_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DONT_TOUCH *) wire [15:0]smartconnect_1_M00_AXI_ARUSER;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire smartconnect_1_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [12:0]smartconnect_1_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]smartconnect_1_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]smartconnect_1_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]smartconnect_1_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DONT_TOUCH *) wire [0:0]smartconnect_1_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]smartconnect_1_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DONT_TOUCH *) wire [3:0]smartconnect_1_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire smartconnect_1_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]smartconnect_1_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DONT_TOUCH *) wire [15:0]smartconnect_1_M00_AXI_AWUSER;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire smartconnect_1_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire smartconnect_1_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]smartconnect_1_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire smartconnect_1_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [31:0]smartconnect_1_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire smartconnect_1_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire smartconnect_1_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]smartconnect_1_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire smartconnect_1_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [31:0]smartconnect_1_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire smartconnect_1_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire smartconnect_1_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [3:0]smartconnect_1_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire smartconnect_1_M00_AXI_WVALID;
  wire [15:0]smartconnect_2_M00_AXI_ARADDR;
  wire [1:0]smartconnect_2_M00_AXI_ARBURST;
  wire [3:0]smartconnect_2_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_2_M00_AXI_ARLEN;
  wire [0:0]smartconnect_2_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_2_M00_AXI_ARPROT;
  wire smartconnect_2_M00_AXI_ARREADY;
  wire [2:0]smartconnect_2_M00_AXI_ARSIZE;
  wire smartconnect_2_M00_AXI_ARVALID;
  wire [15:0]smartconnect_2_M00_AXI_AWADDR;
  wire [1:0]smartconnect_2_M00_AXI_AWBURST;
  wire [3:0]smartconnect_2_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_2_M00_AXI_AWLEN;
  wire [0:0]smartconnect_2_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_2_M00_AXI_AWPROT;
  wire smartconnect_2_M00_AXI_AWREADY;
  wire [2:0]smartconnect_2_M00_AXI_AWSIZE;
  wire smartconnect_2_M00_AXI_AWVALID;
  wire smartconnect_2_M00_AXI_BREADY;
  wire [1:0]smartconnect_2_M00_AXI_BRESP;
  wire smartconnect_2_M00_AXI_BVALID;
  wire [31:0]smartconnect_2_M00_AXI_RDATA;
  wire smartconnect_2_M00_AXI_RLAST;
  wire smartconnect_2_M00_AXI_RREADY;
  wire [1:0]smartconnect_2_M00_AXI_RRESP;
  wire smartconnect_2_M00_AXI_RVALID;
  wire [31:0]smartconnect_2_M00_AXI_WDATA;
  wire smartconnect_2_M00_AXI_WLAST;
  wire smartconnect_2_M00_AXI_WREADY;
  wire [3:0]smartconnect_2_M00_AXI_WSTRB;
  wire smartconnect_2_M00_AXI_WVALID;
  wire [0:0]vio_0_probe_out0;
  wire [0:0]vio_0_probe_out1;
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
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID;
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

  design_1_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_0_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_0_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR[20:0]),
        .s_axi_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .s_axi_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .s_axi_aresetn(rst_ps8_0_96M_peripheral_aresetn),
        .s_axi_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .s_axi_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .s_axi_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .s_axi_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .s_axi_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .s_axi_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .s_axi_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .s_axi_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR[20:0]),
        .s_axi_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .s_axi_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .s_axi_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .s_axi_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .s_axi_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .s_axi_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .s_axi_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .s_axi_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .s_axi_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .s_axi_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .s_axi_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .s_axi_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .s_axi_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .s_axi_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .s_axi_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .s_axi_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .s_axi_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .s_axi_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .s_axi_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .s_axi_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .s_axi_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .s_axi_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .s_axi_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .s_axi_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID));
  design_1_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_0_BRAM_PORTB_WE));
  design_1_axi_bram_ctrl_1_0 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_1_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_1_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_1_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_1_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_1_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_1_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_1_BRAM_PORTB_DIN),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(smartconnect_1_M00_AXI_ARADDR),
        .s_axi_arburst(smartconnect_1_M00_AXI_ARBURST),
        .s_axi_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps8_0_96M_peripheral_aresetn),
        .s_axi_arlen(smartconnect_1_M00_AXI_ARLEN),
        .s_axi_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_1_M00_AXI_ARPROT),
        .s_axi_arready(smartconnect_1_M00_AXI_ARREADY),
        .s_axi_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .s_axi_awburst(smartconnect_1_M00_AXI_AWBURST),
        .s_axi_awcache(smartconnect_1_M00_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_1_M00_AXI_AWLEN),
        .s_axi_awlock(smartconnect_1_M00_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_1_M00_AXI_AWPROT),
        .s_axi_awready(smartconnect_1_M00_AXI_AWREADY),
        .s_axi_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_1_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_1_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_1_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_1_M00_AXI_RDATA),
        .s_axi_rlast(smartconnect_1_M00_AXI_RLAST),
        .s_axi_rready(smartconnect_1_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_1_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_1_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_1_M00_AXI_WDATA),
        .s_axi_wlast(smartconnect_1_M00_AXI_WLAST),
        .s_axi_wready(smartconnect_1_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_1_M00_AXI_WVALID));
  design_1_axi_bram_ctrl_1_bram_0 axi_bram_ctrl_1_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_1_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_1_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_1_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_1_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_1_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_1_BRAM_PORTB_WE));
  design_1_axi_bram_ctrl_2_0 axi_bram_ctrl_2
       (.bram_addr_a(axi_bram_ctrl_2_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_2_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_2_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_2_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_2_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_2_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_2_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_2_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_2_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_2_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_2_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_2_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_2_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_2_BRAM_PORTB_DIN),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(smartconnect_2_M00_AXI_ARADDR),
        .s_axi_arburst(smartconnect_2_M00_AXI_ARBURST),
        .s_axi_arcache(smartconnect_2_M00_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps8_0_96M_peripheral_aresetn),
        .s_axi_arlen(smartconnect_2_M00_AXI_ARLEN),
        .s_axi_arlock(smartconnect_2_M00_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_2_M00_AXI_ARPROT),
        .s_axi_arready(smartconnect_2_M00_AXI_ARREADY),
        .s_axi_arsize(smartconnect_2_M00_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_2_M00_AXI_AWADDR),
        .s_axi_awburst(smartconnect_2_M00_AXI_AWBURST),
        .s_axi_awcache(smartconnect_2_M00_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_2_M00_AXI_AWLEN),
        .s_axi_awlock(smartconnect_2_M00_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_2_M00_AXI_AWPROT),
        .s_axi_awready(smartconnect_2_M00_AXI_AWREADY),
        .s_axi_awsize(smartconnect_2_M00_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_2_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_2_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_2_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_2_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_2_M00_AXI_RDATA),
        .s_axi_rlast(smartconnect_2_M00_AXI_RLAST),
        .s_axi_rready(smartconnect_2_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_2_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_2_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_2_M00_AXI_WDATA),
        .s_axi_wlast(smartconnect_2_M00_AXI_WLAST),
        .s_axi_wready(smartconnect_2_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_2_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_2_M00_AXI_WVALID));
  design_1_axi_bram_ctrl_2_bram_0 axi_bram_ctrl_2_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_2_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_2_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_2_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_2_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_2_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_2_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_2_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_2_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_2_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_2_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_2_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_2_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_2_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_2_BRAM_PORTB_WE));
  design_1_axi_dma_1_0 axi_dma_1
       (.axi_resetn(rst_ps8_0_96M_peripheral_aresetn),
        .m_axi_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_s2mm_awaddr(axi_dma_1_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_1_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_1_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_1_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_1_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_1_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_1_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_1_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_1_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_1_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_1_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_1_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_1_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_1_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_1_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_1_M_AXI_S2MM_WVALID),
        .m_axi_sg_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_sg_araddr(axi_dma_1_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(axi_dma_1_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(axi_dma_1_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(axi_dma_1_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(axi_dma_1_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(axi_dma_1_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(axi_dma_1_M_AXI_SG_ARSIZE),
        .m_axi_sg_arvalid(axi_dma_1_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(axi_dma_1_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(axi_dma_1_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(axi_dma_1_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(axi_dma_1_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(axi_dma_1_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(axi_dma_1_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(axi_dma_1_M_AXI_SG_AWSIZE),
        .m_axi_sg_awvalid(axi_dma_1_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(axi_dma_1_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(axi_dma_1_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(axi_dma_1_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(axi_dma_1_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(axi_dma_1_M_AXI_SG_RLAST),
        .m_axi_sg_rready(axi_dma_1_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(axi_dma_1_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(axi_dma_1_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(axi_dma_1_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(axi_dma_1_M_AXI_SG_WLAST),
        .m_axi_sg_wready(axi_dma_1_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(axi_dma_1_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(axi_dma_1_M_AXI_SG_WVALID),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_araddr(smartconnect_0_M02_AXI_ARADDR),
        .s_axi_lite_arready(smartconnect_0_M02_AXI_ARREADY),
        .s_axi_lite_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .s_axi_lite_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .s_axi_lite_awready(smartconnect_0_M02_AXI_AWREADY),
        .s_axi_lite_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .s_axi_lite_bready(smartconnect_0_M02_AXI_BREADY),
        .s_axi_lite_bresp(smartconnect_0_M02_AXI_BRESP),
        .s_axi_lite_bvalid(smartconnect_0_M02_AXI_BVALID),
        .s_axi_lite_rdata(smartconnect_0_M02_AXI_RDATA),
        .s_axi_lite_rready(smartconnect_0_M02_AXI_RREADY),
        .s_axi_lite_rresp(smartconnect_0_M02_AXI_RRESP),
        .s_axi_lite_rvalid(smartconnect_0_M02_AXI_RVALID),
        .s_axi_lite_wdata(smartconnect_0_M02_AXI_WDATA),
        .s_axi_lite_wready(smartconnect_0_M02_AXI_WREADY),
        .s_axi_lite_wvalid(smartconnect_0_M02_AXI_WVALID),
        .s_axis_s2mm_tdata(axi_traffic_gen_0_M_AXIS_MASTER_TDATA),
        .s_axis_s2mm_tkeep(axi_traffic_gen_0_M_AXIS_MASTER_TKEEP),
        .s_axis_s2mm_tlast(axi_traffic_gen_0_M_AXIS_MASTER_TLAST),
        .s_axis_s2mm_tready(axi_traffic_gen_0_M_AXIS_MASTER_TREADY),
        .s_axis_s2mm_tvalid(axi_traffic_gen_0_M_AXIS_MASTER_TVALID));
  design_1_axi_dma_1_1 axi_dma_2
       (.axi_resetn(rst_ps8_0_96M_peripheral_aresetn),
        .m_axi_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_s2mm_awaddr(axi_dma_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_M_AXI_S2MM_WVALID),
        .m_axi_sg_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_sg_araddr(S00_AXI_1_ARADDR),
        .m_axi_sg_arburst(S00_AXI_1_ARBURST),
        .m_axi_sg_arcache(S00_AXI_1_ARCACHE),
        .m_axi_sg_arlen(S00_AXI_1_ARLEN),
        .m_axi_sg_arprot(S00_AXI_1_ARPROT),
        .m_axi_sg_arready(S00_AXI_1_ARREADY),
        .m_axi_sg_arsize(S00_AXI_1_ARSIZE),
        .m_axi_sg_arvalid(S00_AXI_1_ARVALID),
        .m_axi_sg_awaddr(S00_AXI_1_AWADDR),
        .m_axi_sg_awburst(S00_AXI_1_AWBURST),
        .m_axi_sg_awcache(S00_AXI_1_AWCACHE),
        .m_axi_sg_awlen(S00_AXI_1_AWLEN),
        .m_axi_sg_awprot(S00_AXI_1_AWPROT),
        .m_axi_sg_awready(S00_AXI_1_AWREADY),
        .m_axi_sg_awsize(S00_AXI_1_AWSIZE),
        .m_axi_sg_awvalid(S00_AXI_1_AWVALID),
        .m_axi_sg_bready(S00_AXI_1_BREADY),
        .m_axi_sg_bresp(S00_AXI_1_BRESP),
        .m_axi_sg_bvalid(S00_AXI_1_BVALID),
        .m_axi_sg_rdata(S00_AXI_1_RDATA),
        .m_axi_sg_rlast(S00_AXI_1_RLAST),
        .m_axi_sg_rready(S00_AXI_1_RREADY),
        .m_axi_sg_rresp(S00_AXI_1_RRESP),
        .m_axi_sg_rvalid(S00_AXI_1_RVALID),
        .m_axi_sg_wdata(S00_AXI_1_WDATA),
        .m_axi_sg_wlast(S00_AXI_1_WLAST),
        .m_axi_sg_wready(S00_AXI_1_WREADY),
        .m_axi_sg_wstrb(S00_AXI_1_WSTRB),
        .m_axi_sg_wvalid(S00_AXI_1_WVALID),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_lite_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_lite_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_lite_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_lite_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_lite_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_lite_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_lite_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_lite_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_lite_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_lite_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_lite_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_lite_wvalid(smartconnect_0_M01_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_subset_converter_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(axis_subset_converter_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_subset_converter_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_subset_converter_M_AXIS_TVALID));
  design_1_axi_perf_mon_0_0 axi_perf_mon_0
       (.core_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .core_aresetn(rst_ps8_0_96M_peripheral_aresetn),
        .ext_clk_0(zynq_ultra_ps_e_0_pl_clk0),
        .ext_event_0(1'b0),
        .ext_event_0_cnt_start(1'b0),
        .ext_event_0_cnt_stop(1'b0),
        .ext_rstn_0(rst_ps8_0_96M_peripheral_aresetn),
        .interrupt(axi_perf_mon_0_interrupt),
        .m_axis_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axis_aresetn(rst_ps8_0_96M_peripheral_aresetn),
        .m_axis_tdata(axi_perf_mon_0_M_AXIS_TDATA),
        .m_axis_tid(axi_perf_mon_0_M_AXIS_TID),
        .m_axis_tready(axi_perf_mon_0_M_AXIS_TREADY),
        .m_axis_tstrb(axi_perf_mon_0_M_AXIS_TSTRB),
        .m_axis_tvalid(axi_perf_mon_0_M_AXIS_TVALID),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_aresetn(rst_ps8_0_96M_peripheral_aresetn),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID),
        .slot_0_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .slot_0_axi_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .slot_0_axi_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .slot_0_axi_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .slot_0_axi_aresetn(rst_ps8_0_96M_peripheral_aresetn),
        .slot_0_axi_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .slot_0_axi_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .slot_0_axi_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .slot_0_axi_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .slot_0_axi_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .slot_0_axi_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .slot_0_axi_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .slot_0_axi_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .slot_0_axi_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .slot_0_axi_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .slot_0_axi_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .slot_0_axi_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .slot_0_axi_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .slot_0_axi_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .slot_0_axi_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .slot_0_axi_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .slot_0_axi_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .slot_0_axi_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .slot_0_axi_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .slot_0_axi_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .slot_0_axi_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .slot_0_axi_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .slot_0_axi_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .slot_0_axi_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .slot_0_axi_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .slot_0_axi_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .slot_0_axi_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .slot_0_axi_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .slot_0_axi_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .slot_0_axi_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .slot_0_axi_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .slot_0_axi_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .slot_0_ext_trig(1'b0),
        .slot_0_ext_trig_stop(1'b0));
  design_1_axi_traffic_gen_0_0 axi_traffic_gen_0
       (.core_ext_start(vio_0_probe_out0),
        .core_ext_stop(vio_0_probe_out1),
        .m_axis_1_tdata(axi_traffic_gen_0_M_AXIS_MASTER_TDATA),
        .m_axis_1_tdest(axi_traffic_gen_0_M_AXIS_MASTER_TDEST),
        .m_axis_1_tid(axi_traffic_gen_0_M_AXIS_MASTER_TID),
        .m_axis_1_tkeep(axi_traffic_gen_0_M_AXIS_MASTER_TKEEP),
        .m_axis_1_tlast(axi_traffic_gen_0_M_AXIS_MASTER_TLAST),
        .m_axis_1_tready(axi_traffic_gen_0_M_AXIS_MASTER_TREADY),
        .m_axis_1_tstrb(axi_traffic_gen_0_M_AXIS_MASTER_TSTRB),
        .m_axis_1_tuser(axi_traffic_gen_0_M_AXIS_MASTER_TUSER),
        .m_axis_1_tvalid(axi_traffic_gen_0_M_AXIS_MASTER_TVALID),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(smartconnect_0_M03_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M03_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M03_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps8_0_96M_peripheral_aresetn),
        .s_axi_arlen(smartconnect_0_M03_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M03_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M03_AXI_ARPROT),
        .s_axi_arqos(smartconnect_0_M03_AXI_ARQOS),
        .s_axi_arready(smartconnect_0_M03_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M03_AXI_ARSIZE),
        .s_axi_aruser(smartconnect_0_M03_AXI_ARUSER),
        .s_axi_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M03_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M03_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_0_M03_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M03_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M03_AXI_AWPROT),
        .s_axi_awqos(smartconnect_0_M03_AXI_AWQOS),
        .s_axi_awready(smartconnect_0_M03_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M03_AXI_AWSIZE),
        .s_axi_awuser(smartconnect_0_M03_AXI_AWUSER),
        .s_axi_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M03_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M03_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M03_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M03_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M03_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M03_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M03_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M03_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M03_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M03_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M03_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M03_AXI_WVALID));
  design_1_axis_subset_converter_1 axis_subset_converter
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_96M_interconnect_aresetn),
        .m_axis_tdata(axis_subset_converter_M_AXIS_TDATA),
        .m_axis_tid(axis_subset_converter_M_AXIS_TID),
        .m_axis_tlast(axis_subset_converter_M_AXIS_TLAST),
        .m_axis_tready(axis_subset_converter_M_AXIS_TREADY),
        .m_axis_tstrb(axis_subset_converter_M_AXIS_TSTRB),
        .m_axis_tvalid(axis_subset_converter_M_AXIS_TVALID),
        .s_axis_tdata(axi_perf_mon_0_M_AXIS_TDATA),
        .s_axis_tid(axi_perf_mon_0_M_AXIS_TID),
        .s_axis_tready(axi_perf_mon_0_M_AXIS_TREADY),
        .s_axis_tstrb(axi_perf_mon_0_M_AXIS_TSTRB),
        .s_axis_tvalid(axi_perf_mon_0_M_AXIS_TVALID));
  design_1_rst_ps8_0_96M_0 rst_ps8_0_96M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(rst_ps8_0_96M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_96M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_smartconnect_0_1 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arprot(smartconnect_0_M02_AXI_ARPROT),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awprot(smartconnect_0_M02_AXI_AWPROT),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_0_M03_AXI_ARBURST),
        .M03_AXI_arcache(smartconnect_0_M03_AXI_ARCACHE),
        .M03_AXI_arlen(smartconnect_0_M03_AXI_ARLEN),
        .M03_AXI_arlock(smartconnect_0_M03_AXI_ARLOCK),
        .M03_AXI_arprot(smartconnect_0_M03_AXI_ARPROT),
        .M03_AXI_arqos(smartconnect_0_M03_AXI_ARQOS),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_0_M03_AXI_ARSIZE),
        .M03_AXI_aruser(smartconnect_0_M03_AXI_ARUSER),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_0_M03_AXI_AWBURST),
        .M03_AXI_awcache(smartconnect_0_M03_AXI_AWCACHE),
        .M03_AXI_awlen(smartconnect_0_M03_AXI_AWLEN),
        .M03_AXI_awlock(smartconnect_0_M03_AXI_AWLOCK),
        .M03_AXI_awprot(smartconnect_0_M03_AXI_AWPROT),
        .M03_AXI_awqos(smartconnect_0_M03_AXI_AWQOS),
        .M03_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_0_M03_AXI_AWSIZE),
        .M03_AXI_awuser(smartconnect_0_M03_AXI_AWUSER),
        .M03_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rlast(smartconnect_0_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_0_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .M04_AXI_araddr(smartconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arburst(smartconnect_0_M04_AXI_ARBURST),
        .M04_AXI_arcache(smartconnect_0_M04_AXI_ARCACHE),
        .M04_AXI_arid(smartconnect_0_M04_AXI_ARID),
        .M04_AXI_arlen(smartconnect_0_M04_AXI_ARLEN),
        .M04_AXI_arlock(smartconnect_0_M04_AXI_ARLOCK),
        .M04_AXI_arprot(smartconnect_0_M04_AXI_ARPROT),
        .M04_AXI_arqos(smartconnect_0_M04_AXI_ARQOS),
        .M04_AXI_arready(smartconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arsize(smartconnect_0_M04_AXI_ARSIZE),
        .M04_AXI_aruser(smartconnect_0_M04_AXI_ARUSER),
        .M04_AXI_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awburst(smartconnect_0_M04_AXI_AWBURST),
        .M04_AXI_awcache(smartconnect_0_M04_AXI_AWCACHE),
        .M04_AXI_awid(smartconnect_0_M04_AXI_AWID),
        .M04_AXI_awlen(smartconnect_0_M04_AXI_AWLEN),
        .M04_AXI_awlock(smartconnect_0_M04_AXI_AWLOCK),
        .M04_AXI_awprot(smartconnect_0_M04_AXI_AWPROT),
        .M04_AXI_awqos(smartconnect_0_M04_AXI_AWQOS),
        .M04_AXI_awready(smartconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awsize(smartconnect_0_M04_AXI_AWSIZE),
        .M04_AXI_awuser(smartconnect_0_M04_AXI_AWUSER),
        .M04_AXI_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bid(smartconnect_0_M04_AXI_BID),
        .M04_AXI_bready(smartconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(smartconnect_0_M04_AXI_BRESP),
        .M04_AXI_buser(smartconnect_0_M04_AXI_BUSER),
        .M04_AXI_bvalid(smartconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(smartconnect_0_M04_AXI_RDATA),
        .M04_AXI_rid(smartconnect_0_M04_AXI_RID),
        .M04_AXI_rlast(smartconnect_0_M04_AXI_RLAST),
        .M04_AXI_rready(smartconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(smartconnect_0_M04_AXI_RRESP),
        .M04_AXI_ruser(smartconnect_0_M04_AXI_RUSER),
        .M04_AXI_rvalid(smartconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(smartconnect_0_M04_AXI_WDATA),
        .M04_AXI_wlast(smartconnect_0_M04_AXI_WLAST),
        .M04_AXI_wready(smartconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wuser(smartconnect_0_M04_AXI_WUSER),
        .M04_AXI_wvalid(smartconnect_0_M04_AXI_WVALID),
        .M05_AXI_araddr(smartconnect_0_M05_AXI_ARADDR),
        .M05_AXI_arburst(smartconnect_0_M05_AXI_ARBURST),
        .M05_AXI_arcache(smartconnect_0_M05_AXI_ARCACHE),
        .M05_AXI_arid(smartconnect_0_M05_AXI_ARID),
        .M05_AXI_arlen(smartconnect_0_M05_AXI_ARLEN),
        .M05_AXI_arlock(smartconnect_0_M05_AXI_ARLOCK),
        .M05_AXI_arprot(smartconnect_0_M05_AXI_ARPROT),
        .M05_AXI_arqos(smartconnect_0_M05_AXI_ARQOS),
        .M05_AXI_arready(smartconnect_0_M05_AXI_ARREADY),
        .M05_AXI_arsize(smartconnect_0_M05_AXI_ARSIZE),
        .M05_AXI_aruser(smartconnect_0_M05_AXI_ARUSER),
        .M05_AXI_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .M05_AXI_awburst(smartconnect_0_M05_AXI_AWBURST),
        .M05_AXI_awcache(smartconnect_0_M05_AXI_AWCACHE),
        .M05_AXI_awid(smartconnect_0_M05_AXI_AWID),
        .M05_AXI_awlen(smartconnect_0_M05_AXI_AWLEN),
        .M05_AXI_awlock(smartconnect_0_M05_AXI_AWLOCK),
        .M05_AXI_awprot(smartconnect_0_M05_AXI_AWPROT),
        .M05_AXI_awqos(smartconnect_0_M05_AXI_AWQOS),
        .M05_AXI_awready(smartconnect_0_M05_AXI_AWREADY),
        .M05_AXI_awsize(smartconnect_0_M05_AXI_AWSIZE),
        .M05_AXI_awuser(smartconnect_0_M05_AXI_AWUSER),
        .M05_AXI_awvalid(smartconnect_0_M05_AXI_AWVALID),
        .M05_AXI_bid(smartconnect_0_M05_AXI_BID),
        .M05_AXI_bready(smartconnect_0_M05_AXI_BREADY),
        .M05_AXI_bresp(smartconnect_0_M05_AXI_BRESP),
        .M05_AXI_buser(smartconnect_0_M05_AXI_BUSER),
        .M05_AXI_bvalid(smartconnect_0_M05_AXI_BVALID),
        .M05_AXI_rdata(smartconnect_0_M05_AXI_RDATA),
        .M05_AXI_rid(smartconnect_0_M05_AXI_RID),
        .M05_AXI_rlast(smartconnect_0_M05_AXI_RLAST),
        .M05_AXI_rready(smartconnect_0_M05_AXI_RREADY),
        .M05_AXI_rresp(smartconnect_0_M05_AXI_RRESP),
        .M05_AXI_ruser(smartconnect_0_M05_AXI_RUSER),
        .M05_AXI_rvalid(smartconnect_0_M05_AXI_RVALID),
        .M05_AXI_wdata(smartconnect_0_M05_AXI_WDATA),
        .M05_AXI_wlast(smartconnect_0_M05_AXI_WLAST),
        .M05_AXI_wready(smartconnect_0_M05_AXI_WREADY),
        .M05_AXI_wstrb(smartconnect_0_M05_AXI_WSTRB),
        .M05_AXI_wuser(smartconnect_0_M05_AXI_WUSER),
        .M05_AXI_wvalid(smartconnect_0_M05_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .S01_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARADDR),
        .S01_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARBURST),
        .S01_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARCACHE),
        .S01_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARID),
        .S01_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLEN),
        .S01_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARLOCK),
        .S01_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARPROT),
        .S01_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARQOS),
        .S01_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARREADY),
        .S01_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARSIZE),
        .S01_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARUSER),
        .S01_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_ARVALID),
        .S01_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWADDR),
        .S01_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWBURST),
        .S01_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWCACHE),
        .S01_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWID),
        .S01_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLEN),
        .S01_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWLOCK),
        .S01_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWPROT),
        .S01_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWQOS),
        .S01_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWREADY),
        .S01_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWSIZE),
        .S01_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWUSER),
        .S01_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_AWVALID),
        .S01_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BID),
        .S01_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BREADY),
        .S01_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BRESP),
        .S01_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_BVALID),
        .S01_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RDATA),
        .S01_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RID),
        .S01_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RLAST),
        .S01_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RREADY),
        .S01_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RRESP),
        .S01_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_RVALID),
        .S01_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WDATA),
        .S01_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WLAST),
        .S01_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WREADY),
        .S01_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WSTRB),
        .S01_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_LPD_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(1'b1));
  design_1_smartconnect_1_0 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_aruser(smartconnect_1_M00_AXI_ARUSER),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_1_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awuser(smartconnect_1_M00_AXI_AWUSER),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_dma_1_M_AXI_SG_ARADDR),
        .S00_AXI_arburst(axi_dma_1_M_AXI_SG_ARBURST),
        .S00_AXI_arcache(axi_dma_1_M_AXI_SG_ARCACHE),
        .S00_AXI_arlen(axi_dma_1_M_AXI_SG_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_1_M_AXI_SG_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_1_M_AXI_SG_ARREADY),
        .S00_AXI_arsize(axi_dma_1_M_AXI_SG_ARSIZE),
        .S00_AXI_arvalid(axi_dma_1_M_AXI_SG_ARVALID),
        .S00_AXI_awaddr(axi_dma_1_M_AXI_SG_AWADDR),
        .S00_AXI_awburst(axi_dma_1_M_AXI_SG_AWBURST),
        .S00_AXI_awcache(axi_dma_1_M_AXI_SG_AWCACHE),
        .S00_AXI_awlen(axi_dma_1_M_AXI_SG_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(axi_dma_1_M_AXI_SG_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_dma_1_M_AXI_SG_AWREADY),
        .S00_AXI_awsize(axi_dma_1_M_AXI_SG_AWSIZE),
        .S00_AXI_awvalid(axi_dma_1_M_AXI_SG_AWVALID),
        .S00_AXI_bready(axi_dma_1_M_AXI_SG_BREADY),
        .S00_AXI_bresp(axi_dma_1_M_AXI_SG_BRESP),
        .S00_AXI_bvalid(axi_dma_1_M_AXI_SG_BVALID),
        .S00_AXI_rdata(axi_dma_1_M_AXI_SG_RDATA),
        .S00_AXI_rlast(axi_dma_1_M_AXI_SG_RLAST),
        .S00_AXI_rready(axi_dma_1_M_AXI_SG_RREADY),
        .S00_AXI_rresp(axi_dma_1_M_AXI_SG_RRESP),
        .S00_AXI_rvalid(axi_dma_1_M_AXI_SG_RVALID),
        .S00_AXI_wdata(axi_dma_1_M_AXI_SG_WDATA),
        .S00_AXI_wlast(axi_dma_1_M_AXI_SG_WLAST),
        .S00_AXI_wready(axi_dma_1_M_AXI_SG_WREADY),
        .S00_AXI_wstrb(axi_dma_1_M_AXI_SG_WSTRB),
        .S00_AXI_wvalid(axi_dma_1_M_AXI_SG_WVALID),
        .S01_AXI_araddr(smartconnect_0_M04_AXI_ARADDR),
        .S01_AXI_arburst(smartconnect_0_M04_AXI_ARBURST),
        .S01_AXI_arcache(smartconnect_0_M04_AXI_ARCACHE),
        .S01_AXI_arid(smartconnect_0_M04_AXI_ARID),
        .S01_AXI_arlen(smartconnect_0_M04_AXI_ARLEN),
        .S01_AXI_arlock(smartconnect_0_M04_AXI_ARLOCK),
        .S01_AXI_arprot(smartconnect_0_M04_AXI_ARPROT),
        .S01_AXI_arqos(smartconnect_0_M04_AXI_ARQOS),
        .S01_AXI_arready(smartconnect_0_M04_AXI_ARREADY),
        .S01_AXI_arsize(smartconnect_0_M04_AXI_ARSIZE),
        .S01_AXI_aruser(smartconnect_0_M04_AXI_ARUSER),
        .S01_AXI_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .S01_AXI_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .S01_AXI_awburst(smartconnect_0_M04_AXI_AWBURST),
        .S01_AXI_awcache(smartconnect_0_M04_AXI_AWCACHE),
        .S01_AXI_awid(smartconnect_0_M04_AXI_AWID),
        .S01_AXI_awlen(smartconnect_0_M04_AXI_AWLEN),
        .S01_AXI_awlock(smartconnect_0_M04_AXI_AWLOCK),
        .S01_AXI_awprot(smartconnect_0_M04_AXI_AWPROT),
        .S01_AXI_awqos(smartconnect_0_M04_AXI_AWQOS),
        .S01_AXI_awready(smartconnect_0_M04_AXI_AWREADY),
        .S01_AXI_awsize(smartconnect_0_M04_AXI_AWSIZE),
        .S01_AXI_awuser(smartconnect_0_M04_AXI_AWUSER),
        .S01_AXI_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .S01_AXI_bid(smartconnect_0_M04_AXI_BID),
        .S01_AXI_bready(smartconnect_0_M04_AXI_BREADY),
        .S01_AXI_bresp(smartconnect_0_M04_AXI_BRESP),
        .S01_AXI_buser(smartconnect_0_M04_AXI_BUSER),
        .S01_AXI_bvalid(smartconnect_0_M04_AXI_BVALID),
        .S01_AXI_rdata(smartconnect_0_M04_AXI_RDATA),
        .S01_AXI_rid(smartconnect_0_M04_AXI_RID),
        .S01_AXI_rlast(smartconnect_0_M04_AXI_RLAST),
        .S01_AXI_rready(smartconnect_0_M04_AXI_RREADY),
        .S01_AXI_rresp(smartconnect_0_M04_AXI_RRESP),
        .S01_AXI_ruser(smartconnect_0_M04_AXI_RUSER),
        .S01_AXI_rvalid(smartconnect_0_M04_AXI_RVALID),
        .S01_AXI_wdata(smartconnect_0_M04_AXI_WDATA),
        .S01_AXI_wlast(smartconnect_0_M04_AXI_WLAST),
        .S01_AXI_wready(smartconnect_0_M04_AXI_WREADY),
        .S01_AXI_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .S01_AXI_wuser(smartconnect_0_M04_AXI_WUSER),
        .S01_AXI_wvalid(smartconnect_0_M04_AXI_WVALID),
        .S02_AXI_araddr(S00_AXI_1_ARADDR),
        .S02_AXI_arburst(S00_AXI_1_ARBURST),
        .S02_AXI_arcache(S00_AXI_1_ARCACHE),
        .S02_AXI_arlen(S00_AXI_1_ARLEN),
        .S02_AXI_arlock(1'b0),
        .S02_AXI_arprot(S00_AXI_1_ARPROT),
        .S02_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arready(S00_AXI_1_ARREADY),
        .S02_AXI_arsize(S00_AXI_1_ARSIZE),
        .S02_AXI_arvalid(S00_AXI_1_ARVALID),
        .S02_AXI_awaddr(S00_AXI_1_AWADDR),
        .S02_AXI_awburst(S00_AXI_1_AWBURST),
        .S02_AXI_awcache(S00_AXI_1_AWCACHE),
        .S02_AXI_awlen(S00_AXI_1_AWLEN),
        .S02_AXI_awlock(1'b0),
        .S02_AXI_awprot(S00_AXI_1_AWPROT),
        .S02_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awready(S00_AXI_1_AWREADY),
        .S02_AXI_awsize(S00_AXI_1_AWSIZE),
        .S02_AXI_awvalid(S00_AXI_1_AWVALID),
        .S02_AXI_bready(S00_AXI_1_BREADY),
        .S02_AXI_bresp(S00_AXI_1_BRESP),
        .S02_AXI_bvalid(S00_AXI_1_BVALID),
        .S02_AXI_rdata(S00_AXI_1_RDATA),
        .S02_AXI_rlast(S00_AXI_1_RLAST),
        .S02_AXI_rready(S00_AXI_1_RREADY),
        .S02_AXI_rresp(S00_AXI_1_RRESP),
        .S02_AXI_rvalid(S00_AXI_1_RVALID),
        .S02_AXI_wdata(S00_AXI_1_WDATA),
        .S02_AXI_wlast(S00_AXI_1_WLAST),
        .S02_AXI_wready(S00_AXI_1_WREADY),
        .S02_AXI_wstrb(S00_AXI_1_WSTRB),
        .S02_AXI_wvalid(S00_AXI_1_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_96M_peripheral_aresetn));
  design_1_smartconnect_2_0 smartconnect_2
       (.M00_AXI_araddr(smartconnect_2_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_2_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_2_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_2_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_2_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_2_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_2_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_2_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_2_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_2_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_2_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_2_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_2_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_2_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_2_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_2_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_2_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_2_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_2_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_2_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_2_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_2_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_2_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_2_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_2_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_2_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_2_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_2_M00_AXI_WVALID),
        .S00_AXI_awaddr(axi_dma_M_AXI_S2MM_AWADDR),
        .S00_AXI_awburst(axi_dma_M_AXI_S2MM_AWBURST),
        .S00_AXI_awcache(axi_dma_M_AXI_S2MM_AWCACHE),
        .S00_AXI_awlen(axi_dma_M_AXI_S2MM_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(axi_dma_M_AXI_S2MM_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_dma_M_AXI_S2MM_AWREADY),
        .S00_AXI_awsize(axi_dma_M_AXI_S2MM_AWSIZE),
        .S00_AXI_awvalid(axi_dma_M_AXI_S2MM_AWVALID),
        .S00_AXI_bready(axi_dma_M_AXI_S2MM_BREADY),
        .S00_AXI_bresp(axi_dma_M_AXI_S2MM_BRESP),
        .S00_AXI_bvalid(axi_dma_M_AXI_S2MM_BVALID),
        .S00_AXI_wdata(axi_dma_M_AXI_S2MM_WDATA),
        .S00_AXI_wlast(axi_dma_M_AXI_S2MM_WLAST),
        .S00_AXI_wready(axi_dma_M_AXI_S2MM_WREADY),
        .S00_AXI_wstrb(axi_dma_M_AXI_S2MM_WSTRB),
        .S00_AXI_wvalid(axi_dma_M_AXI_S2MM_WVALID),
        .S01_AXI_awaddr(axi_dma_1_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_dma_1_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_dma_1_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_dma_1_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(axi_dma_1_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_dma_1_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_dma_1_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_dma_1_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_dma_1_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_dma_1_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_dma_1_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_dma_1_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_dma_1_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_dma_1_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_dma_1_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_dma_1_M_AXI_S2MM_WVALID),
        .S02_AXI_araddr(smartconnect_0_M05_AXI_ARADDR),
        .S02_AXI_arburst(smartconnect_0_M05_AXI_ARBURST),
        .S02_AXI_arcache(smartconnect_0_M05_AXI_ARCACHE),
        .S02_AXI_arid(smartconnect_0_M05_AXI_ARID),
        .S02_AXI_arlen(smartconnect_0_M05_AXI_ARLEN),
        .S02_AXI_arlock(smartconnect_0_M05_AXI_ARLOCK),
        .S02_AXI_arprot(smartconnect_0_M05_AXI_ARPROT),
        .S02_AXI_arqos(smartconnect_0_M05_AXI_ARQOS),
        .S02_AXI_arready(smartconnect_0_M05_AXI_ARREADY),
        .S02_AXI_arsize(smartconnect_0_M05_AXI_ARSIZE),
        .S02_AXI_aruser(smartconnect_0_M05_AXI_ARUSER),
        .S02_AXI_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .S02_AXI_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .S02_AXI_awburst(smartconnect_0_M05_AXI_AWBURST),
        .S02_AXI_awcache(smartconnect_0_M05_AXI_AWCACHE),
        .S02_AXI_awid(smartconnect_0_M05_AXI_AWID),
        .S02_AXI_awlen(smartconnect_0_M05_AXI_AWLEN),
        .S02_AXI_awlock(smartconnect_0_M05_AXI_AWLOCK),
        .S02_AXI_awprot(smartconnect_0_M05_AXI_AWPROT),
        .S02_AXI_awqos(smartconnect_0_M05_AXI_AWQOS),
        .S02_AXI_awready(smartconnect_0_M05_AXI_AWREADY),
        .S02_AXI_awsize(smartconnect_0_M05_AXI_AWSIZE),
        .S02_AXI_awuser(smartconnect_0_M05_AXI_AWUSER),
        .S02_AXI_awvalid(smartconnect_0_M05_AXI_AWVALID),
        .S02_AXI_bid(smartconnect_0_M05_AXI_BID),
        .S02_AXI_bready(smartconnect_0_M05_AXI_BREADY),
        .S02_AXI_bresp(smartconnect_0_M05_AXI_BRESP),
        .S02_AXI_buser(smartconnect_0_M05_AXI_BUSER),
        .S02_AXI_bvalid(smartconnect_0_M05_AXI_BVALID),
        .S02_AXI_rdata(smartconnect_0_M05_AXI_RDATA),
        .S02_AXI_rid(smartconnect_0_M05_AXI_RID),
        .S02_AXI_rlast(smartconnect_0_M05_AXI_RLAST),
        .S02_AXI_rready(smartconnect_0_M05_AXI_RREADY),
        .S02_AXI_rresp(smartconnect_0_M05_AXI_RRESP),
        .S02_AXI_ruser(smartconnect_0_M05_AXI_RUSER),
        .S02_AXI_rvalid(smartconnect_0_M05_AXI_RVALID),
        .S02_AXI_wdata(smartconnect_0_M05_AXI_WDATA),
        .S02_AXI_wlast(smartconnect_0_M05_AXI_WLAST),
        .S02_AXI_wready(smartconnect_0_M05_AXI_WREADY),
        .S02_AXI_wstrb(smartconnect_0_M05_AXI_WSTRB),
        .S02_AXI_wuser(smartconnect_0_M05_AXI_WUSER),
        .S02_AXI_wvalid(smartconnect_0_M05_AXI_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_96M_interconnect_aresetn));
  design_1_system_ila_0_0 system_ila_0
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
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .resetn(rst_ps8_0_96M_peripheral_aresetn));
  design_1_system_ila_1_0 system_ila_1
       (.SLOT_0_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .SLOT_0_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .SLOT_0_AXI_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .SLOT_0_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .SLOT_0_AXI_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .SLOT_0_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .SLOT_0_AXI_arqos(smartconnect_1_M00_AXI_ARQOS),
        .SLOT_0_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .SLOT_0_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .SLOT_0_AXI_aruser(smartconnect_1_M00_AXI_ARUSER),
        .SLOT_0_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .SLOT_0_AXI_awburst(smartconnect_1_M00_AXI_AWBURST),
        .SLOT_0_AXI_awcache(smartconnect_1_M00_AXI_AWCACHE),
        .SLOT_0_AXI_awlen(smartconnect_1_M00_AXI_AWLEN),
        .SLOT_0_AXI_awlock(smartconnect_1_M00_AXI_AWLOCK),
        .SLOT_0_AXI_awprot(smartconnect_1_M00_AXI_AWPROT),
        .SLOT_0_AXI_awqos(smartconnect_1_M00_AXI_AWQOS),
        .SLOT_0_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .SLOT_0_AXI_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .SLOT_0_AXI_awuser(smartconnect_1_M00_AXI_AWUSER),
        .SLOT_0_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .SLOT_0_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .SLOT_0_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .SLOT_0_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .SLOT_0_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .SLOT_0_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .SLOT_0_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .SLOT_0_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .SLOT_0_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .SLOT_0_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .SLOT_0_AXI_wlast(smartconnect_1_M00_AXI_WLAST),
        .SLOT_0_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .SLOT_0_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .SLOT_0_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .SLOT_10_AXI_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_10_AXI_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_10_AXI_arready(1'b0),
        .SLOT_10_AXI_arsize({1'b0,1'b1,1'b0}),
        .SLOT_10_AXI_arvalid(1'b0),
        .SLOT_10_AXI_awaddr(axi_dma_M_AXI_S2MM_AWADDR),
        .SLOT_10_AXI_awlen(axi_dma_M_AXI_S2MM_AWLEN),
        .SLOT_10_AXI_awready(axi_dma_M_AXI_S2MM_AWREADY),
        .SLOT_10_AXI_awsize(axi_dma_M_AXI_S2MM_AWSIZE),
        .SLOT_10_AXI_awvalid(axi_dma_M_AXI_S2MM_AWVALID),
        .SLOT_10_AXI_bready(axi_dma_M_AXI_S2MM_BREADY),
        .SLOT_10_AXI_bresp(axi_dma_M_AXI_S2MM_BRESP),
        .SLOT_10_AXI_bvalid(axi_dma_M_AXI_S2MM_BVALID),
        .SLOT_10_AXI_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_10_AXI_rlast(1'b0),
        .SLOT_10_AXI_rready(1'b0),
        .SLOT_10_AXI_rvalid(1'b0),
        .SLOT_10_AXI_wdata(axi_dma_M_AXI_S2MM_WDATA),
        .SLOT_10_AXI_wlast(axi_dma_M_AXI_S2MM_WLAST),
        .SLOT_10_AXI_wready(axi_dma_M_AXI_S2MM_WREADY),
        .SLOT_10_AXI_wstrb(axi_dma_M_AXI_S2MM_WSTRB),
        .SLOT_10_AXI_wvalid(axi_dma_M_AXI_S2MM_WVALID),
        .SLOT_11_AXI_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_11_AXI_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_11_AXI_arready(1'b0),
        .SLOT_11_AXI_arsize({1'b0,1'b1,1'b0}),
        .SLOT_11_AXI_arvalid(1'b0),
        .SLOT_11_AXI_awaddr(axi_dma_1_M_AXI_S2MM_AWADDR),
        .SLOT_11_AXI_awcache(axi_dma_1_M_AXI_S2MM_AWCACHE),
        .SLOT_11_AXI_awlen(axi_dma_1_M_AXI_S2MM_AWLEN),
        .SLOT_11_AXI_awready(axi_dma_1_M_AXI_S2MM_AWREADY),
        .SLOT_11_AXI_awsize(axi_dma_1_M_AXI_S2MM_AWSIZE),
        .SLOT_11_AXI_awvalid(axi_dma_1_M_AXI_S2MM_AWVALID),
        .SLOT_11_AXI_bready(axi_dma_1_M_AXI_S2MM_BREADY),
        .SLOT_11_AXI_bresp(axi_dma_1_M_AXI_S2MM_BRESP),
        .SLOT_11_AXI_bvalid(axi_dma_1_M_AXI_S2MM_BVALID),
        .SLOT_11_AXI_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .SLOT_11_AXI_rlast(1'b0),
        .SLOT_11_AXI_rready(1'b0),
        .SLOT_11_AXI_rvalid(1'b0),
        .SLOT_11_AXI_wdata(axi_dma_1_M_AXI_S2MM_WDATA),
        .SLOT_11_AXI_wlast(axi_dma_1_M_AXI_S2MM_WLAST),
        .SLOT_11_AXI_wready(axi_dma_1_M_AXI_S2MM_WREADY),
        .SLOT_11_AXI_wstrb(axi_dma_1_M_AXI_S2MM_WSTRB),
        .SLOT_11_AXI_wvalid(axi_dma_1_M_AXI_S2MM_WVALID),
        .SLOT_1_AXIS_tdata(axi_perf_mon_0_M_AXIS_TDATA),
        .SLOT_1_AXIS_tid(axi_perf_mon_0_M_AXIS_TID),
        .SLOT_1_AXIS_tlast(1'b0),
        .SLOT_1_AXIS_tready(axi_perf_mon_0_M_AXIS_TREADY),
        .SLOT_1_AXIS_tstrb(axi_perf_mon_0_M_AXIS_TSTRB),
        .SLOT_1_AXIS_tvalid(axi_perf_mon_0_M_AXIS_TVALID),
        .SLOT_2_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .SLOT_2_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .SLOT_2_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .SLOT_2_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .SLOT_2_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .SLOT_2_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .SLOT_2_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .SLOT_2_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .SLOT_2_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .SLOT_2_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .SLOT_2_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .SLOT_2_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .SLOT_2_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .SLOT_2_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .SLOT_2_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .SLOT_2_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .SLOT_2_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .SLOT_2_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .SLOT_2_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .SLOT_3_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .SLOT_3_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .SLOT_3_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .SLOT_3_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .SLOT_3_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .SLOT_3_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .SLOT_3_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .SLOT_3_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .SLOT_3_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .SLOT_3_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .SLOT_3_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .SLOT_3_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .SLOT_3_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .SLOT_3_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .SLOT_3_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .SLOT_3_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .SLOT_3_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .SLOT_3_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .SLOT_3_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .SLOT_3_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .SLOT_3_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .SLOT_3_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .SLOT_3_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .SLOT_3_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .SLOT_3_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .SLOT_3_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .SLOT_3_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .SLOT_3_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .SLOT_3_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .SLOT_3_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .SLOT_3_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .SLOT_3_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .SLOT_3_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .SLOT_3_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .SLOT_3_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .SLOT_3_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .SLOT_3_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .SLOT_3_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .SLOT_3_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .SLOT_4_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .SLOT_4_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .SLOT_4_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .SLOT_4_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .SLOT_4_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .SLOT_4_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .SLOT_4_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .SLOT_4_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .SLOT_4_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .SLOT_4_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .SLOT_4_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .SLOT_4_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .SLOT_4_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .SLOT_4_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .SLOT_4_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .SLOT_4_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .SLOT_4_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .SLOT_4_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .SLOT_4_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .SLOT_5_AXIS_tdata(axis_subset_converter_M_AXIS_TDATA),
        .SLOT_5_AXIS_tid(axis_subset_converter_M_AXIS_TID),
        .SLOT_5_AXIS_tlast(axis_subset_converter_M_AXIS_TLAST),
        .SLOT_5_AXIS_tready(axis_subset_converter_M_AXIS_TREADY),
        .SLOT_5_AXIS_tstrb(axis_subset_converter_M_AXIS_TSTRB),
        .SLOT_5_AXIS_tvalid(axis_subset_converter_M_AXIS_TVALID),
        .SLOT_6_AXI_araddr(S00_AXI_1_ARADDR),
        .SLOT_6_AXI_arcache(S00_AXI_1_ARCACHE),
        .SLOT_6_AXI_arlen(S00_AXI_1_ARLEN),
        .SLOT_6_AXI_arprot(S00_AXI_1_ARPROT),
        .SLOT_6_AXI_arready(S00_AXI_1_ARREADY),
        .SLOT_6_AXI_arsize(S00_AXI_1_ARSIZE),
        .SLOT_6_AXI_arvalid(S00_AXI_1_ARVALID),
        .SLOT_6_AXI_awaddr(S00_AXI_1_AWADDR),
        .SLOT_6_AXI_awcache(S00_AXI_1_AWCACHE),
        .SLOT_6_AXI_awlen(S00_AXI_1_AWLEN),
        .SLOT_6_AXI_awprot(S00_AXI_1_AWPROT),
        .SLOT_6_AXI_awready(S00_AXI_1_AWREADY),
        .SLOT_6_AXI_awsize(S00_AXI_1_AWSIZE),
        .SLOT_6_AXI_awvalid(S00_AXI_1_AWVALID),
        .SLOT_6_AXI_bready(S00_AXI_1_BREADY),
        .SLOT_6_AXI_bresp(S00_AXI_1_BRESP),
        .SLOT_6_AXI_bvalid(S00_AXI_1_BVALID),
        .SLOT_6_AXI_rdata(S00_AXI_1_RDATA),
        .SLOT_6_AXI_rlast(S00_AXI_1_RLAST),
        .SLOT_6_AXI_rready(S00_AXI_1_RREADY),
        .SLOT_6_AXI_rresp(S00_AXI_1_RRESP),
        .SLOT_6_AXI_rvalid(S00_AXI_1_RVALID),
        .SLOT_6_AXI_wdata(S00_AXI_1_WDATA),
        .SLOT_6_AXI_wlast(S00_AXI_1_WLAST),
        .SLOT_6_AXI_wready(S00_AXI_1_WREADY),
        .SLOT_6_AXI_wstrb(S00_AXI_1_WSTRB),
        .SLOT_6_AXI_wvalid(S00_AXI_1_WVALID),
        .SLOT_7_AXIS_tdata(axi_traffic_gen_0_M_AXIS_MASTER_TDATA),
        .SLOT_7_AXIS_tdest(axi_traffic_gen_0_M_AXIS_MASTER_TDEST),
        .SLOT_7_AXIS_tid(axi_traffic_gen_0_M_AXIS_MASTER_TID),
        .SLOT_7_AXIS_tkeep(axi_traffic_gen_0_M_AXIS_MASTER_TKEEP),
        .SLOT_7_AXIS_tlast(axi_traffic_gen_0_M_AXIS_MASTER_TLAST),
        .SLOT_7_AXIS_tready(axi_traffic_gen_0_M_AXIS_MASTER_TREADY),
        .SLOT_7_AXIS_tstrb(axi_traffic_gen_0_M_AXIS_MASTER_TSTRB),
        .SLOT_7_AXIS_tuser(axi_traffic_gen_0_M_AXIS_MASTER_TUSER),
        .SLOT_7_AXIS_tvalid(axi_traffic_gen_0_M_AXIS_MASTER_TVALID),
        .SLOT_8_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .SLOT_8_AXI_arprot(smartconnect_0_M02_AXI_ARPROT),
        .SLOT_8_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .SLOT_8_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .SLOT_8_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .SLOT_8_AXI_awprot(smartconnect_0_M02_AXI_AWPROT),
        .SLOT_8_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .SLOT_8_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .SLOT_8_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .SLOT_8_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .SLOT_8_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .SLOT_8_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .SLOT_8_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .SLOT_8_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .SLOT_8_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .SLOT_8_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .SLOT_8_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .SLOT_8_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .SLOT_8_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .SLOT_9_AXI_araddr(axi_dma_1_M_AXI_SG_ARADDR),
        .SLOT_9_AXI_arcache(axi_dma_1_M_AXI_SG_ARCACHE),
        .SLOT_9_AXI_arlen(axi_dma_1_M_AXI_SG_ARLEN),
        .SLOT_9_AXI_arprot(axi_dma_1_M_AXI_SG_ARPROT),
        .SLOT_9_AXI_arready(axi_dma_1_M_AXI_SG_ARREADY),
        .SLOT_9_AXI_arsize(axi_dma_1_M_AXI_SG_ARSIZE),
        .SLOT_9_AXI_arvalid(axi_dma_1_M_AXI_SG_ARVALID),
        .SLOT_9_AXI_awaddr(axi_dma_1_M_AXI_SG_AWADDR),
        .SLOT_9_AXI_awcache(axi_dma_1_M_AXI_SG_AWCACHE),
        .SLOT_9_AXI_awlen(axi_dma_1_M_AXI_SG_AWLEN),
        .SLOT_9_AXI_awprot(axi_dma_1_M_AXI_SG_AWPROT),
        .SLOT_9_AXI_awready(axi_dma_1_M_AXI_SG_AWREADY),
        .SLOT_9_AXI_awsize(axi_dma_1_M_AXI_SG_AWSIZE),
        .SLOT_9_AXI_awvalid(axi_dma_1_M_AXI_SG_AWVALID),
        .SLOT_9_AXI_bready(axi_dma_1_M_AXI_SG_BREADY),
        .SLOT_9_AXI_bresp(axi_dma_1_M_AXI_SG_BRESP),
        .SLOT_9_AXI_bvalid(axi_dma_1_M_AXI_SG_BVALID),
        .SLOT_9_AXI_rdata(axi_dma_1_M_AXI_SG_RDATA),
        .SLOT_9_AXI_rlast(axi_dma_1_M_AXI_SG_RLAST),
        .SLOT_9_AXI_rready(axi_dma_1_M_AXI_SG_RREADY),
        .SLOT_9_AXI_rresp(axi_dma_1_M_AXI_SG_RRESP),
        .SLOT_9_AXI_rvalid(axi_dma_1_M_AXI_SG_RVALID),
        .SLOT_9_AXI_wdata(axi_dma_1_M_AXI_SG_WDATA),
        .SLOT_9_AXI_wlast(axi_dma_1_M_AXI_SG_WLAST),
        .SLOT_9_AXI_wready(axi_dma_1_M_AXI_SG_WREADY),
        .SLOT_9_AXI_wstrb(axi_dma_1_M_AXI_SG_WSTRB[2:0]),
        .SLOT_9_AXI_wvalid(axi_dma_1_M_AXI_SG_WVALID),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .resetn(rst_ps8_0_96M_peripheral_aresetn));
  design_1_vio_0_0 vio_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
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
        .pl_ps_irq0(axi_perf_mon_0_interrupt),
        .pl_ps_irq1(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule
