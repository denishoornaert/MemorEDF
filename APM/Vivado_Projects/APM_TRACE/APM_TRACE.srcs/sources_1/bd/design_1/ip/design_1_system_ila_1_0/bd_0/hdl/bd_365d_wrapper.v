//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_365d_wrapper.bd
//Design : bd_365d_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_365d_wrapper
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
  input [12:0]SLOT_0_AXI_araddr;
  input [1:0]SLOT_0_AXI_arburst;
  input [3:0]SLOT_0_AXI_arcache;
  input [7:0]SLOT_0_AXI_arlen;
  input [0:0]SLOT_0_AXI_arlock;
  input [2:0]SLOT_0_AXI_arprot;
  input [3:0]SLOT_0_AXI_arqos;
  input SLOT_0_AXI_arready;
  input [2:0]SLOT_0_AXI_arsize;
  input [15:0]SLOT_0_AXI_aruser;
  input SLOT_0_AXI_arvalid;
  input [12:0]SLOT_0_AXI_awaddr;
  input [1:0]SLOT_0_AXI_awburst;
  input [3:0]SLOT_0_AXI_awcache;
  input [7:0]SLOT_0_AXI_awlen;
  input [0:0]SLOT_0_AXI_awlock;
  input [2:0]SLOT_0_AXI_awprot;
  input [3:0]SLOT_0_AXI_awqos;
  input SLOT_0_AXI_awready;
  input [2:0]SLOT_0_AXI_awsize;
  input [15:0]SLOT_0_AXI_awuser;
  input SLOT_0_AXI_awvalid;
  input SLOT_0_AXI_bready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input [31:0]SLOT_0_AXI_rdata;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rready;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rvalid;
  input [31:0]SLOT_0_AXI_wdata;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wready;
  input [3:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wvalid;
  input [31:0]SLOT_10_AXI_araddr;
  input [7:0]SLOT_10_AXI_arlen;
  input SLOT_10_AXI_arready;
  input [2:0]SLOT_10_AXI_arsize;
  input SLOT_10_AXI_arvalid;
  input [31:0]SLOT_10_AXI_awaddr;
  input [7:0]SLOT_10_AXI_awlen;
  input SLOT_10_AXI_awready;
  input [2:0]SLOT_10_AXI_awsize;
  input SLOT_10_AXI_awvalid;
  input SLOT_10_AXI_bready;
  input [1:0]SLOT_10_AXI_bresp;
  input SLOT_10_AXI_bvalid;
  input [31:0]SLOT_10_AXI_rdata;
  input SLOT_10_AXI_rlast;
  input SLOT_10_AXI_rready;
  input SLOT_10_AXI_rvalid;
  input [31:0]SLOT_10_AXI_wdata;
  input SLOT_10_AXI_wlast;
  input SLOT_10_AXI_wready;
  input [3:0]SLOT_10_AXI_wstrb;
  input SLOT_10_AXI_wvalid;
  input [31:0]SLOT_11_AXI_araddr;
  input [7:0]SLOT_11_AXI_arlen;
  input SLOT_11_AXI_arready;
  input [2:0]SLOT_11_AXI_arsize;
  input SLOT_11_AXI_arvalid;
  input [31:0]SLOT_11_AXI_awaddr;
  input [3:0]SLOT_11_AXI_awcache;
  input [7:0]SLOT_11_AXI_awlen;
  input SLOT_11_AXI_awready;
  input [2:0]SLOT_11_AXI_awsize;
  input SLOT_11_AXI_awvalid;
  input SLOT_11_AXI_bready;
  input [1:0]SLOT_11_AXI_bresp;
  input SLOT_11_AXI_bvalid;
  input [31:0]SLOT_11_AXI_rdata;
  input SLOT_11_AXI_rlast;
  input SLOT_11_AXI_rready;
  input SLOT_11_AXI_rvalid;
  input [31:0]SLOT_11_AXI_wdata;
  input SLOT_11_AXI_wlast;
  input SLOT_11_AXI_wready;
  input [3:0]SLOT_11_AXI_wstrb;
  input SLOT_11_AXI_wvalid;
  input [55:0]SLOT_1_AXIS_tdata;
  input [0:0]SLOT_1_AXIS_tid;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tready;
  input [6:0]SLOT_1_AXIS_tstrb;
  input SLOT_1_AXIS_tvalid;
  input [9:0]SLOT_2_AXI_araddr;
  input [2:0]SLOT_2_AXI_arprot;
  input SLOT_2_AXI_arready;
  input SLOT_2_AXI_arvalid;
  input [9:0]SLOT_2_AXI_awaddr;
  input [2:0]SLOT_2_AXI_awprot;
  input SLOT_2_AXI_awready;
  input SLOT_2_AXI_awvalid;
  input SLOT_2_AXI_bready;
  input [1:0]SLOT_2_AXI_bresp;
  input SLOT_2_AXI_bvalid;
  input [31:0]SLOT_2_AXI_rdata;
  input SLOT_2_AXI_rready;
  input [1:0]SLOT_2_AXI_rresp;
  input SLOT_2_AXI_rvalid;
  input [31:0]SLOT_2_AXI_wdata;
  input SLOT_2_AXI_wready;
  input [3:0]SLOT_2_AXI_wstrb;
  input SLOT_2_AXI_wvalid;
  input [39:0]SLOT_3_AXI_araddr;
  input [1:0]SLOT_3_AXI_arburst;
  input [3:0]SLOT_3_AXI_arcache;
  input [15:0]SLOT_3_AXI_arid;
  input [7:0]SLOT_3_AXI_arlen;
  input [0:0]SLOT_3_AXI_arlock;
  input [2:0]SLOT_3_AXI_arprot;
  input [3:0]SLOT_3_AXI_arqos;
  input SLOT_3_AXI_arready;
  input [2:0]SLOT_3_AXI_arsize;
  input [15:0]SLOT_3_AXI_aruser;
  input SLOT_3_AXI_arvalid;
  input [39:0]SLOT_3_AXI_awaddr;
  input [1:0]SLOT_3_AXI_awburst;
  input [3:0]SLOT_3_AXI_awcache;
  input [15:0]SLOT_3_AXI_awid;
  input [7:0]SLOT_3_AXI_awlen;
  input [0:0]SLOT_3_AXI_awlock;
  input [2:0]SLOT_3_AXI_awprot;
  input [3:0]SLOT_3_AXI_awqos;
  input SLOT_3_AXI_awready;
  input [2:0]SLOT_3_AXI_awsize;
  input [15:0]SLOT_3_AXI_awuser;
  input SLOT_3_AXI_awvalid;
  input [15:0]SLOT_3_AXI_bid;
  input SLOT_3_AXI_bready;
  input [1:0]SLOT_3_AXI_bresp;
  input SLOT_3_AXI_bvalid;
  input [127:0]SLOT_3_AXI_rdata;
  input [15:0]SLOT_3_AXI_rid;
  input SLOT_3_AXI_rlast;
  input SLOT_3_AXI_rready;
  input [1:0]SLOT_3_AXI_rresp;
  input SLOT_3_AXI_rvalid;
  input [127:0]SLOT_3_AXI_wdata;
  input SLOT_3_AXI_wlast;
  input SLOT_3_AXI_wready;
  input [15:0]SLOT_3_AXI_wstrb;
  input SLOT_3_AXI_wvalid;
  input [15:0]SLOT_4_AXI_araddr;
  input [2:0]SLOT_4_AXI_arprot;
  input SLOT_4_AXI_arready;
  input SLOT_4_AXI_arvalid;
  input [15:0]SLOT_4_AXI_awaddr;
  input [2:0]SLOT_4_AXI_awprot;
  input SLOT_4_AXI_awready;
  input SLOT_4_AXI_awvalid;
  input SLOT_4_AXI_bready;
  input [1:0]SLOT_4_AXI_bresp;
  input SLOT_4_AXI_bvalid;
  input [31:0]SLOT_4_AXI_rdata;
  input SLOT_4_AXI_rready;
  input [1:0]SLOT_4_AXI_rresp;
  input SLOT_4_AXI_rvalid;
  input [31:0]SLOT_4_AXI_wdata;
  input SLOT_4_AXI_wready;
  input [3:0]SLOT_4_AXI_wstrb;
  input SLOT_4_AXI_wvalid;
  input [31:0]SLOT_5_AXIS_tdata;
  input [0:0]SLOT_5_AXIS_tid;
  input SLOT_5_AXIS_tlast;
  input SLOT_5_AXIS_tready;
  input [3:0]SLOT_5_AXIS_tstrb;
  input SLOT_5_AXIS_tvalid;
  input [31:0]SLOT_6_AXI_araddr;
  input [3:0]SLOT_6_AXI_arcache;
  input [7:0]SLOT_6_AXI_arlen;
  input [2:0]SLOT_6_AXI_arprot;
  input SLOT_6_AXI_arready;
  input [2:0]SLOT_6_AXI_arsize;
  input SLOT_6_AXI_arvalid;
  input [31:0]SLOT_6_AXI_awaddr;
  input [3:0]SLOT_6_AXI_awcache;
  input [7:0]SLOT_6_AXI_awlen;
  input [2:0]SLOT_6_AXI_awprot;
  input SLOT_6_AXI_awready;
  input [2:0]SLOT_6_AXI_awsize;
  input SLOT_6_AXI_awvalid;
  input SLOT_6_AXI_bready;
  input [1:0]SLOT_6_AXI_bresp;
  input SLOT_6_AXI_bvalid;
  input [31:0]SLOT_6_AXI_rdata;
  input SLOT_6_AXI_rlast;
  input SLOT_6_AXI_rready;
  input [1:0]SLOT_6_AXI_rresp;
  input SLOT_6_AXI_rvalid;
  input [31:0]SLOT_6_AXI_wdata;
  input SLOT_6_AXI_wlast;
  input SLOT_6_AXI_wready;
  input [3:0]SLOT_6_AXI_wstrb;
  input SLOT_6_AXI_wvalid;
  input [31:0]SLOT_7_AXIS_tdata;
  input [7:0]SLOT_7_AXIS_tdest;
  input [7:0]SLOT_7_AXIS_tid;
  input [3:0]SLOT_7_AXIS_tkeep;
  input SLOT_7_AXIS_tlast;
  input SLOT_7_AXIS_tready;
  input [3:0]SLOT_7_AXIS_tstrb;
  input [7:0]SLOT_7_AXIS_tuser;
  input SLOT_7_AXIS_tvalid;
  input [9:0]SLOT_8_AXI_araddr;
  input [2:0]SLOT_8_AXI_arprot;
  input SLOT_8_AXI_arready;
  input SLOT_8_AXI_arvalid;
  input [9:0]SLOT_8_AXI_awaddr;
  input [2:0]SLOT_8_AXI_awprot;
  input SLOT_8_AXI_awready;
  input SLOT_8_AXI_awvalid;
  input SLOT_8_AXI_bready;
  input [1:0]SLOT_8_AXI_bresp;
  input SLOT_8_AXI_bvalid;
  input [31:0]SLOT_8_AXI_rdata;
  input SLOT_8_AXI_rready;
  input [1:0]SLOT_8_AXI_rresp;
  input SLOT_8_AXI_rvalid;
  input [31:0]SLOT_8_AXI_wdata;
  input SLOT_8_AXI_wready;
  input [3:0]SLOT_8_AXI_wstrb;
  input SLOT_8_AXI_wvalid;
  input [31:0]SLOT_9_AXI_araddr;
  input [3:0]SLOT_9_AXI_arcache;
  input [7:0]SLOT_9_AXI_arlen;
  input [2:0]SLOT_9_AXI_arprot;
  input SLOT_9_AXI_arready;
  input [2:0]SLOT_9_AXI_arsize;
  input SLOT_9_AXI_arvalid;
  input [31:0]SLOT_9_AXI_awaddr;
  input [3:0]SLOT_9_AXI_awcache;
  input [7:0]SLOT_9_AXI_awlen;
  input [2:0]SLOT_9_AXI_awprot;
  input SLOT_9_AXI_awready;
  input [2:0]SLOT_9_AXI_awsize;
  input SLOT_9_AXI_awvalid;
  input SLOT_9_AXI_bready;
  input [1:0]SLOT_9_AXI_bresp;
  input SLOT_9_AXI_bvalid;
  input [31:0]SLOT_9_AXI_rdata;
  input SLOT_9_AXI_rlast;
  input SLOT_9_AXI_rready;
  input [1:0]SLOT_9_AXI_rresp;
  input SLOT_9_AXI_rvalid;
  input [31:0]SLOT_9_AXI_wdata;
  input SLOT_9_AXI_wlast;
  input SLOT_9_AXI_wready;
  input [2:0]SLOT_9_AXI_wstrb;
  input SLOT_9_AXI_wvalid;
  input clk;
  input resetn;

  wire [12:0]SLOT_0_AXI_araddr;
  wire [1:0]SLOT_0_AXI_arburst;
  wire [3:0]SLOT_0_AXI_arcache;
  wire [7:0]SLOT_0_AXI_arlen;
  wire [0:0]SLOT_0_AXI_arlock;
  wire [2:0]SLOT_0_AXI_arprot;
  wire [3:0]SLOT_0_AXI_arqos;
  wire SLOT_0_AXI_arready;
  wire [2:0]SLOT_0_AXI_arsize;
  wire [15:0]SLOT_0_AXI_aruser;
  wire SLOT_0_AXI_arvalid;
  wire [12:0]SLOT_0_AXI_awaddr;
  wire [1:0]SLOT_0_AXI_awburst;
  wire [3:0]SLOT_0_AXI_awcache;
  wire [7:0]SLOT_0_AXI_awlen;
  wire [0:0]SLOT_0_AXI_awlock;
  wire [2:0]SLOT_0_AXI_awprot;
  wire [3:0]SLOT_0_AXI_awqos;
  wire SLOT_0_AXI_awready;
  wire [2:0]SLOT_0_AXI_awsize;
  wire [15:0]SLOT_0_AXI_awuser;
  wire SLOT_0_AXI_awvalid;
  wire SLOT_0_AXI_bready;
  wire [1:0]SLOT_0_AXI_bresp;
  wire SLOT_0_AXI_bvalid;
  wire [31:0]SLOT_0_AXI_rdata;
  wire SLOT_0_AXI_rlast;
  wire SLOT_0_AXI_rready;
  wire [1:0]SLOT_0_AXI_rresp;
  wire SLOT_0_AXI_rvalid;
  wire [31:0]SLOT_0_AXI_wdata;
  wire SLOT_0_AXI_wlast;
  wire SLOT_0_AXI_wready;
  wire [3:0]SLOT_0_AXI_wstrb;
  wire SLOT_0_AXI_wvalid;
  wire [31:0]SLOT_10_AXI_araddr;
  wire [7:0]SLOT_10_AXI_arlen;
  wire SLOT_10_AXI_arready;
  wire [2:0]SLOT_10_AXI_arsize;
  wire SLOT_10_AXI_arvalid;
  wire [31:0]SLOT_10_AXI_awaddr;
  wire [7:0]SLOT_10_AXI_awlen;
  wire SLOT_10_AXI_awready;
  wire [2:0]SLOT_10_AXI_awsize;
  wire SLOT_10_AXI_awvalid;
  wire SLOT_10_AXI_bready;
  wire [1:0]SLOT_10_AXI_bresp;
  wire SLOT_10_AXI_bvalid;
  wire [31:0]SLOT_10_AXI_rdata;
  wire SLOT_10_AXI_rlast;
  wire SLOT_10_AXI_rready;
  wire SLOT_10_AXI_rvalid;
  wire [31:0]SLOT_10_AXI_wdata;
  wire SLOT_10_AXI_wlast;
  wire SLOT_10_AXI_wready;
  wire [3:0]SLOT_10_AXI_wstrb;
  wire SLOT_10_AXI_wvalid;
  wire [31:0]SLOT_11_AXI_araddr;
  wire [7:0]SLOT_11_AXI_arlen;
  wire SLOT_11_AXI_arready;
  wire [2:0]SLOT_11_AXI_arsize;
  wire SLOT_11_AXI_arvalid;
  wire [31:0]SLOT_11_AXI_awaddr;
  wire [3:0]SLOT_11_AXI_awcache;
  wire [7:0]SLOT_11_AXI_awlen;
  wire SLOT_11_AXI_awready;
  wire [2:0]SLOT_11_AXI_awsize;
  wire SLOT_11_AXI_awvalid;
  wire SLOT_11_AXI_bready;
  wire [1:0]SLOT_11_AXI_bresp;
  wire SLOT_11_AXI_bvalid;
  wire [31:0]SLOT_11_AXI_rdata;
  wire SLOT_11_AXI_rlast;
  wire SLOT_11_AXI_rready;
  wire SLOT_11_AXI_rvalid;
  wire [31:0]SLOT_11_AXI_wdata;
  wire SLOT_11_AXI_wlast;
  wire SLOT_11_AXI_wready;
  wire [3:0]SLOT_11_AXI_wstrb;
  wire SLOT_11_AXI_wvalid;
  wire [55:0]SLOT_1_AXIS_tdata;
  wire [0:0]SLOT_1_AXIS_tid;
  wire SLOT_1_AXIS_tlast;
  wire SLOT_1_AXIS_tready;
  wire [6:0]SLOT_1_AXIS_tstrb;
  wire SLOT_1_AXIS_tvalid;
  wire [9:0]SLOT_2_AXI_araddr;
  wire [2:0]SLOT_2_AXI_arprot;
  wire SLOT_2_AXI_arready;
  wire SLOT_2_AXI_arvalid;
  wire [9:0]SLOT_2_AXI_awaddr;
  wire [2:0]SLOT_2_AXI_awprot;
  wire SLOT_2_AXI_awready;
  wire SLOT_2_AXI_awvalid;
  wire SLOT_2_AXI_bready;
  wire [1:0]SLOT_2_AXI_bresp;
  wire SLOT_2_AXI_bvalid;
  wire [31:0]SLOT_2_AXI_rdata;
  wire SLOT_2_AXI_rready;
  wire [1:0]SLOT_2_AXI_rresp;
  wire SLOT_2_AXI_rvalid;
  wire [31:0]SLOT_2_AXI_wdata;
  wire SLOT_2_AXI_wready;
  wire [3:0]SLOT_2_AXI_wstrb;
  wire SLOT_2_AXI_wvalid;
  wire [39:0]SLOT_3_AXI_araddr;
  wire [1:0]SLOT_3_AXI_arburst;
  wire [3:0]SLOT_3_AXI_arcache;
  wire [15:0]SLOT_3_AXI_arid;
  wire [7:0]SLOT_3_AXI_arlen;
  wire [0:0]SLOT_3_AXI_arlock;
  wire [2:0]SLOT_3_AXI_arprot;
  wire [3:0]SLOT_3_AXI_arqos;
  wire SLOT_3_AXI_arready;
  wire [2:0]SLOT_3_AXI_arsize;
  wire [15:0]SLOT_3_AXI_aruser;
  wire SLOT_3_AXI_arvalid;
  wire [39:0]SLOT_3_AXI_awaddr;
  wire [1:0]SLOT_3_AXI_awburst;
  wire [3:0]SLOT_3_AXI_awcache;
  wire [15:0]SLOT_3_AXI_awid;
  wire [7:0]SLOT_3_AXI_awlen;
  wire [0:0]SLOT_3_AXI_awlock;
  wire [2:0]SLOT_3_AXI_awprot;
  wire [3:0]SLOT_3_AXI_awqos;
  wire SLOT_3_AXI_awready;
  wire [2:0]SLOT_3_AXI_awsize;
  wire [15:0]SLOT_3_AXI_awuser;
  wire SLOT_3_AXI_awvalid;
  wire [15:0]SLOT_3_AXI_bid;
  wire SLOT_3_AXI_bready;
  wire [1:0]SLOT_3_AXI_bresp;
  wire SLOT_3_AXI_bvalid;
  wire [127:0]SLOT_3_AXI_rdata;
  wire [15:0]SLOT_3_AXI_rid;
  wire SLOT_3_AXI_rlast;
  wire SLOT_3_AXI_rready;
  wire [1:0]SLOT_3_AXI_rresp;
  wire SLOT_3_AXI_rvalid;
  wire [127:0]SLOT_3_AXI_wdata;
  wire SLOT_3_AXI_wlast;
  wire SLOT_3_AXI_wready;
  wire [15:0]SLOT_3_AXI_wstrb;
  wire SLOT_3_AXI_wvalid;
  wire [15:0]SLOT_4_AXI_araddr;
  wire [2:0]SLOT_4_AXI_arprot;
  wire SLOT_4_AXI_arready;
  wire SLOT_4_AXI_arvalid;
  wire [15:0]SLOT_4_AXI_awaddr;
  wire [2:0]SLOT_4_AXI_awprot;
  wire SLOT_4_AXI_awready;
  wire SLOT_4_AXI_awvalid;
  wire SLOT_4_AXI_bready;
  wire [1:0]SLOT_4_AXI_bresp;
  wire SLOT_4_AXI_bvalid;
  wire [31:0]SLOT_4_AXI_rdata;
  wire SLOT_4_AXI_rready;
  wire [1:0]SLOT_4_AXI_rresp;
  wire SLOT_4_AXI_rvalid;
  wire [31:0]SLOT_4_AXI_wdata;
  wire SLOT_4_AXI_wready;
  wire [3:0]SLOT_4_AXI_wstrb;
  wire SLOT_4_AXI_wvalid;
  wire [31:0]SLOT_5_AXIS_tdata;
  wire [0:0]SLOT_5_AXIS_tid;
  wire SLOT_5_AXIS_tlast;
  wire SLOT_5_AXIS_tready;
  wire [3:0]SLOT_5_AXIS_tstrb;
  wire SLOT_5_AXIS_tvalid;
  wire [31:0]SLOT_6_AXI_araddr;
  wire [3:0]SLOT_6_AXI_arcache;
  wire [7:0]SLOT_6_AXI_arlen;
  wire [2:0]SLOT_6_AXI_arprot;
  wire SLOT_6_AXI_arready;
  wire [2:0]SLOT_6_AXI_arsize;
  wire SLOT_6_AXI_arvalid;
  wire [31:0]SLOT_6_AXI_awaddr;
  wire [3:0]SLOT_6_AXI_awcache;
  wire [7:0]SLOT_6_AXI_awlen;
  wire [2:0]SLOT_6_AXI_awprot;
  wire SLOT_6_AXI_awready;
  wire [2:0]SLOT_6_AXI_awsize;
  wire SLOT_6_AXI_awvalid;
  wire SLOT_6_AXI_bready;
  wire [1:0]SLOT_6_AXI_bresp;
  wire SLOT_6_AXI_bvalid;
  wire [31:0]SLOT_6_AXI_rdata;
  wire SLOT_6_AXI_rlast;
  wire SLOT_6_AXI_rready;
  wire [1:0]SLOT_6_AXI_rresp;
  wire SLOT_6_AXI_rvalid;
  wire [31:0]SLOT_6_AXI_wdata;
  wire SLOT_6_AXI_wlast;
  wire SLOT_6_AXI_wready;
  wire [3:0]SLOT_6_AXI_wstrb;
  wire SLOT_6_AXI_wvalid;
  wire [31:0]SLOT_7_AXIS_tdata;
  wire [7:0]SLOT_7_AXIS_tdest;
  wire [7:0]SLOT_7_AXIS_tid;
  wire [3:0]SLOT_7_AXIS_tkeep;
  wire SLOT_7_AXIS_tlast;
  wire SLOT_7_AXIS_tready;
  wire [3:0]SLOT_7_AXIS_tstrb;
  wire [7:0]SLOT_7_AXIS_tuser;
  wire SLOT_7_AXIS_tvalid;
  wire [9:0]SLOT_8_AXI_araddr;
  wire [2:0]SLOT_8_AXI_arprot;
  wire SLOT_8_AXI_arready;
  wire SLOT_8_AXI_arvalid;
  wire [9:0]SLOT_8_AXI_awaddr;
  wire [2:0]SLOT_8_AXI_awprot;
  wire SLOT_8_AXI_awready;
  wire SLOT_8_AXI_awvalid;
  wire SLOT_8_AXI_bready;
  wire [1:0]SLOT_8_AXI_bresp;
  wire SLOT_8_AXI_bvalid;
  wire [31:0]SLOT_8_AXI_rdata;
  wire SLOT_8_AXI_rready;
  wire [1:0]SLOT_8_AXI_rresp;
  wire SLOT_8_AXI_rvalid;
  wire [31:0]SLOT_8_AXI_wdata;
  wire SLOT_8_AXI_wready;
  wire [3:0]SLOT_8_AXI_wstrb;
  wire SLOT_8_AXI_wvalid;
  wire [31:0]SLOT_9_AXI_araddr;
  wire [3:0]SLOT_9_AXI_arcache;
  wire [7:0]SLOT_9_AXI_arlen;
  wire [2:0]SLOT_9_AXI_arprot;
  wire SLOT_9_AXI_arready;
  wire [2:0]SLOT_9_AXI_arsize;
  wire SLOT_9_AXI_arvalid;
  wire [31:0]SLOT_9_AXI_awaddr;
  wire [3:0]SLOT_9_AXI_awcache;
  wire [7:0]SLOT_9_AXI_awlen;
  wire [2:0]SLOT_9_AXI_awprot;
  wire SLOT_9_AXI_awready;
  wire [2:0]SLOT_9_AXI_awsize;
  wire SLOT_9_AXI_awvalid;
  wire SLOT_9_AXI_bready;
  wire [1:0]SLOT_9_AXI_bresp;
  wire SLOT_9_AXI_bvalid;
  wire [31:0]SLOT_9_AXI_rdata;
  wire SLOT_9_AXI_rlast;
  wire SLOT_9_AXI_rready;
  wire [1:0]SLOT_9_AXI_rresp;
  wire SLOT_9_AXI_rvalid;
  wire [31:0]SLOT_9_AXI_wdata;
  wire SLOT_9_AXI_wlast;
  wire SLOT_9_AXI_wready;
  wire [2:0]SLOT_9_AXI_wstrb;
  wire SLOT_9_AXI_wvalid;
  wire clk;
  wire resetn;

  bd_365d bd_365d_i
       (.SLOT_0_AXI_araddr(SLOT_0_AXI_araddr),
        .SLOT_0_AXI_arburst(SLOT_0_AXI_arburst),
        .SLOT_0_AXI_arcache(SLOT_0_AXI_arcache),
        .SLOT_0_AXI_arlen(SLOT_0_AXI_arlen),
        .SLOT_0_AXI_arlock(SLOT_0_AXI_arlock),
        .SLOT_0_AXI_arprot(SLOT_0_AXI_arprot),
        .SLOT_0_AXI_arqos(SLOT_0_AXI_arqos),
        .SLOT_0_AXI_arready(SLOT_0_AXI_arready),
        .SLOT_0_AXI_arsize(SLOT_0_AXI_arsize),
        .SLOT_0_AXI_aruser(SLOT_0_AXI_aruser),
        .SLOT_0_AXI_arvalid(SLOT_0_AXI_arvalid),
        .SLOT_0_AXI_awaddr(SLOT_0_AXI_awaddr),
        .SLOT_0_AXI_awburst(SLOT_0_AXI_awburst),
        .SLOT_0_AXI_awcache(SLOT_0_AXI_awcache),
        .SLOT_0_AXI_awlen(SLOT_0_AXI_awlen),
        .SLOT_0_AXI_awlock(SLOT_0_AXI_awlock),
        .SLOT_0_AXI_awprot(SLOT_0_AXI_awprot),
        .SLOT_0_AXI_awqos(SLOT_0_AXI_awqos),
        .SLOT_0_AXI_awready(SLOT_0_AXI_awready),
        .SLOT_0_AXI_awsize(SLOT_0_AXI_awsize),
        .SLOT_0_AXI_awuser(SLOT_0_AXI_awuser),
        .SLOT_0_AXI_awvalid(SLOT_0_AXI_awvalid),
        .SLOT_0_AXI_bready(SLOT_0_AXI_bready),
        .SLOT_0_AXI_bresp(SLOT_0_AXI_bresp),
        .SLOT_0_AXI_bvalid(SLOT_0_AXI_bvalid),
        .SLOT_0_AXI_rdata(SLOT_0_AXI_rdata),
        .SLOT_0_AXI_rlast(SLOT_0_AXI_rlast),
        .SLOT_0_AXI_rready(SLOT_0_AXI_rready),
        .SLOT_0_AXI_rresp(SLOT_0_AXI_rresp),
        .SLOT_0_AXI_rvalid(SLOT_0_AXI_rvalid),
        .SLOT_0_AXI_wdata(SLOT_0_AXI_wdata),
        .SLOT_0_AXI_wlast(SLOT_0_AXI_wlast),
        .SLOT_0_AXI_wready(SLOT_0_AXI_wready),
        .SLOT_0_AXI_wstrb(SLOT_0_AXI_wstrb),
        .SLOT_0_AXI_wvalid(SLOT_0_AXI_wvalid),
        .SLOT_10_AXI_araddr(SLOT_10_AXI_araddr),
        .SLOT_10_AXI_arlen(SLOT_10_AXI_arlen),
        .SLOT_10_AXI_arready(SLOT_10_AXI_arready),
        .SLOT_10_AXI_arsize(SLOT_10_AXI_arsize),
        .SLOT_10_AXI_arvalid(SLOT_10_AXI_arvalid),
        .SLOT_10_AXI_awaddr(SLOT_10_AXI_awaddr),
        .SLOT_10_AXI_awlen(SLOT_10_AXI_awlen),
        .SLOT_10_AXI_awready(SLOT_10_AXI_awready),
        .SLOT_10_AXI_awsize(SLOT_10_AXI_awsize),
        .SLOT_10_AXI_awvalid(SLOT_10_AXI_awvalid),
        .SLOT_10_AXI_bready(SLOT_10_AXI_bready),
        .SLOT_10_AXI_bresp(SLOT_10_AXI_bresp),
        .SLOT_10_AXI_bvalid(SLOT_10_AXI_bvalid),
        .SLOT_10_AXI_rdata(SLOT_10_AXI_rdata),
        .SLOT_10_AXI_rlast(SLOT_10_AXI_rlast),
        .SLOT_10_AXI_rready(SLOT_10_AXI_rready),
        .SLOT_10_AXI_rvalid(SLOT_10_AXI_rvalid),
        .SLOT_10_AXI_wdata(SLOT_10_AXI_wdata),
        .SLOT_10_AXI_wlast(SLOT_10_AXI_wlast),
        .SLOT_10_AXI_wready(SLOT_10_AXI_wready),
        .SLOT_10_AXI_wstrb(SLOT_10_AXI_wstrb),
        .SLOT_10_AXI_wvalid(SLOT_10_AXI_wvalid),
        .SLOT_11_AXI_araddr(SLOT_11_AXI_araddr),
        .SLOT_11_AXI_arlen(SLOT_11_AXI_arlen),
        .SLOT_11_AXI_arready(SLOT_11_AXI_arready),
        .SLOT_11_AXI_arsize(SLOT_11_AXI_arsize),
        .SLOT_11_AXI_arvalid(SLOT_11_AXI_arvalid),
        .SLOT_11_AXI_awaddr(SLOT_11_AXI_awaddr),
        .SLOT_11_AXI_awcache(SLOT_11_AXI_awcache),
        .SLOT_11_AXI_awlen(SLOT_11_AXI_awlen),
        .SLOT_11_AXI_awready(SLOT_11_AXI_awready),
        .SLOT_11_AXI_awsize(SLOT_11_AXI_awsize),
        .SLOT_11_AXI_awvalid(SLOT_11_AXI_awvalid),
        .SLOT_11_AXI_bready(SLOT_11_AXI_bready),
        .SLOT_11_AXI_bresp(SLOT_11_AXI_bresp),
        .SLOT_11_AXI_bvalid(SLOT_11_AXI_bvalid),
        .SLOT_11_AXI_rdata(SLOT_11_AXI_rdata),
        .SLOT_11_AXI_rlast(SLOT_11_AXI_rlast),
        .SLOT_11_AXI_rready(SLOT_11_AXI_rready),
        .SLOT_11_AXI_rvalid(SLOT_11_AXI_rvalid),
        .SLOT_11_AXI_wdata(SLOT_11_AXI_wdata),
        .SLOT_11_AXI_wlast(SLOT_11_AXI_wlast),
        .SLOT_11_AXI_wready(SLOT_11_AXI_wready),
        .SLOT_11_AXI_wstrb(SLOT_11_AXI_wstrb),
        .SLOT_11_AXI_wvalid(SLOT_11_AXI_wvalid),
        .SLOT_1_AXIS_tdata(SLOT_1_AXIS_tdata),
        .SLOT_1_AXIS_tid(SLOT_1_AXIS_tid),
        .SLOT_1_AXIS_tlast(SLOT_1_AXIS_tlast),
        .SLOT_1_AXIS_tready(SLOT_1_AXIS_tready),
        .SLOT_1_AXIS_tstrb(SLOT_1_AXIS_tstrb),
        .SLOT_1_AXIS_tvalid(SLOT_1_AXIS_tvalid),
        .SLOT_2_AXI_araddr(SLOT_2_AXI_araddr),
        .SLOT_2_AXI_arprot(SLOT_2_AXI_arprot),
        .SLOT_2_AXI_arready(SLOT_2_AXI_arready),
        .SLOT_2_AXI_arvalid(SLOT_2_AXI_arvalid),
        .SLOT_2_AXI_awaddr(SLOT_2_AXI_awaddr),
        .SLOT_2_AXI_awprot(SLOT_2_AXI_awprot),
        .SLOT_2_AXI_awready(SLOT_2_AXI_awready),
        .SLOT_2_AXI_awvalid(SLOT_2_AXI_awvalid),
        .SLOT_2_AXI_bready(SLOT_2_AXI_bready),
        .SLOT_2_AXI_bresp(SLOT_2_AXI_bresp),
        .SLOT_2_AXI_bvalid(SLOT_2_AXI_bvalid),
        .SLOT_2_AXI_rdata(SLOT_2_AXI_rdata),
        .SLOT_2_AXI_rready(SLOT_2_AXI_rready),
        .SLOT_2_AXI_rresp(SLOT_2_AXI_rresp),
        .SLOT_2_AXI_rvalid(SLOT_2_AXI_rvalid),
        .SLOT_2_AXI_wdata(SLOT_2_AXI_wdata),
        .SLOT_2_AXI_wready(SLOT_2_AXI_wready),
        .SLOT_2_AXI_wstrb(SLOT_2_AXI_wstrb),
        .SLOT_2_AXI_wvalid(SLOT_2_AXI_wvalid),
        .SLOT_3_AXI_araddr(SLOT_3_AXI_araddr),
        .SLOT_3_AXI_arburst(SLOT_3_AXI_arburst),
        .SLOT_3_AXI_arcache(SLOT_3_AXI_arcache),
        .SLOT_3_AXI_arid(SLOT_3_AXI_arid),
        .SLOT_3_AXI_arlen(SLOT_3_AXI_arlen),
        .SLOT_3_AXI_arlock(SLOT_3_AXI_arlock),
        .SLOT_3_AXI_arprot(SLOT_3_AXI_arprot),
        .SLOT_3_AXI_arqos(SLOT_3_AXI_arqos),
        .SLOT_3_AXI_arready(SLOT_3_AXI_arready),
        .SLOT_3_AXI_arsize(SLOT_3_AXI_arsize),
        .SLOT_3_AXI_aruser(SLOT_3_AXI_aruser),
        .SLOT_3_AXI_arvalid(SLOT_3_AXI_arvalid),
        .SLOT_3_AXI_awaddr(SLOT_3_AXI_awaddr),
        .SLOT_3_AXI_awburst(SLOT_3_AXI_awburst),
        .SLOT_3_AXI_awcache(SLOT_3_AXI_awcache),
        .SLOT_3_AXI_awid(SLOT_3_AXI_awid),
        .SLOT_3_AXI_awlen(SLOT_3_AXI_awlen),
        .SLOT_3_AXI_awlock(SLOT_3_AXI_awlock),
        .SLOT_3_AXI_awprot(SLOT_3_AXI_awprot),
        .SLOT_3_AXI_awqos(SLOT_3_AXI_awqos),
        .SLOT_3_AXI_awready(SLOT_3_AXI_awready),
        .SLOT_3_AXI_awsize(SLOT_3_AXI_awsize),
        .SLOT_3_AXI_awuser(SLOT_3_AXI_awuser),
        .SLOT_3_AXI_awvalid(SLOT_3_AXI_awvalid),
        .SLOT_3_AXI_bid(SLOT_3_AXI_bid),
        .SLOT_3_AXI_bready(SLOT_3_AXI_bready),
        .SLOT_3_AXI_bresp(SLOT_3_AXI_bresp),
        .SLOT_3_AXI_bvalid(SLOT_3_AXI_bvalid),
        .SLOT_3_AXI_rdata(SLOT_3_AXI_rdata),
        .SLOT_3_AXI_rid(SLOT_3_AXI_rid),
        .SLOT_3_AXI_rlast(SLOT_3_AXI_rlast),
        .SLOT_3_AXI_rready(SLOT_3_AXI_rready),
        .SLOT_3_AXI_rresp(SLOT_3_AXI_rresp),
        .SLOT_3_AXI_rvalid(SLOT_3_AXI_rvalid),
        .SLOT_3_AXI_wdata(SLOT_3_AXI_wdata),
        .SLOT_3_AXI_wlast(SLOT_3_AXI_wlast),
        .SLOT_3_AXI_wready(SLOT_3_AXI_wready),
        .SLOT_3_AXI_wstrb(SLOT_3_AXI_wstrb),
        .SLOT_3_AXI_wvalid(SLOT_3_AXI_wvalid),
        .SLOT_4_AXI_araddr(SLOT_4_AXI_araddr),
        .SLOT_4_AXI_arprot(SLOT_4_AXI_arprot),
        .SLOT_4_AXI_arready(SLOT_4_AXI_arready),
        .SLOT_4_AXI_arvalid(SLOT_4_AXI_arvalid),
        .SLOT_4_AXI_awaddr(SLOT_4_AXI_awaddr),
        .SLOT_4_AXI_awprot(SLOT_4_AXI_awprot),
        .SLOT_4_AXI_awready(SLOT_4_AXI_awready),
        .SLOT_4_AXI_awvalid(SLOT_4_AXI_awvalid),
        .SLOT_4_AXI_bready(SLOT_4_AXI_bready),
        .SLOT_4_AXI_bresp(SLOT_4_AXI_bresp),
        .SLOT_4_AXI_bvalid(SLOT_4_AXI_bvalid),
        .SLOT_4_AXI_rdata(SLOT_4_AXI_rdata),
        .SLOT_4_AXI_rready(SLOT_4_AXI_rready),
        .SLOT_4_AXI_rresp(SLOT_4_AXI_rresp),
        .SLOT_4_AXI_rvalid(SLOT_4_AXI_rvalid),
        .SLOT_4_AXI_wdata(SLOT_4_AXI_wdata),
        .SLOT_4_AXI_wready(SLOT_4_AXI_wready),
        .SLOT_4_AXI_wstrb(SLOT_4_AXI_wstrb),
        .SLOT_4_AXI_wvalid(SLOT_4_AXI_wvalid),
        .SLOT_5_AXIS_tdata(SLOT_5_AXIS_tdata),
        .SLOT_5_AXIS_tid(SLOT_5_AXIS_tid),
        .SLOT_5_AXIS_tlast(SLOT_5_AXIS_tlast),
        .SLOT_5_AXIS_tready(SLOT_5_AXIS_tready),
        .SLOT_5_AXIS_tstrb(SLOT_5_AXIS_tstrb),
        .SLOT_5_AXIS_tvalid(SLOT_5_AXIS_tvalid),
        .SLOT_6_AXI_araddr(SLOT_6_AXI_araddr),
        .SLOT_6_AXI_arcache(SLOT_6_AXI_arcache),
        .SLOT_6_AXI_arlen(SLOT_6_AXI_arlen),
        .SLOT_6_AXI_arprot(SLOT_6_AXI_arprot),
        .SLOT_6_AXI_arready(SLOT_6_AXI_arready),
        .SLOT_6_AXI_arsize(SLOT_6_AXI_arsize),
        .SLOT_6_AXI_arvalid(SLOT_6_AXI_arvalid),
        .SLOT_6_AXI_awaddr(SLOT_6_AXI_awaddr),
        .SLOT_6_AXI_awcache(SLOT_6_AXI_awcache),
        .SLOT_6_AXI_awlen(SLOT_6_AXI_awlen),
        .SLOT_6_AXI_awprot(SLOT_6_AXI_awprot),
        .SLOT_6_AXI_awready(SLOT_6_AXI_awready),
        .SLOT_6_AXI_awsize(SLOT_6_AXI_awsize),
        .SLOT_6_AXI_awvalid(SLOT_6_AXI_awvalid),
        .SLOT_6_AXI_bready(SLOT_6_AXI_bready),
        .SLOT_6_AXI_bresp(SLOT_6_AXI_bresp),
        .SLOT_6_AXI_bvalid(SLOT_6_AXI_bvalid),
        .SLOT_6_AXI_rdata(SLOT_6_AXI_rdata),
        .SLOT_6_AXI_rlast(SLOT_6_AXI_rlast),
        .SLOT_6_AXI_rready(SLOT_6_AXI_rready),
        .SLOT_6_AXI_rresp(SLOT_6_AXI_rresp),
        .SLOT_6_AXI_rvalid(SLOT_6_AXI_rvalid),
        .SLOT_6_AXI_wdata(SLOT_6_AXI_wdata),
        .SLOT_6_AXI_wlast(SLOT_6_AXI_wlast),
        .SLOT_6_AXI_wready(SLOT_6_AXI_wready),
        .SLOT_6_AXI_wstrb(SLOT_6_AXI_wstrb),
        .SLOT_6_AXI_wvalid(SLOT_6_AXI_wvalid),
        .SLOT_7_AXIS_tdata(SLOT_7_AXIS_tdata),
        .SLOT_7_AXIS_tdest(SLOT_7_AXIS_tdest),
        .SLOT_7_AXIS_tid(SLOT_7_AXIS_tid),
        .SLOT_7_AXIS_tkeep(SLOT_7_AXIS_tkeep),
        .SLOT_7_AXIS_tlast(SLOT_7_AXIS_tlast),
        .SLOT_7_AXIS_tready(SLOT_7_AXIS_tready),
        .SLOT_7_AXIS_tstrb(SLOT_7_AXIS_tstrb),
        .SLOT_7_AXIS_tuser(SLOT_7_AXIS_tuser),
        .SLOT_7_AXIS_tvalid(SLOT_7_AXIS_tvalid),
        .SLOT_8_AXI_araddr(SLOT_8_AXI_araddr),
        .SLOT_8_AXI_arprot(SLOT_8_AXI_arprot),
        .SLOT_8_AXI_arready(SLOT_8_AXI_arready),
        .SLOT_8_AXI_arvalid(SLOT_8_AXI_arvalid),
        .SLOT_8_AXI_awaddr(SLOT_8_AXI_awaddr),
        .SLOT_8_AXI_awprot(SLOT_8_AXI_awprot),
        .SLOT_8_AXI_awready(SLOT_8_AXI_awready),
        .SLOT_8_AXI_awvalid(SLOT_8_AXI_awvalid),
        .SLOT_8_AXI_bready(SLOT_8_AXI_bready),
        .SLOT_8_AXI_bresp(SLOT_8_AXI_bresp),
        .SLOT_8_AXI_bvalid(SLOT_8_AXI_bvalid),
        .SLOT_8_AXI_rdata(SLOT_8_AXI_rdata),
        .SLOT_8_AXI_rready(SLOT_8_AXI_rready),
        .SLOT_8_AXI_rresp(SLOT_8_AXI_rresp),
        .SLOT_8_AXI_rvalid(SLOT_8_AXI_rvalid),
        .SLOT_8_AXI_wdata(SLOT_8_AXI_wdata),
        .SLOT_8_AXI_wready(SLOT_8_AXI_wready),
        .SLOT_8_AXI_wstrb(SLOT_8_AXI_wstrb),
        .SLOT_8_AXI_wvalid(SLOT_8_AXI_wvalid),
        .SLOT_9_AXI_araddr(SLOT_9_AXI_araddr),
        .SLOT_9_AXI_arcache(SLOT_9_AXI_arcache),
        .SLOT_9_AXI_arlen(SLOT_9_AXI_arlen),
        .SLOT_9_AXI_arprot(SLOT_9_AXI_arprot),
        .SLOT_9_AXI_arready(SLOT_9_AXI_arready),
        .SLOT_9_AXI_arsize(SLOT_9_AXI_arsize),
        .SLOT_9_AXI_arvalid(SLOT_9_AXI_arvalid),
        .SLOT_9_AXI_awaddr(SLOT_9_AXI_awaddr),
        .SLOT_9_AXI_awcache(SLOT_9_AXI_awcache),
        .SLOT_9_AXI_awlen(SLOT_9_AXI_awlen),
        .SLOT_9_AXI_awprot(SLOT_9_AXI_awprot),
        .SLOT_9_AXI_awready(SLOT_9_AXI_awready),
        .SLOT_9_AXI_awsize(SLOT_9_AXI_awsize),
        .SLOT_9_AXI_awvalid(SLOT_9_AXI_awvalid),
        .SLOT_9_AXI_bready(SLOT_9_AXI_bready),
        .SLOT_9_AXI_bresp(SLOT_9_AXI_bresp),
        .SLOT_9_AXI_bvalid(SLOT_9_AXI_bvalid),
        .SLOT_9_AXI_rdata(SLOT_9_AXI_rdata),
        .SLOT_9_AXI_rlast(SLOT_9_AXI_rlast),
        .SLOT_9_AXI_rready(SLOT_9_AXI_rready),
        .SLOT_9_AXI_rresp(SLOT_9_AXI_rresp),
        .SLOT_9_AXI_rvalid(SLOT_9_AXI_rvalid),
        .SLOT_9_AXI_wdata(SLOT_9_AXI_wdata),
        .SLOT_9_AXI_wlast(SLOT_9_AXI_wlast),
        .SLOT_9_AXI_wready(SLOT_9_AXI_wready),
        .SLOT_9_AXI_wstrb(SLOT_9_AXI_wstrb),
        .SLOT_9_AXI_wvalid(SLOT_9_AXI_wvalid),
        .clk(clk),
        .resetn(resetn));
endmodule
