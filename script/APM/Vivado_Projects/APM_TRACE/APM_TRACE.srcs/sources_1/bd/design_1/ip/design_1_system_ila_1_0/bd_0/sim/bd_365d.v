//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_365d.bd
//Design : bd_365d
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_365d,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_365d,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=47,numReposBlks=47,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "design_1_system_ila_1_0.hwdef" *) 
module bd_365d
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arburst,
    SLOT_0_AXI_arcache,
    SLOT_0_AXI_arlen,
    SLOT_0_AXI_arlock,
    SLOT_0_AXI_arprot,
    SLOT_0_AXI_arqos,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arsize,
    SLOT_0_AXI_aruser,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awburst,
    SLOT_0_AXI_awcache,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awlock,
    SLOT_0_AXI_awprot,
    SLOT_0_AXI_awqos,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awuser,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wstrb,
    SLOT_0_AXI_wvalid,
    SLOT_10_AXI_araddr,
    SLOT_10_AXI_arlen,
    SLOT_10_AXI_arready,
    SLOT_10_AXI_arsize,
    SLOT_10_AXI_arvalid,
    SLOT_10_AXI_awaddr,
    SLOT_10_AXI_awlen,
    SLOT_10_AXI_awready,
    SLOT_10_AXI_awsize,
    SLOT_10_AXI_awvalid,
    SLOT_10_AXI_bready,
    SLOT_10_AXI_bresp,
    SLOT_10_AXI_bvalid,
    SLOT_10_AXI_rdata,
    SLOT_10_AXI_rlast,
    SLOT_10_AXI_rready,
    SLOT_10_AXI_rvalid,
    SLOT_10_AXI_wdata,
    SLOT_10_AXI_wlast,
    SLOT_10_AXI_wready,
    SLOT_10_AXI_wstrb,
    SLOT_10_AXI_wvalid,
    SLOT_11_AXI_araddr,
    SLOT_11_AXI_arlen,
    SLOT_11_AXI_arready,
    SLOT_11_AXI_arsize,
    SLOT_11_AXI_arvalid,
    SLOT_11_AXI_awaddr,
    SLOT_11_AXI_awcache,
    SLOT_11_AXI_awlen,
    SLOT_11_AXI_awready,
    SLOT_11_AXI_awsize,
    SLOT_11_AXI_awvalid,
    SLOT_11_AXI_bready,
    SLOT_11_AXI_bresp,
    SLOT_11_AXI_bvalid,
    SLOT_11_AXI_rdata,
    SLOT_11_AXI_rlast,
    SLOT_11_AXI_rready,
    SLOT_11_AXI_rvalid,
    SLOT_11_AXI_wdata,
    SLOT_11_AXI_wlast,
    SLOT_11_AXI_wready,
    SLOT_11_AXI_wstrb,
    SLOT_11_AXI_wvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tid,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tready,
    SLOT_1_AXIS_tstrb,
    SLOT_1_AXIS_tvalid,
    SLOT_2_AXI_araddr,
    SLOT_2_AXI_arprot,
    SLOT_2_AXI_arready,
    SLOT_2_AXI_arvalid,
    SLOT_2_AXI_awaddr,
    SLOT_2_AXI_awprot,
    SLOT_2_AXI_awready,
    SLOT_2_AXI_awvalid,
    SLOT_2_AXI_bready,
    SLOT_2_AXI_bresp,
    SLOT_2_AXI_bvalid,
    SLOT_2_AXI_rdata,
    SLOT_2_AXI_rready,
    SLOT_2_AXI_rresp,
    SLOT_2_AXI_rvalid,
    SLOT_2_AXI_wdata,
    SLOT_2_AXI_wready,
    SLOT_2_AXI_wstrb,
    SLOT_2_AXI_wvalid,
    SLOT_3_AXI_araddr,
    SLOT_3_AXI_arburst,
    SLOT_3_AXI_arcache,
    SLOT_3_AXI_arid,
    SLOT_3_AXI_arlen,
    SLOT_3_AXI_arlock,
    SLOT_3_AXI_arprot,
    SLOT_3_AXI_arqos,
    SLOT_3_AXI_arready,
    SLOT_3_AXI_arsize,
    SLOT_3_AXI_aruser,
    SLOT_3_AXI_arvalid,
    SLOT_3_AXI_awaddr,
    SLOT_3_AXI_awburst,
    SLOT_3_AXI_awcache,
    SLOT_3_AXI_awid,
    SLOT_3_AXI_awlen,
    SLOT_3_AXI_awlock,
    SLOT_3_AXI_awprot,
    SLOT_3_AXI_awqos,
    SLOT_3_AXI_awready,
    SLOT_3_AXI_awsize,
    SLOT_3_AXI_awuser,
    SLOT_3_AXI_awvalid,
    SLOT_3_AXI_bid,
    SLOT_3_AXI_bready,
    SLOT_3_AXI_bresp,
    SLOT_3_AXI_bvalid,
    SLOT_3_AXI_rdata,
    SLOT_3_AXI_rid,
    SLOT_3_AXI_rlast,
    SLOT_3_AXI_rready,
    SLOT_3_AXI_rresp,
    SLOT_3_AXI_rvalid,
    SLOT_3_AXI_wdata,
    SLOT_3_AXI_wlast,
    SLOT_3_AXI_wready,
    SLOT_3_AXI_wstrb,
    SLOT_3_AXI_wvalid,
    SLOT_4_AXI_araddr,
    SLOT_4_AXI_arprot,
    SLOT_4_AXI_arready,
    SLOT_4_AXI_arvalid,
    SLOT_4_AXI_awaddr,
    SLOT_4_AXI_awprot,
    SLOT_4_AXI_awready,
    SLOT_4_AXI_awvalid,
    SLOT_4_AXI_bready,
    SLOT_4_AXI_bresp,
    SLOT_4_AXI_bvalid,
    SLOT_4_AXI_rdata,
    SLOT_4_AXI_rready,
    SLOT_4_AXI_rresp,
    SLOT_4_AXI_rvalid,
    SLOT_4_AXI_wdata,
    SLOT_4_AXI_wready,
    SLOT_4_AXI_wstrb,
    SLOT_4_AXI_wvalid,
    SLOT_5_AXIS_tdata,
    SLOT_5_AXIS_tid,
    SLOT_5_AXIS_tlast,
    SLOT_5_AXIS_tready,
    SLOT_5_AXIS_tstrb,
    SLOT_5_AXIS_tvalid,
    SLOT_6_AXI_araddr,
    SLOT_6_AXI_arcache,
    SLOT_6_AXI_arlen,
    SLOT_6_AXI_arprot,
    SLOT_6_AXI_arready,
    SLOT_6_AXI_arsize,
    SLOT_6_AXI_arvalid,
    SLOT_6_AXI_awaddr,
    SLOT_6_AXI_awcache,
    SLOT_6_AXI_awlen,
    SLOT_6_AXI_awprot,
    SLOT_6_AXI_awready,
    SLOT_6_AXI_awsize,
    SLOT_6_AXI_awvalid,
    SLOT_6_AXI_bready,
    SLOT_6_AXI_bresp,
    SLOT_6_AXI_bvalid,
    SLOT_6_AXI_rdata,
    SLOT_6_AXI_rlast,
    SLOT_6_AXI_rready,
    SLOT_6_AXI_rresp,
    SLOT_6_AXI_rvalid,
    SLOT_6_AXI_wdata,
    SLOT_6_AXI_wlast,
    SLOT_6_AXI_wready,
    SLOT_6_AXI_wstrb,
    SLOT_6_AXI_wvalid,
    SLOT_7_AXIS_tdata,
    SLOT_7_AXIS_tdest,
    SLOT_7_AXIS_tid,
    SLOT_7_AXIS_tkeep,
    SLOT_7_AXIS_tlast,
    SLOT_7_AXIS_tready,
    SLOT_7_AXIS_tstrb,
    SLOT_7_AXIS_tuser,
    SLOT_7_AXIS_tvalid,
    SLOT_8_AXI_araddr,
    SLOT_8_AXI_arprot,
    SLOT_8_AXI_arready,
    SLOT_8_AXI_arvalid,
    SLOT_8_AXI_awaddr,
    SLOT_8_AXI_awprot,
    SLOT_8_AXI_awready,
    SLOT_8_AXI_awvalid,
    SLOT_8_AXI_bready,
    SLOT_8_AXI_bresp,
    SLOT_8_AXI_bvalid,
    SLOT_8_AXI_rdata,
    SLOT_8_AXI_rready,
    SLOT_8_AXI_rresp,
    SLOT_8_AXI_rvalid,
    SLOT_8_AXI_wdata,
    SLOT_8_AXI_wready,
    SLOT_8_AXI_wstrb,
    SLOT_8_AXI_wvalid,
    SLOT_9_AXI_araddr,
    SLOT_9_AXI_arcache,
    SLOT_9_AXI_arlen,
    SLOT_9_AXI_arprot,
    SLOT_9_AXI_arready,
    SLOT_9_AXI_arsize,
    SLOT_9_AXI_arvalid,
    SLOT_9_AXI_awaddr,
    SLOT_9_AXI_awcache,
    SLOT_9_AXI_awlen,
    SLOT_9_AXI_awprot,
    SLOT_9_AXI_awready,
    SLOT_9_AXI_awsize,
    SLOT_9_AXI_awvalid,
    SLOT_9_AXI_bready,
    SLOT_9_AXI_bresp,
    SLOT_9_AXI_bvalid,
    SLOT_9_AXI_rdata,
    SLOT_9_AXI_rlast,
    SLOT_9_AXI_rready,
    SLOT_9_AXI_rresp,
    SLOT_9_AXI_rvalid,
    SLOT_9_AXI_wdata,
    SLOT_9_AXI_wlast,
    SLOT_9_AXI_wready,
    SLOT_9_AXI_wstrb,
    SLOT_9_AXI_wvalid,
    clk,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXI, ADDR_WIDTH 13, ARUSER_WIDTH 16, AWUSER_WIDTH 16, BUSER_WIDTH 0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 32, FREQ_HZ 96969000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [12:0]SLOT_0_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST" *) input [1:0]SLOT_0_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE" *) input [3:0]SLOT_0_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN" *) input [7:0]SLOT_0_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK" *) input [0:0]SLOT_0_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT" *) input [2:0]SLOT_0_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARQOS" *) input [3:0]SLOT_0_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *) input SLOT_0_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE" *) input [2:0]SLOT_0_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARUSER" *) input [15:0]SLOT_0_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *) input SLOT_0_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *) input [12:0]SLOT_0_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST" *) input [1:0]SLOT_0_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE" *) input [3:0]SLOT_0_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN" *) input [7:0]SLOT_0_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK" *) input [0:0]SLOT_0_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT" *) input [2:0]SLOT_0_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWQOS" *) input [3:0]SLOT_0_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *) input SLOT_0_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE" *) input [2:0]SLOT_0_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWUSER" *) input [15:0]SLOT_0_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *) input SLOT_0_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *) input SLOT_0_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP" *) input [1:0]SLOT_0_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *) input SLOT_0_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *) input [31:0]SLOT_0_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST" *) input SLOT_0_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *) input SLOT_0_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP" *) input [1:0]SLOT_0_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *) input SLOT_0_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *) input [31:0]SLOT_0_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST" *) input SLOT_0_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *) input SLOT_0_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB" *) input [3:0]SLOT_0_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *) input SLOT_0_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_10_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 32, FREQ_HZ 96969000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_10_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI ARLEN" *) input [7:0]SLOT_10_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI ARREADY" *) input SLOT_10_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI ARSIZE" *) input [2:0]SLOT_10_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI ARVALID" *) input SLOT_10_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI AWADDR" *) input [31:0]SLOT_10_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI AWLEN" *) input [7:0]SLOT_10_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI AWREADY" *) input SLOT_10_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI AWSIZE" *) input [2:0]SLOT_10_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI AWVALID" *) input SLOT_10_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI BREADY" *) input SLOT_10_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI BRESP" *) input [1:0]SLOT_10_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI BVALID" *) input SLOT_10_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI RDATA" *) input [31:0]SLOT_10_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI RLAST" *) input SLOT_10_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI RREADY" *) input SLOT_10_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI RVALID" *) input SLOT_10_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI WDATA" *) input [31:0]SLOT_10_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI WLAST" *) input SLOT_10_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI WREADY" *) input SLOT_10_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI WSTRB" *) input [3:0]SLOT_10_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI WVALID" *) input SLOT_10_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_11_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 32, FREQ_HZ 96969000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_11_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI ARLEN" *) input [7:0]SLOT_11_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI ARREADY" *) input SLOT_11_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI ARSIZE" *) input [2:0]SLOT_11_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI ARVALID" *) input SLOT_11_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI AWADDR" *) input [31:0]SLOT_11_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI AWCACHE" *) input [3:0]SLOT_11_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI AWLEN" *) input [7:0]SLOT_11_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI AWREADY" *) input SLOT_11_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI AWSIZE" *) input [2:0]SLOT_11_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI AWVALID" *) input SLOT_11_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI BREADY" *) input SLOT_11_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI BRESP" *) input [1:0]SLOT_11_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI BVALID" *) input SLOT_11_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI RDATA" *) input [31:0]SLOT_11_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI RLAST" *) input SLOT_11_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI RREADY" *) input SLOT_11_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI RVALID" *) input SLOT_11_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI WDATA" *) input [31:0]SLOT_11_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI WLAST" *) input SLOT_11_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI WREADY" *) input SLOT_11_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI WSTRB" *) input [3:0]SLOT_11_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI WVALID" *) input SLOT_11_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 96969000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 7, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0" *) input [55:0]SLOT_1_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TID" *) input [0:0]SLOT_1_AXIS_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST" *) input SLOT_1_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY" *) input SLOT_1_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TSTRB" *) input [6:0]SLOT_1_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID" *) input SLOT_1_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXI, ADDR_WIDTH 10, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 32, FREQ_HZ 96969000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [9:0]SLOT_2_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT" *) input [2:0]SLOT_2_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY" *) input SLOT_2_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID" *) input SLOT_2_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR" *) input [9:0]SLOT_2_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT" *) input [2:0]SLOT_2_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY" *) input SLOT_2_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID" *) input SLOT_2_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY" *) input SLOT_2_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP" *) input [1:0]SLOT_2_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID" *) input SLOT_2_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA" *) input [31:0]SLOT_2_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY" *) input SLOT_2_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RRESP" *) input [1:0]SLOT_2_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID" *) input SLOT_2_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA" *) input [31:0]SLOT_2_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY" *) input SLOT_2_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB" *) input [3:0]SLOT_2_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID" *) input SLOT_2_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_AXI, ADDR_WIDTH 40, ARUSER_WIDTH 16, AWUSER_WIDTH 16, BUSER_WIDTH 0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 128, FREQ_HZ 96969000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 4, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [39:0]SLOT_3_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARBURST" *) input [1:0]SLOT_3_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE" *) input [3:0]SLOT_3_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARID" *) input [15:0]SLOT_3_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN" *) input [7:0]SLOT_3_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLOCK" *) input [0:0]SLOT_3_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT" *) input [2:0]SLOT_3_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARQOS" *) input [3:0]SLOT_3_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY" *) input SLOT_3_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE" *) input [2:0]SLOT_3_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARUSER" *) input [15:0]SLOT_3_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID" *) input SLOT_3_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR" *) input [39:0]SLOT_3_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWBURST" *) input [1:0]SLOT_3_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE" *) input [3:0]SLOT_3_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWID" *) input [15:0]SLOT_3_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN" *) input [7:0]SLOT_3_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLOCK" *) input [0:0]SLOT_3_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT" *) input [2:0]SLOT_3_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWQOS" *) input [3:0]SLOT_3_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY" *) input SLOT_3_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE" *) input [2:0]SLOT_3_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWUSER" *) input [15:0]SLOT_3_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID" *) input SLOT_3_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BID" *) input [15:0]SLOT_3_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY" *) input SLOT_3_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP" *) input [1:0]SLOT_3_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID" *) input SLOT_3_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA" *) input [127:0]SLOT_3_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RID" *) input [15:0]SLOT_3_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST" *) input SLOT_3_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY" *) input SLOT_3_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RRESP" *) input [1:0]SLOT_3_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID" *) input SLOT_3_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA" *) input [127:0]SLOT_3_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST" *) input SLOT_3_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY" *) input SLOT_3_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB" *) input [15:0]SLOT_3_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID" *) input SLOT_3_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_4_AXI, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 32, FREQ_HZ 96969000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [15:0]SLOT_4_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARPROT" *) input [2:0]SLOT_4_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARREADY" *) input SLOT_4_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARVALID" *) input SLOT_4_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWADDR" *) input [15:0]SLOT_4_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWPROT" *) input [2:0]SLOT_4_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWREADY" *) input SLOT_4_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWVALID" *) input SLOT_4_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BREADY" *) input SLOT_4_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BRESP" *) input [1:0]SLOT_4_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BVALID" *) input SLOT_4_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RDATA" *) input [31:0]SLOT_4_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RREADY" *) input SLOT_4_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RRESP" *) input [1:0]SLOT_4_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RVALID" *) input SLOT_4_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WDATA" *) input [31:0]SLOT_4_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WREADY" *) input SLOT_4_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WSTRB" *) input [3:0]SLOT_4_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WVALID" *) input SLOT_4_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_5_AXIS, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 96969000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0" *) input [31:0]SLOT_5_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TID" *) input [0:0]SLOT_5_AXIS_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TLAST" *) input SLOT_5_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TREADY" *) input SLOT_5_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TSTRB" *) input [3:0]SLOT_5_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TVALID" *) input SLOT_5_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_6_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 32, FREQ_HZ 96969000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_6_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARCACHE" *) input [3:0]SLOT_6_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARLEN" *) input [7:0]SLOT_6_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARPROT" *) input [2:0]SLOT_6_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARREADY" *) input SLOT_6_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARSIZE" *) input [2:0]SLOT_6_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARVALID" *) input SLOT_6_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWADDR" *) input [31:0]SLOT_6_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWCACHE" *) input [3:0]SLOT_6_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWLEN" *) input [7:0]SLOT_6_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWPROT" *) input [2:0]SLOT_6_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWREADY" *) input SLOT_6_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWSIZE" *) input [2:0]SLOT_6_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWVALID" *) input SLOT_6_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI BREADY" *) input SLOT_6_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI BRESP" *) input [1:0]SLOT_6_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI BVALID" *) input SLOT_6_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RDATA" *) input [31:0]SLOT_6_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RLAST" *) input SLOT_6_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RREADY" *) input SLOT_6_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RRESP" *) input [1:0]SLOT_6_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RVALID" *) input SLOT_6_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WDATA" *) input [31:0]SLOT_6_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WLAST" *) input SLOT_6_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WREADY" *) input SLOT_6_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WSTRB" *) input [3:0]SLOT_6_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WVALID" *) input SLOT_6_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_7_AXIS, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 96969000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 8" *) input [31:0]SLOT_7_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TDEST" *) input [7:0]SLOT_7_AXIS_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TID" *) input [7:0]SLOT_7_AXIS_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TKEEP" *) input [3:0]SLOT_7_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TLAST" *) input SLOT_7_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TREADY" *) input SLOT_7_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TSTRB" *) input [3:0]SLOT_7_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TUSER" *) input [7:0]SLOT_7_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TVALID" *) input SLOT_7_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_8_AXI, ADDR_WIDTH 10, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 32, FREQ_HZ 96969000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [9:0]SLOT_8_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI ARPROT" *) input [2:0]SLOT_8_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI ARREADY" *) input SLOT_8_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI ARVALID" *) input SLOT_8_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI AWADDR" *) input [9:0]SLOT_8_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI AWPROT" *) input [2:0]SLOT_8_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI AWREADY" *) input SLOT_8_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI AWVALID" *) input SLOT_8_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI BREADY" *) input SLOT_8_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI BRESP" *) input [1:0]SLOT_8_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI BVALID" *) input SLOT_8_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI RDATA" *) input [31:0]SLOT_8_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI RREADY" *) input SLOT_8_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI RRESP" *) input [1:0]SLOT_8_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI RVALID" *) input SLOT_8_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI WDATA" *) input [31:0]SLOT_8_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI WREADY" *) input SLOT_8_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI WSTRB" *) input [3:0]SLOT_8_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI WVALID" *) input SLOT_8_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_9_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 32, FREQ_HZ 96969000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_9_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARCACHE" *) input [3:0]SLOT_9_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARLEN" *) input [7:0]SLOT_9_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARPROT" *) input [2:0]SLOT_9_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARREADY" *) input SLOT_9_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARSIZE" *) input [2:0]SLOT_9_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARVALID" *) input SLOT_9_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWADDR" *) input [31:0]SLOT_9_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWCACHE" *) input [3:0]SLOT_9_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWLEN" *) input [7:0]SLOT_9_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWPROT" *) input [2:0]SLOT_9_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWREADY" *) input SLOT_9_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWSIZE" *) input [2:0]SLOT_9_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWVALID" *) input SLOT_9_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI BREADY" *) input SLOT_9_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI BRESP" *) input [1:0]SLOT_9_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI BVALID" *) input SLOT_9_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI RDATA" *) input [31:0]SLOT_9_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI RLAST" *) input SLOT_9_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI RREADY" *) input SLOT_9_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI RRESP" *) input [1:0]SLOT_9_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI RVALID" *) input SLOT_9_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI WDATA" *) input [31:0]SLOT_9_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI WLAST" *) input SLOT_9_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI WREADY" *) input SLOT_9_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI WSTRB" *) input [2:0]SLOT_9_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI WVALID" *) input SLOT_9_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_10_AXI:SLOT_11_AXI:SLOT_1_AXIS:SLOT_2_AXI:SLOT_3_AXI:SLOT_4_AXI:SLOT_5_AXIS:SLOT_6_AXI:SLOT_7_AXIS:SLOT_8_AXI:SLOT_9_AXI, ASSOCIATED_RESET resetn, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 96969000, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, POLARITY ACTIVE_LOW" *) input resetn;

  wire [31:0]Conn10_ARADDR;
  wire [7:0]Conn10_ARLEN;
  wire Conn10_ARREADY;
  wire [2:0]Conn10_ARSIZE;
  wire Conn10_ARVALID;
  wire [31:0]Conn10_AWADDR;
  wire [7:0]Conn10_AWLEN;
  wire Conn10_AWREADY;
  wire [2:0]Conn10_AWSIZE;
  wire Conn10_AWVALID;
  wire Conn10_BREADY;
  wire [1:0]Conn10_BRESP;
  wire Conn10_BVALID;
  wire [31:0]Conn10_RDATA;
  wire Conn10_RLAST;
  wire Conn10_RREADY;
  wire Conn10_RVALID;
  wire [31:0]Conn10_WDATA;
  wire Conn10_WLAST;
  wire Conn10_WREADY;
  wire [3:0]Conn10_WSTRB;
  wire Conn10_WVALID;
  wire [31:0]Conn11_ARADDR;
  wire [7:0]Conn11_ARLEN;
  wire Conn11_ARREADY;
  wire [2:0]Conn11_ARSIZE;
  wire Conn11_ARVALID;
  wire [31:0]Conn11_AWADDR;
  wire [3:0]Conn11_AWCACHE;
  wire [7:0]Conn11_AWLEN;
  wire Conn11_AWREADY;
  wire [2:0]Conn11_AWSIZE;
  wire Conn11_AWVALID;
  wire Conn11_BREADY;
  wire [1:0]Conn11_BRESP;
  wire Conn11_BVALID;
  wire [31:0]Conn11_RDATA;
  wire Conn11_RLAST;
  wire Conn11_RREADY;
  wire Conn11_RVALID;
  wire [31:0]Conn11_WDATA;
  wire Conn11_WLAST;
  wire Conn11_WREADY;
  wire [3:0]Conn11_WSTRB;
  wire Conn11_WVALID;
  wire [55:0]Conn1_TDATA;
  wire [0:0]Conn1_TID;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire [6:0]Conn1_TSTRB;
  wire Conn1_TVALID;
  wire [9:0]Conn2_ARADDR;
  wire [2:0]Conn2_ARPROT;
  wire Conn2_ARREADY;
  wire Conn2_ARVALID;
  wire [9:0]Conn2_AWADDR;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [39:0]Conn3_ARADDR;
  wire [1:0]Conn3_ARBURST;
  wire [3:0]Conn3_ARCACHE;
  wire [15:0]Conn3_ARID;
  wire [7:0]Conn3_ARLEN;
  wire [0:0]Conn3_ARLOCK;
  wire [2:0]Conn3_ARPROT;
  wire [3:0]Conn3_ARQOS;
  wire Conn3_ARREADY;
  wire [2:0]Conn3_ARSIZE;
  wire [15:0]Conn3_ARUSER;
  wire Conn3_ARVALID;
  wire [39:0]Conn3_AWADDR;
  wire [1:0]Conn3_AWBURST;
  wire [3:0]Conn3_AWCACHE;
  wire [15:0]Conn3_AWID;
  wire [7:0]Conn3_AWLEN;
  wire [0:0]Conn3_AWLOCK;
  wire [2:0]Conn3_AWPROT;
  wire [3:0]Conn3_AWQOS;
  wire Conn3_AWREADY;
  wire [2:0]Conn3_AWSIZE;
  wire [15:0]Conn3_AWUSER;
  wire Conn3_AWVALID;
  wire [15:0]Conn3_BID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [127:0]Conn3_RDATA;
  wire [15:0]Conn3_RID;
  wire Conn3_RLAST;
  wire Conn3_RREADY;
  wire [1:0]Conn3_RRESP;
  wire Conn3_RVALID;
  wire [127:0]Conn3_WDATA;
  wire Conn3_WLAST;
  wire Conn3_WREADY;
  wire [15:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [15:0]Conn4_ARADDR;
  wire [2:0]Conn4_ARPROT;
  wire Conn4_ARREADY;
  wire Conn4_ARVALID;
  wire [15:0]Conn4_AWADDR;
  wire [2:0]Conn4_AWPROT;
  wire Conn4_AWREADY;
  wire Conn4_AWVALID;
  wire Conn4_BREADY;
  wire [1:0]Conn4_BRESP;
  wire Conn4_BVALID;
  wire [31:0]Conn4_RDATA;
  wire Conn4_RREADY;
  wire [1:0]Conn4_RRESP;
  wire Conn4_RVALID;
  wire [31:0]Conn4_WDATA;
  wire Conn4_WREADY;
  wire [3:0]Conn4_WSTRB;
  wire Conn4_WVALID;
  wire [31:0]Conn5_TDATA;
  wire [0:0]Conn5_TID;
  wire Conn5_TLAST;
  wire Conn5_TREADY;
  wire [3:0]Conn5_TSTRB;
  wire Conn5_TVALID;
  wire [31:0]Conn6_ARADDR;
  wire [3:0]Conn6_ARCACHE;
  wire [7:0]Conn6_ARLEN;
  wire [2:0]Conn6_ARPROT;
  wire Conn6_ARREADY;
  wire [2:0]Conn6_ARSIZE;
  wire Conn6_ARVALID;
  wire [31:0]Conn6_AWADDR;
  wire [3:0]Conn6_AWCACHE;
  wire [7:0]Conn6_AWLEN;
  wire [2:0]Conn6_AWPROT;
  wire Conn6_AWREADY;
  wire [2:0]Conn6_AWSIZE;
  wire Conn6_AWVALID;
  wire Conn6_BREADY;
  wire [1:0]Conn6_BRESP;
  wire Conn6_BVALID;
  wire [31:0]Conn6_RDATA;
  wire Conn6_RLAST;
  wire Conn6_RREADY;
  wire [1:0]Conn6_RRESP;
  wire Conn6_RVALID;
  wire [31:0]Conn6_WDATA;
  wire Conn6_WLAST;
  wire Conn6_WREADY;
  wire [3:0]Conn6_WSTRB;
  wire Conn6_WVALID;
  wire [31:0]Conn7_TDATA;
  wire [7:0]Conn7_TDEST;
  wire [7:0]Conn7_TID;
  wire [3:0]Conn7_TKEEP;
  wire Conn7_TLAST;
  wire Conn7_TREADY;
  wire [3:0]Conn7_TSTRB;
  wire [7:0]Conn7_TUSER;
  wire Conn7_TVALID;
  wire [9:0]Conn8_ARADDR;
  wire [2:0]Conn8_ARPROT;
  wire Conn8_ARREADY;
  wire Conn8_ARVALID;
  wire [9:0]Conn8_AWADDR;
  wire [2:0]Conn8_AWPROT;
  wire Conn8_AWREADY;
  wire Conn8_AWVALID;
  wire Conn8_BREADY;
  wire [1:0]Conn8_BRESP;
  wire Conn8_BVALID;
  wire [31:0]Conn8_RDATA;
  wire Conn8_RREADY;
  wire [1:0]Conn8_RRESP;
  wire Conn8_RVALID;
  wire [31:0]Conn8_WDATA;
  wire Conn8_WREADY;
  wire [3:0]Conn8_WSTRB;
  wire Conn8_WVALID;
  wire [31:0]Conn9_ARADDR;
  wire [3:0]Conn9_ARCACHE;
  wire [7:0]Conn9_ARLEN;
  wire [2:0]Conn9_ARPROT;
  wire Conn9_ARREADY;
  wire [2:0]Conn9_ARSIZE;
  wire Conn9_ARVALID;
  wire [31:0]Conn9_AWADDR;
  wire [3:0]Conn9_AWCACHE;
  wire [7:0]Conn9_AWLEN;
  wire [2:0]Conn9_AWPROT;
  wire Conn9_AWREADY;
  wire [2:0]Conn9_AWSIZE;
  wire Conn9_AWVALID;
  wire Conn9_BREADY;
  wire [1:0]Conn9_BRESP;
  wire Conn9_BVALID;
  wire [31:0]Conn9_RDATA;
  wire Conn9_RLAST;
  wire Conn9_RREADY;
  wire [1:0]Conn9_RRESP;
  wire Conn9_RVALID;
  wire [31:0]Conn9_WDATA;
  wire Conn9_WLAST;
  wire Conn9_WREADY;
  wire [2:0]Conn9_WSTRB;
  wire Conn9_WVALID;
  wire [12:0]Conn_ARADDR;
  wire [1:0]Conn_ARBURST;
  wire [3:0]Conn_ARCACHE;
  wire [7:0]Conn_ARLEN;
  wire [0:0]Conn_ARLOCK;
  wire [2:0]Conn_ARPROT;
  wire [3:0]Conn_ARQOS;
  wire Conn_ARREADY;
  wire [2:0]Conn_ARSIZE;
  wire [15:0]Conn_ARUSER;
  wire Conn_ARVALID;
  wire [12:0]Conn_AWADDR;
  wire [1:0]Conn_AWBURST;
  wire [3:0]Conn_AWCACHE;
  wire [7:0]Conn_AWLEN;
  wire [0:0]Conn_AWLOCK;
  wire [2:0]Conn_AWPROT;
  wire [3:0]Conn_AWQOS;
  wire Conn_AWREADY;
  wire [2:0]Conn_AWSIZE;
  wire [15:0]Conn_AWUSER;
  wire Conn_AWVALID;
  wire Conn_BREADY;
  wire [1:0]Conn_BRESP;
  wire Conn_BVALID;
  wire [31:0]Conn_RDATA;
  wire Conn_RLAST;
  wire Conn_RREADY;
  wire [1:0]Conn_RRESP;
  wire Conn_RVALID;
  wire [31:0]Conn_WDATA;
  wire Conn_WLAST;
  wire Conn_WREADY;
  wire [3:0]Conn_WSTRB;
  wire Conn_WVALID;
  wire clk_1;
  wire [1:0]net_slot_0_axi_ar_cnt;
  wire [1:0]net_slot_0_axi_ar_ctrl;
  wire [12:0]net_slot_0_axi_araddr;
  wire [1:0]net_slot_0_axi_arburst;
  wire [3:0]net_slot_0_axi_arcache;
  wire [7:0]net_slot_0_axi_arlen;
  wire [0:0]net_slot_0_axi_arlock;
  wire [2:0]net_slot_0_axi_arprot;
  wire [3:0]net_slot_0_axi_arqos;
  wire net_slot_0_axi_arready;
  wire [2:0]net_slot_0_axi_arsize;
  wire [15:0]net_slot_0_axi_aruser;
  wire net_slot_0_axi_arvalid;
  wire [1:0]net_slot_0_axi_aw_cnt;
  wire [1:0]net_slot_0_axi_aw_ctrl;
  wire [12:0]net_slot_0_axi_awaddr;
  wire [1:0]net_slot_0_axi_awburst;
  wire [3:0]net_slot_0_axi_awcache;
  wire [7:0]net_slot_0_axi_awlen;
  wire [0:0]net_slot_0_axi_awlock;
  wire [2:0]net_slot_0_axi_awprot;
  wire [3:0]net_slot_0_axi_awqos;
  wire net_slot_0_axi_awready;
  wire [2:0]net_slot_0_axi_awsize;
  wire [15:0]net_slot_0_axi_awuser;
  wire net_slot_0_axi_awvalid;
  wire [1:0]net_slot_0_axi_b_cnt;
  wire [1:0]net_slot_0_axi_b_ctrl;
  wire net_slot_0_axi_bready;
  wire [1:0]net_slot_0_axi_bresp;
  wire net_slot_0_axi_bvalid;
  wire [1:0]net_slot_0_axi_r_cnt;
  wire [2:0]net_slot_0_axi_r_ctrl;
  wire [31:0]net_slot_0_axi_rdata;
  wire net_slot_0_axi_rlast;
  wire net_slot_0_axi_rready;
  wire [1:0]net_slot_0_axi_rresp;
  wire net_slot_0_axi_rvalid;
  wire [2:0]net_slot_0_axi_w_ctrl;
  wire [31:0]net_slot_0_axi_wdata;
  wire net_slot_0_axi_wlast;
  wire net_slot_0_axi_wready;
  wire [3:0]net_slot_0_axi_wstrb;
  wire net_slot_0_axi_wvalid;
  wire [1:0]net_slot_10_axi_ar_cnt;
  wire [1:0]net_slot_10_axi_ar_ctrl;
  wire [31:0]net_slot_10_axi_araddr;
  wire [7:0]net_slot_10_axi_arlen;
  wire net_slot_10_axi_arready;
  wire [2:0]net_slot_10_axi_arsize;
  wire net_slot_10_axi_arvalid;
  wire [1:0]net_slot_10_axi_aw_cnt;
  wire [1:0]net_slot_10_axi_aw_ctrl;
  wire [31:0]net_slot_10_axi_awaddr;
  wire [7:0]net_slot_10_axi_awlen;
  wire net_slot_10_axi_awready;
  wire [2:0]net_slot_10_axi_awsize;
  wire net_slot_10_axi_awvalid;
  wire [1:0]net_slot_10_axi_b_cnt;
  wire [1:0]net_slot_10_axi_b_ctrl;
  wire net_slot_10_axi_bready;
  wire [1:0]net_slot_10_axi_bresp;
  wire net_slot_10_axi_bvalid;
  wire [1:0]net_slot_10_axi_r_cnt;
  wire [2:0]net_slot_10_axi_r_ctrl;
  wire [31:0]net_slot_10_axi_rdata;
  wire net_slot_10_axi_rlast;
  wire net_slot_10_axi_rready;
  wire net_slot_10_axi_rvalid;
  wire [2:0]net_slot_10_axi_w_ctrl;
  wire [31:0]net_slot_10_axi_wdata;
  wire net_slot_10_axi_wlast;
  wire net_slot_10_axi_wready;
  wire [3:0]net_slot_10_axi_wstrb;
  wire net_slot_10_axi_wvalid;
  wire [1:0]net_slot_11_axi_ar_cnt;
  wire [1:0]net_slot_11_axi_ar_ctrl;
  wire [31:0]net_slot_11_axi_araddr;
  wire [7:0]net_slot_11_axi_arlen;
  wire net_slot_11_axi_arready;
  wire [2:0]net_slot_11_axi_arsize;
  wire net_slot_11_axi_arvalid;
  wire [1:0]net_slot_11_axi_aw_cnt;
  wire [1:0]net_slot_11_axi_aw_ctrl;
  wire [31:0]net_slot_11_axi_awaddr;
  wire [3:0]net_slot_11_axi_awcache;
  wire [7:0]net_slot_11_axi_awlen;
  wire net_slot_11_axi_awready;
  wire [2:0]net_slot_11_axi_awsize;
  wire net_slot_11_axi_awvalid;
  wire [1:0]net_slot_11_axi_b_cnt;
  wire [1:0]net_slot_11_axi_b_ctrl;
  wire net_slot_11_axi_bready;
  wire [1:0]net_slot_11_axi_bresp;
  wire net_slot_11_axi_bvalid;
  wire [1:0]net_slot_11_axi_r_cnt;
  wire [2:0]net_slot_11_axi_r_ctrl;
  wire [31:0]net_slot_11_axi_rdata;
  wire [0:0]net_slot_11_axi_rid;
  wire net_slot_11_axi_rlast;
  wire net_slot_11_axi_rready;
  wire net_slot_11_axi_rvalid;
  wire [2:0]net_slot_11_axi_w_ctrl;
  wire [31:0]net_slot_11_axi_wdata;
  wire net_slot_11_axi_wlast;
  wire net_slot_11_axi_wready;
  wire [3:0]net_slot_11_axi_wstrb;
  wire net_slot_11_axi_wvalid;
  wire [55:0]net_slot_1_axis_tdata;
  wire [0:0]net_slot_1_axis_tid;
  wire net_slot_1_axis_tlast;
  wire net_slot_1_axis_tready;
  wire [6:0]net_slot_1_axis_tstrb;
  wire net_slot_1_axis_tvalid;
  wire [1:0]net_slot_2_axi_ar_cnt;
  wire [1:0]net_slot_2_axi_ar_ctrl;
  wire [9:0]net_slot_2_axi_araddr;
  wire [2:0]net_slot_2_axi_arprot;
  wire net_slot_2_axi_arready;
  wire net_slot_2_axi_arvalid;
  wire [1:0]net_slot_2_axi_aw_cnt;
  wire [1:0]net_slot_2_axi_aw_ctrl;
  wire [9:0]net_slot_2_axi_awaddr;
  wire [2:0]net_slot_2_axi_awprot;
  wire net_slot_2_axi_awready;
  wire net_slot_2_axi_awvalid;
  wire [1:0]net_slot_2_axi_b_cnt;
  wire [1:0]net_slot_2_axi_b_ctrl;
  wire net_slot_2_axi_bready;
  wire [1:0]net_slot_2_axi_bresp;
  wire net_slot_2_axi_bvalid;
  wire [1:0]net_slot_2_axi_r_cnt;
  wire [1:0]net_slot_2_axi_r_ctrl;
  wire [31:0]net_slot_2_axi_rdata;
  wire net_slot_2_axi_rready;
  wire [1:0]net_slot_2_axi_rresp;
  wire net_slot_2_axi_rvalid;
  wire [1:0]net_slot_2_axi_w_ctrl;
  wire [31:0]net_slot_2_axi_wdata;
  wire net_slot_2_axi_wready;
  wire [3:0]net_slot_2_axi_wstrb;
  wire net_slot_2_axi_wvalid;
  wire [1:0]net_slot_3_axi_ar_cnt;
  wire [1:0]net_slot_3_axi_ar_ctrl;
  wire [39:0]net_slot_3_axi_araddr;
  wire [1:0]net_slot_3_axi_arburst;
  wire [3:0]net_slot_3_axi_arcache;
  wire [15:0]net_slot_3_axi_arid;
  wire [7:0]net_slot_3_axi_arlen;
  wire [0:0]net_slot_3_axi_arlock;
  wire [2:0]net_slot_3_axi_arprot;
  wire [3:0]net_slot_3_axi_arqos;
  wire net_slot_3_axi_arready;
  wire [2:0]net_slot_3_axi_arsize;
  wire [15:0]net_slot_3_axi_aruser;
  wire net_slot_3_axi_arvalid;
  wire [1:0]net_slot_3_axi_aw_cnt;
  wire [1:0]net_slot_3_axi_aw_ctrl;
  wire [39:0]net_slot_3_axi_awaddr;
  wire [1:0]net_slot_3_axi_awburst;
  wire [3:0]net_slot_3_axi_awcache;
  wire [15:0]net_slot_3_axi_awid;
  wire [7:0]net_slot_3_axi_awlen;
  wire [0:0]net_slot_3_axi_awlock;
  wire [2:0]net_slot_3_axi_awprot;
  wire [3:0]net_slot_3_axi_awqos;
  wire net_slot_3_axi_awready;
  wire [2:0]net_slot_3_axi_awsize;
  wire [15:0]net_slot_3_axi_awuser;
  wire net_slot_3_axi_awvalid;
  wire [1:0]net_slot_3_axi_b_cnt;
  wire [1:0]net_slot_3_axi_b_ctrl;
  wire [15:0]net_slot_3_axi_bid;
  wire net_slot_3_axi_bready;
  wire [1:0]net_slot_3_axi_bresp;
  wire net_slot_3_axi_bvalid;
  wire [1:0]net_slot_3_axi_r_cnt;
  wire [2:0]net_slot_3_axi_r_ctrl;
  wire [127:0]net_slot_3_axi_rdata;
  wire [15:0]net_slot_3_axi_rid;
  wire net_slot_3_axi_rlast;
  wire net_slot_3_axi_rready;
  wire [1:0]net_slot_3_axi_rresp;
  wire net_slot_3_axi_rvalid;
  wire [2:0]net_slot_3_axi_w_ctrl;
  wire [127:0]net_slot_3_axi_wdata;
  wire net_slot_3_axi_wlast;
  wire net_slot_3_axi_wready;
  wire [15:0]net_slot_3_axi_wstrb;
  wire net_slot_3_axi_wvalid;
  wire [1:0]net_slot_4_axi_ar_cnt;
  wire [1:0]net_slot_4_axi_ar_ctrl;
  wire [15:0]net_slot_4_axi_araddr;
  wire [2:0]net_slot_4_axi_arprot;
  wire net_slot_4_axi_arready;
  wire net_slot_4_axi_arvalid;
  wire [1:0]net_slot_4_axi_aw_cnt;
  wire [1:0]net_slot_4_axi_aw_ctrl;
  wire [15:0]net_slot_4_axi_awaddr;
  wire [2:0]net_slot_4_axi_awprot;
  wire net_slot_4_axi_awready;
  wire net_slot_4_axi_awvalid;
  wire [1:0]net_slot_4_axi_b_cnt;
  wire [1:0]net_slot_4_axi_b_ctrl;
  wire net_slot_4_axi_bready;
  wire [1:0]net_slot_4_axi_bresp;
  wire net_slot_4_axi_bvalid;
  wire [1:0]net_slot_4_axi_r_cnt;
  wire [1:0]net_slot_4_axi_r_ctrl;
  wire [31:0]net_slot_4_axi_rdata;
  wire net_slot_4_axi_rready;
  wire [1:0]net_slot_4_axi_rresp;
  wire net_slot_4_axi_rvalid;
  wire [1:0]net_slot_4_axi_w_ctrl;
  wire [31:0]net_slot_4_axi_wdata;
  wire net_slot_4_axi_wready;
  wire [3:0]net_slot_4_axi_wstrb;
  wire net_slot_4_axi_wvalid;
  wire [31:0]net_slot_5_axis_tdata;
  wire [0:0]net_slot_5_axis_tid;
  wire net_slot_5_axis_tlast;
  wire net_slot_5_axis_tready;
  wire [3:0]net_slot_5_axis_tstrb;
  wire net_slot_5_axis_tvalid;
  wire [1:0]net_slot_6_axi_ar_cnt;
  wire [1:0]net_slot_6_axi_ar_ctrl;
  wire [31:0]net_slot_6_axi_araddr;
  wire [3:0]net_slot_6_axi_arcache;
  wire [7:0]net_slot_6_axi_arlen;
  wire [2:0]net_slot_6_axi_arprot;
  wire net_slot_6_axi_arready;
  wire [2:0]net_slot_6_axi_arsize;
  wire net_slot_6_axi_arvalid;
  wire [1:0]net_slot_6_axi_aw_cnt;
  wire [1:0]net_slot_6_axi_aw_ctrl;
  wire [31:0]net_slot_6_axi_awaddr;
  wire [3:0]net_slot_6_axi_awcache;
  wire [7:0]net_slot_6_axi_awlen;
  wire [2:0]net_slot_6_axi_awprot;
  wire net_slot_6_axi_awready;
  wire [2:0]net_slot_6_axi_awsize;
  wire net_slot_6_axi_awvalid;
  wire [1:0]net_slot_6_axi_b_cnt;
  wire [1:0]net_slot_6_axi_b_ctrl;
  wire net_slot_6_axi_bready;
  wire [1:0]net_slot_6_axi_bresp;
  wire net_slot_6_axi_bvalid;
  wire [1:0]net_slot_6_axi_r_cnt;
  wire [2:0]net_slot_6_axi_r_ctrl;
  wire [31:0]net_slot_6_axi_rdata;
  wire net_slot_6_axi_rlast;
  wire net_slot_6_axi_rready;
  wire [1:0]net_slot_6_axi_rresp;
  wire net_slot_6_axi_rvalid;
  wire [2:0]net_slot_6_axi_w_ctrl;
  wire [31:0]net_slot_6_axi_wdata;
  wire net_slot_6_axi_wlast;
  wire net_slot_6_axi_wready;
  wire [3:0]net_slot_6_axi_wstrb;
  wire net_slot_6_axi_wvalid;
  wire [31:0]net_slot_7_axis_tdata;
  wire [7:0]net_slot_7_axis_tdest;
  wire [7:0]net_slot_7_axis_tid;
  wire [3:0]net_slot_7_axis_tkeep;
  wire net_slot_7_axis_tlast;
  wire net_slot_7_axis_tready;
  wire [3:0]net_slot_7_axis_tstrb;
  wire [7:0]net_slot_7_axis_tuser;
  wire net_slot_7_axis_tvalid;
  wire [1:0]net_slot_8_axi_ar_cnt;
  wire [1:0]net_slot_8_axi_ar_ctrl;
  wire [9:0]net_slot_8_axi_araddr;
  wire [2:0]net_slot_8_axi_arprot;
  wire net_slot_8_axi_arready;
  wire net_slot_8_axi_arvalid;
  wire [1:0]net_slot_8_axi_aw_cnt;
  wire [1:0]net_slot_8_axi_aw_ctrl;
  wire [9:0]net_slot_8_axi_awaddr;
  wire [2:0]net_slot_8_axi_awprot;
  wire net_slot_8_axi_awready;
  wire net_slot_8_axi_awvalid;
  wire [1:0]net_slot_8_axi_b_cnt;
  wire [1:0]net_slot_8_axi_b_ctrl;
  wire net_slot_8_axi_bready;
  wire [1:0]net_slot_8_axi_bresp;
  wire net_slot_8_axi_bvalid;
  wire [1:0]net_slot_8_axi_r_cnt;
  wire [1:0]net_slot_8_axi_r_ctrl;
  wire [31:0]net_slot_8_axi_rdata;
  wire net_slot_8_axi_rready;
  wire [1:0]net_slot_8_axi_rresp;
  wire net_slot_8_axi_rvalid;
  wire [1:0]net_slot_8_axi_w_ctrl;
  wire [31:0]net_slot_8_axi_wdata;
  wire net_slot_8_axi_wready;
  wire [3:0]net_slot_8_axi_wstrb;
  wire net_slot_8_axi_wvalid;
  wire [1:0]net_slot_9_axi_ar_cnt;
  wire [1:0]net_slot_9_axi_ar_ctrl;
  wire [31:0]net_slot_9_axi_araddr;
  wire [3:0]net_slot_9_axi_arcache;
  wire [7:0]net_slot_9_axi_arlen;
  wire [2:0]net_slot_9_axi_arprot;
  wire net_slot_9_axi_arready;
  wire [2:0]net_slot_9_axi_arsize;
  wire net_slot_9_axi_arvalid;
  wire [1:0]net_slot_9_axi_aw_cnt;
  wire [1:0]net_slot_9_axi_aw_ctrl;
  wire [31:0]net_slot_9_axi_awaddr;
  wire [3:0]net_slot_9_axi_awcache;
  wire [7:0]net_slot_9_axi_awlen;
  wire [2:0]net_slot_9_axi_awprot;
  wire net_slot_9_axi_awready;
  wire [2:0]net_slot_9_axi_awsize;
  wire net_slot_9_axi_awvalid;
  wire [1:0]net_slot_9_axi_b_cnt;
  wire [1:0]net_slot_9_axi_b_ctrl;
  wire net_slot_9_axi_bready;
  wire [1:0]net_slot_9_axi_bresp;
  wire net_slot_9_axi_bvalid;
  wire [1:0]net_slot_9_axi_r_cnt;
  wire [2:0]net_slot_9_axi_r_ctrl;
  wire [31:0]net_slot_9_axi_rdata;
  wire net_slot_9_axi_rlast;
  wire net_slot_9_axi_rready;
  wire [1:0]net_slot_9_axi_rresp;
  wire net_slot_9_axi_rvalid;
  wire [2:0]net_slot_9_axi_w_ctrl;
  wire [31:0]net_slot_9_axi_wdata;
  wire net_slot_9_axi_wlast;
  wire net_slot_9_axi_wready;
  wire [2:0]net_slot_9_axi_wstrb;
  wire net_slot_9_axi_wvalid;
  wire resetn_1;

  assign Conn10_ARADDR = SLOT_10_AXI_araddr[31:0];
  assign Conn10_ARLEN = SLOT_10_AXI_arlen[7:0];
  assign Conn10_ARREADY = SLOT_10_AXI_arready;
  assign Conn10_ARSIZE = SLOT_10_AXI_arsize[2:0];
  assign Conn10_ARVALID = SLOT_10_AXI_arvalid;
  assign Conn10_AWADDR = SLOT_10_AXI_awaddr[31:0];
  assign Conn10_AWLEN = SLOT_10_AXI_awlen[7:0];
  assign Conn10_AWREADY = SLOT_10_AXI_awready;
  assign Conn10_AWSIZE = SLOT_10_AXI_awsize[2:0];
  assign Conn10_AWVALID = SLOT_10_AXI_awvalid;
  assign Conn10_BREADY = SLOT_10_AXI_bready;
  assign Conn10_BRESP = SLOT_10_AXI_bresp[1:0];
  assign Conn10_BVALID = SLOT_10_AXI_bvalid;
  assign Conn10_RDATA = SLOT_10_AXI_rdata[31:0];
  assign Conn10_RLAST = SLOT_10_AXI_rlast;
  assign Conn10_RREADY = SLOT_10_AXI_rready;
  assign Conn10_RVALID = SLOT_10_AXI_rvalid;
  assign Conn10_WDATA = SLOT_10_AXI_wdata[31:0];
  assign Conn10_WLAST = SLOT_10_AXI_wlast;
  assign Conn10_WREADY = SLOT_10_AXI_wready;
  assign Conn10_WSTRB = SLOT_10_AXI_wstrb[3:0];
  assign Conn10_WVALID = SLOT_10_AXI_wvalid;
  assign Conn11_ARADDR = SLOT_11_AXI_araddr[31:0];
  assign Conn11_ARLEN = SLOT_11_AXI_arlen[7:0];
  assign Conn11_ARREADY = SLOT_11_AXI_arready;
  assign Conn11_ARSIZE = SLOT_11_AXI_arsize[2:0];
  assign Conn11_ARVALID = SLOT_11_AXI_arvalid;
  assign Conn11_AWADDR = SLOT_11_AXI_awaddr[31:0];
  assign Conn11_AWCACHE = SLOT_11_AXI_awcache[3:0];
  assign Conn11_AWLEN = SLOT_11_AXI_awlen[7:0];
  assign Conn11_AWREADY = SLOT_11_AXI_awready;
  assign Conn11_AWSIZE = SLOT_11_AXI_awsize[2:0];
  assign Conn11_AWVALID = SLOT_11_AXI_awvalid;
  assign Conn11_BREADY = SLOT_11_AXI_bready;
  assign Conn11_BRESP = SLOT_11_AXI_bresp[1:0];
  assign Conn11_BVALID = SLOT_11_AXI_bvalid;
  assign Conn11_RDATA = SLOT_11_AXI_rdata[31:0];
  assign Conn11_RLAST = SLOT_11_AXI_rlast;
  assign Conn11_RREADY = SLOT_11_AXI_rready;
  assign Conn11_RVALID = SLOT_11_AXI_rvalid;
  assign Conn11_WDATA = SLOT_11_AXI_wdata[31:0];
  assign Conn11_WLAST = SLOT_11_AXI_wlast;
  assign Conn11_WREADY = SLOT_11_AXI_wready;
  assign Conn11_WSTRB = SLOT_11_AXI_wstrb[3:0];
  assign Conn11_WVALID = SLOT_11_AXI_wvalid;
  assign Conn1_TDATA = SLOT_1_AXIS_tdata[55:0];
  assign Conn1_TID = SLOT_1_AXIS_tid[0];
  assign Conn1_TLAST = SLOT_1_AXIS_tlast;
  assign Conn1_TREADY = SLOT_1_AXIS_tready;
  assign Conn1_TSTRB = SLOT_1_AXIS_tstrb[6:0];
  assign Conn1_TVALID = SLOT_1_AXIS_tvalid;
  assign Conn2_ARADDR = SLOT_2_AXI_araddr[9:0];
  assign Conn2_ARPROT = SLOT_2_AXI_arprot[2:0];
  assign Conn2_ARREADY = SLOT_2_AXI_arready;
  assign Conn2_ARVALID = SLOT_2_AXI_arvalid;
  assign Conn2_AWADDR = SLOT_2_AXI_awaddr[9:0];
  assign Conn2_AWPROT = SLOT_2_AXI_awprot[2:0];
  assign Conn2_AWREADY = SLOT_2_AXI_awready;
  assign Conn2_AWVALID = SLOT_2_AXI_awvalid;
  assign Conn2_BREADY = SLOT_2_AXI_bready;
  assign Conn2_BRESP = SLOT_2_AXI_bresp[1:0];
  assign Conn2_BVALID = SLOT_2_AXI_bvalid;
  assign Conn2_RDATA = SLOT_2_AXI_rdata[31:0];
  assign Conn2_RREADY = SLOT_2_AXI_rready;
  assign Conn2_RRESP = SLOT_2_AXI_rresp[1:0];
  assign Conn2_RVALID = SLOT_2_AXI_rvalid;
  assign Conn2_WDATA = SLOT_2_AXI_wdata[31:0];
  assign Conn2_WREADY = SLOT_2_AXI_wready;
  assign Conn2_WSTRB = SLOT_2_AXI_wstrb[3:0];
  assign Conn2_WVALID = SLOT_2_AXI_wvalid;
  assign Conn3_ARADDR = SLOT_3_AXI_araddr[39:0];
  assign Conn3_ARBURST = SLOT_3_AXI_arburst[1:0];
  assign Conn3_ARCACHE = SLOT_3_AXI_arcache[3:0];
  assign Conn3_ARID = SLOT_3_AXI_arid[15:0];
  assign Conn3_ARLEN = SLOT_3_AXI_arlen[7:0];
  assign Conn3_ARLOCK = SLOT_3_AXI_arlock[0];
  assign Conn3_ARPROT = SLOT_3_AXI_arprot[2:0];
  assign Conn3_ARQOS = SLOT_3_AXI_arqos[3:0];
  assign Conn3_ARREADY = SLOT_3_AXI_arready;
  assign Conn3_ARSIZE = SLOT_3_AXI_arsize[2:0];
  assign Conn3_ARUSER = SLOT_3_AXI_aruser[15:0];
  assign Conn3_ARVALID = SLOT_3_AXI_arvalid;
  assign Conn3_AWADDR = SLOT_3_AXI_awaddr[39:0];
  assign Conn3_AWBURST = SLOT_3_AXI_awburst[1:0];
  assign Conn3_AWCACHE = SLOT_3_AXI_awcache[3:0];
  assign Conn3_AWID = SLOT_3_AXI_awid[15:0];
  assign Conn3_AWLEN = SLOT_3_AXI_awlen[7:0];
  assign Conn3_AWLOCK = SLOT_3_AXI_awlock[0];
  assign Conn3_AWPROT = SLOT_3_AXI_awprot[2:0];
  assign Conn3_AWQOS = SLOT_3_AXI_awqos[3:0];
  assign Conn3_AWREADY = SLOT_3_AXI_awready;
  assign Conn3_AWSIZE = SLOT_3_AXI_awsize[2:0];
  assign Conn3_AWUSER = SLOT_3_AXI_awuser[15:0];
  assign Conn3_AWVALID = SLOT_3_AXI_awvalid;
  assign Conn3_BID = SLOT_3_AXI_bid[15:0];
  assign Conn3_BREADY = SLOT_3_AXI_bready;
  assign Conn3_BRESP = SLOT_3_AXI_bresp[1:0];
  assign Conn3_BVALID = SLOT_3_AXI_bvalid;
  assign Conn3_RDATA = SLOT_3_AXI_rdata[127:0];
  assign Conn3_RID = SLOT_3_AXI_rid[15:0];
  assign Conn3_RLAST = SLOT_3_AXI_rlast;
  assign Conn3_RREADY = SLOT_3_AXI_rready;
  assign Conn3_RRESP = SLOT_3_AXI_rresp[1:0];
  assign Conn3_RVALID = SLOT_3_AXI_rvalid;
  assign Conn3_WDATA = SLOT_3_AXI_wdata[127:0];
  assign Conn3_WLAST = SLOT_3_AXI_wlast;
  assign Conn3_WREADY = SLOT_3_AXI_wready;
  assign Conn3_WSTRB = SLOT_3_AXI_wstrb[15:0];
  assign Conn3_WVALID = SLOT_3_AXI_wvalid;
  assign Conn4_ARADDR = SLOT_4_AXI_araddr[15:0];
  assign Conn4_ARPROT = SLOT_4_AXI_arprot[2:0];
  assign Conn4_ARREADY = SLOT_4_AXI_arready;
  assign Conn4_ARVALID = SLOT_4_AXI_arvalid;
  assign Conn4_AWADDR = SLOT_4_AXI_awaddr[15:0];
  assign Conn4_AWPROT = SLOT_4_AXI_awprot[2:0];
  assign Conn4_AWREADY = SLOT_4_AXI_awready;
  assign Conn4_AWVALID = SLOT_4_AXI_awvalid;
  assign Conn4_BREADY = SLOT_4_AXI_bready;
  assign Conn4_BRESP = SLOT_4_AXI_bresp[1:0];
  assign Conn4_BVALID = SLOT_4_AXI_bvalid;
  assign Conn4_RDATA = SLOT_4_AXI_rdata[31:0];
  assign Conn4_RREADY = SLOT_4_AXI_rready;
  assign Conn4_RRESP = SLOT_4_AXI_rresp[1:0];
  assign Conn4_RVALID = SLOT_4_AXI_rvalid;
  assign Conn4_WDATA = SLOT_4_AXI_wdata[31:0];
  assign Conn4_WREADY = SLOT_4_AXI_wready;
  assign Conn4_WSTRB = SLOT_4_AXI_wstrb[3:0];
  assign Conn4_WVALID = SLOT_4_AXI_wvalid;
  assign Conn5_TDATA = SLOT_5_AXIS_tdata[31:0];
  assign Conn5_TID = SLOT_5_AXIS_tid[0];
  assign Conn5_TLAST = SLOT_5_AXIS_tlast;
  assign Conn5_TREADY = SLOT_5_AXIS_tready;
  assign Conn5_TSTRB = SLOT_5_AXIS_tstrb[3:0];
  assign Conn5_TVALID = SLOT_5_AXIS_tvalid;
  assign Conn6_ARADDR = SLOT_6_AXI_araddr[31:0];
  assign Conn6_ARCACHE = SLOT_6_AXI_arcache[3:0];
  assign Conn6_ARLEN = SLOT_6_AXI_arlen[7:0];
  assign Conn6_ARPROT = SLOT_6_AXI_arprot[2:0];
  assign Conn6_ARREADY = SLOT_6_AXI_arready;
  assign Conn6_ARSIZE = SLOT_6_AXI_arsize[2:0];
  assign Conn6_ARVALID = SLOT_6_AXI_arvalid;
  assign Conn6_AWADDR = SLOT_6_AXI_awaddr[31:0];
  assign Conn6_AWCACHE = SLOT_6_AXI_awcache[3:0];
  assign Conn6_AWLEN = SLOT_6_AXI_awlen[7:0];
  assign Conn6_AWPROT = SLOT_6_AXI_awprot[2:0];
  assign Conn6_AWREADY = SLOT_6_AXI_awready;
  assign Conn6_AWSIZE = SLOT_6_AXI_awsize[2:0];
  assign Conn6_AWVALID = SLOT_6_AXI_awvalid;
  assign Conn6_BREADY = SLOT_6_AXI_bready;
  assign Conn6_BRESP = SLOT_6_AXI_bresp[1:0];
  assign Conn6_BVALID = SLOT_6_AXI_bvalid;
  assign Conn6_RDATA = SLOT_6_AXI_rdata[31:0];
  assign Conn6_RLAST = SLOT_6_AXI_rlast;
  assign Conn6_RREADY = SLOT_6_AXI_rready;
  assign Conn6_RRESP = SLOT_6_AXI_rresp[1:0];
  assign Conn6_RVALID = SLOT_6_AXI_rvalid;
  assign Conn6_WDATA = SLOT_6_AXI_wdata[31:0];
  assign Conn6_WLAST = SLOT_6_AXI_wlast;
  assign Conn6_WREADY = SLOT_6_AXI_wready;
  assign Conn6_WSTRB = SLOT_6_AXI_wstrb[3:0];
  assign Conn6_WVALID = SLOT_6_AXI_wvalid;
  assign Conn7_TDATA = SLOT_7_AXIS_tdata[31:0];
  assign Conn7_TDEST = SLOT_7_AXIS_tdest[7:0];
  assign Conn7_TID = SLOT_7_AXIS_tid[7:0];
  assign Conn7_TKEEP = SLOT_7_AXIS_tkeep[3:0];
  assign Conn7_TLAST = SLOT_7_AXIS_tlast;
  assign Conn7_TREADY = SLOT_7_AXIS_tready;
  assign Conn7_TSTRB = SLOT_7_AXIS_tstrb[3:0];
  assign Conn7_TUSER = SLOT_7_AXIS_tuser[7:0];
  assign Conn7_TVALID = SLOT_7_AXIS_tvalid;
  assign Conn8_ARADDR = SLOT_8_AXI_araddr[9:0];
  assign Conn8_ARPROT = SLOT_8_AXI_arprot[2:0];
  assign Conn8_ARREADY = SLOT_8_AXI_arready;
  assign Conn8_ARVALID = SLOT_8_AXI_arvalid;
  assign Conn8_AWADDR = SLOT_8_AXI_awaddr[9:0];
  assign Conn8_AWPROT = SLOT_8_AXI_awprot[2:0];
  assign Conn8_AWREADY = SLOT_8_AXI_awready;
  assign Conn8_AWVALID = SLOT_8_AXI_awvalid;
  assign Conn8_BREADY = SLOT_8_AXI_bready;
  assign Conn8_BRESP = SLOT_8_AXI_bresp[1:0];
  assign Conn8_BVALID = SLOT_8_AXI_bvalid;
  assign Conn8_RDATA = SLOT_8_AXI_rdata[31:0];
  assign Conn8_RREADY = SLOT_8_AXI_rready;
  assign Conn8_RRESP = SLOT_8_AXI_rresp[1:0];
  assign Conn8_RVALID = SLOT_8_AXI_rvalid;
  assign Conn8_WDATA = SLOT_8_AXI_wdata[31:0];
  assign Conn8_WREADY = SLOT_8_AXI_wready;
  assign Conn8_WSTRB = SLOT_8_AXI_wstrb[3:0];
  assign Conn8_WVALID = SLOT_8_AXI_wvalid;
  assign Conn9_ARADDR = SLOT_9_AXI_araddr[31:0];
  assign Conn9_ARCACHE = SLOT_9_AXI_arcache[3:0];
  assign Conn9_ARLEN = SLOT_9_AXI_arlen[7:0];
  assign Conn9_ARPROT = SLOT_9_AXI_arprot[2:0];
  assign Conn9_ARREADY = SLOT_9_AXI_arready;
  assign Conn9_ARSIZE = SLOT_9_AXI_arsize[2:0];
  assign Conn9_ARVALID = SLOT_9_AXI_arvalid;
  assign Conn9_AWADDR = SLOT_9_AXI_awaddr[31:0];
  assign Conn9_AWCACHE = SLOT_9_AXI_awcache[3:0];
  assign Conn9_AWLEN = SLOT_9_AXI_awlen[7:0];
  assign Conn9_AWPROT = SLOT_9_AXI_awprot[2:0];
  assign Conn9_AWREADY = SLOT_9_AXI_awready;
  assign Conn9_AWSIZE = SLOT_9_AXI_awsize[2:0];
  assign Conn9_AWVALID = SLOT_9_AXI_awvalid;
  assign Conn9_BREADY = SLOT_9_AXI_bready;
  assign Conn9_BRESP = SLOT_9_AXI_bresp[1:0];
  assign Conn9_BVALID = SLOT_9_AXI_bvalid;
  assign Conn9_RDATA = SLOT_9_AXI_rdata[31:0];
  assign Conn9_RLAST = SLOT_9_AXI_rlast;
  assign Conn9_RREADY = SLOT_9_AXI_rready;
  assign Conn9_RRESP = SLOT_9_AXI_rresp[1:0];
  assign Conn9_RVALID = SLOT_9_AXI_rvalid;
  assign Conn9_WDATA = SLOT_9_AXI_wdata[31:0];
  assign Conn9_WLAST = SLOT_9_AXI_wlast;
  assign Conn9_WREADY = SLOT_9_AXI_wready;
  assign Conn9_WSTRB = SLOT_9_AXI_wstrb[2:0];
  assign Conn9_WVALID = SLOT_9_AXI_wvalid;
  assign Conn_ARADDR = SLOT_0_AXI_araddr[12:0];
  assign Conn_ARBURST = SLOT_0_AXI_arburst[1:0];
  assign Conn_ARCACHE = SLOT_0_AXI_arcache[3:0];
  assign Conn_ARLEN = SLOT_0_AXI_arlen[7:0];
  assign Conn_ARLOCK = SLOT_0_AXI_arlock[0];
  assign Conn_ARPROT = SLOT_0_AXI_arprot[2:0];
  assign Conn_ARQOS = SLOT_0_AXI_arqos[3:0];
  assign Conn_ARREADY = SLOT_0_AXI_arready;
  assign Conn_ARSIZE = SLOT_0_AXI_arsize[2:0];
  assign Conn_ARUSER = SLOT_0_AXI_aruser[15:0];
  assign Conn_ARVALID = SLOT_0_AXI_arvalid;
  assign Conn_AWADDR = SLOT_0_AXI_awaddr[12:0];
  assign Conn_AWBURST = SLOT_0_AXI_awburst[1:0];
  assign Conn_AWCACHE = SLOT_0_AXI_awcache[3:0];
  assign Conn_AWLEN = SLOT_0_AXI_awlen[7:0];
  assign Conn_AWLOCK = SLOT_0_AXI_awlock[0];
  assign Conn_AWPROT = SLOT_0_AXI_awprot[2:0];
  assign Conn_AWQOS = SLOT_0_AXI_awqos[3:0];
  assign Conn_AWREADY = SLOT_0_AXI_awready;
  assign Conn_AWSIZE = SLOT_0_AXI_awsize[2:0];
  assign Conn_AWUSER = SLOT_0_AXI_awuser[15:0];
  assign Conn_AWVALID = SLOT_0_AXI_awvalid;
  assign Conn_BREADY = SLOT_0_AXI_bready;
  assign Conn_BRESP = SLOT_0_AXI_bresp[1:0];
  assign Conn_BVALID = SLOT_0_AXI_bvalid;
  assign Conn_RDATA = SLOT_0_AXI_rdata[31:0];
  assign Conn_RLAST = SLOT_0_AXI_rlast;
  assign Conn_RREADY = SLOT_0_AXI_rready;
  assign Conn_RRESP = SLOT_0_AXI_rresp[1:0];
  assign Conn_RVALID = SLOT_0_AXI_rvalid;
  assign Conn_WDATA = SLOT_0_AXI_wdata[31:0];
  assign Conn_WLAST = SLOT_0_AXI_wlast;
  assign Conn_WREADY = SLOT_0_AXI_wready;
  assign Conn_WSTRB = SLOT_0_AXI_wstrb[3:0];
  assign Conn_WVALID = SLOT_0_AXI_wvalid;
  assign clk_1 = clk;
  assign resetn_1 = resetn;
  bd_365d_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axi_ar_cnt(net_slot_0_axi_ar_cnt),
        .m_slot_0_axi_araddr(net_slot_0_axi_araddr),
        .m_slot_0_axi_arburst(net_slot_0_axi_arburst),
        .m_slot_0_axi_arcache(net_slot_0_axi_arcache),
        .m_slot_0_axi_arlen(net_slot_0_axi_arlen),
        .m_slot_0_axi_arlock(net_slot_0_axi_arlock),
        .m_slot_0_axi_arprot(net_slot_0_axi_arprot),
        .m_slot_0_axi_arqos(net_slot_0_axi_arqos),
        .m_slot_0_axi_arready(net_slot_0_axi_arready),
        .m_slot_0_axi_arsize(net_slot_0_axi_arsize),
        .m_slot_0_axi_aruser(net_slot_0_axi_aruser),
        .m_slot_0_axi_arvalid(net_slot_0_axi_arvalid),
        .m_slot_0_axi_aw_cnt(net_slot_0_axi_aw_cnt),
        .m_slot_0_axi_awaddr(net_slot_0_axi_awaddr),
        .m_slot_0_axi_awburst(net_slot_0_axi_awburst),
        .m_slot_0_axi_awcache(net_slot_0_axi_awcache),
        .m_slot_0_axi_awlen(net_slot_0_axi_awlen),
        .m_slot_0_axi_awlock(net_slot_0_axi_awlock),
        .m_slot_0_axi_awprot(net_slot_0_axi_awprot),
        .m_slot_0_axi_awqos(net_slot_0_axi_awqos),
        .m_slot_0_axi_awready(net_slot_0_axi_awready),
        .m_slot_0_axi_awsize(net_slot_0_axi_awsize),
        .m_slot_0_axi_awuser(net_slot_0_axi_awuser),
        .m_slot_0_axi_awvalid(net_slot_0_axi_awvalid),
        .m_slot_0_axi_b_cnt(net_slot_0_axi_b_cnt),
        .m_slot_0_axi_bready(net_slot_0_axi_bready),
        .m_slot_0_axi_bresp(net_slot_0_axi_bresp),
        .m_slot_0_axi_bvalid(net_slot_0_axi_bvalid),
        .m_slot_0_axi_r_cnt(net_slot_0_axi_r_cnt),
        .m_slot_0_axi_rdata(net_slot_0_axi_rdata),
        .m_slot_0_axi_rlast(net_slot_0_axi_rlast),
        .m_slot_0_axi_rready(net_slot_0_axi_rready),
        .m_slot_0_axi_rresp(net_slot_0_axi_rresp),
        .m_slot_0_axi_rvalid(net_slot_0_axi_rvalid),
        .m_slot_0_axi_wdata(net_slot_0_axi_wdata),
        .m_slot_0_axi_wlast(net_slot_0_axi_wlast),
        .m_slot_0_axi_wready(net_slot_0_axi_wready),
        .m_slot_0_axi_wstrb(net_slot_0_axi_wstrb),
        .m_slot_0_axi_wvalid(net_slot_0_axi_wvalid),
        .m_slot_10_axi_ar_cnt(net_slot_10_axi_ar_cnt),
        .m_slot_10_axi_araddr(net_slot_10_axi_araddr),
        .m_slot_10_axi_arlen(net_slot_10_axi_arlen),
        .m_slot_10_axi_arready(net_slot_10_axi_arready),
        .m_slot_10_axi_arsize(net_slot_10_axi_arsize),
        .m_slot_10_axi_arvalid(net_slot_10_axi_arvalid),
        .m_slot_10_axi_aw_cnt(net_slot_10_axi_aw_cnt),
        .m_slot_10_axi_awaddr(net_slot_10_axi_awaddr),
        .m_slot_10_axi_awlen(net_slot_10_axi_awlen),
        .m_slot_10_axi_awready(net_slot_10_axi_awready),
        .m_slot_10_axi_awsize(net_slot_10_axi_awsize),
        .m_slot_10_axi_awvalid(net_slot_10_axi_awvalid),
        .m_slot_10_axi_b_cnt(net_slot_10_axi_b_cnt),
        .m_slot_10_axi_bready(net_slot_10_axi_bready),
        .m_slot_10_axi_bresp(net_slot_10_axi_bresp),
        .m_slot_10_axi_bvalid(net_slot_10_axi_bvalid),
        .m_slot_10_axi_r_cnt(net_slot_10_axi_r_cnt),
        .m_slot_10_axi_rdata(net_slot_10_axi_rdata),
        .m_slot_10_axi_rlast(net_slot_10_axi_rlast),
        .m_slot_10_axi_rready(net_slot_10_axi_rready),
        .m_slot_10_axi_rvalid(net_slot_10_axi_rvalid),
        .m_slot_10_axi_wdata(net_slot_10_axi_wdata),
        .m_slot_10_axi_wlast(net_slot_10_axi_wlast),
        .m_slot_10_axi_wready(net_slot_10_axi_wready),
        .m_slot_10_axi_wstrb(net_slot_10_axi_wstrb),
        .m_slot_10_axi_wvalid(net_slot_10_axi_wvalid),
        .m_slot_11_axi_ar_cnt(net_slot_11_axi_ar_cnt),
        .m_slot_11_axi_araddr(net_slot_11_axi_araddr),
        .m_slot_11_axi_arlen(net_slot_11_axi_arlen),
        .m_slot_11_axi_arready(net_slot_11_axi_arready),
        .m_slot_11_axi_arsize(net_slot_11_axi_arsize),
        .m_slot_11_axi_arvalid(net_slot_11_axi_arvalid),
        .m_slot_11_axi_aw_cnt(net_slot_11_axi_aw_cnt),
        .m_slot_11_axi_awaddr(net_slot_11_axi_awaddr),
        .m_slot_11_axi_awcache(net_slot_11_axi_awcache),
        .m_slot_11_axi_awlen(net_slot_11_axi_awlen),
        .m_slot_11_axi_awready(net_slot_11_axi_awready),
        .m_slot_11_axi_awsize(net_slot_11_axi_awsize),
        .m_slot_11_axi_awvalid(net_slot_11_axi_awvalid),
        .m_slot_11_axi_b_cnt(net_slot_11_axi_b_cnt),
        .m_slot_11_axi_bready(net_slot_11_axi_bready),
        .m_slot_11_axi_bresp(net_slot_11_axi_bresp),
        .m_slot_11_axi_bvalid(net_slot_11_axi_bvalid),
        .m_slot_11_axi_r_cnt(net_slot_11_axi_r_cnt),
        .m_slot_11_axi_rdata(net_slot_11_axi_rdata),
        .m_slot_11_axi_rid(net_slot_11_axi_rid),
        .m_slot_11_axi_rlast(net_slot_11_axi_rlast),
        .m_slot_11_axi_rready(net_slot_11_axi_rready),
        .m_slot_11_axi_rvalid(net_slot_11_axi_rvalid),
        .m_slot_11_axi_wdata(net_slot_11_axi_wdata),
        .m_slot_11_axi_wlast(net_slot_11_axi_wlast),
        .m_slot_11_axi_wready(net_slot_11_axi_wready),
        .m_slot_11_axi_wstrb(net_slot_11_axi_wstrb),
        .m_slot_11_axi_wvalid(net_slot_11_axi_wvalid),
        .m_slot_1_axis_tdata(net_slot_1_axis_tdata),
        .m_slot_1_axis_tid(net_slot_1_axis_tid),
        .m_slot_1_axis_tlast(net_slot_1_axis_tlast),
        .m_slot_1_axis_tready(net_slot_1_axis_tready),
        .m_slot_1_axis_tstrb(net_slot_1_axis_tstrb),
        .m_slot_1_axis_tvalid(net_slot_1_axis_tvalid),
        .m_slot_2_axi_ar_cnt(net_slot_2_axi_ar_cnt),
        .m_slot_2_axi_araddr(net_slot_2_axi_araddr),
        .m_slot_2_axi_arprot(net_slot_2_axi_arprot),
        .m_slot_2_axi_arready(net_slot_2_axi_arready),
        .m_slot_2_axi_arvalid(net_slot_2_axi_arvalid),
        .m_slot_2_axi_aw_cnt(net_slot_2_axi_aw_cnt),
        .m_slot_2_axi_awaddr(net_slot_2_axi_awaddr),
        .m_slot_2_axi_awprot(net_slot_2_axi_awprot),
        .m_slot_2_axi_awready(net_slot_2_axi_awready),
        .m_slot_2_axi_awvalid(net_slot_2_axi_awvalid),
        .m_slot_2_axi_b_cnt(net_slot_2_axi_b_cnt),
        .m_slot_2_axi_bready(net_slot_2_axi_bready),
        .m_slot_2_axi_bresp(net_slot_2_axi_bresp),
        .m_slot_2_axi_bvalid(net_slot_2_axi_bvalid),
        .m_slot_2_axi_r_cnt(net_slot_2_axi_r_cnt),
        .m_slot_2_axi_rdata(net_slot_2_axi_rdata),
        .m_slot_2_axi_rready(net_slot_2_axi_rready),
        .m_slot_2_axi_rresp(net_slot_2_axi_rresp),
        .m_slot_2_axi_rvalid(net_slot_2_axi_rvalid),
        .m_slot_2_axi_wdata(net_slot_2_axi_wdata),
        .m_slot_2_axi_wready(net_slot_2_axi_wready),
        .m_slot_2_axi_wstrb(net_slot_2_axi_wstrb),
        .m_slot_2_axi_wvalid(net_slot_2_axi_wvalid),
        .m_slot_3_axi_ar_cnt(net_slot_3_axi_ar_cnt),
        .m_slot_3_axi_araddr(net_slot_3_axi_araddr),
        .m_slot_3_axi_arburst(net_slot_3_axi_arburst),
        .m_slot_3_axi_arcache(net_slot_3_axi_arcache),
        .m_slot_3_axi_arid(net_slot_3_axi_arid),
        .m_slot_3_axi_arlen(net_slot_3_axi_arlen),
        .m_slot_3_axi_arlock(net_slot_3_axi_arlock),
        .m_slot_3_axi_arprot(net_slot_3_axi_arprot),
        .m_slot_3_axi_arqos(net_slot_3_axi_arqos),
        .m_slot_3_axi_arready(net_slot_3_axi_arready),
        .m_slot_3_axi_arsize(net_slot_3_axi_arsize),
        .m_slot_3_axi_aruser(net_slot_3_axi_aruser),
        .m_slot_3_axi_arvalid(net_slot_3_axi_arvalid),
        .m_slot_3_axi_aw_cnt(net_slot_3_axi_aw_cnt),
        .m_slot_3_axi_awaddr(net_slot_3_axi_awaddr),
        .m_slot_3_axi_awburst(net_slot_3_axi_awburst),
        .m_slot_3_axi_awcache(net_slot_3_axi_awcache),
        .m_slot_3_axi_awid(net_slot_3_axi_awid),
        .m_slot_3_axi_awlen(net_slot_3_axi_awlen),
        .m_slot_3_axi_awlock(net_slot_3_axi_awlock),
        .m_slot_3_axi_awprot(net_slot_3_axi_awprot),
        .m_slot_3_axi_awqos(net_slot_3_axi_awqos),
        .m_slot_3_axi_awready(net_slot_3_axi_awready),
        .m_slot_3_axi_awsize(net_slot_3_axi_awsize),
        .m_slot_3_axi_awuser(net_slot_3_axi_awuser),
        .m_slot_3_axi_awvalid(net_slot_3_axi_awvalid),
        .m_slot_3_axi_b_cnt(net_slot_3_axi_b_cnt),
        .m_slot_3_axi_bid(net_slot_3_axi_bid),
        .m_slot_3_axi_bready(net_slot_3_axi_bready),
        .m_slot_3_axi_bresp(net_slot_3_axi_bresp),
        .m_slot_3_axi_bvalid(net_slot_3_axi_bvalid),
        .m_slot_3_axi_r_cnt(net_slot_3_axi_r_cnt),
        .m_slot_3_axi_rdata(net_slot_3_axi_rdata),
        .m_slot_3_axi_rid(net_slot_3_axi_rid),
        .m_slot_3_axi_rlast(net_slot_3_axi_rlast),
        .m_slot_3_axi_rready(net_slot_3_axi_rready),
        .m_slot_3_axi_rresp(net_slot_3_axi_rresp),
        .m_slot_3_axi_rvalid(net_slot_3_axi_rvalid),
        .m_slot_3_axi_wdata(net_slot_3_axi_wdata),
        .m_slot_3_axi_wlast(net_slot_3_axi_wlast),
        .m_slot_3_axi_wready(net_slot_3_axi_wready),
        .m_slot_3_axi_wstrb(net_slot_3_axi_wstrb),
        .m_slot_3_axi_wvalid(net_slot_3_axi_wvalid),
        .m_slot_4_axi_ar_cnt(net_slot_4_axi_ar_cnt),
        .m_slot_4_axi_araddr(net_slot_4_axi_araddr),
        .m_slot_4_axi_arprot(net_slot_4_axi_arprot),
        .m_slot_4_axi_arready(net_slot_4_axi_arready),
        .m_slot_4_axi_arvalid(net_slot_4_axi_arvalid),
        .m_slot_4_axi_aw_cnt(net_slot_4_axi_aw_cnt),
        .m_slot_4_axi_awaddr(net_slot_4_axi_awaddr),
        .m_slot_4_axi_awprot(net_slot_4_axi_awprot),
        .m_slot_4_axi_awready(net_slot_4_axi_awready),
        .m_slot_4_axi_awvalid(net_slot_4_axi_awvalid),
        .m_slot_4_axi_b_cnt(net_slot_4_axi_b_cnt),
        .m_slot_4_axi_bready(net_slot_4_axi_bready),
        .m_slot_4_axi_bresp(net_slot_4_axi_bresp),
        .m_slot_4_axi_bvalid(net_slot_4_axi_bvalid),
        .m_slot_4_axi_r_cnt(net_slot_4_axi_r_cnt),
        .m_slot_4_axi_rdata(net_slot_4_axi_rdata),
        .m_slot_4_axi_rready(net_slot_4_axi_rready),
        .m_slot_4_axi_rresp(net_slot_4_axi_rresp),
        .m_slot_4_axi_rvalid(net_slot_4_axi_rvalid),
        .m_slot_4_axi_wdata(net_slot_4_axi_wdata),
        .m_slot_4_axi_wready(net_slot_4_axi_wready),
        .m_slot_4_axi_wstrb(net_slot_4_axi_wstrb),
        .m_slot_4_axi_wvalid(net_slot_4_axi_wvalid),
        .m_slot_5_axis_tdata(net_slot_5_axis_tdata),
        .m_slot_5_axis_tid(net_slot_5_axis_tid),
        .m_slot_5_axis_tlast(net_slot_5_axis_tlast),
        .m_slot_5_axis_tready(net_slot_5_axis_tready),
        .m_slot_5_axis_tstrb(net_slot_5_axis_tstrb),
        .m_slot_5_axis_tvalid(net_slot_5_axis_tvalid),
        .m_slot_6_axi_ar_cnt(net_slot_6_axi_ar_cnt),
        .m_slot_6_axi_araddr(net_slot_6_axi_araddr),
        .m_slot_6_axi_arcache(net_slot_6_axi_arcache),
        .m_slot_6_axi_arlen(net_slot_6_axi_arlen),
        .m_slot_6_axi_arprot(net_slot_6_axi_arprot),
        .m_slot_6_axi_arready(net_slot_6_axi_arready),
        .m_slot_6_axi_arsize(net_slot_6_axi_arsize),
        .m_slot_6_axi_arvalid(net_slot_6_axi_arvalid),
        .m_slot_6_axi_aw_cnt(net_slot_6_axi_aw_cnt),
        .m_slot_6_axi_awaddr(net_slot_6_axi_awaddr),
        .m_slot_6_axi_awcache(net_slot_6_axi_awcache),
        .m_slot_6_axi_awlen(net_slot_6_axi_awlen),
        .m_slot_6_axi_awprot(net_slot_6_axi_awprot),
        .m_slot_6_axi_awready(net_slot_6_axi_awready),
        .m_slot_6_axi_awsize(net_slot_6_axi_awsize),
        .m_slot_6_axi_awvalid(net_slot_6_axi_awvalid),
        .m_slot_6_axi_b_cnt(net_slot_6_axi_b_cnt),
        .m_slot_6_axi_bready(net_slot_6_axi_bready),
        .m_slot_6_axi_bresp(net_slot_6_axi_bresp),
        .m_slot_6_axi_bvalid(net_slot_6_axi_bvalid),
        .m_slot_6_axi_r_cnt(net_slot_6_axi_r_cnt),
        .m_slot_6_axi_rdata(net_slot_6_axi_rdata),
        .m_slot_6_axi_rlast(net_slot_6_axi_rlast),
        .m_slot_6_axi_rready(net_slot_6_axi_rready),
        .m_slot_6_axi_rresp(net_slot_6_axi_rresp),
        .m_slot_6_axi_rvalid(net_slot_6_axi_rvalid),
        .m_slot_6_axi_wdata(net_slot_6_axi_wdata),
        .m_slot_6_axi_wlast(net_slot_6_axi_wlast),
        .m_slot_6_axi_wready(net_slot_6_axi_wready),
        .m_slot_6_axi_wstrb(net_slot_6_axi_wstrb),
        .m_slot_6_axi_wvalid(net_slot_6_axi_wvalid),
        .m_slot_7_axis_tdata(net_slot_7_axis_tdata),
        .m_slot_7_axis_tdest(net_slot_7_axis_tdest),
        .m_slot_7_axis_tid(net_slot_7_axis_tid),
        .m_slot_7_axis_tkeep(net_slot_7_axis_tkeep),
        .m_slot_7_axis_tlast(net_slot_7_axis_tlast),
        .m_slot_7_axis_tready(net_slot_7_axis_tready),
        .m_slot_7_axis_tstrb(net_slot_7_axis_tstrb),
        .m_slot_7_axis_tuser(net_slot_7_axis_tuser),
        .m_slot_7_axis_tvalid(net_slot_7_axis_tvalid),
        .m_slot_8_axi_ar_cnt(net_slot_8_axi_ar_cnt),
        .m_slot_8_axi_araddr(net_slot_8_axi_araddr),
        .m_slot_8_axi_arprot(net_slot_8_axi_arprot),
        .m_slot_8_axi_arready(net_slot_8_axi_arready),
        .m_slot_8_axi_arvalid(net_slot_8_axi_arvalid),
        .m_slot_8_axi_aw_cnt(net_slot_8_axi_aw_cnt),
        .m_slot_8_axi_awaddr(net_slot_8_axi_awaddr),
        .m_slot_8_axi_awprot(net_slot_8_axi_awprot),
        .m_slot_8_axi_awready(net_slot_8_axi_awready),
        .m_slot_8_axi_awvalid(net_slot_8_axi_awvalid),
        .m_slot_8_axi_b_cnt(net_slot_8_axi_b_cnt),
        .m_slot_8_axi_bready(net_slot_8_axi_bready),
        .m_slot_8_axi_bresp(net_slot_8_axi_bresp),
        .m_slot_8_axi_bvalid(net_slot_8_axi_bvalid),
        .m_slot_8_axi_r_cnt(net_slot_8_axi_r_cnt),
        .m_slot_8_axi_rdata(net_slot_8_axi_rdata),
        .m_slot_8_axi_rready(net_slot_8_axi_rready),
        .m_slot_8_axi_rresp(net_slot_8_axi_rresp),
        .m_slot_8_axi_rvalid(net_slot_8_axi_rvalid),
        .m_slot_8_axi_wdata(net_slot_8_axi_wdata),
        .m_slot_8_axi_wready(net_slot_8_axi_wready),
        .m_slot_8_axi_wstrb(net_slot_8_axi_wstrb),
        .m_slot_8_axi_wvalid(net_slot_8_axi_wvalid),
        .m_slot_9_axi_ar_cnt(net_slot_9_axi_ar_cnt),
        .m_slot_9_axi_araddr(net_slot_9_axi_araddr),
        .m_slot_9_axi_arcache(net_slot_9_axi_arcache),
        .m_slot_9_axi_arlen(net_slot_9_axi_arlen),
        .m_slot_9_axi_arprot(net_slot_9_axi_arprot),
        .m_slot_9_axi_arready(net_slot_9_axi_arready),
        .m_slot_9_axi_arsize(net_slot_9_axi_arsize),
        .m_slot_9_axi_arvalid(net_slot_9_axi_arvalid),
        .m_slot_9_axi_aw_cnt(net_slot_9_axi_aw_cnt),
        .m_slot_9_axi_awaddr(net_slot_9_axi_awaddr),
        .m_slot_9_axi_awcache(net_slot_9_axi_awcache),
        .m_slot_9_axi_awlen(net_slot_9_axi_awlen),
        .m_slot_9_axi_awprot(net_slot_9_axi_awprot),
        .m_slot_9_axi_awready(net_slot_9_axi_awready),
        .m_slot_9_axi_awsize(net_slot_9_axi_awsize),
        .m_slot_9_axi_awvalid(net_slot_9_axi_awvalid),
        .m_slot_9_axi_b_cnt(net_slot_9_axi_b_cnt),
        .m_slot_9_axi_bready(net_slot_9_axi_bready),
        .m_slot_9_axi_bresp(net_slot_9_axi_bresp),
        .m_slot_9_axi_bvalid(net_slot_9_axi_bvalid),
        .m_slot_9_axi_r_cnt(net_slot_9_axi_r_cnt),
        .m_slot_9_axi_rdata(net_slot_9_axi_rdata),
        .m_slot_9_axi_rlast(net_slot_9_axi_rlast),
        .m_slot_9_axi_rready(net_slot_9_axi_rready),
        .m_slot_9_axi_rresp(net_slot_9_axi_rresp),
        .m_slot_9_axi_rvalid(net_slot_9_axi_rvalid),
        .m_slot_9_axi_wdata(net_slot_9_axi_wdata),
        .m_slot_9_axi_wlast(net_slot_9_axi_wlast),
        .m_slot_9_axi_wready(net_slot_9_axi_wready),
        .m_slot_9_axi_wstrb(net_slot_9_axi_wstrb),
        .m_slot_9_axi_wvalid(net_slot_9_axi_wvalid),
        .slot_0_axi_araddr(Conn_ARADDR),
        .slot_0_axi_arburst(Conn_ARBURST),
        .slot_0_axi_arcache(Conn_ARCACHE),
        .slot_0_axi_arlen(Conn_ARLEN),
        .slot_0_axi_arlock(Conn_ARLOCK),
        .slot_0_axi_arprot(Conn_ARPROT),
        .slot_0_axi_arqos(Conn_ARQOS),
        .slot_0_axi_arready(Conn_ARREADY),
        .slot_0_axi_arsize(Conn_ARSIZE),
        .slot_0_axi_aruser(Conn_ARUSER),
        .slot_0_axi_arvalid(Conn_ARVALID),
        .slot_0_axi_awaddr(Conn_AWADDR),
        .slot_0_axi_awburst(Conn_AWBURST),
        .slot_0_axi_awcache(Conn_AWCACHE),
        .slot_0_axi_awlen(Conn_AWLEN),
        .slot_0_axi_awlock(Conn_AWLOCK),
        .slot_0_axi_awprot(Conn_AWPROT),
        .slot_0_axi_awqos(Conn_AWQOS),
        .slot_0_axi_awready(Conn_AWREADY),
        .slot_0_axi_awsize(Conn_AWSIZE),
        .slot_0_axi_awuser(Conn_AWUSER),
        .slot_0_axi_awvalid(Conn_AWVALID),
        .slot_0_axi_bready(Conn_BREADY),
        .slot_0_axi_bresp(Conn_BRESP),
        .slot_0_axi_bvalid(Conn_BVALID),
        .slot_0_axi_rdata(Conn_RDATA),
        .slot_0_axi_rlast(Conn_RLAST),
        .slot_0_axi_rready(Conn_RREADY),
        .slot_0_axi_rresp(Conn_RRESP),
        .slot_0_axi_rvalid(Conn_RVALID),
        .slot_0_axi_wdata(Conn_WDATA),
        .slot_0_axi_wlast(Conn_WLAST),
        .slot_0_axi_wready(Conn_WREADY),
        .slot_0_axi_wstrb(Conn_WSTRB),
        .slot_0_axi_wvalid(Conn_WVALID),
        .slot_10_axi_araddr(Conn10_ARADDR),
        .slot_10_axi_arlen(Conn10_ARLEN),
        .slot_10_axi_arready(Conn10_ARREADY),
        .slot_10_axi_arsize(Conn10_ARSIZE),
        .slot_10_axi_arvalid(Conn10_ARVALID),
        .slot_10_axi_awaddr(Conn10_AWADDR),
        .slot_10_axi_awlen(Conn10_AWLEN),
        .slot_10_axi_awready(Conn10_AWREADY),
        .slot_10_axi_awsize(Conn10_AWSIZE),
        .slot_10_axi_awvalid(Conn10_AWVALID),
        .slot_10_axi_bready(Conn10_BREADY),
        .slot_10_axi_bresp(Conn10_BRESP),
        .slot_10_axi_bvalid(Conn10_BVALID),
        .slot_10_axi_rdata(Conn10_RDATA),
        .slot_10_axi_rlast(Conn10_RLAST),
        .slot_10_axi_rready(Conn10_RREADY),
        .slot_10_axi_rvalid(Conn10_RVALID),
        .slot_10_axi_wdata(Conn10_WDATA),
        .slot_10_axi_wlast(Conn10_WLAST),
        .slot_10_axi_wready(Conn10_WREADY),
        .slot_10_axi_wstrb(Conn10_WSTRB),
        .slot_10_axi_wvalid(Conn10_WVALID),
        .slot_11_axi_araddr(Conn11_ARADDR),
        .slot_11_axi_arlen(Conn11_ARLEN),
        .slot_11_axi_arready(Conn11_ARREADY),
        .slot_11_axi_arsize(Conn11_ARSIZE),
        .slot_11_axi_arvalid(Conn11_ARVALID),
        .slot_11_axi_awaddr(Conn11_AWADDR),
        .slot_11_axi_awcache(Conn11_AWCACHE),
        .slot_11_axi_awlen(Conn11_AWLEN),
        .slot_11_axi_awready(Conn11_AWREADY),
        .slot_11_axi_awsize(Conn11_AWSIZE),
        .slot_11_axi_awvalid(Conn11_AWVALID),
        .slot_11_axi_bready(Conn11_BREADY),
        .slot_11_axi_bresp(Conn11_BRESP),
        .slot_11_axi_bvalid(Conn11_BVALID),
        .slot_11_axi_rdata(Conn11_RDATA),
        .slot_11_axi_rlast(Conn11_RLAST),
        .slot_11_axi_rready(Conn11_RREADY),
        .slot_11_axi_rvalid(Conn11_RVALID),
        .slot_11_axi_wdata(Conn11_WDATA),
        .slot_11_axi_wlast(Conn11_WLAST),
        .slot_11_axi_wready(Conn11_WREADY),
        .slot_11_axi_wstrb(Conn11_WSTRB),
        .slot_11_axi_wvalid(Conn11_WVALID),
        .slot_1_axis_tdata(Conn1_TDATA),
        .slot_1_axis_tid(Conn1_TID),
        .slot_1_axis_tlast(Conn1_TLAST),
        .slot_1_axis_tready(Conn1_TREADY),
        .slot_1_axis_tstrb(Conn1_TSTRB),
        .slot_1_axis_tvalid(Conn1_TVALID),
        .slot_2_axi_araddr(Conn2_ARADDR),
        .slot_2_axi_arprot(Conn2_ARPROT),
        .slot_2_axi_arready(Conn2_ARREADY),
        .slot_2_axi_arvalid(Conn2_ARVALID),
        .slot_2_axi_awaddr(Conn2_AWADDR),
        .slot_2_axi_awprot(Conn2_AWPROT),
        .slot_2_axi_awready(Conn2_AWREADY),
        .slot_2_axi_awvalid(Conn2_AWVALID),
        .slot_2_axi_bready(Conn2_BREADY),
        .slot_2_axi_bresp(Conn2_BRESP),
        .slot_2_axi_bvalid(Conn2_BVALID),
        .slot_2_axi_rdata(Conn2_RDATA),
        .slot_2_axi_rready(Conn2_RREADY),
        .slot_2_axi_rresp(Conn2_RRESP),
        .slot_2_axi_rvalid(Conn2_RVALID),
        .slot_2_axi_wdata(Conn2_WDATA),
        .slot_2_axi_wready(Conn2_WREADY),
        .slot_2_axi_wstrb(Conn2_WSTRB),
        .slot_2_axi_wvalid(Conn2_WVALID),
        .slot_3_axi_araddr(Conn3_ARADDR),
        .slot_3_axi_arburst(Conn3_ARBURST),
        .slot_3_axi_arcache(Conn3_ARCACHE),
        .slot_3_axi_arid(Conn3_ARID),
        .slot_3_axi_arlen(Conn3_ARLEN),
        .slot_3_axi_arlock(Conn3_ARLOCK),
        .slot_3_axi_arprot(Conn3_ARPROT),
        .slot_3_axi_arqos(Conn3_ARQOS),
        .slot_3_axi_arready(Conn3_ARREADY),
        .slot_3_axi_arsize(Conn3_ARSIZE),
        .slot_3_axi_aruser(Conn3_ARUSER),
        .slot_3_axi_arvalid(Conn3_ARVALID),
        .slot_3_axi_awaddr(Conn3_AWADDR),
        .slot_3_axi_awburst(Conn3_AWBURST),
        .slot_3_axi_awcache(Conn3_AWCACHE),
        .slot_3_axi_awid(Conn3_AWID),
        .slot_3_axi_awlen(Conn3_AWLEN),
        .slot_3_axi_awlock(Conn3_AWLOCK),
        .slot_3_axi_awprot(Conn3_AWPROT),
        .slot_3_axi_awqos(Conn3_AWQOS),
        .slot_3_axi_awready(Conn3_AWREADY),
        .slot_3_axi_awsize(Conn3_AWSIZE),
        .slot_3_axi_awuser(Conn3_AWUSER),
        .slot_3_axi_awvalid(Conn3_AWVALID),
        .slot_3_axi_bid(Conn3_BID),
        .slot_3_axi_bready(Conn3_BREADY),
        .slot_3_axi_bresp(Conn3_BRESP),
        .slot_3_axi_bvalid(Conn3_BVALID),
        .slot_3_axi_rdata(Conn3_RDATA),
        .slot_3_axi_rid(Conn3_RID),
        .slot_3_axi_rlast(Conn3_RLAST),
        .slot_3_axi_rready(Conn3_RREADY),
        .slot_3_axi_rresp(Conn3_RRESP),
        .slot_3_axi_rvalid(Conn3_RVALID),
        .slot_3_axi_wdata(Conn3_WDATA),
        .slot_3_axi_wlast(Conn3_WLAST),
        .slot_3_axi_wready(Conn3_WREADY),
        .slot_3_axi_wstrb(Conn3_WSTRB),
        .slot_3_axi_wvalid(Conn3_WVALID),
        .slot_4_axi_araddr(Conn4_ARADDR),
        .slot_4_axi_arprot(Conn4_ARPROT),
        .slot_4_axi_arready(Conn4_ARREADY),
        .slot_4_axi_arvalid(Conn4_ARVALID),
        .slot_4_axi_awaddr(Conn4_AWADDR),
        .slot_4_axi_awprot(Conn4_AWPROT),
        .slot_4_axi_awready(Conn4_AWREADY),
        .slot_4_axi_awvalid(Conn4_AWVALID),
        .slot_4_axi_bready(Conn4_BREADY),
        .slot_4_axi_bresp(Conn4_BRESP),
        .slot_4_axi_bvalid(Conn4_BVALID),
        .slot_4_axi_rdata(Conn4_RDATA),
        .slot_4_axi_rready(Conn4_RREADY),
        .slot_4_axi_rresp(Conn4_RRESP),
        .slot_4_axi_rvalid(Conn4_RVALID),
        .slot_4_axi_wdata(Conn4_WDATA),
        .slot_4_axi_wready(Conn4_WREADY),
        .slot_4_axi_wstrb(Conn4_WSTRB),
        .slot_4_axi_wvalid(Conn4_WVALID),
        .slot_5_axis_tdata(Conn5_TDATA),
        .slot_5_axis_tid(Conn5_TID),
        .slot_5_axis_tlast(Conn5_TLAST),
        .slot_5_axis_tready(Conn5_TREADY),
        .slot_5_axis_tstrb(Conn5_TSTRB),
        .slot_5_axis_tvalid(Conn5_TVALID),
        .slot_6_axi_araddr(Conn6_ARADDR),
        .slot_6_axi_arcache(Conn6_ARCACHE),
        .slot_6_axi_arlen(Conn6_ARLEN),
        .slot_6_axi_arprot(Conn6_ARPROT),
        .slot_6_axi_arready(Conn6_ARREADY),
        .slot_6_axi_arsize(Conn6_ARSIZE),
        .slot_6_axi_arvalid(Conn6_ARVALID),
        .slot_6_axi_awaddr(Conn6_AWADDR),
        .slot_6_axi_awcache(Conn6_AWCACHE),
        .slot_6_axi_awlen(Conn6_AWLEN),
        .slot_6_axi_awprot(Conn6_AWPROT),
        .slot_6_axi_awready(Conn6_AWREADY),
        .slot_6_axi_awsize(Conn6_AWSIZE),
        .slot_6_axi_awvalid(Conn6_AWVALID),
        .slot_6_axi_bready(Conn6_BREADY),
        .slot_6_axi_bresp(Conn6_BRESP),
        .slot_6_axi_bvalid(Conn6_BVALID),
        .slot_6_axi_rdata(Conn6_RDATA),
        .slot_6_axi_rlast(Conn6_RLAST),
        .slot_6_axi_rready(Conn6_RREADY),
        .slot_6_axi_rresp(Conn6_RRESP),
        .slot_6_axi_rvalid(Conn6_RVALID),
        .slot_6_axi_wdata(Conn6_WDATA),
        .slot_6_axi_wlast(Conn6_WLAST),
        .slot_6_axi_wready(Conn6_WREADY),
        .slot_6_axi_wstrb(Conn6_WSTRB),
        .slot_6_axi_wvalid(Conn6_WVALID),
        .slot_7_axis_tdata(Conn7_TDATA),
        .slot_7_axis_tdest(Conn7_TDEST),
        .slot_7_axis_tid(Conn7_TID),
        .slot_7_axis_tkeep(Conn7_TKEEP),
        .slot_7_axis_tlast(Conn7_TLAST),
        .slot_7_axis_tready(Conn7_TREADY),
        .slot_7_axis_tstrb(Conn7_TSTRB),
        .slot_7_axis_tuser(Conn7_TUSER),
        .slot_7_axis_tvalid(Conn7_TVALID),
        .slot_8_axi_araddr(Conn8_ARADDR),
        .slot_8_axi_arprot(Conn8_ARPROT),
        .slot_8_axi_arready(Conn8_ARREADY),
        .slot_8_axi_arvalid(Conn8_ARVALID),
        .slot_8_axi_awaddr(Conn8_AWADDR),
        .slot_8_axi_awprot(Conn8_AWPROT),
        .slot_8_axi_awready(Conn8_AWREADY),
        .slot_8_axi_awvalid(Conn8_AWVALID),
        .slot_8_axi_bready(Conn8_BREADY),
        .slot_8_axi_bresp(Conn8_BRESP),
        .slot_8_axi_bvalid(Conn8_BVALID),
        .slot_8_axi_rdata(Conn8_RDATA),
        .slot_8_axi_rready(Conn8_RREADY),
        .slot_8_axi_rresp(Conn8_RRESP),
        .slot_8_axi_rvalid(Conn8_RVALID),
        .slot_8_axi_wdata(Conn8_WDATA),
        .slot_8_axi_wready(Conn8_WREADY),
        .slot_8_axi_wstrb(Conn8_WSTRB),
        .slot_8_axi_wvalid(Conn8_WVALID),
        .slot_9_axi_araddr(Conn9_ARADDR),
        .slot_9_axi_arcache(Conn9_ARCACHE),
        .slot_9_axi_arlen(Conn9_ARLEN),
        .slot_9_axi_arprot(Conn9_ARPROT),
        .slot_9_axi_arready(Conn9_ARREADY),
        .slot_9_axi_arsize(Conn9_ARSIZE),
        .slot_9_axi_arvalid(Conn9_ARVALID),
        .slot_9_axi_awaddr(Conn9_AWADDR),
        .slot_9_axi_awcache(Conn9_AWCACHE),
        .slot_9_axi_awlen(Conn9_AWLEN),
        .slot_9_axi_awprot(Conn9_AWPROT),
        .slot_9_axi_awready(Conn9_AWREADY),
        .slot_9_axi_awsize(Conn9_AWSIZE),
        .slot_9_axi_awvalid(Conn9_AWVALID),
        .slot_9_axi_bready(Conn9_BREADY),
        .slot_9_axi_bresp(Conn9_BRESP),
        .slot_9_axi_bvalid(Conn9_BVALID),
        .slot_9_axi_rdata(Conn9_RDATA),
        .slot_9_axi_rlast(Conn9_RLAST),
        .slot_9_axi_rready(Conn9_RREADY),
        .slot_9_axi_rresp(Conn9_RRESP),
        .slot_9_axi_rvalid(Conn9_RVALID),
        .slot_9_axi_wdata(Conn9_WDATA),
        .slot_9_axi_wlast(Conn9_WLAST),
        .slot_9_axi_wready(Conn9_WREADY),
        .slot_9_axi_wstrb(Conn9_WSTRB),
        .slot_9_axi_wvalid(Conn9_WVALID));
  bd_365d_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(net_slot_0_axi_ar_cnt),
        .probe1(net_slot_0_axi_araddr),
        .probe10(net_slot_0_axi_aw_cnt),
        .probe100(net_slot_4_axi_r_cnt),
        .probe101(net_slot_4_axi_rdata),
        .probe102(net_slot_4_axi_rresp),
        .probe103(net_slot_4_axi_wdata),
        .probe104(net_slot_4_axi_wstrb),
        .probe105(net_slot_4_axi_aw_ctrl),
        .probe106(net_slot_4_axi_w_ctrl),
        .probe107(net_slot_4_axi_b_ctrl),
        .probe108(net_slot_4_axi_ar_ctrl),
        .probe109(net_slot_4_axi_r_ctrl),
        .probe11(net_slot_0_axi_awaddr),
        .probe110(net_slot_5_axis_tdata),
        .probe111(net_slot_5_axis_tid),
        .probe112(net_slot_5_axis_tstrb),
        .probe113(net_slot_5_axis_tvalid),
        .probe114(net_slot_5_axis_tready),
        .probe115(net_slot_5_axis_tlast),
        .probe116(net_slot_6_axi_ar_cnt),
        .probe117(net_slot_6_axi_araddr),
        .probe118(net_slot_6_axi_arcache),
        .probe119(net_slot_6_axi_arlen),
        .probe12(net_slot_0_axi_awburst),
        .probe120(net_slot_6_axi_arprot),
        .probe121(net_slot_6_axi_arsize),
        .probe122(net_slot_6_axi_aw_cnt),
        .probe123(net_slot_6_axi_awaddr),
        .probe124(net_slot_6_axi_awcache),
        .probe125(net_slot_6_axi_awlen),
        .probe126(net_slot_6_axi_awprot),
        .probe127(net_slot_6_axi_awsize),
        .probe128(net_slot_6_axi_b_cnt),
        .probe129(net_slot_6_axi_bresp),
        .probe13(net_slot_0_axi_awcache),
        .probe130(net_slot_6_axi_r_cnt),
        .probe131(net_slot_6_axi_rdata),
        .probe132(net_slot_6_axi_rresp),
        .probe133(net_slot_6_axi_wdata),
        .probe134(net_slot_6_axi_wstrb),
        .probe135(net_slot_6_axi_aw_ctrl),
        .probe136(net_slot_6_axi_w_ctrl),
        .probe137(net_slot_6_axi_b_ctrl),
        .probe138(net_slot_6_axi_ar_ctrl),
        .probe139(net_slot_6_axi_r_ctrl),
        .probe14(net_slot_0_axi_awlen),
        .probe140(net_slot_7_axis_tdata),
        .probe141(net_slot_7_axis_tdest),
        .probe142(net_slot_7_axis_tid),
        .probe143(net_slot_7_axis_tkeep),
        .probe144(net_slot_7_axis_tstrb),
        .probe145(net_slot_7_axis_tuser),
        .probe146(net_slot_7_axis_tvalid),
        .probe147(net_slot_7_axis_tready),
        .probe148(net_slot_7_axis_tlast),
        .probe149(net_slot_8_axi_ar_cnt),
        .probe15(net_slot_0_axi_awlock),
        .probe150(net_slot_8_axi_araddr),
        .probe151(net_slot_8_axi_arprot),
        .probe152(net_slot_8_axi_aw_cnt),
        .probe153(net_slot_8_axi_awaddr),
        .probe154(net_slot_8_axi_awprot),
        .probe155(net_slot_8_axi_b_cnt),
        .probe156(net_slot_8_axi_bresp),
        .probe157(net_slot_8_axi_r_cnt),
        .probe158(net_slot_8_axi_rdata),
        .probe159(net_slot_8_axi_rresp),
        .probe16(net_slot_0_axi_awprot),
        .probe160(net_slot_8_axi_wdata),
        .probe161(net_slot_8_axi_wstrb),
        .probe162(net_slot_8_axi_aw_ctrl),
        .probe163(net_slot_8_axi_w_ctrl),
        .probe164(net_slot_8_axi_b_ctrl),
        .probe165(net_slot_8_axi_ar_ctrl),
        .probe166(net_slot_8_axi_r_ctrl),
        .probe167(net_slot_9_axi_ar_cnt),
        .probe168(net_slot_9_axi_araddr),
        .probe169(net_slot_9_axi_arcache),
        .probe17(net_slot_0_axi_awqos),
        .probe170(net_slot_9_axi_arlen),
        .probe171(net_slot_9_axi_arprot),
        .probe172(net_slot_9_axi_arsize),
        .probe173(net_slot_9_axi_aw_cnt),
        .probe174(net_slot_9_axi_awaddr),
        .probe175(net_slot_9_axi_awcache),
        .probe176(net_slot_9_axi_awlen),
        .probe177(net_slot_9_axi_awprot),
        .probe178(net_slot_9_axi_awsize),
        .probe179(net_slot_9_axi_b_cnt),
        .probe18(net_slot_0_axi_awsize),
        .probe180(net_slot_9_axi_bresp),
        .probe181(net_slot_9_axi_r_cnt),
        .probe182(net_slot_9_axi_rdata),
        .probe183(net_slot_9_axi_rresp),
        .probe184(net_slot_9_axi_wdata),
        .probe185(net_slot_9_axi_wstrb),
        .probe186(net_slot_9_axi_aw_ctrl),
        .probe187(net_slot_9_axi_w_ctrl),
        .probe188(net_slot_9_axi_b_ctrl),
        .probe189(net_slot_9_axi_ar_ctrl),
        .probe19(net_slot_0_axi_awuser),
        .probe190(net_slot_9_axi_r_ctrl),
        .probe191(net_slot_10_axi_ar_cnt),
        .probe192(net_slot_10_axi_araddr),
        .probe193(net_slot_10_axi_arlen),
        .probe194(net_slot_10_axi_arsize),
        .probe195(net_slot_10_axi_aw_cnt),
        .probe196(net_slot_10_axi_awaddr),
        .probe197(net_slot_10_axi_awlen),
        .probe198(net_slot_10_axi_awsize),
        .probe199(net_slot_10_axi_b_cnt),
        .probe2(net_slot_0_axi_arburst),
        .probe20(net_slot_0_axi_b_cnt),
        .probe200(net_slot_10_axi_bresp),
        .probe201(net_slot_10_axi_r_cnt),
        .probe202(net_slot_10_axi_rdata),
        .probe203(net_slot_10_axi_wdata),
        .probe204(net_slot_10_axi_wstrb),
        .probe205(net_slot_10_axi_aw_ctrl),
        .probe206(net_slot_10_axi_w_ctrl),
        .probe207(net_slot_10_axi_b_ctrl),
        .probe208(net_slot_10_axi_ar_ctrl),
        .probe209(net_slot_10_axi_r_ctrl),
        .probe21(net_slot_0_axi_bresp),
        .probe210(net_slot_11_axi_ar_cnt),
        .probe211(net_slot_11_axi_araddr),
        .probe212(net_slot_11_axi_arlen),
        .probe213(net_slot_11_axi_arsize),
        .probe214(net_slot_11_axi_aw_cnt),
        .probe215(net_slot_11_axi_awaddr),
        .probe216(net_slot_11_axi_awcache),
        .probe217(net_slot_11_axi_awlen),
        .probe218(net_slot_11_axi_awsize),
        .probe219(net_slot_11_axi_b_cnt),
        .probe22(net_slot_0_axi_r_cnt),
        .probe220(net_slot_11_axi_bresp),
        .probe221(net_slot_11_axi_r_cnt),
        .probe222(net_slot_11_axi_rdata),
        .probe223(net_slot_11_axi_rid),
        .probe224(net_slot_11_axi_wdata),
        .probe225(net_slot_11_axi_wstrb),
        .probe226(net_slot_11_axi_aw_ctrl),
        .probe227(net_slot_11_axi_w_ctrl),
        .probe228(net_slot_11_axi_b_ctrl),
        .probe229(net_slot_11_axi_ar_ctrl),
        .probe23(net_slot_0_axi_rdata),
        .probe230(net_slot_11_axi_r_ctrl),
        .probe24(net_slot_0_axi_rresp),
        .probe25(net_slot_0_axi_wdata),
        .probe26(net_slot_0_axi_wstrb),
        .probe27(net_slot_0_axi_aw_ctrl),
        .probe28(net_slot_0_axi_w_ctrl),
        .probe29(net_slot_0_axi_b_ctrl),
        .probe3(net_slot_0_axi_arcache),
        .probe30(net_slot_0_axi_ar_ctrl),
        .probe31(net_slot_0_axi_r_ctrl),
        .probe32(net_slot_1_axis_tdata),
        .probe33(net_slot_1_axis_tid),
        .probe34(net_slot_1_axis_tstrb),
        .probe35(net_slot_1_axis_tvalid),
        .probe36(net_slot_1_axis_tready),
        .probe37(net_slot_1_axis_tlast),
        .probe38(net_slot_2_axi_ar_cnt),
        .probe39(net_slot_2_axi_araddr),
        .probe4(net_slot_0_axi_arlen),
        .probe40(net_slot_2_axi_arprot),
        .probe41(net_slot_2_axi_aw_cnt),
        .probe42(net_slot_2_axi_awaddr),
        .probe43(net_slot_2_axi_awprot),
        .probe44(net_slot_2_axi_b_cnt),
        .probe45(net_slot_2_axi_bresp),
        .probe46(net_slot_2_axi_r_cnt),
        .probe47(net_slot_2_axi_rdata),
        .probe48(net_slot_2_axi_rresp),
        .probe49(net_slot_2_axi_wdata),
        .probe5(net_slot_0_axi_arlock),
        .probe50(net_slot_2_axi_wstrb),
        .probe51(net_slot_2_axi_aw_ctrl),
        .probe52(net_slot_2_axi_w_ctrl),
        .probe53(net_slot_2_axi_b_ctrl),
        .probe54(net_slot_2_axi_ar_ctrl),
        .probe55(net_slot_2_axi_r_ctrl),
        .probe56(net_slot_3_axi_ar_cnt),
        .probe57(net_slot_3_axi_araddr),
        .probe58(net_slot_3_axi_arburst),
        .probe59(net_slot_3_axi_arcache),
        .probe6(net_slot_0_axi_arprot),
        .probe60(net_slot_3_axi_arid),
        .probe61(net_slot_3_axi_arlen),
        .probe62(net_slot_3_axi_arlock),
        .probe63(net_slot_3_axi_arprot),
        .probe64(net_slot_3_axi_arqos),
        .probe65(net_slot_3_axi_arsize),
        .probe66(net_slot_3_axi_aruser),
        .probe67(net_slot_3_axi_aw_cnt),
        .probe68(net_slot_3_axi_awaddr),
        .probe69(net_slot_3_axi_awburst),
        .probe7(net_slot_0_axi_arqos),
        .probe70(net_slot_3_axi_awcache),
        .probe71(net_slot_3_axi_awid),
        .probe72(net_slot_3_axi_awlen),
        .probe73(net_slot_3_axi_awlock),
        .probe74(net_slot_3_axi_awprot),
        .probe75(net_slot_3_axi_awqos),
        .probe76(net_slot_3_axi_awsize),
        .probe77(net_slot_3_axi_awuser),
        .probe78(net_slot_3_axi_b_cnt),
        .probe79(net_slot_3_axi_bid),
        .probe8(net_slot_0_axi_arsize),
        .probe80(net_slot_3_axi_bresp),
        .probe81(net_slot_3_axi_r_cnt),
        .probe82(net_slot_3_axi_rdata),
        .probe83(net_slot_3_axi_rid),
        .probe84(net_slot_3_axi_rresp),
        .probe85(net_slot_3_axi_wdata),
        .probe86(net_slot_3_axi_wstrb),
        .probe87(net_slot_3_axi_aw_ctrl),
        .probe88(net_slot_3_axi_w_ctrl),
        .probe89(net_slot_3_axi_b_ctrl),
        .probe9(net_slot_0_axi_aruser),
        .probe90(net_slot_3_axi_ar_ctrl),
        .probe91(net_slot_3_axi_r_ctrl),
        .probe92(net_slot_4_axi_ar_cnt),
        .probe93(net_slot_4_axi_araddr),
        .probe94(net_slot_4_axi_arprot),
        .probe95(net_slot_4_axi_aw_cnt),
        .probe96(net_slot_4_axi_awaddr),
        .probe97(net_slot_4_axi_awprot),
        .probe98(net_slot_4_axi_b_cnt),
        .probe99(net_slot_4_axi_bresp));
  bd_365d_slot_0_ar_0 slot_0_ar
       (.In0(net_slot_0_axi_arvalid),
        .In1(net_slot_0_axi_arready),
        .dout(net_slot_0_axi_ar_ctrl));
  bd_365d_slot_0_aw_0 slot_0_aw
       (.In0(net_slot_0_axi_awvalid),
        .In1(net_slot_0_axi_awready),
        .dout(net_slot_0_axi_aw_ctrl));
  bd_365d_slot_0_b_0 slot_0_b
       (.In0(net_slot_0_axi_bvalid),
        .In1(net_slot_0_axi_bready),
        .dout(net_slot_0_axi_b_ctrl));
  bd_365d_slot_0_r_0 slot_0_r
       (.In0(net_slot_0_axi_rvalid),
        .In1(net_slot_0_axi_rready),
        .In2(net_slot_0_axi_rlast),
        .dout(net_slot_0_axi_r_ctrl));
  bd_365d_slot_0_w_0 slot_0_w
       (.In0(net_slot_0_axi_wvalid),
        .In1(net_slot_0_axi_wready),
        .In2(net_slot_0_axi_wlast),
        .dout(net_slot_0_axi_w_ctrl));
  bd_365d_slot_10_ar_0 slot_10_ar
       (.In0(net_slot_10_axi_arvalid),
        .In1(net_slot_10_axi_arready),
        .dout(net_slot_10_axi_ar_ctrl));
  bd_365d_slot_10_aw_0 slot_10_aw
       (.In0(net_slot_10_axi_awvalid),
        .In1(net_slot_10_axi_awready),
        .dout(net_slot_10_axi_aw_ctrl));
  bd_365d_slot_10_b_0 slot_10_b
       (.In0(net_slot_10_axi_bvalid),
        .In1(net_slot_10_axi_bready),
        .dout(net_slot_10_axi_b_ctrl));
  bd_365d_slot_10_r_0 slot_10_r
       (.In0(net_slot_10_axi_rvalid),
        .In1(net_slot_10_axi_rready),
        .In2(net_slot_10_axi_rlast),
        .dout(net_slot_10_axi_r_ctrl));
  bd_365d_slot_10_w_0 slot_10_w
       (.In0(net_slot_10_axi_wvalid),
        .In1(net_slot_10_axi_wready),
        .In2(net_slot_10_axi_wlast),
        .dout(net_slot_10_axi_w_ctrl));
  bd_365d_slot_11_ar_0 slot_11_ar
       (.In0(net_slot_11_axi_arvalid),
        .In1(net_slot_11_axi_arready),
        .dout(net_slot_11_axi_ar_ctrl));
  bd_365d_slot_11_aw_0 slot_11_aw
       (.In0(net_slot_11_axi_awvalid),
        .In1(net_slot_11_axi_awready),
        .dout(net_slot_11_axi_aw_ctrl));
  bd_365d_slot_11_b_0 slot_11_b
       (.In0(net_slot_11_axi_bvalid),
        .In1(net_slot_11_axi_bready),
        .dout(net_slot_11_axi_b_ctrl));
  bd_365d_slot_11_r_0 slot_11_r
       (.In0(net_slot_11_axi_rvalid),
        .In1(net_slot_11_axi_rready),
        .In2(net_slot_11_axi_rlast),
        .dout(net_slot_11_axi_r_ctrl));
  bd_365d_slot_11_w_0 slot_11_w
       (.In0(net_slot_11_axi_wvalid),
        .In1(net_slot_11_axi_wready),
        .In2(net_slot_11_axi_wlast),
        .dout(net_slot_11_axi_w_ctrl));
  bd_365d_slot_2_ar_0 slot_2_ar
       (.In0(net_slot_2_axi_arvalid),
        .In1(net_slot_2_axi_arready),
        .dout(net_slot_2_axi_ar_ctrl));
  bd_365d_slot_2_aw_0 slot_2_aw
       (.In0(net_slot_2_axi_awvalid),
        .In1(net_slot_2_axi_awready),
        .dout(net_slot_2_axi_aw_ctrl));
  bd_365d_slot_2_b_0 slot_2_b
       (.In0(net_slot_2_axi_bvalid),
        .In1(net_slot_2_axi_bready),
        .dout(net_slot_2_axi_b_ctrl));
  bd_365d_slot_2_r_0 slot_2_r
       (.In0(net_slot_2_axi_rvalid),
        .In1(net_slot_2_axi_rready),
        .dout(net_slot_2_axi_r_ctrl));
  bd_365d_slot_2_w_0 slot_2_w
       (.In0(net_slot_2_axi_wvalid),
        .In1(net_slot_2_axi_wready),
        .dout(net_slot_2_axi_w_ctrl));
  bd_365d_slot_3_ar_0 slot_3_ar
       (.In0(net_slot_3_axi_arvalid),
        .In1(net_slot_3_axi_arready),
        .dout(net_slot_3_axi_ar_ctrl));
  bd_365d_slot_3_aw_0 slot_3_aw
       (.In0(net_slot_3_axi_awvalid),
        .In1(net_slot_3_axi_awready),
        .dout(net_slot_3_axi_aw_ctrl));
  bd_365d_slot_3_b_0 slot_3_b
       (.In0(net_slot_3_axi_bvalid),
        .In1(net_slot_3_axi_bready),
        .dout(net_slot_3_axi_b_ctrl));
  bd_365d_slot_3_r_0 slot_3_r
       (.In0(net_slot_3_axi_rvalid),
        .In1(net_slot_3_axi_rready),
        .In2(net_slot_3_axi_rlast),
        .dout(net_slot_3_axi_r_ctrl));
  bd_365d_slot_3_w_0 slot_3_w
       (.In0(net_slot_3_axi_wvalid),
        .In1(net_slot_3_axi_wready),
        .In2(net_slot_3_axi_wlast),
        .dout(net_slot_3_axi_w_ctrl));
  bd_365d_slot_4_ar_0 slot_4_ar
       (.In0(net_slot_4_axi_arvalid),
        .In1(net_slot_4_axi_arready),
        .dout(net_slot_4_axi_ar_ctrl));
  bd_365d_slot_4_aw_0 slot_4_aw
       (.In0(net_slot_4_axi_awvalid),
        .In1(net_slot_4_axi_awready),
        .dout(net_slot_4_axi_aw_ctrl));
  bd_365d_slot_4_b_0 slot_4_b
       (.In0(net_slot_4_axi_bvalid),
        .In1(net_slot_4_axi_bready),
        .dout(net_slot_4_axi_b_ctrl));
  bd_365d_slot_4_r_0 slot_4_r
       (.In0(net_slot_4_axi_rvalid),
        .In1(net_slot_4_axi_rready),
        .dout(net_slot_4_axi_r_ctrl));
  bd_365d_slot_4_w_0 slot_4_w
       (.In0(net_slot_4_axi_wvalid),
        .In1(net_slot_4_axi_wready),
        .dout(net_slot_4_axi_w_ctrl));
  bd_365d_slot_6_ar_0 slot_6_ar
       (.In0(net_slot_6_axi_arvalid),
        .In1(net_slot_6_axi_arready),
        .dout(net_slot_6_axi_ar_ctrl));
  bd_365d_slot_6_aw_0 slot_6_aw
       (.In0(net_slot_6_axi_awvalid),
        .In1(net_slot_6_axi_awready),
        .dout(net_slot_6_axi_aw_ctrl));
  bd_365d_slot_6_b_0 slot_6_b
       (.In0(net_slot_6_axi_bvalid),
        .In1(net_slot_6_axi_bready),
        .dout(net_slot_6_axi_b_ctrl));
  bd_365d_slot_6_r_0 slot_6_r
       (.In0(net_slot_6_axi_rvalid),
        .In1(net_slot_6_axi_rready),
        .In2(net_slot_6_axi_rlast),
        .dout(net_slot_6_axi_r_ctrl));
  bd_365d_slot_6_w_0 slot_6_w
       (.In0(net_slot_6_axi_wvalid),
        .In1(net_slot_6_axi_wready),
        .In2(net_slot_6_axi_wlast),
        .dout(net_slot_6_axi_w_ctrl));
  bd_365d_slot_8_ar_0 slot_8_ar
       (.In0(net_slot_8_axi_arvalid),
        .In1(net_slot_8_axi_arready),
        .dout(net_slot_8_axi_ar_ctrl));
  bd_365d_slot_8_aw_0 slot_8_aw
       (.In0(net_slot_8_axi_awvalid),
        .In1(net_slot_8_axi_awready),
        .dout(net_slot_8_axi_aw_ctrl));
  bd_365d_slot_8_b_0 slot_8_b
       (.In0(net_slot_8_axi_bvalid),
        .In1(net_slot_8_axi_bready),
        .dout(net_slot_8_axi_b_ctrl));
  bd_365d_slot_8_r_0 slot_8_r
       (.In0(net_slot_8_axi_rvalid),
        .In1(net_slot_8_axi_rready),
        .dout(net_slot_8_axi_r_ctrl));
  bd_365d_slot_8_w_0 slot_8_w
       (.In0(net_slot_8_axi_wvalid),
        .In1(net_slot_8_axi_wready),
        .dout(net_slot_8_axi_w_ctrl));
  bd_365d_slot_9_ar_0 slot_9_ar
       (.In0(net_slot_9_axi_arvalid),
        .In1(net_slot_9_axi_arready),
        .dout(net_slot_9_axi_ar_ctrl));
  bd_365d_slot_9_aw_0 slot_9_aw
       (.In0(net_slot_9_axi_awvalid),
        .In1(net_slot_9_axi_awready),
        .dout(net_slot_9_axi_aw_ctrl));
  bd_365d_slot_9_b_0 slot_9_b
       (.In0(net_slot_9_axi_bvalid),
        .In1(net_slot_9_axi_bready),
        .dout(net_slot_9_axi_b_ctrl));
  bd_365d_slot_9_r_0 slot_9_r
       (.In0(net_slot_9_axi_rvalid),
        .In1(net_slot_9_axi_rready),
        .In2(net_slot_9_axi_rlast),
        .dout(net_slot_9_axi_r_ctrl));
  bd_365d_slot_9_w_0 slot_9_w
       (.In0(net_slot_9_axi_wvalid),
        .In1(net_slot_9_axi_wready),
        .In2(net_slot_9_axi_wlast),
        .dout(net_slot_9_axi_w_ctrl));
endmodule
