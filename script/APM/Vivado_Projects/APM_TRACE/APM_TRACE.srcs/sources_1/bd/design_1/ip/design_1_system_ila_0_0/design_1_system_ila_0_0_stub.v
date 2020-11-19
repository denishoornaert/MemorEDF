// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sat May  9 11:10:16 2020
// Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/renato/MemorEDF_old/Vivado_Projects/APM_TRACE/APM_TRACE.srcs/sources_1/bd/design_1/ip/design_1_system_ila_0_0/design_1_system_ila_0_0_stub.v
// Design      : design_1_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_f60c,Vivado 2017.4" *)
module design_1_system_ila_0_0(clk, SLOT_0_AXI_awid, SLOT_0_AXI_awaddr, 
  SLOT_0_AXI_awlen, SLOT_0_AXI_awsize, SLOT_0_AXI_awburst, SLOT_0_AXI_awlock, 
  SLOT_0_AXI_awcache, SLOT_0_AXI_awprot, SLOT_0_AXI_awqos, SLOT_0_AXI_awuser, 
  SLOT_0_AXI_awvalid, SLOT_0_AXI_awready, SLOT_0_AXI_wdata, SLOT_0_AXI_wstrb, 
  SLOT_0_AXI_wlast, SLOT_0_AXI_wvalid, SLOT_0_AXI_wready, SLOT_0_AXI_bid, SLOT_0_AXI_bresp, 
  SLOT_0_AXI_bvalid, SLOT_0_AXI_bready, SLOT_0_AXI_arid, SLOT_0_AXI_araddr, 
  SLOT_0_AXI_arlen, SLOT_0_AXI_arsize, SLOT_0_AXI_arburst, SLOT_0_AXI_arlock, 
  SLOT_0_AXI_arcache, SLOT_0_AXI_arprot, SLOT_0_AXI_arqos, SLOT_0_AXI_aruser, 
  SLOT_0_AXI_arvalid, SLOT_0_AXI_arready, SLOT_0_AXI_rid, SLOT_0_AXI_rdata, 
  SLOT_0_AXI_rresp, SLOT_0_AXI_rlast, SLOT_0_AXI_rvalid, SLOT_0_AXI_rready, 
  SLOT_1_AXI_awaddr, SLOT_1_AXI_awprot, SLOT_1_AXI_awvalid, SLOT_1_AXI_awready, 
  SLOT_1_AXI_wdata, SLOT_1_AXI_wstrb, SLOT_1_AXI_wvalid, SLOT_1_AXI_wready, 
  SLOT_1_AXI_bresp, SLOT_1_AXI_bvalid, SLOT_1_AXI_bready, SLOT_1_AXI_araddr, 
  SLOT_1_AXI_arprot, SLOT_1_AXI_arvalid, SLOT_1_AXI_arready, SLOT_1_AXI_rdata, 
  SLOT_1_AXI_rresp, SLOT_1_AXI_rvalid, SLOT_1_AXI_rready, SLOT_2_AXIS_tid, 
  SLOT_2_AXIS_tdata, SLOT_2_AXIS_tstrb, SLOT_2_AXIS_tlast, SLOT_2_AXIS_tvalid, 
  SLOT_2_AXIS_tready, SLOT_3_AXIS_tid, SLOT_3_AXIS_tdata, SLOT_3_AXIS_tstrb, 
  SLOT_3_AXIS_tlast, SLOT_3_AXIS_tvalid, SLOT_3_AXIS_tready, SLOT_4_AXI_awaddr, 
  SLOT_4_AXI_awlen, SLOT_4_AXI_awsize, SLOT_4_AXI_awvalid, SLOT_4_AXI_awready, 
  SLOT_4_AXI_wdata, SLOT_4_AXI_wstrb, SLOT_4_AXI_wlast, SLOT_4_AXI_wvalid, 
  SLOT_4_AXI_wready, SLOT_4_AXI_bresp, SLOT_4_AXI_bvalid, SLOT_4_AXI_bready, 
  SLOT_4_AXI_araddr, SLOT_4_AXI_arlen, SLOT_4_AXI_arsize, SLOT_4_AXI_arvalid, 
  SLOT_4_AXI_arready, SLOT_4_AXI_rdata, SLOT_4_AXI_rlast, SLOT_4_AXI_rvalid, 
  SLOT_4_AXI_rready, SLOT_5_AXI_awaddr, SLOT_5_AXI_awlen, SLOT_5_AXI_awsize, 
  SLOT_5_AXI_awburst, SLOT_5_AXI_awlock, SLOT_5_AXI_awcache, SLOT_5_AXI_awprot, 
  SLOT_5_AXI_awvalid, SLOT_5_AXI_awready, SLOT_5_AXI_wdata, SLOT_5_AXI_wstrb, 
  SLOT_5_AXI_wlast, SLOT_5_AXI_wvalid, SLOT_5_AXI_wready, SLOT_5_AXI_bresp, 
  SLOT_5_AXI_bvalid, SLOT_5_AXI_bready, SLOT_5_AXI_araddr, SLOT_5_AXI_arlen, 
  SLOT_5_AXI_arsize, SLOT_5_AXI_arburst, SLOT_5_AXI_arlock, SLOT_5_AXI_arcache, 
  SLOT_5_AXI_arprot, SLOT_5_AXI_arvalid, SLOT_5_AXI_arready, SLOT_5_AXI_rdata, 
  SLOT_5_AXI_rresp, SLOT_5_AXI_rlast, SLOT_5_AXI_rvalid, SLOT_5_AXI_rready, 
  SLOT_6_AXI_awaddr, SLOT_6_AXI_awprot, SLOT_6_AXI_awvalid, SLOT_6_AXI_awready, 
  SLOT_6_AXI_wdata, SLOT_6_AXI_wstrb, SLOT_6_AXI_wvalid, SLOT_6_AXI_wready, 
  SLOT_6_AXI_bresp, SLOT_6_AXI_bvalid, SLOT_6_AXI_bready, SLOT_6_AXI_araddr, 
  SLOT_6_AXI_arprot, SLOT_6_AXI_arvalid, SLOT_6_AXI_arready, SLOT_6_AXI_rdata, 
  SLOT_6_AXI_rresp, SLOT_6_AXI_rvalid, SLOT_6_AXI_rready, SLOT_7_AXI_awaddr, 
  SLOT_7_AXI_awlen, SLOT_7_AXI_awsize, SLOT_7_AXI_awvalid, SLOT_7_AXI_awready, 
  SLOT_7_AXI_wdata, SLOT_7_AXI_wstrb, SLOT_7_AXI_wlast, SLOT_7_AXI_wvalid, 
  SLOT_7_AXI_wready, SLOT_7_AXI_bresp, SLOT_7_AXI_bvalid, SLOT_7_AXI_bready, 
  SLOT_7_AXI_araddr, SLOT_7_AXI_arlen, SLOT_7_AXI_arsize, SLOT_7_AXI_arvalid, 
  SLOT_7_AXI_arready, SLOT_7_AXI_rdata, SLOT_7_AXI_rlast, SLOT_7_AXI_rvalid, 
  SLOT_7_AXI_rready, resetn, SLOT_5_AXI_arid, SLOT_5_AXI_arqos, SLOT_5_AXI_aruser, 
  SLOT_5_AXI_awid, SLOT_5_AXI_awqos, SLOT_5_AXI_awuser, SLOT_5_AXI_bid, SLOT_5_AXI_rid, 
  SLOT_3_AXIS_tdest, SLOT_3_AXIS_tkeep, SLOT_3_AXIS_tuser, SLOT_4_AXI_arcache, 
  SLOT_4_AXI_arprot, SLOT_4_AXI_awcache, SLOT_4_AXI_awprot, SLOT_4_AXI_rresp, 
  SLOT_7_AXI_arprot, SLOT_7_AXI_awprot)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_AXI_awid[15:0],SLOT_0_AXI_awaddr[39:0],SLOT_0_AXI_awlen[7:0],SLOT_0_AXI_awsize[2:0],SLOT_0_AXI_awburst[1:0],SLOT_0_AXI_awlock[0:0],SLOT_0_AXI_awcache[3:0],SLOT_0_AXI_awprot[2:0],SLOT_0_AXI_awqos[3:0],SLOT_0_AXI_awuser[15:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wdata[127:0],SLOT_0_AXI_wstrb[15:0],SLOT_0_AXI_wlast,SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bid[15:0],SLOT_0_AXI_bresp[1:0],SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_arid[15:0],SLOT_0_AXI_araddr[39:0],SLOT_0_AXI_arlen[7:0],SLOT_0_AXI_arsize[2:0],SLOT_0_AXI_arburst[1:0],SLOT_0_AXI_arlock[0:0],SLOT_0_AXI_arcache[3:0],SLOT_0_AXI_arprot[2:0],SLOT_0_AXI_arqos[3:0],SLOT_0_AXI_aruser[15:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rid[15:0],SLOT_0_AXI_rdata[127:0],SLOT_0_AXI_rresp[1:0],SLOT_0_AXI_rlast,SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,SLOT_1_AXI_awaddr[15:0],SLOT_1_AXI_awprot[2:0],SLOT_1_AXI_awvalid,SLOT_1_AXI_awready,SLOT_1_AXI_wdata[31:0],SLOT_1_AXI_wstrb[3:0],SLOT_1_AXI_wvalid,SLOT_1_AXI_wready,SLOT_1_AXI_bresp[1:0],SLOT_1_AXI_bvalid,SLOT_1_AXI_bready,SLOT_1_AXI_araddr[15:0],SLOT_1_AXI_arprot[2:0],SLOT_1_AXI_arvalid,SLOT_1_AXI_arready,SLOT_1_AXI_rdata[31:0],SLOT_1_AXI_rresp[1:0],SLOT_1_AXI_rvalid,SLOT_1_AXI_rready,SLOT_2_AXIS_tid[0:0],SLOT_2_AXIS_tdata[55:0],SLOT_2_AXIS_tstrb[6:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,SLOT_3_AXIS_tid[7:0],SLOT_3_AXIS_tdata[31:0],SLOT_3_AXIS_tstrb[3:0],SLOT_3_AXIS_tlast,SLOT_3_AXIS_tvalid,SLOT_3_AXIS_tready,SLOT_4_AXI_awaddr[31:0],SLOT_4_AXI_awlen[7:0],SLOT_4_AXI_awsize[2:0],SLOT_4_AXI_awvalid,SLOT_4_AXI_awready,SLOT_4_AXI_wdata[31:0],SLOT_4_AXI_wstrb[3:0],SLOT_4_AXI_wlast,SLOT_4_AXI_wvalid,SLOT_4_AXI_wready,SLOT_4_AXI_bresp[1:0],SLOT_4_AXI_bvalid,SLOT_4_AXI_bready,SLOT_4_AXI_araddr[31:0],SLOT_4_AXI_arlen[7:0],SLOT_4_AXI_arsize[2:0],SLOT_4_AXI_arvalid,SLOT_4_AXI_arready,SLOT_4_AXI_rdata[31:0],SLOT_4_AXI_rlast,SLOT_4_AXI_rvalid,SLOT_4_AXI_rready,SLOT_5_AXI_awaddr[39:0],SLOT_5_AXI_awlen[7:0],SLOT_5_AXI_awsize[2:0],SLOT_5_AXI_awburst[1:0],SLOT_5_AXI_awlock[0:0],SLOT_5_AXI_awcache[3:0],SLOT_5_AXI_awprot[2:0],SLOT_5_AXI_awvalid,SLOT_5_AXI_awready,SLOT_5_AXI_wdata[127:0],SLOT_5_AXI_wstrb[15:0],SLOT_5_AXI_wlast,SLOT_5_AXI_wvalid,SLOT_5_AXI_wready,SLOT_5_AXI_bresp[1:0],SLOT_5_AXI_bvalid,SLOT_5_AXI_bready,SLOT_5_AXI_araddr[39:0],SLOT_5_AXI_arlen[7:0],SLOT_5_AXI_arsize[2:0],SLOT_5_AXI_arburst[1:0],SLOT_5_AXI_arlock[0:0],SLOT_5_AXI_arcache[3:0],SLOT_5_AXI_arprot[2:0],SLOT_5_AXI_arvalid,SLOT_5_AXI_arready,SLOT_5_AXI_rdata[127:0],SLOT_5_AXI_rresp[1:0],SLOT_5_AXI_rlast,SLOT_5_AXI_rvalid,SLOT_5_AXI_rready,SLOT_6_AXI_awaddr[9:0],SLOT_6_AXI_awprot[2:0],SLOT_6_AXI_awvalid,SLOT_6_AXI_awready,SLOT_6_AXI_wdata[31:0],SLOT_6_AXI_wstrb[3:0],SLOT_6_AXI_wvalid,SLOT_6_AXI_wready,SLOT_6_AXI_bresp[1:0],SLOT_6_AXI_bvalid,SLOT_6_AXI_bready,SLOT_6_AXI_araddr[9:0],SLOT_6_AXI_arprot[2:0],SLOT_6_AXI_arvalid,SLOT_6_AXI_arready,SLOT_6_AXI_rdata[31:0],SLOT_6_AXI_rresp[1:0],SLOT_6_AXI_rvalid,SLOT_6_AXI_rready,SLOT_7_AXI_awaddr[48:0],SLOT_7_AXI_awlen[7:0],SLOT_7_AXI_awsize[2:0],SLOT_7_AXI_awvalid,SLOT_7_AXI_awready,SLOT_7_AXI_wdata[31:0],SLOT_7_AXI_wstrb[3:0],SLOT_7_AXI_wlast,SLOT_7_AXI_wvalid,SLOT_7_AXI_wready,SLOT_7_AXI_bresp[1:0],SLOT_7_AXI_bvalid,SLOT_7_AXI_bready,SLOT_7_AXI_araddr[48:0],SLOT_7_AXI_arlen[7:0],SLOT_7_AXI_arsize[2:0],SLOT_7_AXI_arvalid,SLOT_7_AXI_arready,SLOT_7_AXI_rdata[31:0],SLOT_7_AXI_rlast,SLOT_7_AXI_rvalid,SLOT_7_AXI_rready,resetn,SLOT_5_AXI_arid[15:0],SLOT_5_AXI_arqos[3:0],SLOT_5_AXI_aruser[15:0],SLOT_5_AXI_awid[15:0],SLOT_5_AXI_awqos[3:0],SLOT_5_AXI_awuser[15:0],SLOT_5_AXI_bid[15:0],SLOT_5_AXI_rid[15:0],SLOT_3_AXIS_tdest[7:0],SLOT_3_AXIS_tkeep[3:0],SLOT_3_AXIS_tuser[7:0],SLOT_4_AXI_arcache[3:0],SLOT_4_AXI_arprot[2:0],SLOT_4_AXI_awcache[3:0],SLOT_4_AXI_awprot[2:0],SLOT_4_AXI_rresp[1:0],SLOT_7_AXI_arprot[2:0],SLOT_7_AXI_awprot[2:0]" */;
  input clk;
  input [15:0]SLOT_0_AXI_awid;
  input [39:0]SLOT_0_AXI_awaddr;
  input [7:0]SLOT_0_AXI_awlen;
  input [2:0]SLOT_0_AXI_awsize;
  input [1:0]SLOT_0_AXI_awburst;
  input [0:0]SLOT_0_AXI_awlock;
  input [3:0]SLOT_0_AXI_awcache;
  input [2:0]SLOT_0_AXI_awprot;
  input [3:0]SLOT_0_AXI_awqos;
  input [15:0]SLOT_0_AXI_awuser;
  input SLOT_0_AXI_awvalid;
  input SLOT_0_AXI_awready;
  input [127:0]SLOT_0_AXI_wdata;
  input [15:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wvalid;
  input SLOT_0_AXI_wready;
  input [15:0]SLOT_0_AXI_bid;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input SLOT_0_AXI_bready;
  input [15:0]SLOT_0_AXI_arid;
  input [39:0]SLOT_0_AXI_araddr;
  input [7:0]SLOT_0_AXI_arlen;
  input [2:0]SLOT_0_AXI_arsize;
  input [1:0]SLOT_0_AXI_arburst;
  input [0:0]SLOT_0_AXI_arlock;
  input [3:0]SLOT_0_AXI_arcache;
  input [2:0]SLOT_0_AXI_arprot;
  input [3:0]SLOT_0_AXI_arqos;
  input [15:0]SLOT_0_AXI_aruser;
  input SLOT_0_AXI_arvalid;
  input SLOT_0_AXI_arready;
  input [15:0]SLOT_0_AXI_rid;
  input [127:0]SLOT_0_AXI_rdata;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rvalid;
  input SLOT_0_AXI_rready;
  input [15:0]SLOT_1_AXI_awaddr;
  input [2:0]SLOT_1_AXI_awprot;
  input SLOT_1_AXI_awvalid;
  input SLOT_1_AXI_awready;
  input [31:0]SLOT_1_AXI_wdata;
  input [3:0]SLOT_1_AXI_wstrb;
  input SLOT_1_AXI_wvalid;
  input SLOT_1_AXI_wready;
  input [1:0]SLOT_1_AXI_bresp;
  input SLOT_1_AXI_bvalid;
  input SLOT_1_AXI_bready;
  input [15:0]SLOT_1_AXI_araddr;
  input [2:0]SLOT_1_AXI_arprot;
  input SLOT_1_AXI_arvalid;
  input SLOT_1_AXI_arready;
  input [31:0]SLOT_1_AXI_rdata;
  input [1:0]SLOT_1_AXI_rresp;
  input SLOT_1_AXI_rvalid;
  input SLOT_1_AXI_rready;
  input [0:0]SLOT_2_AXIS_tid;
  input [55:0]SLOT_2_AXIS_tdata;
  input [6:0]SLOT_2_AXIS_tstrb;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tvalid;
  input SLOT_2_AXIS_tready;
  input [7:0]SLOT_3_AXIS_tid;
  input [31:0]SLOT_3_AXIS_tdata;
  input [3:0]SLOT_3_AXIS_tstrb;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tvalid;
  input SLOT_3_AXIS_tready;
  input [31:0]SLOT_4_AXI_awaddr;
  input [7:0]SLOT_4_AXI_awlen;
  input [2:0]SLOT_4_AXI_awsize;
  input SLOT_4_AXI_awvalid;
  input SLOT_4_AXI_awready;
  input [31:0]SLOT_4_AXI_wdata;
  input [3:0]SLOT_4_AXI_wstrb;
  input SLOT_4_AXI_wlast;
  input SLOT_4_AXI_wvalid;
  input SLOT_4_AXI_wready;
  input [1:0]SLOT_4_AXI_bresp;
  input SLOT_4_AXI_bvalid;
  input SLOT_4_AXI_bready;
  input [31:0]SLOT_4_AXI_araddr;
  input [7:0]SLOT_4_AXI_arlen;
  input [2:0]SLOT_4_AXI_arsize;
  input SLOT_4_AXI_arvalid;
  input SLOT_4_AXI_arready;
  input [31:0]SLOT_4_AXI_rdata;
  input SLOT_4_AXI_rlast;
  input SLOT_4_AXI_rvalid;
  input SLOT_4_AXI_rready;
  input [39:0]SLOT_5_AXI_awaddr;
  input [7:0]SLOT_5_AXI_awlen;
  input [2:0]SLOT_5_AXI_awsize;
  input [1:0]SLOT_5_AXI_awburst;
  input [0:0]SLOT_5_AXI_awlock;
  input [3:0]SLOT_5_AXI_awcache;
  input [2:0]SLOT_5_AXI_awprot;
  input SLOT_5_AXI_awvalid;
  input SLOT_5_AXI_awready;
  input [127:0]SLOT_5_AXI_wdata;
  input [15:0]SLOT_5_AXI_wstrb;
  input SLOT_5_AXI_wlast;
  input SLOT_5_AXI_wvalid;
  input SLOT_5_AXI_wready;
  input [1:0]SLOT_5_AXI_bresp;
  input SLOT_5_AXI_bvalid;
  input SLOT_5_AXI_bready;
  input [39:0]SLOT_5_AXI_araddr;
  input [7:0]SLOT_5_AXI_arlen;
  input [2:0]SLOT_5_AXI_arsize;
  input [1:0]SLOT_5_AXI_arburst;
  input [0:0]SLOT_5_AXI_arlock;
  input [3:0]SLOT_5_AXI_arcache;
  input [2:0]SLOT_5_AXI_arprot;
  input SLOT_5_AXI_arvalid;
  input SLOT_5_AXI_arready;
  input [127:0]SLOT_5_AXI_rdata;
  input [1:0]SLOT_5_AXI_rresp;
  input SLOT_5_AXI_rlast;
  input SLOT_5_AXI_rvalid;
  input SLOT_5_AXI_rready;
  input [9:0]SLOT_6_AXI_awaddr;
  input [2:0]SLOT_6_AXI_awprot;
  input SLOT_6_AXI_awvalid;
  input SLOT_6_AXI_awready;
  input [31:0]SLOT_6_AXI_wdata;
  input [3:0]SLOT_6_AXI_wstrb;
  input SLOT_6_AXI_wvalid;
  input SLOT_6_AXI_wready;
  input [1:0]SLOT_6_AXI_bresp;
  input SLOT_6_AXI_bvalid;
  input SLOT_6_AXI_bready;
  input [9:0]SLOT_6_AXI_araddr;
  input [2:0]SLOT_6_AXI_arprot;
  input SLOT_6_AXI_arvalid;
  input SLOT_6_AXI_arready;
  input [31:0]SLOT_6_AXI_rdata;
  input [1:0]SLOT_6_AXI_rresp;
  input SLOT_6_AXI_rvalid;
  input SLOT_6_AXI_rready;
  input [48:0]SLOT_7_AXI_awaddr;
  input [7:0]SLOT_7_AXI_awlen;
  input [2:0]SLOT_7_AXI_awsize;
  input SLOT_7_AXI_awvalid;
  input SLOT_7_AXI_awready;
  input [31:0]SLOT_7_AXI_wdata;
  input [3:0]SLOT_7_AXI_wstrb;
  input SLOT_7_AXI_wlast;
  input SLOT_7_AXI_wvalid;
  input SLOT_7_AXI_wready;
  input [1:0]SLOT_7_AXI_bresp;
  input SLOT_7_AXI_bvalid;
  input SLOT_7_AXI_bready;
  input [48:0]SLOT_7_AXI_araddr;
  input [7:0]SLOT_7_AXI_arlen;
  input [2:0]SLOT_7_AXI_arsize;
  input SLOT_7_AXI_arvalid;
  input SLOT_7_AXI_arready;
  input [31:0]SLOT_7_AXI_rdata;
  input SLOT_7_AXI_rlast;
  input SLOT_7_AXI_rvalid;
  input SLOT_7_AXI_rready;
  input resetn;
  input [15:0]SLOT_5_AXI_arid;
  input [3:0]SLOT_5_AXI_arqos;
  input [15:0]SLOT_5_AXI_aruser;
  input [15:0]SLOT_5_AXI_awid;
  input [3:0]SLOT_5_AXI_awqos;
  input [15:0]SLOT_5_AXI_awuser;
  input [15:0]SLOT_5_AXI_bid;
  input [15:0]SLOT_5_AXI_rid;
  input [7:0]SLOT_3_AXIS_tdest;
  input [3:0]SLOT_3_AXIS_tkeep;
  input [7:0]SLOT_3_AXIS_tuser;
  input [3:0]SLOT_4_AXI_arcache;
  input [2:0]SLOT_4_AXI_arprot;
  input [3:0]SLOT_4_AXI_awcache;
  input [2:0]SLOT_4_AXI_awprot;
  input [1:0]SLOT_4_AXI_rresp;
  input [2:0]SLOT_7_AXI_arprot;
  input [2:0]SLOT_7_AXI_awprot;
endmodule
