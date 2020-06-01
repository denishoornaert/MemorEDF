// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sat May  9 14:08:44 2020
// Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_perf_mon_0_0_stub.v
// Design      : design_1_axi_perf_mon_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_perf_mon_v5_0_17_top,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_aclk, s_axi_aresetn, s_axi_awaddr, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, slot_0_axi_aclk, slot_0_axi_aresetn, 
  slot_0_axi_awid, slot_0_axi_awaddr, slot_0_axi_awprot, slot_0_axi_awlen, 
  slot_0_axi_awsize, slot_0_axi_awburst, slot_0_axi_awcache, slot_0_axi_awlock, 
  slot_0_axi_awvalid, slot_0_axi_awready, slot_0_axi_wdata, slot_0_axi_wstrb, 
  slot_0_axi_wlast, slot_0_axi_wvalid, slot_0_axi_wready, slot_0_axi_bid, slot_0_axi_bresp, 
  slot_0_axi_bvalid, slot_0_axi_bready, slot_0_axi_arid, slot_0_axi_araddr, 
  slot_0_axi_arlen, slot_0_axi_arsize, slot_0_axi_arburst, slot_0_axi_arcache, 
  slot_0_axi_arprot, slot_0_axi_arlock, slot_0_axi_arvalid, slot_0_axi_arready, 
  slot_0_axi_rid, slot_0_axi_rdata, slot_0_axi_rresp, slot_0_axi_rlast, slot_0_axi_rvalid, 
  slot_0_axi_rready, slot_0_ext_trig, slot_0_ext_trig_stop, ext_clk_0, ext_rstn_0, 
  ext_event_0_cnt_start, ext_event_0_cnt_stop, ext_event_0, core_aclk, core_aresetn, 
  m_axis_aclk, m_axis_aresetn, m_axis_tdata, m_axis_tstrb, m_axis_tvalid, m_axis_tid, 
  m_axis_tready, interrupt)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,s_axi_awaddr[15:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[15:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,slot_0_axi_aclk,slot_0_axi_aresetn,slot_0_axi_awid[15:0],slot_0_axi_awaddr[39:0],slot_0_axi_awprot[2:0],slot_0_axi_awlen[7:0],slot_0_axi_awsize[2:0],slot_0_axi_awburst[1:0],slot_0_axi_awcache[3:0],slot_0_axi_awlock[0:0],slot_0_axi_awvalid,slot_0_axi_awready,slot_0_axi_wdata[127:0],slot_0_axi_wstrb[15:0],slot_0_axi_wlast,slot_0_axi_wvalid,slot_0_axi_wready,slot_0_axi_bid[15:0],slot_0_axi_bresp[1:0],slot_0_axi_bvalid,slot_0_axi_bready,slot_0_axi_arid[15:0],slot_0_axi_araddr[39:0],slot_0_axi_arlen[7:0],slot_0_axi_arsize[2:0],slot_0_axi_arburst[1:0],slot_0_axi_arcache[3:0],slot_0_axi_arprot[2:0],slot_0_axi_arlock[0:0],slot_0_axi_arvalid,slot_0_axi_arready,slot_0_axi_rid[15:0],slot_0_axi_rdata[127:0],slot_0_axi_rresp[1:0],slot_0_axi_rlast,slot_0_axi_rvalid,slot_0_axi_rready,slot_0_ext_trig,slot_0_ext_trig_stop,ext_clk_0,ext_rstn_0,ext_event_0_cnt_start,ext_event_0_cnt_stop,ext_event_0,core_aclk,core_aresetn,m_axis_aclk,m_axis_aresetn,m_axis_tdata[55:0],m_axis_tstrb[6:0],m_axis_tvalid,m_axis_tid[0:0],m_axis_tready,interrupt" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [15:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [15:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input slot_0_axi_aclk;
  input slot_0_axi_aresetn;
  input [15:0]slot_0_axi_awid;
  input [39:0]slot_0_axi_awaddr;
  input [2:0]slot_0_axi_awprot;
  input [7:0]slot_0_axi_awlen;
  input [2:0]slot_0_axi_awsize;
  input [1:0]slot_0_axi_awburst;
  input [3:0]slot_0_axi_awcache;
  input [0:0]slot_0_axi_awlock;
  input slot_0_axi_awvalid;
  input slot_0_axi_awready;
  input [127:0]slot_0_axi_wdata;
  input [15:0]slot_0_axi_wstrb;
  input slot_0_axi_wlast;
  input slot_0_axi_wvalid;
  input slot_0_axi_wready;
  input [15:0]slot_0_axi_bid;
  input [1:0]slot_0_axi_bresp;
  input slot_0_axi_bvalid;
  input slot_0_axi_bready;
  input [15:0]slot_0_axi_arid;
  input [39:0]slot_0_axi_araddr;
  input [7:0]slot_0_axi_arlen;
  input [2:0]slot_0_axi_arsize;
  input [1:0]slot_0_axi_arburst;
  input [3:0]slot_0_axi_arcache;
  input [2:0]slot_0_axi_arprot;
  input [0:0]slot_0_axi_arlock;
  input slot_0_axi_arvalid;
  input slot_0_axi_arready;
  input [15:0]slot_0_axi_rid;
  input [127:0]slot_0_axi_rdata;
  input [1:0]slot_0_axi_rresp;
  input slot_0_axi_rlast;
  input slot_0_axi_rvalid;
  input slot_0_axi_rready;
  input slot_0_ext_trig;
  input slot_0_ext_trig_stop;
  input ext_clk_0;
  input ext_rstn_0;
  input ext_event_0_cnt_start;
  input ext_event_0_cnt_stop;
  input ext_event_0;
  input core_aclk;
  input core_aresetn;
  input m_axis_aclk;
  input m_axis_aresetn;
  output [55:0]m_axis_tdata;
  output [6:0]m_axis_tstrb;
  output m_axis_tvalid;
  output [0:0]m_axis_tid;
  input m_axis_tready;
  output interrupt;
endmodule
