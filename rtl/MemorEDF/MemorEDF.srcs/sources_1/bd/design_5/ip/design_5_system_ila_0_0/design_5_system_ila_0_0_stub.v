// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Feb 26 10:29:56 2021
// Host        : buflightdev running 64-bit Ubuntu 16.04.7 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/renato/MemorEDF/MemorEDF/rtl/MemorEDF/MemorEDF.srcs/sources_1/bd/design_5/ip/design_5_system_ila_0_0/design_5_system_ila_0_0_stub.v
// Design      : design_5_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_350e,Vivado 2017.4" *)
module design_5_system_ila_0_0(clk, SLOT_0_AXI_awaddr, SLOT_0_AXI_awlen, 
  SLOT_0_AXI_awsize, SLOT_0_AXI_awburst, SLOT_0_AXI_awlock, SLOT_0_AXI_awcache, 
  SLOT_0_AXI_awprot, SLOT_0_AXI_awqos, SLOT_0_AXI_awuser, SLOT_0_AXI_awvalid, 
  SLOT_0_AXI_awready, SLOT_0_AXI_wdata, SLOT_0_AXI_wstrb, SLOT_0_AXI_wlast, 
  SLOT_0_AXI_wvalid, SLOT_0_AXI_wready, SLOT_0_AXI_bresp, SLOT_0_AXI_bvalid, 
  SLOT_0_AXI_bready, SLOT_0_AXI_araddr, SLOT_0_AXI_arlen, SLOT_0_AXI_arsize, 
  SLOT_0_AXI_arburst, SLOT_0_AXI_arlock, SLOT_0_AXI_arcache, SLOT_0_AXI_arprot, 
  SLOT_0_AXI_arqos, SLOT_0_AXI_aruser, SLOT_0_AXI_arvalid, SLOT_0_AXI_arready, 
  SLOT_0_AXI_rdata, SLOT_0_AXI_rresp, SLOT_0_AXI_rlast, SLOT_0_AXI_rvalid, 
  SLOT_0_AXI_rready, SLOT_1_AXI_awid, SLOT_1_AXI_awaddr, SLOT_1_AXI_awlen, 
  SLOT_1_AXI_awsize, SLOT_1_AXI_awburst, SLOT_1_AXI_awlock, SLOT_1_AXI_awcache, 
  SLOT_1_AXI_awprot, SLOT_1_AXI_awqos, SLOT_1_AXI_awuser, SLOT_1_AXI_awvalid, 
  SLOT_1_AXI_awready, SLOT_1_AXI_wdata, SLOT_1_AXI_wstrb, SLOT_1_AXI_wlast, 
  SLOT_1_AXI_wvalid, SLOT_1_AXI_wready, SLOT_1_AXI_bid, SLOT_1_AXI_bresp, 
  SLOT_1_AXI_bvalid, SLOT_1_AXI_bready, SLOT_1_AXI_arid, SLOT_1_AXI_araddr, 
  SLOT_1_AXI_arlen, SLOT_1_AXI_arsize, SLOT_1_AXI_arburst, SLOT_1_AXI_arlock, 
  SLOT_1_AXI_arcache, SLOT_1_AXI_arprot, SLOT_1_AXI_arqos, SLOT_1_AXI_aruser, 
  SLOT_1_AXI_arvalid, SLOT_1_AXI_arready, SLOT_1_AXI_rid, SLOT_1_AXI_rdata, 
  SLOT_1_AXI_rresp, SLOT_1_AXI_rlast, SLOT_1_AXI_rvalid, SLOT_1_AXI_rready, 
  SLOT_2_AXI_awid, SLOT_2_AXI_awaddr, SLOT_2_AXI_awlen, SLOT_2_AXI_awsize, 
  SLOT_2_AXI_awburst, SLOT_2_AXI_awlock, SLOT_2_AXI_awcache, SLOT_2_AXI_awprot, 
  SLOT_2_AXI_awqos, SLOT_2_AXI_awuser, SLOT_2_AXI_awvalid, SLOT_2_AXI_awready, 
  SLOT_2_AXI_wdata, SLOT_2_AXI_wstrb, SLOT_2_AXI_wlast, SLOT_2_AXI_wvalid, 
  SLOT_2_AXI_wready, SLOT_2_AXI_bid, SLOT_2_AXI_bresp, SLOT_2_AXI_bvalid, 
  SLOT_2_AXI_bready, SLOT_2_AXI_arid, SLOT_2_AXI_araddr, SLOT_2_AXI_arlen, 
  SLOT_2_AXI_arsize, SLOT_2_AXI_arburst, SLOT_2_AXI_arlock, SLOT_2_AXI_arcache, 
  SLOT_2_AXI_arprot, SLOT_2_AXI_arqos, SLOT_2_AXI_aruser, SLOT_2_AXI_arvalid, 
  SLOT_2_AXI_arready, SLOT_2_AXI_rid, SLOT_2_AXI_rdata, SLOT_2_AXI_rresp, SLOT_2_AXI_rlast, 
  SLOT_2_AXI_rvalid, SLOT_2_AXI_rready, SLOT_3_AXI_awid, SLOT_3_AXI_awaddr, 
  SLOT_3_AXI_awlen, SLOT_3_AXI_awsize, SLOT_3_AXI_awburst, SLOT_3_AXI_awlock, 
  SLOT_3_AXI_awcache, SLOT_3_AXI_awprot, SLOT_3_AXI_awqos, SLOT_3_AXI_awuser, 
  SLOT_3_AXI_awvalid, SLOT_3_AXI_awready, SLOT_3_AXI_wdata, SLOT_3_AXI_wstrb, 
  SLOT_3_AXI_wlast, SLOT_3_AXI_wvalid, SLOT_3_AXI_wready, SLOT_3_AXI_bid, SLOT_3_AXI_bresp, 
  SLOT_3_AXI_bvalid, SLOT_3_AXI_bready, SLOT_3_AXI_arid, SLOT_3_AXI_araddr, 
  SLOT_3_AXI_arlen, SLOT_3_AXI_arsize, SLOT_3_AXI_arburst, SLOT_3_AXI_arlock, 
  SLOT_3_AXI_arcache, SLOT_3_AXI_arprot, SLOT_3_AXI_arqos, SLOT_3_AXI_aruser, 
  SLOT_3_AXI_arvalid, SLOT_3_AXI_arready, SLOT_3_AXI_rid, SLOT_3_AXI_rdata, 
  SLOT_3_AXI_rresp, SLOT_3_AXI_rlast, SLOT_3_AXI_rvalid, SLOT_3_AXI_rready, 
  SLOT_4_AXI_awid, SLOT_4_AXI_awaddr, SLOT_4_AXI_awlen, SLOT_4_AXI_awsize, 
  SLOT_4_AXI_awburst, SLOT_4_AXI_awlock, SLOT_4_AXI_awcache, SLOT_4_AXI_awprot, 
  SLOT_4_AXI_awqos, SLOT_4_AXI_awuser, SLOT_4_AXI_awvalid, SLOT_4_AXI_awready, 
  SLOT_4_AXI_wdata, SLOT_4_AXI_wstrb, SLOT_4_AXI_wlast, SLOT_4_AXI_wvalid, 
  SLOT_4_AXI_wready, SLOT_4_AXI_bid, SLOT_4_AXI_bresp, SLOT_4_AXI_bvalid, 
  SLOT_4_AXI_bready, SLOT_4_AXI_arid, SLOT_4_AXI_araddr, SLOT_4_AXI_arlen, 
  SLOT_4_AXI_arsize, SLOT_4_AXI_arburst, SLOT_4_AXI_arlock, SLOT_4_AXI_arcache, 
  SLOT_4_AXI_arprot, SLOT_4_AXI_arqos, SLOT_4_AXI_aruser, SLOT_4_AXI_arvalid, 
  SLOT_4_AXI_arready, SLOT_4_AXI_rid, SLOT_4_AXI_rdata, SLOT_4_AXI_rresp, SLOT_4_AXI_rlast, 
  SLOT_4_AXI_rvalid, SLOT_4_AXI_rready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_AXI_awaddr[48:0],SLOT_0_AXI_awlen[7:0],SLOT_0_AXI_awsize[2:0],SLOT_0_AXI_awburst[1:0],SLOT_0_AXI_awlock[0:0],SLOT_0_AXI_awcache[3:0],SLOT_0_AXI_awprot[2:0],SLOT_0_AXI_awqos[3:0],SLOT_0_AXI_awuser[0:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wdata[127:0],SLOT_0_AXI_wstrb[15:0],SLOT_0_AXI_wlast,SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bresp[1:0],SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_araddr[48:0],SLOT_0_AXI_arlen[7:0],SLOT_0_AXI_arsize[2:0],SLOT_0_AXI_arburst[1:0],SLOT_0_AXI_arlock[0:0],SLOT_0_AXI_arcache[3:0],SLOT_0_AXI_arprot[2:0],SLOT_0_AXI_arqos[3:0],SLOT_0_AXI_aruser[0:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rdata[127:0],SLOT_0_AXI_rresp[1:0],SLOT_0_AXI_rlast,SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,SLOT_1_AXI_awid[15:0],SLOT_1_AXI_awaddr[39:0],SLOT_1_AXI_awlen[7:0],SLOT_1_AXI_awsize[2:0],SLOT_1_AXI_awburst[1:0],SLOT_1_AXI_awlock[0:0],SLOT_1_AXI_awcache[3:0],SLOT_1_AXI_awprot[2:0],SLOT_1_AXI_awqos[3:0],SLOT_1_AXI_awuser[15:0],SLOT_1_AXI_awvalid,SLOT_1_AXI_awready,SLOT_1_AXI_wdata[127:0],SLOT_1_AXI_wstrb[15:0],SLOT_1_AXI_wlast,SLOT_1_AXI_wvalid,SLOT_1_AXI_wready,SLOT_1_AXI_bid[15:0],SLOT_1_AXI_bresp[1:0],SLOT_1_AXI_bvalid,SLOT_1_AXI_bready,SLOT_1_AXI_arid[15:0],SLOT_1_AXI_araddr[39:0],SLOT_1_AXI_arlen[7:0],SLOT_1_AXI_arsize[2:0],SLOT_1_AXI_arburst[1:0],SLOT_1_AXI_arlock[0:0],SLOT_1_AXI_arcache[3:0],SLOT_1_AXI_arprot[2:0],SLOT_1_AXI_arqos[3:0],SLOT_1_AXI_aruser[15:0],SLOT_1_AXI_arvalid,SLOT_1_AXI_arready,SLOT_1_AXI_rid[15:0],SLOT_1_AXI_rdata[127:0],SLOT_1_AXI_rresp[1:0],SLOT_1_AXI_rlast,SLOT_1_AXI_rvalid,SLOT_1_AXI_rready,SLOT_2_AXI_awid[15:0],SLOT_2_AXI_awaddr[39:0],SLOT_2_AXI_awlen[7:0],SLOT_2_AXI_awsize[2:0],SLOT_2_AXI_awburst[1:0],SLOT_2_AXI_awlock[0:0],SLOT_2_AXI_awcache[3:0],SLOT_2_AXI_awprot[2:0],SLOT_2_AXI_awqos[3:0],SLOT_2_AXI_awuser[15:0],SLOT_2_AXI_awvalid,SLOT_2_AXI_awready,SLOT_2_AXI_wdata[127:0],SLOT_2_AXI_wstrb[15:0],SLOT_2_AXI_wlast,SLOT_2_AXI_wvalid,SLOT_2_AXI_wready,SLOT_2_AXI_bid[15:0],SLOT_2_AXI_bresp[1:0],SLOT_2_AXI_bvalid,SLOT_2_AXI_bready,SLOT_2_AXI_arid[15:0],SLOT_2_AXI_araddr[39:0],SLOT_2_AXI_arlen[7:0],SLOT_2_AXI_arsize[2:0],SLOT_2_AXI_arburst[1:0],SLOT_2_AXI_arlock[0:0],SLOT_2_AXI_arcache[3:0],SLOT_2_AXI_arprot[2:0],SLOT_2_AXI_arqos[3:0],SLOT_2_AXI_aruser[15:0],SLOT_2_AXI_arvalid,SLOT_2_AXI_arready,SLOT_2_AXI_rid[15:0],SLOT_2_AXI_rdata[127:0],SLOT_2_AXI_rresp[1:0],SLOT_2_AXI_rlast,SLOT_2_AXI_rvalid,SLOT_2_AXI_rready,SLOT_3_AXI_awid[15:0],SLOT_3_AXI_awaddr[39:0],SLOT_3_AXI_awlen[7:0],SLOT_3_AXI_awsize[2:0],SLOT_3_AXI_awburst[1:0],SLOT_3_AXI_awlock[0:0],SLOT_3_AXI_awcache[3:0],SLOT_3_AXI_awprot[2:0],SLOT_3_AXI_awqos[3:0],SLOT_3_AXI_awuser[0:0],SLOT_3_AXI_awvalid,SLOT_3_AXI_awready,SLOT_3_AXI_wdata[127:0],SLOT_3_AXI_wstrb[15:0],SLOT_3_AXI_wlast,SLOT_3_AXI_wvalid,SLOT_3_AXI_wready,SLOT_3_AXI_bid[15:0],SLOT_3_AXI_bresp[1:0],SLOT_3_AXI_bvalid,SLOT_3_AXI_bready,SLOT_3_AXI_arid[15:0],SLOT_3_AXI_araddr[39:0],SLOT_3_AXI_arlen[7:0],SLOT_3_AXI_arsize[2:0],SLOT_3_AXI_arburst[1:0],SLOT_3_AXI_arlock[0:0],SLOT_3_AXI_arcache[3:0],SLOT_3_AXI_arprot[2:0],SLOT_3_AXI_arqos[3:0],SLOT_3_AXI_aruser[0:0],SLOT_3_AXI_arvalid,SLOT_3_AXI_arready,SLOT_3_AXI_rid[15:0],SLOT_3_AXI_rdata[127:0],SLOT_3_AXI_rresp[1:0],SLOT_3_AXI_rlast,SLOT_3_AXI_rvalid,SLOT_3_AXI_rready,SLOT_4_AXI_awid[15:0],SLOT_4_AXI_awaddr[39:0],SLOT_4_AXI_awlen[7:0],SLOT_4_AXI_awsize[2:0],SLOT_4_AXI_awburst[1:0],SLOT_4_AXI_awlock[0:0],SLOT_4_AXI_awcache[3:0],SLOT_4_AXI_awprot[2:0],SLOT_4_AXI_awqos[3:0],SLOT_4_AXI_awuser[0:0],SLOT_4_AXI_awvalid,SLOT_4_AXI_awready,SLOT_4_AXI_wdata[127:0],SLOT_4_AXI_wstrb[15:0],SLOT_4_AXI_wlast,SLOT_4_AXI_wvalid,SLOT_4_AXI_wready,SLOT_4_AXI_bid[15:0],SLOT_4_AXI_bresp[1:0],SLOT_4_AXI_bvalid,SLOT_4_AXI_bready,SLOT_4_AXI_arid[15:0],SLOT_4_AXI_araddr[39:0],SLOT_4_AXI_arlen[7:0],SLOT_4_AXI_arsize[2:0],SLOT_4_AXI_arburst[1:0],SLOT_4_AXI_arlock[0:0],SLOT_4_AXI_arcache[3:0],SLOT_4_AXI_arprot[2:0],SLOT_4_AXI_arqos[3:0],SLOT_4_AXI_aruser[0:0],SLOT_4_AXI_arvalid,SLOT_4_AXI_arready,SLOT_4_AXI_rid[15:0],SLOT_4_AXI_rdata[127:0],SLOT_4_AXI_rresp[1:0],SLOT_4_AXI_rlast,SLOT_4_AXI_rvalid,SLOT_4_AXI_rready,resetn" */;
  input clk;
  input [48:0]SLOT_0_AXI_awaddr;
  input [7:0]SLOT_0_AXI_awlen;
  input [2:0]SLOT_0_AXI_awsize;
  input [1:0]SLOT_0_AXI_awburst;
  input [0:0]SLOT_0_AXI_awlock;
  input [3:0]SLOT_0_AXI_awcache;
  input [2:0]SLOT_0_AXI_awprot;
  input [3:0]SLOT_0_AXI_awqos;
  input [0:0]SLOT_0_AXI_awuser;
  input SLOT_0_AXI_awvalid;
  input SLOT_0_AXI_awready;
  input [127:0]SLOT_0_AXI_wdata;
  input [15:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wvalid;
  input SLOT_0_AXI_wready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input SLOT_0_AXI_bready;
  input [48:0]SLOT_0_AXI_araddr;
  input [7:0]SLOT_0_AXI_arlen;
  input [2:0]SLOT_0_AXI_arsize;
  input [1:0]SLOT_0_AXI_arburst;
  input [0:0]SLOT_0_AXI_arlock;
  input [3:0]SLOT_0_AXI_arcache;
  input [2:0]SLOT_0_AXI_arprot;
  input [3:0]SLOT_0_AXI_arqos;
  input [0:0]SLOT_0_AXI_aruser;
  input SLOT_0_AXI_arvalid;
  input SLOT_0_AXI_arready;
  input [127:0]SLOT_0_AXI_rdata;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rvalid;
  input SLOT_0_AXI_rready;
  input [15:0]SLOT_1_AXI_awid;
  input [39:0]SLOT_1_AXI_awaddr;
  input [7:0]SLOT_1_AXI_awlen;
  input [2:0]SLOT_1_AXI_awsize;
  input [1:0]SLOT_1_AXI_awburst;
  input [0:0]SLOT_1_AXI_awlock;
  input [3:0]SLOT_1_AXI_awcache;
  input [2:0]SLOT_1_AXI_awprot;
  input [3:0]SLOT_1_AXI_awqos;
  input [15:0]SLOT_1_AXI_awuser;
  input SLOT_1_AXI_awvalid;
  input SLOT_1_AXI_awready;
  input [127:0]SLOT_1_AXI_wdata;
  input [15:0]SLOT_1_AXI_wstrb;
  input SLOT_1_AXI_wlast;
  input SLOT_1_AXI_wvalid;
  input SLOT_1_AXI_wready;
  input [15:0]SLOT_1_AXI_bid;
  input [1:0]SLOT_1_AXI_bresp;
  input SLOT_1_AXI_bvalid;
  input SLOT_1_AXI_bready;
  input [15:0]SLOT_1_AXI_arid;
  input [39:0]SLOT_1_AXI_araddr;
  input [7:0]SLOT_1_AXI_arlen;
  input [2:0]SLOT_1_AXI_arsize;
  input [1:0]SLOT_1_AXI_arburst;
  input [0:0]SLOT_1_AXI_arlock;
  input [3:0]SLOT_1_AXI_arcache;
  input [2:0]SLOT_1_AXI_arprot;
  input [3:0]SLOT_1_AXI_arqos;
  input [15:0]SLOT_1_AXI_aruser;
  input SLOT_1_AXI_arvalid;
  input SLOT_1_AXI_arready;
  input [15:0]SLOT_1_AXI_rid;
  input [127:0]SLOT_1_AXI_rdata;
  input [1:0]SLOT_1_AXI_rresp;
  input SLOT_1_AXI_rlast;
  input SLOT_1_AXI_rvalid;
  input SLOT_1_AXI_rready;
  input [15:0]SLOT_2_AXI_awid;
  input [39:0]SLOT_2_AXI_awaddr;
  input [7:0]SLOT_2_AXI_awlen;
  input [2:0]SLOT_2_AXI_awsize;
  input [1:0]SLOT_2_AXI_awburst;
  input [0:0]SLOT_2_AXI_awlock;
  input [3:0]SLOT_2_AXI_awcache;
  input [2:0]SLOT_2_AXI_awprot;
  input [3:0]SLOT_2_AXI_awqos;
  input [15:0]SLOT_2_AXI_awuser;
  input SLOT_2_AXI_awvalid;
  input SLOT_2_AXI_awready;
  input [127:0]SLOT_2_AXI_wdata;
  input [15:0]SLOT_2_AXI_wstrb;
  input SLOT_2_AXI_wlast;
  input SLOT_2_AXI_wvalid;
  input SLOT_2_AXI_wready;
  input [15:0]SLOT_2_AXI_bid;
  input [1:0]SLOT_2_AXI_bresp;
  input SLOT_2_AXI_bvalid;
  input SLOT_2_AXI_bready;
  input [15:0]SLOT_2_AXI_arid;
  input [39:0]SLOT_2_AXI_araddr;
  input [7:0]SLOT_2_AXI_arlen;
  input [2:0]SLOT_2_AXI_arsize;
  input [1:0]SLOT_2_AXI_arburst;
  input [0:0]SLOT_2_AXI_arlock;
  input [3:0]SLOT_2_AXI_arcache;
  input [2:0]SLOT_2_AXI_arprot;
  input [3:0]SLOT_2_AXI_arqos;
  input [15:0]SLOT_2_AXI_aruser;
  input SLOT_2_AXI_arvalid;
  input SLOT_2_AXI_arready;
  input [15:0]SLOT_2_AXI_rid;
  input [127:0]SLOT_2_AXI_rdata;
  input [1:0]SLOT_2_AXI_rresp;
  input SLOT_2_AXI_rlast;
  input SLOT_2_AXI_rvalid;
  input SLOT_2_AXI_rready;
  input [15:0]SLOT_3_AXI_awid;
  input [39:0]SLOT_3_AXI_awaddr;
  input [7:0]SLOT_3_AXI_awlen;
  input [2:0]SLOT_3_AXI_awsize;
  input [1:0]SLOT_3_AXI_awburst;
  input [0:0]SLOT_3_AXI_awlock;
  input [3:0]SLOT_3_AXI_awcache;
  input [2:0]SLOT_3_AXI_awprot;
  input [3:0]SLOT_3_AXI_awqos;
  input [0:0]SLOT_3_AXI_awuser;
  input SLOT_3_AXI_awvalid;
  input SLOT_3_AXI_awready;
  input [127:0]SLOT_3_AXI_wdata;
  input [15:0]SLOT_3_AXI_wstrb;
  input SLOT_3_AXI_wlast;
  input SLOT_3_AXI_wvalid;
  input SLOT_3_AXI_wready;
  input [15:0]SLOT_3_AXI_bid;
  input [1:0]SLOT_3_AXI_bresp;
  input SLOT_3_AXI_bvalid;
  input SLOT_3_AXI_bready;
  input [15:0]SLOT_3_AXI_arid;
  input [39:0]SLOT_3_AXI_araddr;
  input [7:0]SLOT_3_AXI_arlen;
  input [2:0]SLOT_3_AXI_arsize;
  input [1:0]SLOT_3_AXI_arburst;
  input [0:0]SLOT_3_AXI_arlock;
  input [3:0]SLOT_3_AXI_arcache;
  input [2:0]SLOT_3_AXI_arprot;
  input [3:0]SLOT_3_AXI_arqos;
  input [0:0]SLOT_3_AXI_aruser;
  input SLOT_3_AXI_arvalid;
  input SLOT_3_AXI_arready;
  input [15:0]SLOT_3_AXI_rid;
  input [127:0]SLOT_3_AXI_rdata;
  input [1:0]SLOT_3_AXI_rresp;
  input SLOT_3_AXI_rlast;
  input SLOT_3_AXI_rvalid;
  input SLOT_3_AXI_rready;
  input [15:0]SLOT_4_AXI_awid;
  input [39:0]SLOT_4_AXI_awaddr;
  input [7:0]SLOT_4_AXI_awlen;
  input [2:0]SLOT_4_AXI_awsize;
  input [1:0]SLOT_4_AXI_awburst;
  input [0:0]SLOT_4_AXI_awlock;
  input [3:0]SLOT_4_AXI_awcache;
  input [2:0]SLOT_4_AXI_awprot;
  input [3:0]SLOT_4_AXI_awqos;
  input [0:0]SLOT_4_AXI_awuser;
  input SLOT_4_AXI_awvalid;
  input SLOT_4_AXI_awready;
  input [127:0]SLOT_4_AXI_wdata;
  input [15:0]SLOT_4_AXI_wstrb;
  input SLOT_4_AXI_wlast;
  input SLOT_4_AXI_wvalid;
  input SLOT_4_AXI_wready;
  input [15:0]SLOT_4_AXI_bid;
  input [1:0]SLOT_4_AXI_bresp;
  input SLOT_4_AXI_bvalid;
  input SLOT_4_AXI_bready;
  input [15:0]SLOT_4_AXI_arid;
  input [39:0]SLOT_4_AXI_araddr;
  input [7:0]SLOT_4_AXI_arlen;
  input [2:0]SLOT_4_AXI_arsize;
  input [1:0]SLOT_4_AXI_arburst;
  input [0:0]SLOT_4_AXI_arlock;
  input [3:0]SLOT_4_AXI_arcache;
  input [2:0]SLOT_4_AXI_arprot;
  input [3:0]SLOT_4_AXI_arqos;
  input [0:0]SLOT_4_AXI_aruser;
  input SLOT_4_AXI_arvalid;
  input SLOT_4_AXI_arready;
  input [15:0]SLOT_4_AXI_rid;
  input [127:0]SLOT_4_AXI_rdata;
  input [1:0]SLOT_4_AXI_rresp;
  input SLOT_4_AXI_rlast;
  input SLOT_4_AXI_rvalid;
  input SLOT_4_AXI_rready;
  input resetn;
endmodule
