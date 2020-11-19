//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f60c_wrapper.bd
//Design : bd_f60c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_f60c_wrapper
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arburst,
    SLOT_0_AXI_arcache,
    SLOT_0_AXI_arid,
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
    SLOT_0_AXI_awid,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awlock,
    SLOT_0_AXI_awprot,
    SLOT_0_AXI_awqos,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awuser,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rid,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wstrb,
    SLOT_0_AXI_wvalid,
    SLOT_1_AXI_araddr,
    SLOT_1_AXI_arprot,
    SLOT_1_AXI_arready,
    SLOT_1_AXI_arvalid,
    SLOT_1_AXI_awaddr,
    SLOT_1_AXI_awprot,
    SLOT_1_AXI_awready,
    SLOT_1_AXI_awvalid,
    SLOT_1_AXI_bready,
    SLOT_1_AXI_bresp,
    SLOT_1_AXI_bvalid,
    SLOT_1_AXI_rdata,
    SLOT_1_AXI_rready,
    SLOT_1_AXI_rresp,
    SLOT_1_AXI_rvalid,
    SLOT_1_AXI_wdata,
    SLOT_1_AXI_wready,
    SLOT_1_AXI_wstrb,
    SLOT_1_AXI_wvalid,
    SLOT_2_AXIS_tdata,
    SLOT_2_AXIS_tid,
    SLOT_2_AXIS_tlast,
    SLOT_2_AXIS_tready,
    SLOT_2_AXIS_tstrb,
    SLOT_2_AXIS_tvalid,
    SLOT_3_AXIS_tdata,
    SLOT_3_AXIS_tdest,
    SLOT_3_AXIS_tid,
    SLOT_3_AXIS_tkeep,
    SLOT_3_AXIS_tlast,
    SLOT_3_AXIS_tready,
    SLOT_3_AXIS_tstrb,
    SLOT_3_AXIS_tuser,
    SLOT_3_AXIS_tvalid,
    SLOT_4_AXI_araddr,
    SLOT_4_AXI_arcache,
    SLOT_4_AXI_arlen,
    SLOT_4_AXI_arprot,
    SLOT_4_AXI_arready,
    SLOT_4_AXI_arsize,
    SLOT_4_AXI_arvalid,
    SLOT_4_AXI_awaddr,
    SLOT_4_AXI_awcache,
    SLOT_4_AXI_awlen,
    SLOT_4_AXI_awprot,
    SLOT_4_AXI_awready,
    SLOT_4_AXI_awsize,
    SLOT_4_AXI_awvalid,
    SLOT_4_AXI_bready,
    SLOT_4_AXI_bresp,
    SLOT_4_AXI_bvalid,
    SLOT_4_AXI_rdata,
    SLOT_4_AXI_rlast,
    SLOT_4_AXI_rready,
    SLOT_4_AXI_rresp,
    SLOT_4_AXI_rvalid,
    SLOT_4_AXI_wdata,
    SLOT_4_AXI_wlast,
    SLOT_4_AXI_wready,
    SLOT_4_AXI_wstrb,
    SLOT_4_AXI_wvalid,
    SLOT_5_AXI_araddr,
    SLOT_5_AXI_arburst,
    SLOT_5_AXI_arcache,
    SLOT_5_AXI_arid,
    SLOT_5_AXI_arlen,
    SLOT_5_AXI_arlock,
    SLOT_5_AXI_arprot,
    SLOT_5_AXI_arqos,
    SLOT_5_AXI_arready,
    SLOT_5_AXI_arsize,
    SLOT_5_AXI_aruser,
    SLOT_5_AXI_arvalid,
    SLOT_5_AXI_awaddr,
    SLOT_5_AXI_awburst,
    SLOT_5_AXI_awcache,
    SLOT_5_AXI_awid,
    SLOT_5_AXI_awlen,
    SLOT_5_AXI_awlock,
    SLOT_5_AXI_awprot,
    SLOT_5_AXI_awqos,
    SLOT_5_AXI_awready,
    SLOT_5_AXI_awsize,
    SLOT_5_AXI_awuser,
    SLOT_5_AXI_awvalid,
    SLOT_5_AXI_bid,
    SLOT_5_AXI_bready,
    SLOT_5_AXI_bresp,
    SLOT_5_AXI_bvalid,
    SLOT_5_AXI_rdata,
    SLOT_5_AXI_rid,
    SLOT_5_AXI_rlast,
    SLOT_5_AXI_rready,
    SLOT_5_AXI_rresp,
    SLOT_5_AXI_rvalid,
    SLOT_5_AXI_wdata,
    SLOT_5_AXI_wlast,
    SLOT_5_AXI_wready,
    SLOT_5_AXI_wstrb,
    SLOT_5_AXI_wvalid,
    SLOT_6_AXI_araddr,
    SLOT_6_AXI_arprot,
    SLOT_6_AXI_arready,
    SLOT_6_AXI_arvalid,
    SLOT_6_AXI_awaddr,
    SLOT_6_AXI_awprot,
    SLOT_6_AXI_awready,
    SLOT_6_AXI_awvalid,
    SLOT_6_AXI_bready,
    SLOT_6_AXI_bresp,
    SLOT_6_AXI_bvalid,
    SLOT_6_AXI_rdata,
    SLOT_6_AXI_rready,
    SLOT_6_AXI_rresp,
    SLOT_6_AXI_rvalid,
    SLOT_6_AXI_wdata,
    SLOT_6_AXI_wready,
    SLOT_6_AXI_wstrb,
    SLOT_6_AXI_wvalid,
    SLOT_7_AXI_araddr,
    SLOT_7_AXI_arlen,
    SLOT_7_AXI_arprot,
    SLOT_7_AXI_arready,
    SLOT_7_AXI_arsize,
    SLOT_7_AXI_arvalid,
    SLOT_7_AXI_awaddr,
    SLOT_7_AXI_awlen,
    SLOT_7_AXI_awprot,
    SLOT_7_AXI_awready,
    SLOT_7_AXI_awsize,
    SLOT_7_AXI_awvalid,
    SLOT_7_AXI_bready,
    SLOT_7_AXI_bresp,
    SLOT_7_AXI_bvalid,
    SLOT_7_AXI_rdata,
    SLOT_7_AXI_rlast,
    SLOT_7_AXI_rready,
    SLOT_7_AXI_rvalid,
    SLOT_7_AXI_wdata,
    SLOT_7_AXI_wlast,
    SLOT_7_AXI_wready,
    SLOT_7_AXI_wstrb,
    SLOT_7_AXI_wvalid,
    clk,
    resetn);
  input [39:0]SLOT_0_AXI_araddr;
  input [1:0]SLOT_0_AXI_arburst;
  input [3:0]SLOT_0_AXI_arcache;
  input [15:0]SLOT_0_AXI_arid;
  input [7:0]SLOT_0_AXI_arlen;
  input [0:0]SLOT_0_AXI_arlock;
  input [2:0]SLOT_0_AXI_arprot;
  input [3:0]SLOT_0_AXI_arqos;
  input SLOT_0_AXI_arready;
  input [2:0]SLOT_0_AXI_arsize;
  input [15:0]SLOT_0_AXI_aruser;
  input SLOT_0_AXI_arvalid;
  input [39:0]SLOT_0_AXI_awaddr;
  input [1:0]SLOT_0_AXI_awburst;
  input [3:0]SLOT_0_AXI_awcache;
  input [15:0]SLOT_0_AXI_awid;
  input [7:0]SLOT_0_AXI_awlen;
  input [0:0]SLOT_0_AXI_awlock;
  input [2:0]SLOT_0_AXI_awprot;
  input [3:0]SLOT_0_AXI_awqos;
  input SLOT_0_AXI_awready;
  input [2:0]SLOT_0_AXI_awsize;
  input [15:0]SLOT_0_AXI_awuser;
  input SLOT_0_AXI_awvalid;
  input [15:0]SLOT_0_AXI_bid;
  input SLOT_0_AXI_bready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input [127:0]SLOT_0_AXI_rdata;
  input [15:0]SLOT_0_AXI_rid;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rready;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rvalid;
  input [127:0]SLOT_0_AXI_wdata;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wready;
  input [15:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wvalid;
  input [15:0]SLOT_1_AXI_araddr;
  input [2:0]SLOT_1_AXI_arprot;
  input SLOT_1_AXI_arready;
  input SLOT_1_AXI_arvalid;
  input [15:0]SLOT_1_AXI_awaddr;
  input [2:0]SLOT_1_AXI_awprot;
  input SLOT_1_AXI_awready;
  input SLOT_1_AXI_awvalid;
  input SLOT_1_AXI_bready;
  input [1:0]SLOT_1_AXI_bresp;
  input SLOT_1_AXI_bvalid;
  input [31:0]SLOT_1_AXI_rdata;
  input SLOT_1_AXI_rready;
  input [1:0]SLOT_1_AXI_rresp;
  input SLOT_1_AXI_rvalid;
  input [31:0]SLOT_1_AXI_wdata;
  input SLOT_1_AXI_wready;
  input [3:0]SLOT_1_AXI_wstrb;
  input SLOT_1_AXI_wvalid;
  input [55:0]SLOT_2_AXIS_tdata;
  input [0:0]SLOT_2_AXIS_tid;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tready;
  input [6:0]SLOT_2_AXIS_tstrb;
  input SLOT_2_AXIS_tvalid;
  input [31:0]SLOT_3_AXIS_tdata;
  input [7:0]SLOT_3_AXIS_tdest;
  input [7:0]SLOT_3_AXIS_tid;
  input [3:0]SLOT_3_AXIS_tkeep;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tready;
  input [3:0]SLOT_3_AXIS_tstrb;
  input [7:0]SLOT_3_AXIS_tuser;
  input SLOT_3_AXIS_tvalid;
  input [31:0]SLOT_4_AXI_araddr;
  input [3:0]SLOT_4_AXI_arcache;
  input [7:0]SLOT_4_AXI_arlen;
  input [2:0]SLOT_4_AXI_arprot;
  input SLOT_4_AXI_arready;
  input [2:0]SLOT_4_AXI_arsize;
  input SLOT_4_AXI_arvalid;
  input [31:0]SLOT_4_AXI_awaddr;
  input [3:0]SLOT_4_AXI_awcache;
  input [7:0]SLOT_4_AXI_awlen;
  input [2:0]SLOT_4_AXI_awprot;
  input SLOT_4_AXI_awready;
  input [2:0]SLOT_4_AXI_awsize;
  input SLOT_4_AXI_awvalid;
  input SLOT_4_AXI_bready;
  input [1:0]SLOT_4_AXI_bresp;
  input SLOT_4_AXI_bvalid;
  input [31:0]SLOT_4_AXI_rdata;
  input SLOT_4_AXI_rlast;
  input SLOT_4_AXI_rready;
  input [1:0]SLOT_4_AXI_rresp;
  input SLOT_4_AXI_rvalid;
  input [31:0]SLOT_4_AXI_wdata;
  input SLOT_4_AXI_wlast;
  input SLOT_4_AXI_wready;
  input [3:0]SLOT_4_AXI_wstrb;
  input SLOT_4_AXI_wvalid;
  input [39:0]SLOT_5_AXI_araddr;
  input [1:0]SLOT_5_AXI_arburst;
  input [3:0]SLOT_5_AXI_arcache;
  input [15:0]SLOT_5_AXI_arid;
  input [7:0]SLOT_5_AXI_arlen;
  input [0:0]SLOT_5_AXI_arlock;
  input [2:0]SLOT_5_AXI_arprot;
  input [3:0]SLOT_5_AXI_arqos;
  input SLOT_5_AXI_arready;
  input [2:0]SLOT_5_AXI_arsize;
  input [15:0]SLOT_5_AXI_aruser;
  input SLOT_5_AXI_arvalid;
  input [39:0]SLOT_5_AXI_awaddr;
  input [1:0]SLOT_5_AXI_awburst;
  input [3:0]SLOT_5_AXI_awcache;
  input [15:0]SLOT_5_AXI_awid;
  input [7:0]SLOT_5_AXI_awlen;
  input [0:0]SLOT_5_AXI_awlock;
  input [2:0]SLOT_5_AXI_awprot;
  input [3:0]SLOT_5_AXI_awqos;
  input SLOT_5_AXI_awready;
  input [2:0]SLOT_5_AXI_awsize;
  input [15:0]SLOT_5_AXI_awuser;
  input SLOT_5_AXI_awvalid;
  input [15:0]SLOT_5_AXI_bid;
  input SLOT_5_AXI_bready;
  input [1:0]SLOT_5_AXI_bresp;
  input SLOT_5_AXI_bvalid;
  input [127:0]SLOT_5_AXI_rdata;
  input [15:0]SLOT_5_AXI_rid;
  input SLOT_5_AXI_rlast;
  input SLOT_5_AXI_rready;
  input [1:0]SLOT_5_AXI_rresp;
  input SLOT_5_AXI_rvalid;
  input [127:0]SLOT_5_AXI_wdata;
  input SLOT_5_AXI_wlast;
  input SLOT_5_AXI_wready;
  input [15:0]SLOT_5_AXI_wstrb;
  input SLOT_5_AXI_wvalid;
  input [9:0]SLOT_6_AXI_araddr;
  input [2:0]SLOT_6_AXI_arprot;
  input SLOT_6_AXI_arready;
  input SLOT_6_AXI_arvalid;
  input [9:0]SLOT_6_AXI_awaddr;
  input [2:0]SLOT_6_AXI_awprot;
  input SLOT_6_AXI_awready;
  input SLOT_6_AXI_awvalid;
  input SLOT_6_AXI_bready;
  input [1:0]SLOT_6_AXI_bresp;
  input SLOT_6_AXI_bvalid;
  input [31:0]SLOT_6_AXI_rdata;
  input SLOT_6_AXI_rready;
  input [1:0]SLOT_6_AXI_rresp;
  input SLOT_6_AXI_rvalid;
  input [31:0]SLOT_6_AXI_wdata;
  input SLOT_6_AXI_wready;
  input [3:0]SLOT_6_AXI_wstrb;
  input SLOT_6_AXI_wvalid;
  input [48:0]SLOT_7_AXI_araddr;
  input [7:0]SLOT_7_AXI_arlen;
  input [2:0]SLOT_7_AXI_arprot;
  input SLOT_7_AXI_arready;
  input [2:0]SLOT_7_AXI_arsize;
  input SLOT_7_AXI_arvalid;
  input [48:0]SLOT_7_AXI_awaddr;
  input [7:0]SLOT_7_AXI_awlen;
  input [2:0]SLOT_7_AXI_awprot;
  input SLOT_7_AXI_awready;
  input [2:0]SLOT_7_AXI_awsize;
  input SLOT_7_AXI_awvalid;
  input SLOT_7_AXI_bready;
  input [1:0]SLOT_7_AXI_bresp;
  input SLOT_7_AXI_bvalid;
  input [31:0]SLOT_7_AXI_rdata;
  input SLOT_7_AXI_rlast;
  input SLOT_7_AXI_rready;
  input SLOT_7_AXI_rvalid;
  input [31:0]SLOT_7_AXI_wdata;
  input SLOT_7_AXI_wlast;
  input SLOT_7_AXI_wready;
  input [3:0]SLOT_7_AXI_wstrb;
  input SLOT_7_AXI_wvalid;
  input clk;
  input resetn;

  wire [39:0]SLOT_0_AXI_araddr;
  wire [1:0]SLOT_0_AXI_arburst;
  wire [3:0]SLOT_0_AXI_arcache;
  wire [15:0]SLOT_0_AXI_arid;
  wire [7:0]SLOT_0_AXI_arlen;
  wire [0:0]SLOT_0_AXI_arlock;
  wire [2:0]SLOT_0_AXI_arprot;
  wire [3:0]SLOT_0_AXI_arqos;
  wire SLOT_0_AXI_arready;
  wire [2:0]SLOT_0_AXI_arsize;
  wire [15:0]SLOT_0_AXI_aruser;
  wire SLOT_0_AXI_arvalid;
  wire [39:0]SLOT_0_AXI_awaddr;
  wire [1:0]SLOT_0_AXI_awburst;
  wire [3:0]SLOT_0_AXI_awcache;
  wire [15:0]SLOT_0_AXI_awid;
  wire [7:0]SLOT_0_AXI_awlen;
  wire [0:0]SLOT_0_AXI_awlock;
  wire [2:0]SLOT_0_AXI_awprot;
  wire [3:0]SLOT_0_AXI_awqos;
  wire SLOT_0_AXI_awready;
  wire [2:0]SLOT_0_AXI_awsize;
  wire [15:0]SLOT_0_AXI_awuser;
  wire SLOT_0_AXI_awvalid;
  wire [15:0]SLOT_0_AXI_bid;
  wire SLOT_0_AXI_bready;
  wire [1:0]SLOT_0_AXI_bresp;
  wire SLOT_0_AXI_bvalid;
  wire [127:0]SLOT_0_AXI_rdata;
  wire [15:0]SLOT_0_AXI_rid;
  wire SLOT_0_AXI_rlast;
  wire SLOT_0_AXI_rready;
  wire [1:0]SLOT_0_AXI_rresp;
  wire SLOT_0_AXI_rvalid;
  wire [127:0]SLOT_0_AXI_wdata;
  wire SLOT_0_AXI_wlast;
  wire SLOT_0_AXI_wready;
  wire [15:0]SLOT_0_AXI_wstrb;
  wire SLOT_0_AXI_wvalid;
  wire [15:0]SLOT_1_AXI_araddr;
  wire [2:0]SLOT_1_AXI_arprot;
  wire SLOT_1_AXI_arready;
  wire SLOT_1_AXI_arvalid;
  wire [15:0]SLOT_1_AXI_awaddr;
  wire [2:0]SLOT_1_AXI_awprot;
  wire SLOT_1_AXI_awready;
  wire SLOT_1_AXI_awvalid;
  wire SLOT_1_AXI_bready;
  wire [1:0]SLOT_1_AXI_bresp;
  wire SLOT_1_AXI_bvalid;
  wire [31:0]SLOT_1_AXI_rdata;
  wire SLOT_1_AXI_rready;
  wire [1:0]SLOT_1_AXI_rresp;
  wire SLOT_1_AXI_rvalid;
  wire [31:0]SLOT_1_AXI_wdata;
  wire SLOT_1_AXI_wready;
  wire [3:0]SLOT_1_AXI_wstrb;
  wire SLOT_1_AXI_wvalid;
  wire [55:0]SLOT_2_AXIS_tdata;
  wire [0:0]SLOT_2_AXIS_tid;
  wire SLOT_2_AXIS_tlast;
  wire SLOT_2_AXIS_tready;
  wire [6:0]SLOT_2_AXIS_tstrb;
  wire SLOT_2_AXIS_tvalid;
  wire [31:0]SLOT_3_AXIS_tdata;
  wire [7:0]SLOT_3_AXIS_tdest;
  wire [7:0]SLOT_3_AXIS_tid;
  wire [3:0]SLOT_3_AXIS_tkeep;
  wire SLOT_3_AXIS_tlast;
  wire SLOT_3_AXIS_tready;
  wire [3:0]SLOT_3_AXIS_tstrb;
  wire [7:0]SLOT_3_AXIS_tuser;
  wire SLOT_3_AXIS_tvalid;
  wire [31:0]SLOT_4_AXI_araddr;
  wire [3:0]SLOT_4_AXI_arcache;
  wire [7:0]SLOT_4_AXI_arlen;
  wire [2:0]SLOT_4_AXI_arprot;
  wire SLOT_4_AXI_arready;
  wire [2:0]SLOT_4_AXI_arsize;
  wire SLOT_4_AXI_arvalid;
  wire [31:0]SLOT_4_AXI_awaddr;
  wire [3:0]SLOT_4_AXI_awcache;
  wire [7:0]SLOT_4_AXI_awlen;
  wire [2:0]SLOT_4_AXI_awprot;
  wire SLOT_4_AXI_awready;
  wire [2:0]SLOT_4_AXI_awsize;
  wire SLOT_4_AXI_awvalid;
  wire SLOT_4_AXI_bready;
  wire [1:0]SLOT_4_AXI_bresp;
  wire SLOT_4_AXI_bvalid;
  wire [31:0]SLOT_4_AXI_rdata;
  wire SLOT_4_AXI_rlast;
  wire SLOT_4_AXI_rready;
  wire [1:0]SLOT_4_AXI_rresp;
  wire SLOT_4_AXI_rvalid;
  wire [31:0]SLOT_4_AXI_wdata;
  wire SLOT_4_AXI_wlast;
  wire SLOT_4_AXI_wready;
  wire [3:0]SLOT_4_AXI_wstrb;
  wire SLOT_4_AXI_wvalid;
  wire [39:0]SLOT_5_AXI_araddr;
  wire [1:0]SLOT_5_AXI_arburst;
  wire [3:0]SLOT_5_AXI_arcache;
  wire [15:0]SLOT_5_AXI_arid;
  wire [7:0]SLOT_5_AXI_arlen;
  wire [0:0]SLOT_5_AXI_arlock;
  wire [2:0]SLOT_5_AXI_arprot;
  wire [3:0]SLOT_5_AXI_arqos;
  wire SLOT_5_AXI_arready;
  wire [2:0]SLOT_5_AXI_arsize;
  wire [15:0]SLOT_5_AXI_aruser;
  wire SLOT_5_AXI_arvalid;
  wire [39:0]SLOT_5_AXI_awaddr;
  wire [1:0]SLOT_5_AXI_awburst;
  wire [3:0]SLOT_5_AXI_awcache;
  wire [15:0]SLOT_5_AXI_awid;
  wire [7:0]SLOT_5_AXI_awlen;
  wire [0:0]SLOT_5_AXI_awlock;
  wire [2:0]SLOT_5_AXI_awprot;
  wire [3:0]SLOT_5_AXI_awqos;
  wire SLOT_5_AXI_awready;
  wire [2:0]SLOT_5_AXI_awsize;
  wire [15:0]SLOT_5_AXI_awuser;
  wire SLOT_5_AXI_awvalid;
  wire [15:0]SLOT_5_AXI_bid;
  wire SLOT_5_AXI_bready;
  wire [1:0]SLOT_5_AXI_bresp;
  wire SLOT_5_AXI_bvalid;
  wire [127:0]SLOT_5_AXI_rdata;
  wire [15:0]SLOT_5_AXI_rid;
  wire SLOT_5_AXI_rlast;
  wire SLOT_5_AXI_rready;
  wire [1:0]SLOT_5_AXI_rresp;
  wire SLOT_5_AXI_rvalid;
  wire [127:0]SLOT_5_AXI_wdata;
  wire SLOT_5_AXI_wlast;
  wire SLOT_5_AXI_wready;
  wire [15:0]SLOT_5_AXI_wstrb;
  wire SLOT_5_AXI_wvalid;
  wire [9:0]SLOT_6_AXI_araddr;
  wire [2:0]SLOT_6_AXI_arprot;
  wire SLOT_6_AXI_arready;
  wire SLOT_6_AXI_arvalid;
  wire [9:0]SLOT_6_AXI_awaddr;
  wire [2:0]SLOT_6_AXI_awprot;
  wire SLOT_6_AXI_awready;
  wire SLOT_6_AXI_awvalid;
  wire SLOT_6_AXI_bready;
  wire [1:0]SLOT_6_AXI_bresp;
  wire SLOT_6_AXI_bvalid;
  wire [31:0]SLOT_6_AXI_rdata;
  wire SLOT_6_AXI_rready;
  wire [1:0]SLOT_6_AXI_rresp;
  wire SLOT_6_AXI_rvalid;
  wire [31:0]SLOT_6_AXI_wdata;
  wire SLOT_6_AXI_wready;
  wire [3:0]SLOT_6_AXI_wstrb;
  wire SLOT_6_AXI_wvalid;
  wire [48:0]SLOT_7_AXI_araddr;
  wire [7:0]SLOT_7_AXI_arlen;
  wire [2:0]SLOT_7_AXI_arprot;
  wire SLOT_7_AXI_arready;
  wire [2:0]SLOT_7_AXI_arsize;
  wire SLOT_7_AXI_arvalid;
  wire [48:0]SLOT_7_AXI_awaddr;
  wire [7:0]SLOT_7_AXI_awlen;
  wire [2:0]SLOT_7_AXI_awprot;
  wire SLOT_7_AXI_awready;
  wire [2:0]SLOT_7_AXI_awsize;
  wire SLOT_7_AXI_awvalid;
  wire SLOT_7_AXI_bready;
  wire [1:0]SLOT_7_AXI_bresp;
  wire SLOT_7_AXI_bvalid;
  wire [31:0]SLOT_7_AXI_rdata;
  wire SLOT_7_AXI_rlast;
  wire SLOT_7_AXI_rready;
  wire SLOT_7_AXI_rvalid;
  wire [31:0]SLOT_7_AXI_wdata;
  wire SLOT_7_AXI_wlast;
  wire SLOT_7_AXI_wready;
  wire [3:0]SLOT_7_AXI_wstrb;
  wire SLOT_7_AXI_wvalid;
  wire clk;
  wire resetn;

  bd_f60c bd_f60c_i
       (.SLOT_0_AXI_araddr(SLOT_0_AXI_araddr),
        .SLOT_0_AXI_arburst(SLOT_0_AXI_arburst),
        .SLOT_0_AXI_arcache(SLOT_0_AXI_arcache),
        .SLOT_0_AXI_arid(SLOT_0_AXI_arid),
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
        .SLOT_0_AXI_awid(SLOT_0_AXI_awid),
        .SLOT_0_AXI_awlen(SLOT_0_AXI_awlen),
        .SLOT_0_AXI_awlock(SLOT_0_AXI_awlock),
        .SLOT_0_AXI_awprot(SLOT_0_AXI_awprot),
        .SLOT_0_AXI_awqos(SLOT_0_AXI_awqos),
        .SLOT_0_AXI_awready(SLOT_0_AXI_awready),
        .SLOT_0_AXI_awsize(SLOT_0_AXI_awsize),
        .SLOT_0_AXI_awuser(SLOT_0_AXI_awuser),
        .SLOT_0_AXI_awvalid(SLOT_0_AXI_awvalid),
        .SLOT_0_AXI_bid(SLOT_0_AXI_bid),
        .SLOT_0_AXI_bready(SLOT_0_AXI_bready),
        .SLOT_0_AXI_bresp(SLOT_0_AXI_bresp),
        .SLOT_0_AXI_bvalid(SLOT_0_AXI_bvalid),
        .SLOT_0_AXI_rdata(SLOT_0_AXI_rdata),
        .SLOT_0_AXI_rid(SLOT_0_AXI_rid),
        .SLOT_0_AXI_rlast(SLOT_0_AXI_rlast),
        .SLOT_0_AXI_rready(SLOT_0_AXI_rready),
        .SLOT_0_AXI_rresp(SLOT_0_AXI_rresp),
        .SLOT_0_AXI_rvalid(SLOT_0_AXI_rvalid),
        .SLOT_0_AXI_wdata(SLOT_0_AXI_wdata),
        .SLOT_0_AXI_wlast(SLOT_0_AXI_wlast),
        .SLOT_0_AXI_wready(SLOT_0_AXI_wready),
        .SLOT_0_AXI_wstrb(SLOT_0_AXI_wstrb),
        .SLOT_0_AXI_wvalid(SLOT_0_AXI_wvalid),
        .SLOT_1_AXI_araddr(SLOT_1_AXI_araddr),
        .SLOT_1_AXI_arprot(SLOT_1_AXI_arprot),
        .SLOT_1_AXI_arready(SLOT_1_AXI_arready),
        .SLOT_1_AXI_arvalid(SLOT_1_AXI_arvalid),
        .SLOT_1_AXI_awaddr(SLOT_1_AXI_awaddr),
        .SLOT_1_AXI_awprot(SLOT_1_AXI_awprot),
        .SLOT_1_AXI_awready(SLOT_1_AXI_awready),
        .SLOT_1_AXI_awvalid(SLOT_1_AXI_awvalid),
        .SLOT_1_AXI_bready(SLOT_1_AXI_bready),
        .SLOT_1_AXI_bresp(SLOT_1_AXI_bresp),
        .SLOT_1_AXI_bvalid(SLOT_1_AXI_bvalid),
        .SLOT_1_AXI_rdata(SLOT_1_AXI_rdata),
        .SLOT_1_AXI_rready(SLOT_1_AXI_rready),
        .SLOT_1_AXI_rresp(SLOT_1_AXI_rresp),
        .SLOT_1_AXI_rvalid(SLOT_1_AXI_rvalid),
        .SLOT_1_AXI_wdata(SLOT_1_AXI_wdata),
        .SLOT_1_AXI_wready(SLOT_1_AXI_wready),
        .SLOT_1_AXI_wstrb(SLOT_1_AXI_wstrb),
        .SLOT_1_AXI_wvalid(SLOT_1_AXI_wvalid),
        .SLOT_2_AXIS_tdata(SLOT_2_AXIS_tdata),
        .SLOT_2_AXIS_tid(SLOT_2_AXIS_tid),
        .SLOT_2_AXIS_tlast(SLOT_2_AXIS_tlast),
        .SLOT_2_AXIS_tready(SLOT_2_AXIS_tready),
        .SLOT_2_AXIS_tstrb(SLOT_2_AXIS_tstrb),
        .SLOT_2_AXIS_tvalid(SLOT_2_AXIS_tvalid),
        .SLOT_3_AXIS_tdata(SLOT_3_AXIS_tdata),
        .SLOT_3_AXIS_tdest(SLOT_3_AXIS_tdest),
        .SLOT_3_AXIS_tid(SLOT_3_AXIS_tid),
        .SLOT_3_AXIS_tkeep(SLOT_3_AXIS_tkeep),
        .SLOT_3_AXIS_tlast(SLOT_3_AXIS_tlast),
        .SLOT_3_AXIS_tready(SLOT_3_AXIS_tready),
        .SLOT_3_AXIS_tstrb(SLOT_3_AXIS_tstrb),
        .SLOT_3_AXIS_tuser(SLOT_3_AXIS_tuser),
        .SLOT_3_AXIS_tvalid(SLOT_3_AXIS_tvalid),
        .SLOT_4_AXI_araddr(SLOT_4_AXI_araddr),
        .SLOT_4_AXI_arcache(SLOT_4_AXI_arcache),
        .SLOT_4_AXI_arlen(SLOT_4_AXI_arlen),
        .SLOT_4_AXI_arprot(SLOT_4_AXI_arprot),
        .SLOT_4_AXI_arready(SLOT_4_AXI_arready),
        .SLOT_4_AXI_arsize(SLOT_4_AXI_arsize),
        .SLOT_4_AXI_arvalid(SLOT_4_AXI_arvalid),
        .SLOT_4_AXI_awaddr(SLOT_4_AXI_awaddr),
        .SLOT_4_AXI_awcache(SLOT_4_AXI_awcache),
        .SLOT_4_AXI_awlen(SLOT_4_AXI_awlen),
        .SLOT_4_AXI_awprot(SLOT_4_AXI_awprot),
        .SLOT_4_AXI_awready(SLOT_4_AXI_awready),
        .SLOT_4_AXI_awsize(SLOT_4_AXI_awsize),
        .SLOT_4_AXI_awvalid(SLOT_4_AXI_awvalid),
        .SLOT_4_AXI_bready(SLOT_4_AXI_bready),
        .SLOT_4_AXI_bresp(SLOT_4_AXI_bresp),
        .SLOT_4_AXI_bvalid(SLOT_4_AXI_bvalid),
        .SLOT_4_AXI_rdata(SLOT_4_AXI_rdata),
        .SLOT_4_AXI_rlast(SLOT_4_AXI_rlast),
        .SLOT_4_AXI_rready(SLOT_4_AXI_rready),
        .SLOT_4_AXI_rresp(SLOT_4_AXI_rresp),
        .SLOT_4_AXI_rvalid(SLOT_4_AXI_rvalid),
        .SLOT_4_AXI_wdata(SLOT_4_AXI_wdata),
        .SLOT_4_AXI_wlast(SLOT_4_AXI_wlast),
        .SLOT_4_AXI_wready(SLOT_4_AXI_wready),
        .SLOT_4_AXI_wstrb(SLOT_4_AXI_wstrb),
        .SLOT_4_AXI_wvalid(SLOT_4_AXI_wvalid),
        .SLOT_5_AXI_araddr(SLOT_5_AXI_araddr),
        .SLOT_5_AXI_arburst(SLOT_5_AXI_arburst),
        .SLOT_5_AXI_arcache(SLOT_5_AXI_arcache),
        .SLOT_5_AXI_arid(SLOT_5_AXI_arid),
        .SLOT_5_AXI_arlen(SLOT_5_AXI_arlen),
        .SLOT_5_AXI_arlock(SLOT_5_AXI_arlock),
        .SLOT_5_AXI_arprot(SLOT_5_AXI_arprot),
        .SLOT_5_AXI_arqos(SLOT_5_AXI_arqos),
        .SLOT_5_AXI_arready(SLOT_5_AXI_arready),
        .SLOT_5_AXI_arsize(SLOT_5_AXI_arsize),
        .SLOT_5_AXI_aruser(SLOT_5_AXI_aruser),
        .SLOT_5_AXI_arvalid(SLOT_5_AXI_arvalid),
        .SLOT_5_AXI_awaddr(SLOT_5_AXI_awaddr),
        .SLOT_5_AXI_awburst(SLOT_5_AXI_awburst),
        .SLOT_5_AXI_awcache(SLOT_5_AXI_awcache),
        .SLOT_5_AXI_awid(SLOT_5_AXI_awid),
        .SLOT_5_AXI_awlen(SLOT_5_AXI_awlen),
        .SLOT_5_AXI_awlock(SLOT_5_AXI_awlock),
        .SLOT_5_AXI_awprot(SLOT_5_AXI_awprot),
        .SLOT_5_AXI_awqos(SLOT_5_AXI_awqos),
        .SLOT_5_AXI_awready(SLOT_5_AXI_awready),
        .SLOT_5_AXI_awsize(SLOT_5_AXI_awsize),
        .SLOT_5_AXI_awuser(SLOT_5_AXI_awuser),
        .SLOT_5_AXI_awvalid(SLOT_5_AXI_awvalid),
        .SLOT_5_AXI_bid(SLOT_5_AXI_bid),
        .SLOT_5_AXI_bready(SLOT_5_AXI_bready),
        .SLOT_5_AXI_bresp(SLOT_5_AXI_bresp),
        .SLOT_5_AXI_bvalid(SLOT_5_AXI_bvalid),
        .SLOT_5_AXI_rdata(SLOT_5_AXI_rdata),
        .SLOT_5_AXI_rid(SLOT_5_AXI_rid),
        .SLOT_5_AXI_rlast(SLOT_5_AXI_rlast),
        .SLOT_5_AXI_rready(SLOT_5_AXI_rready),
        .SLOT_5_AXI_rresp(SLOT_5_AXI_rresp),
        .SLOT_5_AXI_rvalid(SLOT_5_AXI_rvalid),
        .SLOT_5_AXI_wdata(SLOT_5_AXI_wdata),
        .SLOT_5_AXI_wlast(SLOT_5_AXI_wlast),
        .SLOT_5_AXI_wready(SLOT_5_AXI_wready),
        .SLOT_5_AXI_wstrb(SLOT_5_AXI_wstrb),
        .SLOT_5_AXI_wvalid(SLOT_5_AXI_wvalid),
        .SLOT_6_AXI_araddr(SLOT_6_AXI_araddr),
        .SLOT_6_AXI_arprot(SLOT_6_AXI_arprot),
        .SLOT_6_AXI_arready(SLOT_6_AXI_arready),
        .SLOT_6_AXI_arvalid(SLOT_6_AXI_arvalid),
        .SLOT_6_AXI_awaddr(SLOT_6_AXI_awaddr),
        .SLOT_6_AXI_awprot(SLOT_6_AXI_awprot),
        .SLOT_6_AXI_awready(SLOT_6_AXI_awready),
        .SLOT_6_AXI_awvalid(SLOT_6_AXI_awvalid),
        .SLOT_6_AXI_bready(SLOT_6_AXI_bready),
        .SLOT_6_AXI_bresp(SLOT_6_AXI_bresp),
        .SLOT_6_AXI_bvalid(SLOT_6_AXI_bvalid),
        .SLOT_6_AXI_rdata(SLOT_6_AXI_rdata),
        .SLOT_6_AXI_rready(SLOT_6_AXI_rready),
        .SLOT_6_AXI_rresp(SLOT_6_AXI_rresp),
        .SLOT_6_AXI_rvalid(SLOT_6_AXI_rvalid),
        .SLOT_6_AXI_wdata(SLOT_6_AXI_wdata),
        .SLOT_6_AXI_wready(SLOT_6_AXI_wready),
        .SLOT_6_AXI_wstrb(SLOT_6_AXI_wstrb),
        .SLOT_6_AXI_wvalid(SLOT_6_AXI_wvalid),
        .SLOT_7_AXI_araddr(SLOT_7_AXI_araddr),
        .SLOT_7_AXI_arlen(SLOT_7_AXI_arlen),
        .SLOT_7_AXI_arprot(SLOT_7_AXI_arprot),
        .SLOT_7_AXI_arready(SLOT_7_AXI_arready),
        .SLOT_7_AXI_arsize(SLOT_7_AXI_arsize),
        .SLOT_7_AXI_arvalid(SLOT_7_AXI_arvalid),
        .SLOT_7_AXI_awaddr(SLOT_7_AXI_awaddr),
        .SLOT_7_AXI_awlen(SLOT_7_AXI_awlen),
        .SLOT_7_AXI_awprot(SLOT_7_AXI_awprot),
        .SLOT_7_AXI_awready(SLOT_7_AXI_awready),
        .SLOT_7_AXI_awsize(SLOT_7_AXI_awsize),
        .SLOT_7_AXI_awvalid(SLOT_7_AXI_awvalid),
        .SLOT_7_AXI_bready(SLOT_7_AXI_bready),
        .SLOT_7_AXI_bresp(SLOT_7_AXI_bresp),
        .SLOT_7_AXI_bvalid(SLOT_7_AXI_bvalid),
        .SLOT_7_AXI_rdata(SLOT_7_AXI_rdata),
        .SLOT_7_AXI_rlast(SLOT_7_AXI_rlast),
        .SLOT_7_AXI_rready(SLOT_7_AXI_rready),
        .SLOT_7_AXI_rvalid(SLOT_7_AXI_rvalid),
        .SLOT_7_AXI_wdata(SLOT_7_AXI_wdata),
        .SLOT_7_AXI_wlast(SLOT_7_AXI_wlast),
        .SLOT_7_AXI_wready(SLOT_7_AXI_wready),
        .SLOT_7_AXI_wstrb(SLOT_7_AXI_wstrb),
        .SLOT_7_AXI_wvalid(SLOT_7_AXI_wvalid),
        .clk(clk),
        .resetn(resetn));
endmodule
