// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Thu May 14 21:06:23 2020
// Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_system_ila_1_0_stub.v
// Design      : design_1_system_ila_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_365d,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, SLOT_0_AXI_awaddr, SLOT_0_AXI_awlen, 
  SLOT_0_AXI_awsize, SLOT_0_AXI_awburst, SLOT_0_AXI_awlock, SLOT_0_AXI_awcache, 
  SLOT_0_AXI_awprot, SLOT_0_AXI_awqos, SLOT_0_AXI_awuser, SLOT_0_AXI_awvalid, 
  SLOT_0_AXI_awready, SLOT_0_AXI_wdata, SLOT_0_AXI_wstrb, SLOT_0_AXI_wlast, 
  SLOT_0_AXI_wvalid, SLOT_0_AXI_wready, SLOT_0_AXI_bresp, SLOT_0_AXI_bvalid, 
  SLOT_0_AXI_bready, SLOT_0_AXI_araddr, SLOT_0_AXI_arlen, SLOT_0_AXI_arsize, 
  SLOT_0_AXI_arburst, SLOT_0_AXI_arlock, SLOT_0_AXI_arcache, SLOT_0_AXI_arprot, 
  SLOT_0_AXI_arqos, SLOT_0_AXI_aruser, SLOT_0_AXI_arvalid, SLOT_0_AXI_arready, 
  SLOT_0_AXI_rdata, SLOT_0_AXI_rresp, SLOT_0_AXI_rlast, SLOT_0_AXI_rvalid, 
  SLOT_0_AXI_rready, SLOT_1_AXIS_tid, SLOT_1_AXIS_tdata, SLOT_1_AXIS_tstrb, 
  SLOT_1_AXIS_tlast, SLOT_1_AXIS_tvalid, SLOT_1_AXIS_tready, SLOT_2_AXI_awaddr, 
  SLOT_2_AXI_awprot, SLOT_2_AXI_awvalid, SLOT_2_AXI_awready, SLOT_2_AXI_wdata, 
  SLOT_2_AXI_wstrb, SLOT_2_AXI_wvalid, SLOT_2_AXI_wready, SLOT_2_AXI_bresp, 
  SLOT_2_AXI_bvalid, SLOT_2_AXI_bready, SLOT_2_AXI_araddr, SLOT_2_AXI_arprot, 
  SLOT_2_AXI_arvalid, SLOT_2_AXI_arready, SLOT_2_AXI_rdata, SLOT_2_AXI_rresp, 
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
  SLOT_4_AXI_awaddr, SLOT_4_AXI_awprot, SLOT_4_AXI_awvalid, SLOT_4_AXI_awready, 
  SLOT_4_AXI_wdata, SLOT_4_AXI_wstrb, SLOT_4_AXI_wvalid, SLOT_4_AXI_wready, 
  SLOT_4_AXI_bresp, SLOT_4_AXI_bvalid, SLOT_4_AXI_bready, SLOT_4_AXI_araddr, 
  SLOT_4_AXI_arprot, SLOT_4_AXI_arvalid, SLOT_4_AXI_arready, SLOT_4_AXI_rdata, 
  SLOT_4_AXI_rresp, SLOT_4_AXI_rvalid, SLOT_4_AXI_rready, SLOT_5_AXIS_tid, 
  SLOT_5_AXIS_tdata, SLOT_5_AXIS_tstrb, SLOT_5_AXIS_tlast, SLOT_5_AXIS_tvalid, 
  SLOT_5_AXIS_tready, SLOT_6_AXI_awaddr, SLOT_6_AXI_awlen, SLOT_6_AXI_awsize, 
  SLOT_6_AXI_awcache, SLOT_6_AXI_awprot, SLOT_6_AXI_awvalid, SLOT_6_AXI_awready, 
  SLOT_6_AXI_wdata, SLOT_6_AXI_wstrb, SLOT_6_AXI_wlast, SLOT_6_AXI_wvalid, 
  SLOT_6_AXI_wready, SLOT_6_AXI_bresp, SLOT_6_AXI_bvalid, SLOT_6_AXI_bready, 
  SLOT_6_AXI_araddr, SLOT_6_AXI_arlen, SLOT_6_AXI_arsize, SLOT_6_AXI_arcache, 
  SLOT_6_AXI_arprot, SLOT_6_AXI_arvalid, SLOT_6_AXI_arready, SLOT_6_AXI_rdata, 
  SLOT_6_AXI_rresp, SLOT_6_AXI_rlast, SLOT_6_AXI_rvalid, SLOT_6_AXI_rready, 
  SLOT_7_AXIS_tid, SLOT_7_AXIS_tdest, SLOT_7_AXIS_tdata, SLOT_7_AXIS_tstrb, 
  SLOT_7_AXIS_tkeep, SLOT_7_AXIS_tlast, SLOT_7_AXIS_tuser, SLOT_7_AXIS_tvalid, 
  SLOT_7_AXIS_tready, SLOT_8_AXI_awaddr, SLOT_8_AXI_awprot, SLOT_8_AXI_awvalid, 
  SLOT_8_AXI_awready, SLOT_8_AXI_wdata, SLOT_8_AXI_wstrb, SLOT_8_AXI_wvalid, 
  SLOT_8_AXI_wready, SLOT_8_AXI_bresp, SLOT_8_AXI_bvalid, SLOT_8_AXI_bready, 
  SLOT_8_AXI_araddr, SLOT_8_AXI_arprot, SLOT_8_AXI_arvalid, SLOT_8_AXI_arready, 
  SLOT_8_AXI_rdata, SLOT_8_AXI_rresp, SLOT_8_AXI_rvalid, SLOT_8_AXI_rready, 
  SLOT_9_AXI_awaddr, SLOT_9_AXI_awlen, SLOT_9_AXI_awsize, SLOT_9_AXI_awcache, 
  SLOT_9_AXI_awprot, SLOT_9_AXI_awvalid, SLOT_9_AXI_awready, SLOT_9_AXI_wdata, 
  SLOT_9_AXI_wstrb, SLOT_9_AXI_wlast, SLOT_9_AXI_wvalid, SLOT_9_AXI_wready, 
  SLOT_9_AXI_bresp, SLOT_9_AXI_bvalid, SLOT_9_AXI_bready, SLOT_9_AXI_araddr, 
  SLOT_9_AXI_arlen, SLOT_9_AXI_arsize, SLOT_9_AXI_arcache, SLOT_9_AXI_arprot, 
  SLOT_9_AXI_arvalid, SLOT_9_AXI_arready, SLOT_9_AXI_rdata, SLOT_9_AXI_rresp, 
  SLOT_9_AXI_rlast, SLOT_9_AXI_rvalid, SLOT_9_AXI_rready, SLOT_10_AXI_awaddr, 
  SLOT_10_AXI_awlen, SLOT_10_AXI_awsize, SLOT_10_AXI_awvalid, SLOT_10_AXI_awready, 
  SLOT_10_AXI_wdata, SLOT_10_AXI_wstrb, SLOT_10_AXI_wlast, SLOT_10_AXI_wvalid, 
  SLOT_10_AXI_wready, SLOT_10_AXI_bresp, SLOT_10_AXI_bvalid, SLOT_10_AXI_bready, 
  SLOT_10_AXI_araddr, SLOT_10_AXI_arlen, SLOT_10_AXI_arsize, SLOT_10_AXI_arvalid, 
  SLOT_10_AXI_arready, SLOT_10_AXI_rdata, SLOT_10_AXI_rlast, SLOT_10_AXI_rvalid, 
  SLOT_10_AXI_rready, SLOT_11_AXI_awaddr, SLOT_11_AXI_awlen, SLOT_11_AXI_awsize, 
  SLOT_11_AXI_awcache, SLOT_11_AXI_awvalid, SLOT_11_AXI_awready, SLOT_11_AXI_wdata, 
  SLOT_11_AXI_wstrb, SLOT_11_AXI_wlast, SLOT_11_AXI_wvalid, SLOT_11_AXI_wready, 
  SLOT_11_AXI_bresp, SLOT_11_AXI_bvalid, SLOT_11_AXI_bready, SLOT_11_AXI_araddr, 
  SLOT_11_AXI_arlen, SLOT_11_AXI_arsize, SLOT_11_AXI_arvalid, SLOT_11_AXI_arready, 
  SLOT_11_AXI_rdata, SLOT_11_AXI_rlast, SLOT_11_AXI_rvalid, SLOT_11_AXI_rready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_AXI_awaddr[12:0],SLOT_0_AXI_awlen[7:0],SLOT_0_AXI_awsize[2:0],SLOT_0_AXI_awburst[1:0],SLOT_0_AXI_awlock[0:0],SLOT_0_AXI_awcache[3:0],SLOT_0_AXI_awprot[2:0],SLOT_0_AXI_awqos[3:0],SLOT_0_AXI_awuser[15:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wdata[31:0],SLOT_0_AXI_wstrb[3:0],SLOT_0_AXI_wlast,SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bresp[1:0],SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_araddr[12:0],SLOT_0_AXI_arlen[7:0],SLOT_0_AXI_arsize[2:0],SLOT_0_AXI_arburst[1:0],SLOT_0_AXI_arlock[0:0],SLOT_0_AXI_arcache[3:0],SLOT_0_AXI_arprot[2:0],SLOT_0_AXI_arqos[3:0],SLOT_0_AXI_aruser[15:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rdata[31:0],SLOT_0_AXI_rresp[1:0],SLOT_0_AXI_rlast,SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,SLOT_1_AXIS_tid[0:0],SLOT_1_AXIS_tdata[55:0],SLOT_1_AXIS_tstrb[6:0],SLOT_1_AXIS_tlast,SLOT_1_AXIS_tvalid,SLOT_1_AXIS_tready,SLOT_2_AXI_awaddr[9:0],SLOT_2_AXI_awprot[2:0],SLOT_2_AXI_awvalid,SLOT_2_AXI_awready,SLOT_2_AXI_wdata[31:0],SLOT_2_AXI_wstrb[3:0],SLOT_2_AXI_wvalid,SLOT_2_AXI_wready,SLOT_2_AXI_bresp[1:0],SLOT_2_AXI_bvalid,SLOT_2_AXI_bready,SLOT_2_AXI_araddr[9:0],SLOT_2_AXI_arprot[2:0],SLOT_2_AXI_arvalid,SLOT_2_AXI_arready,SLOT_2_AXI_rdata[31:0],SLOT_2_AXI_rresp[1:0],SLOT_2_AXI_rvalid,SLOT_2_AXI_rready,SLOT_3_AXI_awid[15:0],SLOT_3_AXI_awaddr[39:0],SLOT_3_AXI_awlen[7:0],SLOT_3_AXI_awsize[2:0],SLOT_3_AXI_awburst[1:0],SLOT_3_AXI_awlock[0:0],SLOT_3_AXI_awcache[3:0],SLOT_3_AXI_awprot[2:0],SLOT_3_AXI_awqos[3:0],SLOT_3_AXI_awuser[15:0],SLOT_3_AXI_awvalid,SLOT_3_AXI_awready,SLOT_3_AXI_wdata[127:0],SLOT_3_AXI_wstrb[15:0],SLOT_3_AXI_wlast,SLOT_3_AXI_wvalid,SLOT_3_AXI_wready,SLOT_3_AXI_bid[15:0],SLOT_3_AXI_bresp[1:0],SLOT_3_AXI_bvalid,SLOT_3_AXI_bready,SLOT_3_AXI_arid[15:0],SLOT_3_AXI_araddr[39:0],SLOT_3_AXI_arlen[7:0],SLOT_3_AXI_arsize[2:0],SLOT_3_AXI_arburst[1:0],SLOT_3_AXI_arlock[0:0],SLOT_3_AXI_arcache[3:0],SLOT_3_AXI_arprot[2:0],SLOT_3_AXI_arqos[3:0],SLOT_3_AXI_aruser[15:0],SLOT_3_AXI_arvalid,SLOT_3_AXI_arready,SLOT_3_AXI_rid[15:0],SLOT_3_AXI_rdata[127:0],SLOT_3_AXI_rresp[1:0],SLOT_3_AXI_rlast,SLOT_3_AXI_rvalid,SLOT_3_AXI_rready,SLOT_4_AXI_awaddr[15:0],SLOT_4_AXI_awprot[2:0],SLOT_4_AXI_awvalid,SLOT_4_AXI_awready,SLOT_4_AXI_wdata[31:0],SLOT_4_AXI_wstrb[3:0],SLOT_4_AXI_wvalid,SLOT_4_AXI_wready,SLOT_4_AXI_bresp[1:0],SLOT_4_AXI_bvalid,SLOT_4_AXI_bready,SLOT_4_AXI_araddr[15:0],SLOT_4_AXI_arprot[2:0],SLOT_4_AXI_arvalid,SLOT_4_AXI_arready,SLOT_4_AXI_rdata[31:0],SLOT_4_AXI_rresp[1:0],SLOT_4_AXI_rvalid,SLOT_4_AXI_rready,SLOT_5_AXIS_tid[0:0],SLOT_5_AXIS_tdata[63:0],SLOT_5_AXIS_tstrb[7:0],SLOT_5_AXIS_tlast,SLOT_5_AXIS_tvalid,SLOT_5_AXIS_tready,SLOT_6_AXI_awaddr[31:0],SLOT_6_AXI_awlen[7:0],SLOT_6_AXI_awsize[2:0],SLOT_6_AXI_awcache[3:0],SLOT_6_AXI_awprot[2:0],SLOT_6_AXI_awvalid,SLOT_6_AXI_awready,SLOT_6_AXI_wdata[31:0],SLOT_6_AXI_wstrb[3:0],SLOT_6_AXI_wlast,SLOT_6_AXI_wvalid,SLOT_6_AXI_wready,SLOT_6_AXI_bresp[1:0],SLOT_6_AXI_bvalid,SLOT_6_AXI_bready,SLOT_6_AXI_araddr[31:0],SLOT_6_AXI_arlen[7:0],SLOT_6_AXI_arsize[2:0],SLOT_6_AXI_arcache[3:0],SLOT_6_AXI_arprot[2:0],SLOT_6_AXI_arvalid,SLOT_6_AXI_arready,SLOT_6_AXI_rdata[31:0],SLOT_6_AXI_rresp[1:0],SLOT_6_AXI_rlast,SLOT_6_AXI_rvalid,SLOT_6_AXI_rready,SLOT_7_AXIS_tid[7:0],SLOT_7_AXIS_tdest[7:0],SLOT_7_AXIS_tdata[31:0],SLOT_7_AXIS_tstrb[3:0],SLOT_7_AXIS_tkeep[3:0],SLOT_7_AXIS_tlast,SLOT_7_AXIS_tuser[7:0],SLOT_7_AXIS_tvalid,SLOT_7_AXIS_tready,SLOT_8_AXI_awaddr[9:0],SLOT_8_AXI_awprot[2:0],SLOT_8_AXI_awvalid,SLOT_8_AXI_awready,SLOT_8_AXI_wdata[31:0],SLOT_8_AXI_wstrb[3:0],SLOT_8_AXI_wvalid,SLOT_8_AXI_wready,SLOT_8_AXI_bresp[1:0],SLOT_8_AXI_bvalid,SLOT_8_AXI_bready,SLOT_8_AXI_araddr[9:0],SLOT_8_AXI_arprot[2:0],SLOT_8_AXI_arvalid,SLOT_8_AXI_arready,SLOT_8_AXI_rdata[31:0],SLOT_8_AXI_rresp[1:0],SLOT_8_AXI_rvalid,SLOT_8_AXI_rready,SLOT_9_AXI_awaddr[31:0],SLOT_9_AXI_awlen[7:0],SLOT_9_AXI_awsize[2:0],SLOT_9_AXI_awcache[3:0],SLOT_9_AXI_awprot[2:0],SLOT_9_AXI_awvalid,SLOT_9_AXI_awready,SLOT_9_AXI_wdata[31:0],SLOT_9_AXI_wstrb[2:0],SLOT_9_AXI_wlast,SLOT_9_AXI_wvalid,SLOT_9_AXI_wready,SLOT_9_AXI_bresp[1:0],SLOT_9_AXI_bvalid,SLOT_9_AXI_bready,SLOT_9_AXI_araddr[31:0],SLOT_9_AXI_arlen[7:0],SLOT_9_AXI_arsize[2:0],SLOT_9_AXI_arcache[3:0],SLOT_9_AXI_arprot[2:0],SLOT_9_AXI_arvalid,SLOT_9_AXI_arready,SLOT_9_AXI_rdata[31:0],SLOT_9_AXI_rresp[1:0],SLOT_9_AXI_rlast,SLOT_9_AXI_rvalid,SLOT_9_AXI_rready,SLOT_10_AXI_awaddr[31:0],SLOT_10_AXI_awlen[7:0],SLOT_10_AXI_awsize[2:0],SLOT_10_AXI_awvalid,SLOT_10_AXI_awready,SLOT_10_AXI_wdata[127:0],SLOT_10_AXI_wstrb[15:0],SLOT_10_AXI_wlast,SLOT_10_AXI_wvalid,SLOT_10_AXI_wready,SLOT_10_AXI_bresp[1:0],SLOT_10_AXI_bvalid,SLOT_10_AXI_bready,SLOT_10_AXI_araddr[31:0],SLOT_10_AXI_arlen[7:0],SLOT_10_AXI_arsize[2:0],SLOT_10_AXI_arvalid,SLOT_10_AXI_arready,SLOT_10_AXI_rdata[127:0],SLOT_10_AXI_rlast,SLOT_10_AXI_rvalid,SLOT_10_AXI_rready,SLOT_11_AXI_awaddr[31:0],SLOT_11_AXI_awlen[7:0],SLOT_11_AXI_awsize[2:0],SLOT_11_AXI_awcache[3:0],SLOT_11_AXI_awvalid,SLOT_11_AXI_awready,SLOT_11_AXI_wdata[31:0],SLOT_11_AXI_wstrb[3:0],SLOT_11_AXI_wlast,SLOT_11_AXI_wvalid,SLOT_11_AXI_wready,SLOT_11_AXI_bresp[1:0],SLOT_11_AXI_bvalid,SLOT_11_AXI_bready,SLOT_11_AXI_araddr[31:0],SLOT_11_AXI_arlen[7:0],SLOT_11_AXI_arsize[2:0],SLOT_11_AXI_arvalid,SLOT_11_AXI_arready,SLOT_11_AXI_rdata[31:0],SLOT_11_AXI_rlast,SLOT_11_AXI_rvalid,SLOT_11_AXI_rready,resetn" */;
  input clk;
  input [12:0]SLOT_0_AXI_awaddr;
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
  input [31:0]SLOT_0_AXI_wdata;
  input [3:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wvalid;
  input SLOT_0_AXI_wready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input SLOT_0_AXI_bready;
  input [12:0]SLOT_0_AXI_araddr;
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
  input [31:0]SLOT_0_AXI_rdata;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rvalid;
  input SLOT_0_AXI_rready;
  input [0:0]SLOT_1_AXIS_tid;
  input [55:0]SLOT_1_AXIS_tdata;
  input [6:0]SLOT_1_AXIS_tstrb;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tvalid;
  input SLOT_1_AXIS_tready;
  input [9:0]SLOT_2_AXI_awaddr;
  input [2:0]SLOT_2_AXI_awprot;
  input SLOT_2_AXI_awvalid;
  input SLOT_2_AXI_awready;
  input [31:0]SLOT_2_AXI_wdata;
  input [3:0]SLOT_2_AXI_wstrb;
  input SLOT_2_AXI_wvalid;
  input SLOT_2_AXI_wready;
  input [1:0]SLOT_2_AXI_bresp;
  input SLOT_2_AXI_bvalid;
  input SLOT_2_AXI_bready;
  input [9:0]SLOT_2_AXI_araddr;
  input [2:0]SLOT_2_AXI_arprot;
  input SLOT_2_AXI_arvalid;
  input SLOT_2_AXI_arready;
  input [31:0]SLOT_2_AXI_rdata;
  input [1:0]SLOT_2_AXI_rresp;
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
  input [15:0]SLOT_3_AXI_awuser;
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
  input [15:0]SLOT_3_AXI_aruser;
  input SLOT_3_AXI_arvalid;
  input SLOT_3_AXI_arready;
  input [15:0]SLOT_3_AXI_rid;
  input [127:0]SLOT_3_AXI_rdata;
  input [1:0]SLOT_3_AXI_rresp;
  input SLOT_3_AXI_rlast;
  input SLOT_3_AXI_rvalid;
  input SLOT_3_AXI_rready;
  input [15:0]SLOT_4_AXI_awaddr;
  input [2:0]SLOT_4_AXI_awprot;
  input SLOT_4_AXI_awvalid;
  input SLOT_4_AXI_awready;
  input [31:0]SLOT_4_AXI_wdata;
  input [3:0]SLOT_4_AXI_wstrb;
  input SLOT_4_AXI_wvalid;
  input SLOT_4_AXI_wready;
  input [1:0]SLOT_4_AXI_bresp;
  input SLOT_4_AXI_bvalid;
  input SLOT_4_AXI_bready;
  input [15:0]SLOT_4_AXI_araddr;
  input [2:0]SLOT_4_AXI_arprot;
  input SLOT_4_AXI_arvalid;
  input SLOT_4_AXI_arready;
  input [31:0]SLOT_4_AXI_rdata;
  input [1:0]SLOT_4_AXI_rresp;
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
  input [3:0]SLOT_6_AXI_awcache;
  input [2:0]SLOT_6_AXI_awprot;
  input SLOT_6_AXI_awvalid;
  input SLOT_6_AXI_awready;
  input [31:0]SLOT_6_AXI_wdata;
  input [3:0]SLOT_6_AXI_wstrb;
  input SLOT_6_AXI_wlast;
  input SLOT_6_AXI_wvalid;
  input SLOT_6_AXI_wready;
  input [1:0]SLOT_6_AXI_bresp;
  input SLOT_6_AXI_bvalid;
  input SLOT_6_AXI_bready;
  input [31:0]SLOT_6_AXI_araddr;
  input [7:0]SLOT_6_AXI_arlen;
  input [2:0]SLOT_6_AXI_arsize;
  input [3:0]SLOT_6_AXI_arcache;
  input [2:0]SLOT_6_AXI_arprot;
  input SLOT_6_AXI_arvalid;
  input SLOT_6_AXI_arready;
  input [31:0]SLOT_6_AXI_rdata;
  input [1:0]SLOT_6_AXI_rresp;
  input SLOT_6_AXI_rlast;
  input SLOT_6_AXI_rvalid;
  input SLOT_6_AXI_rready;
  input [7:0]SLOT_7_AXIS_tid;
  input [7:0]SLOT_7_AXIS_tdest;
  input [31:0]SLOT_7_AXIS_tdata;
  input [3:0]SLOT_7_AXIS_tstrb;
  input [3:0]SLOT_7_AXIS_tkeep;
  input SLOT_7_AXIS_tlast;
  input [7:0]SLOT_7_AXIS_tuser;
  input SLOT_7_AXIS_tvalid;
  input SLOT_7_AXIS_tready;
  input [9:0]SLOT_8_AXI_awaddr;
  input [2:0]SLOT_8_AXI_awprot;
  input SLOT_8_AXI_awvalid;
  input SLOT_8_AXI_awready;
  input [31:0]SLOT_8_AXI_wdata;
  input [3:0]SLOT_8_AXI_wstrb;
  input SLOT_8_AXI_wvalid;
  input SLOT_8_AXI_wready;
  input [1:0]SLOT_8_AXI_bresp;
  input SLOT_8_AXI_bvalid;
  input SLOT_8_AXI_bready;
  input [9:0]SLOT_8_AXI_araddr;
  input [2:0]SLOT_8_AXI_arprot;
  input SLOT_8_AXI_arvalid;
  input SLOT_8_AXI_arready;
  input [31:0]SLOT_8_AXI_rdata;
  input [1:0]SLOT_8_AXI_rresp;
  input SLOT_8_AXI_rvalid;
  input SLOT_8_AXI_rready;
  input [31:0]SLOT_9_AXI_awaddr;
  input [7:0]SLOT_9_AXI_awlen;
  input [2:0]SLOT_9_AXI_awsize;
  input [3:0]SLOT_9_AXI_awcache;
  input [2:0]SLOT_9_AXI_awprot;
  input SLOT_9_AXI_awvalid;
  input SLOT_9_AXI_awready;
  input [31:0]SLOT_9_AXI_wdata;
  input [2:0]SLOT_9_AXI_wstrb;
  input SLOT_9_AXI_wlast;
  input SLOT_9_AXI_wvalid;
  input SLOT_9_AXI_wready;
  input [1:0]SLOT_9_AXI_bresp;
  input SLOT_9_AXI_bvalid;
  input SLOT_9_AXI_bready;
  input [31:0]SLOT_9_AXI_araddr;
  input [7:0]SLOT_9_AXI_arlen;
  input [2:0]SLOT_9_AXI_arsize;
  input [3:0]SLOT_9_AXI_arcache;
  input [2:0]SLOT_9_AXI_arprot;
  input SLOT_9_AXI_arvalid;
  input SLOT_9_AXI_arready;
  input [31:0]SLOT_9_AXI_rdata;
  input [1:0]SLOT_9_AXI_rresp;
  input SLOT_9_AXI_rlast;
  input SLOT_9_AXI_rvalid;
  input SLOT_9_AXI_rready;
  input [31:0]SLOT_10_AXI_awaddr;
  input [7:0]SLOT_10_AXI_awlen;
  input [2:0]SLOT_10_AXI_awsize;
  input SLOT_10_AXI_awvalid;
  input SLOT_10_AXI_awready;
  input [127:0]SLOT_10_AXI_wdata;
  input [15:0]SLOT_10_AXI_wstrb;
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
  input [127:0]SLOT_10_AXI_rdata;
  input SLOT_10_AXI_rlast;
  input SLOT_10_AXI_rvalid;
  input SLOT_10_AXI_rready;
  input [31:0]SLOT_11_AXI_awaddr;
  input [7:0]SLOT_11_AXI_awlen;
  input [2:0]SLOT_11_AXI_awsize;
  input [3:0]SLOT_11_AXI_awcache;
  input SLOT_11_AXI_awvalid;
  input SLOT_11_AXI_awready;
  input [31:0]SLOT_11_AXI_wdata;
  input [3:0]SLOT_11_AXI_wstrb;
  input SLOT_11_AXI_wlast;
  input SLOT_11_AXI_wvalid;
  input SLOT_11_AXI_wready;
  input [1:0]SLOT_11_AXI_bresp;
  input SLOT_11_AXI_bvalid;
  input SLOT_11_AXI_bready;
  input [31:0]SLOT_11_AXI_araddr;
  input [7:0]SLOT_11_AXI_arlen;
  input [2:0]SLOT_11_AXI_arsize;
  input SLOT_11_AXI_arvalid;
  input SLOT_11_AXI_arready;
  input [31:0]SLOT_11_AXI_rdata;
  input SLOT_11_AXI_rlast;
  input SLOT_11_AXI_rvalid;
  input SLOT_11_AXI_rready;
  input resetn;
endmodule
