// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon May 11 12:17:00 2020
// Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_system_ila_0_0_stub.v
// Design      : design_1_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_f60c,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, SLOT_0_AXIS_tid, SLOT_0_AXIS_tdata, 
  SLOT_0_AXIS_tstrb, SLOT_0_AXIS_tlast, SLOT_0_AXIS_tvalid, SLOT_0_AXIS_tready, 
  SLOT_1_AXI_awaddr, SLOT_1_AXI_awprot, SLOT_1_AXI_awvalid, SLOT_1_AXI_awready, 
  SLOT_1_AXI_wdata, SLOT_1_AXI_wstrb, SLOT_1_AXI_wvalid, SLOT_1_AXI_wready, 
  SLOT_1_AXI_bresp, SLOT_1_AXI_bvalid, SLOT_1_AXI_bready, SLOT_1_AXI_araddr, 
  SLOT_1_AXI_arprot, SLOT_1_AXI_arvalid, SLOT_1_AXI_arready, SLOT_1_AXI_rdata, 
  SLOT_1_AXI_rresp, SLOT_1_AXI_rvalid, SLOT_1_AXI_rready, SLOT_2_AXI_awid, 
  SLOT_2_AXI_awaddr, SLOT_2_AXI_awlen, SLOT_2_AXI_awsize, SLOT_2_AXI_awburst, 
  SLOT_2_AXI_awlock, SLOT_2_AXI_awcache, SLOT_2_AXI_awprot, SLOT_2_AXI_awqos, 
  SLOT_2_AXI_awuser, SLOT_2_AXI_awvalid, SLOT_2_AXI_awready, SLOT_2_AXI_wdata, 
  SLOT_2_AXI_wstrb, SLOT_2_AXI_wlast, SLOT_2_AXI_wvalid, SLOT_2_AXI_wready, SLOT_2_AXI_bid, 
  SLOT_2_AXI_bresp, SLOT_2_AXI_bvalid, SLOT_2_AXI_bready, SLOT_2_AXI_arid, 
  SLOT_2_AXI_araddr, SLOT_2_AXI_arlen, SLOT_2_AXI_arsize, SLOT_2_AXI_arburst, 
  SLOT_2_AXI_arlock, SLOT_2_AXI_arcache, SLOT_2_AXI_arprot, SLOT_2_AXI_arqos, 
  SLOT_2_AXI_aruser, SLOT_2_AXI_arvalid, SLOT_2_AXI_arready, SLOT_2_AXI_rid, 
  SLOT_2_AXI_rdata, SLOT_2_AXI_rresp, SLOT_2_AXI_rlast, SLOT_2_AXI_rvalid, 
  SLOT_2_AXI_rready, SLOT_3_AXI_awaddr, SLOT_3_AXI_awprot, SLOT_3_AXI_awvalid, 
  SLOT_3_AXI_awready, SLOT_3_AXI_wdata, SLOT_3_AXI_wstrb, SLOT_3_AXI_wvalid, 
  SLOT_3_AXI_wready, SLOT_3_AXI_bresp, SLOT_3_AXI_bvalid, SLOT_3_AXI_bready, 
  SLOT_3_AXI_araddr, SLOT_3_AXI_arprot, SLOT_3_AXI_arvalid, SLOT_3_AXI_arready, 
  SLOT_3_AXI_rdata, SLOT_3_AXI_rresp, SLOT_3_AXI_rvalid, SLOT_3_AXI_rready, 
  SLOT_4_AXI_awid, SLOT_4_AXI_awaddr, SLOT_4_AXI_awlen, SLOT_4_AXI_awsize, 
  SLOT_4_AXI_awcache, SLOT_4_AXI_awprot, SLOT_4_AXI_awvalid, SLOT_4_AXI_awready, 
  SLOT_4_AXI_wdata, SLOT_4_AXI_wstrb, SLOT_4_AXI_wlast, SLOT_4_AXI_wvalid, 
  SLOT_4_AXI_wready, SLOT_4_AXI_bid, SLOT_4_AXI_bresp, SLOT_4_AXI_bvalid, 
  SLOT_4_AXI_bready, SLOT_4_AXI_arid, SLOT_4_AXI_araddr, SLOT_4_AXI_arlen, 
  SLOT_4_AXI_arsize, SLOT_4_AXI_arcache, SLOT_4_AXI_arprot, SLOT_4_AXI_arvalid, 
  SLOT_4_AXI_arready, SLOT_4_AXI_rid, SLOT_4_AXI_rdata, SLOT_4_AXI_rresp, SLOT_4_AXI_rlast, 
  SLOT_4_AXI_rvalid, SLOT_4_AXI_rready, SLOT_5_AXIS_tid, SLOT_5_AXIS_tdata, 
  SLOT_5_AXIS_tstrb, SLOT_5_AXIS_tlast, SLOT_5_AXIS_tvalid, SLOT_5_AXIS_tready, 
  SLOT_6_AXI_awaddr, SLOT_6_AXI_awlen, SLOT_6_AXI_awsize, SLOT_6_AXI_awvalid, 
  SLOT_6_AXI_awready, SLOT_6_AXI_wdata, SLOT_6_AXI_wstrb, SLOT_6_AXI_wlast, 
  SLOT_6_AXI_wvalid, SLOT_6_AXI_wready, SLOT_6_AXI_bresp, SLOT_6_AXI_bvalid, 
  SLOT_6_AXI_bready, SLOT_6_AXI_araddr, SLOT_6_AXI_arlen, SLOT_6_AXI_arsize, 
  SLOT_6_AXI_arvalid, SLOT_6_AXI_arready, SLOT_6_AXI_rdata, SLOT_6_AXI_rlast, 
  SLOT_6_AXI_rvalid, SLOT_6_AXI_rready, SLOT_7_AXI_awaddr, SLOT_7_AXI_awlen, 
  SLOT_7_AXI_awsize, SLOT_7_AXI_awcache, SLOT_7_AXI_awprot, SLOT_7_AXI_awvalid, 
  SLOT_7_AXI_awready, SLOT_7_AXI_wdata, SLOT_7_AXI_wstrb, SLOT_7_AXI_wlast, 
  SLOT_7_AXI_wvalid, SLOT_7_AXI_wready, SLOT_7_AXI_bresp, SLOT_7_AXI_bvalid, 
  SLOT_7_AXI_bready, SLOT_7_AXI_araddr, SLOT_7_AXI_arlen, SLOT_7_AXI_arsize, 
  SLOT_7_AXI_arcache, SLOT_7_AXI_arprot, SLOT_7_AXI_arvalid, SLOT_7_AXI_arready, 
  SLOT_7_AXI_rdata, SLOT_7_AXI_rresp, SLOT_7_AXI_rlast, SLOT_7_AXI_rvalid, 
  SLOT_7_AXI_rready, SLOT_8_AXI_awaddr, SLOT_8_AXI_awlen, SLOT_8_AXI_awsize, 
  SLOT_8_AXI_awcache, SLOT_8_AXI_awprot, SLOT_8_AXI_awvalid, SLOT_8_AXI_awready, 
  SLOT_8_AXI_wdata, SLOT_8_AXI_wstrb, SLOT_8_AXI_wlast, SLOT_8_AXI_wvalid, 
  SLOT_8_AXI_wready, SLOT_8_AXI_bresp, SLOT_8_AXI_bvalid, SLOT_8_AXI_bready, 
  SLOT_8_AXI_araddr, SLOT_8_AXI_arlen, SLOT_8_AXI_arsize, SLOT_8_AXI_arcache, 
  SLOT_8_AXI_arprot, SLOT_8_AXI_arvalid, SLOT_8_AXI_arready, SLOT_8_AXI_rdata, 
  SLOT_8_AXI_rresp, SLOT_8_AXI_rlast, SLOT_8_AXI_rvalid, SLOT_8_AXI_rready, 
  SLOT_9_AXIS_tid, SLOT_9_AXIS_tdest, SLOT_9_AXIS_tdata, SLOT_9_AXIS_tstrb, 
  SLOT_9_AXIS_tkeep, SLOT_9_AXIS_tlast, SLOT_9_AXIS_tuser, SLOT_9_AXIS_tvalid, 
  SLOT_9_AXIS_tready, SLOT_10_AXI_awaddr, SLOT_10_AXI_awlen, SLOT_10_AXI_awsize, 
  SLOT_10_AXI_awvalid, SLOT_10_AXI_awready, SLOT_10_AXI_wdata, SLOT_10_AXI_wstrb, 
  SLOT_10_AXI_wlast, SLOT_10_AXI_wvalid, SLOT_10_AXI_wready, SLOT_10_AXI_bresp, 
  SLOT_10_AXI_bvalid, SLOT_10_AXI_bready, SLOT_10_AXI_araddr, SLOT_10_AXI_arlen, 
  SLOT_10_AXI_arsize, SLOT_10_AXI_arvalid, SLOT_10_AXI_arready, SLOT_10_AXI_rdata, 
  SLOT_10_AXI_rlast, SLOT_10_AXI_rvalid, SLOT_10_AXI_rready, SLOT_11_AXI_awaddr, 
  SLOT_11_AXI_awprot, SLOT_11_AXI_awvalid, SLOT_11_AXI_awready, SLOT_11_AXI_wdata, 
  SLOT_11_AXI_wstrb, SLOT_11_AXI_wvalid, SLOT_11_AXI_wready, SLOT_11_AXI_bresp, 
  SLOT_11_AXI_bvalid, SLOT_11_AXI_bready, SLOT_11_AXI_araddr, SLOT_11_AXI_arprot, 
  SLOT_11_AXI_arvalid, SLOT_11_AXI_arready, SLOT_11_AXI_rdata, SLOT_11_AXI_rresp, 
  SLOT_11_AXI_rvalid, SLOT_11_AXI_rready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_AXIS_tid[0:0],SLOT_0_AXIS_tdata[55:0],SLOT_0_AXIS_tstrb[6:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,SLOT_1_AXI_awaddr[9:0],SLOT_1_AXI_awprot[2:0],SLOT_1_AXI_awvalid,SLOT_1_AXI_awready,SLOT_1_AXI_wdata[31:0],SLOT_1_AXI_wstrb[3:0],SLOT_1_AXI_wvalid,SLOT_1_AXI_wready,SLOT_1_AXI_bresp[1:0],SLOT_1_AXI_bvalid,SLOT_1_AXI_bready,SLOT_1_AXI_araddr[9:0],SLOT_1_AXI_arprot[2:0],SLOT_1_AXI_arvalid,SLOT_1_AXI_arready,SLOT_1_AXI_rdata[31:0],SLOT_1_AXI_rresp[1:0],SLOT_1_AXI_rvalid,SLOT_1_AXI_rready,SLOT_2_AXI_awid[15:0],SLOT_2_AXI_awaddr[39:0],SLOT_2_AXI_awlen[7:0],SLOT_2_AXI_awsize[2:0],SLOT_2_AXI_awburst[1:0],SLOT_2_AXI_awlock[0:0],SLOT_2_AXI_awcache[3:0],SLOT_2_AXI_awprot[2:0],SLOT_2_AXI_awqos[3:0],SLOT_2_AXI_awuser[15:0],SLOT_2_AXI_awvalid,SLOT_2_AXI_awready,SLOT_2_AXI_wdata[127:0],SLOT_2_AXI_wstrb[15:0],SLOT_2_AXI_wlast,SLOT_2_AXI_wvalid,SLOT_2_AXI_wready,SLOT_2_AXI_bid[15:0],SLOT_2_AXI_bresp[1:0],SLOT_2_AXI_bvalid,SLOT_2_AXI_bready,SLOT_2_AXI_arid[15:0],SLOT_2_AXI_araddr[39:0],SLOT_2_AXI_arlen[7:0],SLOT_2_AXI_arsize[2:0],SLOT_2_AXI_arburst[1:0],SLOT_2_AXI_arlock[0:0],SLOT_2_AXI_arcache[3:0],SLOT_2_AXI_arprot[2:0],SLOT_2_AXI_arqos[3:0],SLOT_2_AXI_aruser[15:0],SLOT_2_AXI_arvalid,SLOT_2_AXI_arready,SLOT_2_AXI_rid[15:0],SLOT_2_AXI_rdata[127:0],SLOT_2_AXI_rresp[1:0],SLOT_2_AXI_rlast,SLOT_2_AXI_rvalid,SLOT_2_AXI_rready,SLOT_3_AXI_awaddr[15:0],SLOT_3_AXI_awprot[2:0],SLOT_3_AXI_awvalid,SLOT_3_AXI_awready,SLOT_3_AXI_wdata[31:0],SLOT_3_AXI_wstrb[3:0],SLOT_3_AXI_wvalid,SLOT_3_AXI_wready,SLOT_3_AXI_bresp[1:0],SLOT_3_AXI_bvalid,SLOT_3_AXI_bready,SLOT_3_AXI_araddr[15:0],SLOT_3_AXI_arprot[2:0],SLOT_3_AXI_arvalid,SLOT_3_AXI_arready,SLOT_3_AXI_rdata[31:0],SLOT_3_AXI_rresp[1:0],SLOT_3_AXI_rvalid,SLOT_3_AXI_rready,SLOT_4_AXI_awid[0:0],SLOT_4_AXI_awaddr[48:0],SLOT_4_AXI_awlen[7:0],SLOT_4_AXI_awsize[2:0],SLOT_4_AXI_awcache[3:0],SLOT_4_AXI_awprot[2:0],SLOT_4_AXI_awvalid,SLOT_4_AXI_awready,SLOT_4_AXI_wdata[127:0],SLOT_4_AXI_wstrb[15:0],SLOT_4_AXI_wlast,SLOT_4_AXI_wvalid,SLOT_4_AXI_wready,SLOT_4_AXI_bid[0:0],SLOT_4_AXI_bresp[1:0],SLOT_4_AXI_bvalid,SLOT_4_AXI_bready,SLOT_4_AXI_arid[0:0],SLOT_4_AXI_araddr[48:0],SLOT_4_AXI_arlen[7:0],SLOT_4_AXI_arsize[2:0],SLOT_4_AXI_arcache[3:0],SLOT_4_AXI_arprot[2:0],SLOT_4_AXI_arvalid,SLOT_4_AXI_arready,SLOT_4_AXI_rid[0:0],SLOT_4_AXI_rdata[127:0],SLOT_4_AXI_rresp[1:0],SLOT_4_AXI_rlast,SLOT_4_AXI_rvalid,SLOT_4_AXI_rready,SLOT_5_AXIS_tid[0:0],SLOT_5_AXIS_tdata[63:0],SLOT_5_AXIS_tstrb[7:0],SLOT_5_AXIS_tlast,SLOT_5_AXIS_tvalid,SLOT_5_AXIS_tready,SLOT_6_AXI_awaddr[31:0],SLOT_6_AXI_awlen[7:0],SLOT_6_AXI_awsize[2:0],SLOT_6_AXI_awvalid,SLOT_6_AXI_awready,SLOT_6_AXI_wdata[127:0],SLOT_6_AXI_wstrb[15:0],SLOT_6_AXI_wlast,SLOT_6_AXI_wvalid,SLOT_6_AXI_wready,SLOT_6_AXI_bresp[1:0],SLOT_6_AXI_bvalid,SLOT_6_AXI_bready,SLOT_6_AXI_araddr[31:0],SLOT_6_AXI_arlen[7:0],SLOT_6_AXI_arsize[2:0],SLOT_6_AXI_arvalid,SLOT_6_AXI_arready,SLOT_6_AXI_rdata[127:0],SLOT_6_AXI_rlast,SLOT_6_AXI_rvalid,SLOT_6_AXI_rready,SLOT_7_AXI_awaddr[48:0],SLOT_7_AXI_awlen[7:0],SLOT_7_AXI_awsize[2:0],SLOT_7_AXI_awcache[3:0],SLOT_7_AXI_awprot[2:0],SLOT_7_AXI_awvalid,SLOT_7_AXI_awready,SLOT_7_AXI_wdata[31:0],SLOT_7_AXI_wstrb[3:0],SLOT_7_AXI_wlast,SLOT_7_AXI_wvalid,SLOT_7_AXI_wready,SLOT_7_AXI_bresp[1:0],SLOT_7_AXI_bvalid,SLOT_7_AXI_bready,SLOT_7_AXI_araddr[48:0],SLOT_7_AXI_arlen[7:0],SLOT_7_AXI_arsize[2:0],SLOT_7_AXI_arcache[1:0],SLOT_7_AXI_arprot[2:0],SLOT_7_AXI_arvalid,SLOT_7_AXI_arready,SLOT_7_AXI_rdata[31:0],SLOT_7_AXI_rresp[1:0],SLOT_7_AXI_rlast,SLOT_7_AXI_rvalid,SLOT_7_AXI_rready,SLOT_8_AXI_awaddr[31:0],SLOT_8_AXI_awlen[7:0],SLOT_8_AXI_awsize[2:0],SLOT_8_AXI_awcache[3:0],SLOT_8_AXI_awprot[2:0],SLOT_8_AXI_awvalid,SLOT_8_AXI_awready,SLOT_8_AXI_wdata[31:0],SLOT_8_AXI_wstrb[3:0],SLOT_8_AXI_wlast,SLOT_8_AXI_wvalid,SLOT_8_AXI_wready,SLOT_8_AXI_bresp[1:0],SLOT_8_AXI_bvalid,SLOT_8_AXI_bready,SLOT_8_AXI_araddr[31:0],SLOT_8_AXI_arlen[7:0],SLOT_8_AXI_arsize[2:0],SLOT_8_AXI_arcache[3:0],SLOT_8_AXI_arprot[2:0],SLOT_8_AXI_arvalid,SLOT_8_AXI_arready,SLOT_8_AXI_rdata[31:0],SLOT_8_AXI_rresp[1:0],SLOT_8_AXI_rlast,SLOT_8_AXI_rvalid,SLOT_8_AXI_rready,SLOT_9_AXIS_tid[7:0],SLOT_9_AXIS_tdest[7:0],SLOT_9_AXIS_tdata[31:0],SLOT_9_AXIS_tstrb[2:0],SLOT_9_AXIS_tkeep[2:0],SLOT_9_AXIS_tlast,SLOT_9_AXIS_tuser[7:0],SLOT_9_AXIS_tvalid,SLOT_9_AXIS_tready,SLOT_10_AXI_awaddr[31:0],SLOT_10_AXI_awlen[7:0],SLOT_10_AXI_awsize[2:0],SLOT_10_AXI_awvalid,SLOT_10_AXI_awready,SLOT_10_AXI_wdata[31:0],SLOT_10_AXI_wstrb[3:0],SLOT_10_AXI_wlast,SLOT_10_AXI_wvalid,SLOT_10_AXI_wready,SLOT_10_AXI_bresp[1:0],SLOT_10_AXI_bvalid,SLOT_10_AXI_bready,SLOT_10_AXI_araddr[31:0],SLOT_10_AXI_arlen[7:0],SLOT_10_AXI_arsize[2:0],SLOT_10_AXI_arvalid,SLOT_10_AXI_arready,SLOT_10_AXI_rdata[31:0],SLOT_10_AXI_rlast,SLOT_10_AXI_rvalid,SLOT_10_AXI_rready,SLOT_11_AXI_awaddr[9:0],SLOT_11_AXI_awprot[2:0],SLOT_11_AXI_awvalid,SLOT_11_AXI_awready,SLOT_11_AXI_wdata[31:0],SLOT_11_AXI_wstrb[3:0],SLOT_11_AXI_wvalid,SLOT_11_AXI_wready,SLOT_11_AXI_bresp[1:0],SLOT_11_AXI_bvalid,SLOT_11_AXI_bready,SLOT_11_AXI_araddr[9:0],SLOT_11_AXI_arprot[2:0],SLOT_11_AXI_arvalid,SLOT_11_AXI_arready,SLOT_11_AXI_rdata[31:0],SLOT_11_AXI_rresp[1:0],SLOT_11_AXI_rvalid,SLOT_11_AXI_rready,resetn" */;
  input clk;
  input [0:0]SLOT_0_AXIS_tid;
  input [55:0]SLOT_0_AXIS_tdata;
  input [6:0]SLOT_0_AXIS_tstrb;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tvalid;
  input SLOT_0_AXIS_tready;
  input [9:0]SLOT_1_AXI_awaddr;
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
  input [9:0]SLOT_1_AXI_araddr;
  input [2:0]SLOT_1_AXI_arprot;
  input SLOT_1_AXI_arvalid;
  input SLOT_1_AXI_arready;
  input [31:0]SLOT_1_AXI_rdata;
  input [1:0]SLOT_1_AXI_rresp;
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
  input [15:0]SLOT_3_AXI_awaddr;
  input [2:0]SLOT_3_AXI_awprot;
  input SLOT_3_AXI_awvalid;
  input SLOT_3_AXI_awready;
  input [31:0]SLOT_3_AXI_wdata;
  input [3:0]SLOT_3_AXI_wstrb;
  input SLOT_3_AXI_wvalid;
  input SLOT_3_AXI_wready;
  input [1:0]SLOT_3_AXI_bresp;
  input SLOT_3_AXI_bvalid;
  input SLOT_3_AXI_bready;
  input [15:0]SLOT_3_AXI_araddr;
  input [2:0]SLOT_3_AXI_arprot;
  input SLOT_3_AXI_arvalid;
  input SLOT_3_AXI_arready;
  input [31:0]SLOT_3_AXI_rdata;
  input [1:0]SLOT_3_AXI_rresp;
  input SLOT_3_AXI_rvalid;
  input SLOT_3_AXI_rready;
  input [0:0]SLOT_4_AXI_awid;
  input [48:0]SLOT_4_AXI_awaddr;
  input [7:0]SLOT_4_AXI_awlen;
  input [2:0]SLOT_4_AXI_awsize;
  input [3:0]SLOT_4_AXI_awcache;
  input [2:0]SLOT_4_AXI_awprot;
  input SLOT_4_AXI_awvalid;
  input SLOT_4_AXI_awready;
  input [127:0]SLOT_4_AXI_wdata;
  input [15:0]SLOT_4_AXI_wstrb;
  input SLOT_4_AXI_wlast;
  input SLOT_4_AXI_wvalid;
  input SLOT_4_AXI_wready;
  input [0:0]SLOT_4_AXI_bid;
  input [1:0]SLOT_4_AXI_bresp;
  input SLOT_4_AXI_bvalid;
  input SLOT_4_AXI_bready;
  input [0:0]SLOT_4_AXI_arid;
  input [48:0]SLOT_4_AXI_araddr;
  input [7:0]SLOT_4_AXI_arlen;
  input [2:0]SLOT_4_AXI_arsize;
  input [3:0]SLOT_4_AXI_arcache;
  input [2:0]SLOT_4_AXI_arprot;
  input SLOT_4_AXI_arvalid;
  input SLOT_4_AXI_arready;
  input [0:0]SLOT_4_AXI_rid;
  input [127:0]SLOT_4_AXI_rdata;
  input [1:0]SLOT_4_AXI_rresp;
  input SLOT_4_AXI_rlast;
  input SLOT_4_AXI_rvalid;
  input SLOT_4_AXI_rready;
  input [0:0]SLOT_5_AXIS_tid;
  input [63:0]SLOT_5_AXIS_tdata;
  input [7:0]SLOT_5_AXIS_tstrb;
  input SLOT_5_AXIS_tlast;
  input SLOT_5_AXIS_tvalid;
  input SLOT_5_AXIS_tready;
  input [31:0]SLOT_6_AXI_awaddr;
  input [7:0]SLOT_6_AXI_awlen;
  input [2:0]SLOT_6_AXI_awsize;
  input SLOT_6_AXI_awvalid;
  input SLOT_6_AXI_awready;
  input [127:0]SLOT_6_AXI_wdata;
  input [15:0]SLOT_6_AXI_wstrb;
  input SLOT_6_AXI_wlast;
  input SLOT_6_AXI_wvalid;
  input SLOT_6_AXI_wready;
  input [1:0]SLOT_6_AXI_bresp;
  input SLOT_6_AXI_bvalid;
  input SLOT_6_AXI_bready;
  input [31:0]SLOT_6_AXI_araddr;
  input [7:0]SLOT_6_AXI_arlen;
  input [2:0]SLOT_6_AXI_arsize;
  input SLOT_6_AXI_arvalid;
  input SLOT_6_AXI_arready;
  input [127:0]SLOT_6_AXI_rdata;
  input SLOT_6_AXI_rlast;
  input SLOT_6_AXI_rvalid;
  input SLOT_6_AXI_rready;
  input [48:0]SLOT_7_AXI_awaddr;
  input [7:0]SLOT_7_AXI_awlen;
  input [2:0]SLOT_7_AXI_awsize;
  input [3:0]SLOT_7_AXI_awcache;
  input [2:0]SLOT_7_AXI_awprot;
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
  input [1:0]SLOT_7_AXI_arcache;
  input [2:0]SLOT_7_AXI_arprot;
  input SLOT_7_AXI_arvalid;
  input SLOT_7_AXI_arready;
  input [31:0]SLOT_7_AXI_rdata;
  input [1:0]SLOT_7_AXI_rresp;
  input SLOT_7_AXI_rlast;
  input SLOT_7_AXI_rvalid;
  input SLOT_7_AXI_rready;
  input [31:0]SLOT_8_AXI_awaddr;
  input [7:0]SLOT_8_AXI_awlen;
  input [2:0]SLOT_8_AXI_awsize;
  input [3:0]SLOT_8_AXI_awcache;
  input [2:0]SLOT_8_AXI_awprot;
  input SLOT_8_AXI_awvalid;
  input SLOT_8_AXI_awready;
  input [31:0]SLOT_8_AXI_wdata;
  input [3:0]SLOT_8_AXI_wstrb;
  input SLOT_8_AXI_wlast;
  input SLOT_8_AXI_wvalid;
  input SLOT_8_AXI_wready;
  input [1:0]SLOT_8_AXI_bresp;
  input SLOT_8_AXI_bvalid;
  input SLOT_8_AXI_bready;
  input [31:0]SLOT_8_AXI_araddr;
  input [7:0]SLOT_8_AXI_arlen;
  input [2:0]SLOT_8_AXI_arsize;
  input [3:0]SLOT_8_AXI_arcache;
  input [2:0]SLOT_8_AXI_arprot;
  input SLOT_8_AXI_arvalid;
  input SLOT_8_AXI_arready;
  input [31:0]SLOT_8_AXI_rdata;
  input [1:0]SLOT_8_AXI_rresp;
  input SLOT_8_AXI_rlast;
  input SLOT_8_AXI_rvalid;
  input SLOT_8_AXI_rready;
  input [7:0]SLOT_9_AXIS_tid;
  input [7:0]SLOT_9_AXIS_tdest;
  input [31:0]SLOT_9_AXIS_tdata;
  input [2:0]SLOT_9_AXIS_tstrb;
  input [2:0]SLOT_9_AXIS_tkeep;
  input SLOT_9_AXIS_tlast;
  input [7:0]SLOT_9_AXIS_tuser;
  input SLOT_9_AXIS_tvalid;
  input SLOT_9_AXIS_tready;
  input [31:0]SLOT_10_AXI_awaddr;
  input [7:0]SLOT_10_AXI_awlen;
  input [2:0]SLOT_10_AXI_awsize;
  input SLOT_10_AXI_awvalid;
  input SLOT_10_AXI_awready;
  input [31:0]SLOT_10_AXI_wdata;
  input [3:0]SLOT_10_AXI_wstrb;
  input SLOT_10_AXI_wlast;
  input SLOT_10_AXI_wvalid;
  input SLOT_10_AXI_wready;
  input [1:0]SLOT_10_AXI_bresp;
  input SLOT_10_AXI_bvalid;
  input SLOT_10_AXI_bready;
  input [31:0]SLOT_10_AXI_araddr;
  input [7:0]SLOT_10_AXI_arlen;
  input [2:0]SLOT_10_AXI_arsize;
  input SLOT_10_AXI_arvalid;
  input SLOT_10_AXI_arready;
  input [31:0]SLOT_10_AXI_rdata;
  input SLOT_10_AXI_rlast;
  input SLOT_10_AXI_rvalid;
  input SLOT_10_AXI_rready;
  input [9:0]SLOT_11_AXI_awaddr;
  input [2:0]SLOT_11_AXI_awprot;
  input SLOT_11_AXI_awvalid;
  input SLOT_11_AXI_awready;
  input [31:0]SLOT_11_AXI_wdata;
  input [3:0]SLOT_11_AXI_wstrb;
  input SLOT_11_AXI_wvalid;
  input SLOT_11_AXI_wready;
  input [1:0]SLOT_11_AXI_bresp;
  input SLOT_11_AXI_bvalid;
  input SLOT_11_AXI_bready;
  input [9:0]SLOT_11_AXI_araddr;
  input [2:0]SLOT_11_AXI_arprot;
  input SLOT_11_AXI_arvalid;
  input SLOT_11_AXI_arready;
  input [31:0]SLOT_11_AXI_rdata;
  input [1:0]SLOT_11_AXI_rresp;
  input SLOT_11_AXI_rvalid;
  input SLOT_11_AXI_rready;
  input resetn;
endmodule
