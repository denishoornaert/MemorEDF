// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:system_ila:1.1
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_system_ila_1_0 (
  clk,
  SLOT_0_AXI_awaddr,
  SLOT_0_AXI_awlen,
  SLOT_0_AXI_awsize,
  SLOT_0_AXI_awburst,
  SLOT_0_AXI_awlock,
  SLOT_0_AXI_awcache,
  SLOT_0_AXI_awprot,
  SLOT_0_AXI_awqos,
  SLOT_0_AXI_awuser,
  SLOT_0_AXI_awvalid,
  SLOT_0_AXI_awready,
  SLOT_0_AXI_wdata,
  SLOT_0_AXI_wstrb,
  SLOT_0_AXI_wlast,
  SLOT_0_AXI_wvalid,
  SLOT_0_AXI_wready,
  SLOT_0_AXI_bresp,
  SLOT_0_AXI_bvalid,
  SLOT_0_AXI_bready,
  SLOT_0_AXI_araddr,
  SLOT_0_AXI_arlen,
  SLOT_0_AXI_arsize,
  SLOT_0_AXI_arburst,
  SLOT_0_AXI_arlock,
  SLOT_0_AXI_arcache,
  SLOT_0_AXI_arprot,
  SLOT_0_AXI_arqos,
  SLOT_0_AXI_aruser,
  SLOT_0_AXI_arvalid,
  SLOT_0_AXI_arready,
  SLOT_0_AXI_rdata,
  SLOT_0_AXI_rresp,
  SLOT_0_AXI_rlast,
  SLOT_0_AXI_rvalid,
  SLOT_0_AXI_rready,
  SLOT_1_AXIS_tid,
  SLOT_1_AXIS_tdata,
  SLOT_1_AXIS_tstrb,
  SLOT_1_AXIS_tlast,
  SLOT_1_AXIS_tvalid,
  SLOT_1_AXIS_tready,
  SLOT_2_AXI_awaddr,
  SLOT_2_AXI_awprot,
  SLOT_2_AXI_awvalid,
  SLOT_2_AXI_awready,
  SLOT_2_AXI_wdata,
  SLOT_2_AXI_wstrb,
  SLOT_2_AXI_wvalid,
  SLOT_2_AXI_wready,
  SLOT_2_AXI_bresp,
  SLOT_2_AXI_bvalid,
  SLOT_2_AXI_bready,
  SLOT_2_AXI_araddr,
  SLOT_2_AXI_arprot,
  SLOT_2_AXI_arvalid,
  SLOT_2_AXI_arready,
  SLOT_2_AXI_rdata,
  SLOT_2_AXI_rresp,
  SLOT_2_AXI_rvalid,
  SLOT_2_AXI_rready,
  SLOT_3_AXI_awid,
  SLOT_3_AXI_awaddr,
  SLOT_3_AXI_awlen,
  SLOT_3_AXI_awsize,
  SLOT_3_AXI_awburst,
  SLOT_3_AXI_awlock,
  SLOT_3_AXI_awcache,
  SLOT_3_AXI_awprot,
  SLOT_3_AXI_awqos,
  SLOT_3_AXI_awuser,
  SLOT_3_AXI_awvalid,
  SLOT_3_AXI_awready,
  SLOT_3_AXI_wdata,
  SLOT_3_AXI_wstrb,
  SLOT_3_AXI_wlast,
  SLOT_3_AXI_wvalid,
  SLOT_3_AXI_wready,
  SLOT_3_AXI_bid,
  SLOT_3_AXI_bresp,
  SLOT_3_AXI_bvalid,
  SLOT_3_AXI_bready,
  SLOT_3_AXI_arid,
  SLOT_3_AXI_araddr,
  SLOT_3_AXI_arlen,
  SLOT_3_AXI_arsize,
  SLOT_3_AXI_arburst,
  SLOT_3_AXI_arlock,
  SLOT_3_AXI_arcache,
  SLOT_3_AXI_arprot,
  SLOT_3_AXI_arqos,
  SLOT_3_AXI_aruser,
  SLOT_3_AXI_arvalid,
  SLOT_3_AXI_arready,
  SLOT_3_AXI_rid,
  SLOT_3_AXI_rdata,
  SLOT_3_AXI_rresp,
  SLOT_3_AXI_rlast,
  SLOT_3_AXI_rvalid,
  SLOT_3_AXI_rready,
  SLOT_4_AXI_awaddr,
  SLOT_4_AXI_awprot,
  SLOT_4_AXI_awvalid,
  SLOT_4_AXI_awready,
  SLOT_4_AXI_wdata,
  SLOT_4_AXI_wstrb,
  SLOT_4_AXI_wvalid,
  SLOT_4_AXI_wready,
  SLOT_4_AXI_bresp,
  SLOT_4_AXI_bvalid,
  SLOT_4_AXI_bready,
  SLOT_4_AXI_araddr,
  SLOT_4_AXI_arprot,
  SLOT_4_AXI_arvalid,
  SLOT_4_AXI_arready,
  SLOT_4_AXI_rdata,
  SLOT_4_AXI_rresp,
  SLOT_4_AXI_rvalid,
  SLOT_4_AXI_rready,
  SLOT_5_AXIS_tid,
  SLOT_5_AXIS_tdata,
  SLOT_5_AXIS_tstrb,
  SLOT_5_AXIS_tlast,
  SLOT_5_AXIS_tvalid,
  SLOT_5_AXIS_tready,
  SLOT_6_AXI_awaddr,
  SLOT_6_AXI_awlen,
  SLOT_6_AXI_awsize,
  SLOT_6_AXI_awcache,
  SLOT_6_AXI_awprot,
  SLOT_6_AXI_awvalid,
  SLOT_6_AXI_awready,
  SLOT_6_AXI_wdata,
  SLOT_6_AXI_wstrb,
  SLOT_6_AXI_wlast,
  SLOT_6_AXI_wvalid,
  SLOT_6_AXI_wready,
  SLOT_6_AXI_bresp,
  SLOT_6_AXI_bvalid,
  SLOT_6_AXI_bready,
  SLOT_6_AXI_araddr,
  SLOT_6_AXI_arlen,
  SLOT_6_AXI_arsize,
  SLOT_6_AXI_arcache,
  SLOT_6_AXI_arprot,
  SLOT_6_AXI_arvalid,
  SLOT_6_AXI_arready,
  SLOT_6_AXI_rdata,
  SLOT_6_AXI_rresp,
  SLOT_6_AXI_rlast,
  SLOT_6_AXI_rvalid,
  SLOT_6_AXI_rready,
  SLOT_7_AXIS_tid,
  SLOT_7_AXIS_tdest,
  SLOT_7_AXIS_tdata,
  SLOT_7_AXIS_tstrb,
  SLOT_7_AXIS_tkeep,
  SLOT_7_AXIS_tlast,
  SLOT_7_AXIS_tuser,
  SLOT_7_AXIS_tvalid,
  SLOT_7_AXIS_tready,
  SLOT_8_AXI_awaddr,
  SLOT_8_AXI_awprot,
  SLOT_8_AXI_awvalid,
  SLOT_8_AXI_awready,
  SLOT_8_AXI_wdata,
  SLOT_8_AXI_wstrb,
  SLOT_8_AXI_wvalid,
  SLOT_8_AXI_wready,
  SLOT_8_AXI_bresp,
  SLOT_8_AXI_bvalid,
  SLOT_8_AXI_bready,
  SLOT_8_AXI_araddr,
  SLOT_8_AXI_arprot,
  SLOT_8_AXI_arvalid,
  SLOT_8_AXI_arready,
  SLOT_8_AXI_rdata,
  SLOT_8_AXI_rresp,
  SLOT_8_AXI_rvalid,
  SLOT_8_AXI_rready,
  SLOT_9_AXI_awaddr,
  SLOT_9_AXI_awlen,
  SLOT_9_AXI_awsize,
  SLOT_9_AXI_awcache,
  SLOT_9_AXI_awprot,
  SLOT_9_AXI_awvalid,
  SLOT_9_AXI_awready,
  SLOT_9_AXI_wdata,
  SLOT_9_AXI_wstrb,
  SLOT_9_AXI_wlast,
  SLOT_9_AXI_wvalid,
  SLOT_9_AXI_wready,
  SLOT_9_AXI_bresp,
  SLOT_9_AXI_bvalid,
  SLOT_9_AXI_bready,
  SLOT_9_AXI_araddr,
  SLOT_9_AXI_arlen,
  SLOT_9_AXI_arsize,
  SLOT_9_AXI_arcache,
  SLOT_9_AXI_arprot,
  SLOT_9_AXI_arvalid,
  SLOT_9_AXI_arready,
  SLOT_9_AXI_rdata,
  SLOT_9_AXI_rresp,
  SLOT_9_AXI_rlast,
  SLOT_9_AXI_rvalid,
  SLOT_9_AXI_rready,
  SLOT_10_AXI_awaddr,
  SLOT_10_AXI_awlen,
  SLOT_10_AXI_awsize,
  SLOT_10_AXI_awvalid,
  SLOT_10_AXI_awready,
  SLOT_10_AXI_wdata,
  SLOT_10_AXI_wstrb,
  SLOT_10_AXI_wlast,
  SLOT_10_AXI_wvalid,
  SLOT_10_AXI_wready,
  SLOT_10_AXI_bresp,
  SLOT_10_AXI_bvalid,
  SLOT_10_AXI_bready,
  SLOT_10_AXI_araddr,
  SLOT_10_AXI_arlen,
  SLOT_10_AXI_arsize,
  SLOT_10_AXI_arvalid,
  SLOT_10_AXI_arready,
  SLOT_10_AXI_rdata,
  SLOT_10_AXI_rlast,
  SLOT_10_AXI_rvalid,
  SLOT_10_AXI_rready,
  SLOT_11_AXI_awaddr,
  SLOT_11_AXI_awlen,
  SLOT_11_AXI_awsize,
  SLOT_11_AXI_awcache,
  SLOT_11_AXI_awvalid,
  SLOT_11_AXI_awready,
  SLOT_11_AXI_wdata,
  SLOT_11_AXI_wstrb,
  SLOT_11_AXI_wlast,
  SLOT_11_AXI_wvalid,
  SLOT_11_AXI_wready,
  SLOT_11_AXI_bresp,
  SLOT_11_AXI_bvalid,
  SLOT_11_AXI_bready,
  SLOT_11_AXI_araddr,
  SLOT_11_AXI_arlen,
  SLOT_11_AXI_arsize,
  SLOT_11_AXI_arvalid,
  SLOT_11_AXI_arready,
  SLOT_11_AXI_rdata,
  SLOT_11_AXI_rlast,
  SLOT_11_AXI_rvalid,
  SLOT_11_AXI_rready,
  resetn
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clk, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_10_AXI:SLOT_11_AXI:SLOT_1_AXIS:SLOT_2_AXI:SLOT_3_AXI:SLOT_4_AXI:SLOT_5_AXIS:SLOT_6_AXI:SLOT_7_AXIS:SLOT_8_AXI:SLOT_9_AXI, ASSOCIATED_RESET resetn" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *)
input wire [12 : 0] SLOT_0_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN" *)
input wire [7 : 0] SLOT_0_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE" *)
input wire [2 : 0] SLOT_0_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST" *)
input wire [1 : 0] SLOT_0_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK" *)
input wire [0 : 0] SLOT_0_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE" *)
input wire [3 : 0] SLOT_0_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT" *)
input wire [2 : 0] SLOT_0_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWQOS" *)
input wire [3 : 0] SLOT_0_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWUSER" *)
input wire [15 : 0] SLOT_0_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *)
input wire SLOT_0_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *)
input wire SLOT_0_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *)
input wire [31 : 0] SLOT_0_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB" *)
input wire [3 : 0] SLOT_0_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST" *)
input wire SLOT_0_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *)
input wire SLOT_0_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *)
input wire SLOT_0_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP" *)
input wire [1 : 0] SLOT_0_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *)
input wire SLOT_0_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *)
input wire SLOT_0_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *)
input wire [12 : 0] SLOT_0_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN" *)
input wire [7 : 0] SLOT_0_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE" *)
input wire [2 : 0] SLOT_0_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST" *)
input wire [1 : 0] SLOT_0_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK" *)
input wire [0 : 0] SLOT_0_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE" *)
input wire [3 : 0] SLOT_0_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT" *)
input wire [2 : 0] SLOT_0_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARQOS" *)
input wire [3 : 0] SLOT_0_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARUSER" *)
input wire [15 : 0] SLOT_0_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *)
input wire SLOT_0_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *)
input wire SLOT_0_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *)
input wire [31 : 0] SLOT_0_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP" *)
input wire [1 : 0] SLOT_0_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST" *)
input wire SLOT_0_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *)
input wire SLOT_0_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *)
input wire SLOT_0_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TID" *)
input wire [0 : 0] SLOT_1_AXIS_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA" *)
input wire [55 : 0] SLOT_1_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TSTRB" *)
input wire [6 : 0] SLOT_1_AXIS_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST" *)
input wire SLOT_1_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID" *)
input wire SLOT_1_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXIS, TDATA_NUM_BYTES 7, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY" *)
input wire SLOT_1_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR" *)
input wire [9 : 0] SLOT_2_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT" *)
input wire [2 : 0] SLOT_2_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID" *)
input wire SLOT_2_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY" *)
input wire SLOT_2_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA" *)
input wire [31 : 0] SLOT_2_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB" *)
input wire [3 : 0] SLOT_2_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID" *)
input wire SLOT_2_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY" *)
input wire SLOT_2_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP" *)
input wire [1 : 0] SLOT_2_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID" *)
input wire SLOT_2_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY" *)
input wire SLOT_2_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR" *)
input wire [9 : 0] SLOT_2_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT" *)
input wire [2 : 0] SLOT_2_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID" *)
input wire SLOT_2_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY" *)
input wire SLOT_2_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA" *)
input wire [31 : 0] SLOT_2_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RRESP" *)
input wire [1 : 0] SLOT_2_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID" *)
input wire SLOT_2_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY" *)
input wire SLOT_2_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWID" *)
input wire [15 : 0] SLOT_3_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR" *)
input wire [39 : 0] SLOT_3_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN" *)
input wire [7 : 0] SLOT_3_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE" *)
input wire [2 : 0] SLOT_3_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWBURST" *)
input wire [1 : 0] SLOT_3_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLOCK" *)
input wire [0 : 0] SLOT_3_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE" *)
input wire [3 : 0] SLOT_3_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT" *)
input wire [2 : 0] SLOT_3_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWQOS" *)
input wire [3 : 0] SLOT_3_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWUSER" *)
input wire [15 : 0] SLOT_3_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID" *)
input wire SLOT_3_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY" *)
input wire SLOT_3_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA" *)
input wire [127 : 0] SLOT_3_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB" *)
input wire [15 : 0] SLOT_3_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST" *)
input wire SLOT_3_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID" *)
input wire SLOT_3_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY" *)
input wire SLOT_3_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BID" *)
input wire [15 : 0] SLOT_3_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP" *)
input wire [1 : 0] SLOT_3_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID" *)
input wire SLOT_3_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY" *)
input wire SLOT_3_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARID" *)
input wire [15 : 0] SLOT_3_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR" *)
input wire [39 : 0] SLOT_3_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN" *)
input wire [7 : 0] SLOT_3_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE" *)
input wire [2 : 0] SLOT_3_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARBURST" *)
input wire [1 : 0] SLOT_3_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLOCK" *)
input wire [0 : 0] SLOT_3_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE" *)
input wire [3 : 0] SLOT_3_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT" *)
input wire [2 : 0] SLOT_3_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARQOS" *)
input wire [3 : 0] SLOT_3_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARUSER" *)
input wire [15 : 0] SLOT_3_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID" *)
input wire SLOT_3_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY" *)
input wire SLOT_3_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RID" *)
input wire [15 : 0] SLOT_3_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA" *)
input wire [127 : 0] SLOT_3_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RRESP" *)
input wire [1 : 0] SLOT_3_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST" *)
input wire SLOT_3_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID" *)
input wire SLOT_3_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY" *)
input wire SLOT_3_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWADDR" *)
input wire [15 : 0] SLOT_4_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWPROT" *)
input wire [2 : 0] SLOT_4_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWVALID" *)
input wire SLOT_4_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWREADY" *)
input wire SLOT_4_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WDATA" *)
input wire [31 : 0] SLOT_4_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WSTRB" *)
input wire [3 : 0] SLOT_4_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WVALID" *)
input wire SLOT_4_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WREADY" *)
input wire SLOT_4_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BRESP" *)
input wire [1 : 0] SLOT_4_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BVALID" *)
input wire SLOT_4_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BREADY" *)
input wire SLOT_4_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARADDR" *)
input wire [15 : 0] SLOT_4_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARPROT" *)
input wire [2 : 0] SLOT_4_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARVALID" *)
input wire SLOT_4_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARREADY" *)
input wire SLOT_4_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RDATA" *)
input wire [31 : 0] SLOT_4_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RRESP" *)
input wire [1 : 0] SLOT_4_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RVALID" *)
input wire SLOT_4_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_4_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RREADY" *)
input wire SLOT_4_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TID" *)
input wire [0 : 0] SLOT_5_AXIS_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TDATA" *)
input wire [31 : 0] SLOT_5_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TSTRB" *)
input wire [3 : 0] SLOT_5_AXIS_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TLAST" *)
input wire SLOT_5_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TVALID" *)
input wire SLOT_5_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_5_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_5_AXIS TREADY" *)
input wire SLOT_5_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWADDR" *)
input wire [31 : 0] SLOT_6_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWLEN" *)
input wire [7 : 0] SLOT_6_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWSIZE" *)
input wire [2 : 0] SLOT_6_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWCACHE" *)
input wire [3 : 0] SLOT_6_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWPROT" *)
input wire [2 : 0] SLOT_6_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWVALID" *)
input wire SLOT_6_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI AWREADY" *)
input wire SLOT_6_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WDATA" *)
input wire [31 : 0] SLOT_6_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WSTRB" *)
input wire [3 : 0] SLOT_6_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WLAST" *)
input wire SLOT_6_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WVALID" *)
input wire SLOT_6_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI WREADY" *)
input wire SLOT_6_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI BRESP" *)
input wire [1 : 0] SLOT_6_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI BVALID" *)
input wire SLOT_6_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI BREADY" *)
input wire SLOT_6_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARADDR" *)
input wire [31 : 0] SLOT_6_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARLEN" *)
input wire [7 : 0] SLOT_6_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARSIZE" *)
input wire [2 : 0] SLOT_6_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARCACHE" *)
input wire [3 : 0] SLOT_6_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARPROT" *)
input wire [2 : 0] SLOT_6_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARVALID" *)
input wire SLOT_6_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI ARREADY" *)
input wire SLOT_6_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RDATA" *)
input wire [31 : 0] SLOT_6_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RRESP" *)
input wire [1 : 0] SLOT_6_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RLAST" *)
input wire SLOT_6_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RVALID" *)
input wire SLOT_6_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_6_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_6_AXI RREADY" *)
input wire SLOT_6_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TID" *)
input wire [7 : 0] SLOT_7_AXIS_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TDEST" *)
input wire [7 : 0] SLOT_7_AXIS_tdest;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TDATA" *)
input wire [31 : 0] SLOT_7_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TSTRB" *)
input wire [3 : 0] SLOT_7_AXIS_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TKEEP" *)
input wire [3 : 0] SLOT_7_AXIS_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TLAST" *)
input wire SLOT_7_AXIS_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TUSER" *)
input wire [7 : 0] SLOT_7_AXIS_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TVALID" *)
input wire SLOT_7_AXIS_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_7_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TREADY" *)
input wire SLOT_7_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI AWADDR" *)
input wire [9 : 0] SLOT_8_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI AWPROT" *)
input wire [2 : 0] SLOT_8_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI AWVALID" *)
input wire SLOT_8_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI AWREADY" *)
input wire SLOT_8_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI WDATA" *)
input wire [31 : 0] SLOT_8_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI WSTRB" *)
input wire [3 : 0] SLOT_8_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI WVALID" *)
input wire SLOT_8_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI WREADY" *)
input wire SLOT_8_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI BRESP" *)
input wire [1 : 0] SLOT_8_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI BVALID" *)
input wire SLOT_8_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI BREADY" *)
input wire SLOT_8_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI ARADDR" *)
input wire [9 : 0] SLOT_8_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI ARPROT" *)
input wire [2 : 0] SLOT_8_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI ARVALID" *)
input wire SLOT_8_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI ARREADY" *)
input wire SLOT_8_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI RDATA" *)
input wire [31 : 0] SLOT_8_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI RRESP" *)
input wire [1 : 0] SLOT_8_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI RVALID" *)
input wire SLOT_8_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_8_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_8_AXI RREADY" *)
input wire SLOT_8_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWADDR" *)
input wire [31 : 0] SLOT_9_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWLEN" *)
input wire [7 : 0] SLOT_9_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWSIZE" *)
input wire [2 : 0] SLOT_9_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWCACHE" *)
input wire [3 : 0] SLOT_9_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWPROT" *)
input wire [2 : 0] SLOT_9_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWVALID" *)
input wire SLOT_9_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI AWREADY" *)
input wire SLOT_9_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI WDATA" *)
input wire [31 : 0] SLOT_9_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI WSTRB" *)
input wire [2 : 0] SLOT_9_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI WLAST" *)
input wire SLOT_9_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI WVALID" *)
input wire SLOT_9_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI WREADY" *)
input wire SLOT_9_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI BRESP" *)
input wire [1 : 0] SLOT_9_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI BVALID" *)
input wire SLOT_9_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI BREADY" *)
input wire SLOT_9_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARADDR" *)
input wire [31 : 0] SLOT_9_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARLEN" *)
input wire [7 : 0] SLOT_9_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARSIZE" *)
input wire [2 : 0] SLOT_9_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARCACHE" *)
input wire [3 : 0] SLOT_9_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARPROT" *)
input wire [2 : 0] SLOT_9_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARVALID" *)
input wire SLOT_9_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI ARREADY" *)
input wire SLOT_9_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI RDATA" *)
input wire [31 : 0] SLOT_9_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI RRESP" *)
input wire [1 : 0] SLOT_9_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI RLAST" *)
input wire SLOT_9_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI RVALID" *)
input wire SLOT_9_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_9_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_9_AXI RREADY" *)
input wire SLOT_9_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI AWADDR" *)
input wire [31 : 0] SLOT_10_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI AWLEN" *)
input wire [7 : 0] SLOT_10_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI AWSIZE" *)
input wire [2 : 0] SLOT_10_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI AWVALID" *)
input wire SLOT_10_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI AWREADY" *)
input wire SLOT_10_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI WDATA" *)
input wire [31 : 0] SLOT_10_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI WSTRB" *)
input wire [3 : 0] SLOT_10_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI WLAST" *)
input wire SLOT_10_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI WVALID" *)
input wire SLOT_10_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI WREADY" *)
input wire SLOT_10_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI BRESP" *)
input wire [1 : 0] SLOT_10_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI BVALID" *)
input wire SLOT_10_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI BREADY" *)
input wire SLOT_10_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI ARADDR" *)
input wire [31 : 0] SLOT_10_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI ARLEN" *)
input wire [7 : 0] SLOT_10_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI ARSIZE" *)
input wire [2 : 0] SLOT_10_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI ARVALID" *)
input wire SLOT_10_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI ARREADY" *)
input wire SLOT_10_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI RDATA" *)
input wire [31 : 0] SLOT_10_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI RLAST" *)
input wire SLOT_10_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI RVALID" *)
input wire SLOT_10_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_10_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_10_AXI RREADY" *)
input wire SLOT_10_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI AWADDR" *)
input wire [31 : 0] SLOT_11_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI AWLEN" *)
input wire [7 : 0] SLOT_11_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI AWSIZE" *)
input wire [2 : 0] SLOT_11_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI AWCACHE" *)
input wire [3 : 0] SLOT_11_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI AWVALID" *)
input wire SLOT_11_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI AWREADY" *)
input wire SLOT_11_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI WDATA" *)
input wire [31 : 0] SLOT_11_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI WSTRB" *)
input wire [3 : 0] SLOT_11_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI WLAST" *)
input wire SLOT_11_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI WVALID" *)
input wire SLOT_11_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI WREADY" *)
input wire SLOT_11_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI BRESP" *)
input wire [1 : 0] SLOT_11_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI BVALID" *)
input wire SLOT_11_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI BREADY" *)
input wire SLOT_11_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI ARADDR" *)
input wire [31 : 0] SLOT_11_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI ARLEN" *)
input wire [7 : 0] SLOT_11_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI ARSIZE" *)
input wire [2 : 0] SLOT_11_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI ARVALID" *)
input wire SLOT_11_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI ARREADY" *)
input wire SLOT_11_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI RDATA" *)
input wire [31 : 0] SLOT_11_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI RLAST" *)
input wire SLOT_11_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI RVALID" *)
input wire SLOT_11_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_11_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_11_AXI RREADY" *)
input wire SLOT_11_AXI_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.resetn RST" *)
input wire resetn;

  bd_365d inst (
    .clk(clk),
    .SLOT_0_AXI_awaddr(SLOT_0_AXI_awaddr),
    .SLOT_0_AXI_awlen(SLOT_0_AXI_awlen),
    .SLOT_0_AXI_awsize(SLOT_0_AXI_awsize),
    .SLOT_0_AXI_awburst(SLOT_0_AXI_awburst),
    .SLOT_0_AXI_awlock(SLOT_0_AXI_awlock),
    .SLOT_0_AXI_awcache(SLOT_0_AXI_awcache),
    .SLOT_0_AXI_awprot(SLOT_0_AXI_awprot),
    .SLOT_0_AXI_awqos(SLOT_0_AXI_awqos),
    .SLOT_0_AXI_awuser(SLOT_0_AXI_awuser),
    .SLOT_0_AXI_awvalid(SLOT_0_AXI_awvalid),
    .SLOT_0_AXI_awready(SLOT_0_AXI_awready),
    .SLOT_0_AXI_wdata(SLOT_0_AXI_wdata),
    .SLOT_0_AXI_wstrb(SLOT_0_AXI_wstrb),
    .SLOT_0_AXI_wlast(SLOT_0_AXI_wlast),
    .SLOT_0_AXI_wvalid(SLOT_0_AXI_wvalid),
    .SLOT_0_AXI_wready(SLOT_0_AXI_wready),
    .SLOT_0_AXI_bresp(SLOT_0_AXI_bresp),
    .SLOT_0_AXI_bvalid(SLOT_0_AXI_bvalid),
    .SLOT_0_AXI_bready(SLOT_0_AXI_bready),
    .SLOT_0_AXI_araddr(SLOT_0_AXI_araddr),
    .SLOT_0_AXI_arlen(SLOT_0_AXI_arlen),
    .SLOT_0_AXI_arsize(SLOT_0_AXI_arsize),
    .SLOT_0_AXI_arburst(SLOT_0_AXI_arburst),
    .SLOT_0_AXI_arlock(SLOT_0_AXI_arlock),
    .SLOT_0_AXI_arcache(SLOT_0_AXI_arcache),
    .SLOT_0_AXI_arprot(SLOT_0_AXI_arprot),
    .SLOT_0_AXI_arqos(SLOT_0_AXI_arqos),
    .SLOT_0_AXI_aruser(SLOT_0_AXI_aruser),
    .SLOT_0_AXI_arvalid(SLOT_0_AXI_arvalid),
    .SLOT_0_AXI_arready(SLOT_0_AXI_arready),
    .SLOT_0_AXI_rdata(SLOT_0_AXI_rdata),
    .SLOT_0_AXI_rresp(SLOT_0_AXI_rresp),
    .SLOT_0_AXI_rlast(SLOT_0_AXI_rlast),
    .SLOT_0_AXI_rvalid(SLOT_0_AXI_rvalid),
    .SLOT_0_AXI_rready(SLOT_0_AXI_rready),
    .SLOT_1_AXIS_tid(SLOT_1_AXIS_tid),
    .SLOT_1_AXIS_tdata(SLOT_1_AXIS_tdata),
    .SLOT_1_AXIS_tstrb(SLOT_1_AXIS_tstrb),
    .SLOT_1_AXIS_tlast(SLOT_1_AXIS_tlast),
    .SLOT_1_AXIS_tvalid(SLOT_1_AXIS_tvalid),
    .SLOT_1_AXIS_tready(SLOT_1_AXIS_tready),
    .SLOT_2_AXI_awaddr(SLOT_2_AXI_awaddr),
    .SLOT_2_AXI_awprot(SLOT_2_AXI_awprot),
    .SLOT_2_AXI_awvalid(SLOT_2_AXI_awvalid),
    .SLOT_2_AXI_awready(SLOT_2_AXI_awready),
    .SLOT_2_AXI_wdata(SLOT_2_AXI_wdata),
    .SLOT_2_AXI_wstrb(SLOT_2_AXI_wstrb),
    .SLOT_2_AXI_wvalid(SLOT_2_AXI_wvalid),
    .SLOT_2_AXI_wready(SLOT_2_AXI_wready),
    .SLOT_2_AXI_bresp(SLOT_2_AXI_bresp),
    .SLOT_2_AXI_bvalid(SLOT_2_AXI_bvalid),
    .SLOT_2_AXI_bready(SLOT_2_AXI_bready),
    .SLOT_2_AXI_araddr(SLOT_2_AXI_araddr),
    .SLOT_2_AXI_arprot(SLOT_2_AXI_arprot),
    .SLOT_2_AXI_arvalid(SLOT_2_AXI_arvalid),
    .SLOT_2_AXI_arready(SLOT_2_AXI_arready),
    .SLOT_2_AXI_rdata(SLOT_2_AXI_rdata),
    .SLOT_2_AXI_rresp(SLOT_2_AXI_rresp),
    .SLOT_2_AXI_rvalid(SLOT_2_AXI_rvalid),
    .SLOT_2_AXI_rready(SLOT_2_AXI_rready),
    .SLOT_3_AXI_awid(SLOT_3_AXI_awid),
    .SLOT_3_AXI_awaddr(SLOT_3_AXI_awaddr),
    .SLOT_3_AXI_awlen(SLOT_3_AXI_awlen),
    .SLOT_3_AXI_awsize(SLOT_3_AXI_awsize),
    .SLOT_3_AXI_awburst(SLOT_3_AXI_awburst),
    .SLOT_3_AXI_awlock(SLOT_3_AXI_awlock),
    .SLOT_3_AXI_awcache(SLOT_3_AXI_awcache),
    .SLOT_3_AXI_awprot(SLOT_3_AXI_awprot),
    .SLOT_3_AXI_awqos(SLOT_3_AXI_awqos),
    .SLOT_3_AXI_awuser(SLOT_3_AXI_awuser),
    .SLOT_3_AXI_awvalid(SLOT_3_AXI_awvalid),
    .SLOT_3_AXI_awready(SLOT_3_AXI_awready),
    .SLOT_3_AXI_wdata(SLOT_3_AXI_wdata),
    .SLOT_3_AXI_wstrb(SLOT_3_AXI_wstrb),
    .SLOT_3_AXI_wlast(SLOT_3_AXI_wlast),
    .SLOT_3_AXI_wvalid(SLOT_3_AXI_wvalid),
    .SLOT_3_AXI_wready(SLOT_3_AXI_wready),
    .SLOT_3_AXI_bid(SLOT_3_AXI_bid),
    .SLOT_3_AXI_bresp(SLOT_3_AXI_bresp),
    .SLOT_3_AXI_bvalid(SLOT_3_AXI_bvalid),
    .SLOT_3_AXI_bready(SLOT_3_AXI_bready),
    .SLOT_3_AXI_arid(SLOT_3_AXI_arid),
    .SLOT_3_AXI_araddr(SLOT_3_AXI_araddr),
    .SLOT_3_AXI_arlen(SLOT_3_AXI_arlen),
    .SLOT_3_AXI_arsize(SLOT_3_AXI_arsize),
    .SLOT_3_AXI_arburst(SLOT_3_AXI_arburst),
    .SLOT_3_AXI_arlock(SLOT_3_AXI_arlock),
    .SLOT_3_AXI_arcache(SLOT_3_AXI_arcache),
    .SLOT_3_AXI_arprot(SLOT_3_AXI_arprot),
    .SLOT_3_AXI_arqos(SLOT_3_AXI_arqos),
    .SLOT_3_AXI_aruser(SLOT_3_AXI_aruser),
    .SLOT_3_AXI_arvalid(SLOT_3_AXI_arvalid),
    .SLOT_3_AXI_arready(SLOT_3_AXI_arready),
    .SLOT_3_AXI_rid(SLOT_3_AXI_rid),
    .SLOT_3_AXI_rdata(SLOT_3_AXI_rdata),
    .SLOT_3_AXI_rresp(SLOT_3_AXI_rresp),
    .SLOT_3_AXI_rlast(SLOT_3_AXI_rlast),
    .SLOT_3_AXI_rvalid(SLOT_3_AXI_rvalid),
    .SLOT_3_AXI_rready(SLOT_3_AXI_rready),
    .SLOT_4_AXI_awaddr(SLOT_4_AXI_awaddr),
    .SLOT_4_AXI_awprot(SLOT_4_AXI_awprot),
    .SLOT_4_AXI_awvalid(SLOT_4_AXI_awvalid),
    .SLOT_4_AXI_awready(SLOT_4_AXI_awready),
    .SLOT_4_AXI_wdata(SLOT_4_AXI_wdata),
    .SLOT_4_AXI_wstrb(SLOT_4_AXI_wstrb),
    .SLOT_4_AXI_wvalid(SLOT_4_AXI_wvalid),
    .SLOT_4_AXI_wready(SLOT_4_AXI_wready),
    .SLOT_4_AXI_bresp(SLOT_4_AXI_bresp),
    .SLOT_4_AXI_bvalid(SLOT_4_AXI_bvalid),
    .SLOT_4_AXI_bready(SLOT_4_AXI_bready),
    .SLOT_4_AXI_araddr(SLOT_4_AXI_araddr),
    .SLOT_4_AXI_arprot(SLOT_4_AXI_arprot),
    .SLOT_4_AXI_arvalid(SLOT_4_AXI_arvalid),
    .SLOT_4_AXI_arready(SLOT_4_AXI_arready),
    .SLOT_4_AXI_rdata(SLOT_4_AXI_rdata),
    .SLOT_4_AXI_rresp(SLOT_4_AXI_rresp),
    .SLOT_4_AXI_rvalid(SLOT_4_AXI_rvalid),
    .SLOT_4_AXI_rready(SLOT_4_AXI_rready),
    .SLOT_5_AXIS_tid(SLOT_5_AXIS_tid),
    .SLOT_5_AXIS_tdata(SLOT_5_AXIS_tdata),
    .SLOT_5_AXIS_tstrb(SLOT_5_AXIS_tstrb),
    .SLOT_5_AXIS_tlast(SLOT_5_AXIS_tlast),
    .SLOT_5_AXIS_tvalid(SLOT_5_AXIS_tvalid),
    .SLOT_5_AXIS_tready(SLOT_5_AXIS_tready),
    .SLOT_6_AXI_awaddr(SLOT_6_AXI_awaddr),
    .SLOT_6_AXI_awlen(SLOT_6_AXI_awlen),
    .SLOT_6_AXI_awsize(SLOT_6_AXI_awsize),
    .SLOT_6_AXI_awcache(SLOT_6_AXI_awcache),
    .SLOT_6_AXI_awprot(SLOT_6_AXI_awprot),
    .SLOT_6_AXI_awvalid(SLOT_6_AXI_awvalid),
    .SLOT_6_AXI_awready(SLOT_6_AXI_awready),
    .SLOT_6_AXI_wdata(SLOT_6_AXI_wdata),
    .SLOT_6_AXI_wstrb(SLOT_6_AXI_wstrb),
    .SLOT_6_AXI_wlast(SLOT_6_AXI_wlast),
    .SLOT_6_AXI_wvalid(SLOT_6_AXI_wvalid),
    .SLOT_6_AXI_wready(SLOT_6_AXI_wready),
    .SLOT_6_AXI_bresp(SLOT_6_AXI_bresp),
    .SLOT_6_AXI_bvalid(SLOT_6_AXI_bvalid),
    .SLOT_6_AXI_bready(SLOT_6_AXI_bready),
    .SLOT_6_AXI_araddr(SLOT_6_AXI_araddr),
    .SLOT_6_AXI_arlen(SLOT_6_AXI_arlen),
    .SLOT_6_AXI_arsize(SLOT_6_AXI_arsize),
    .SLOT_6_AXI_arcache(SLOT_6_AXI_arcache),
    .SLOT_6_AXI_arprot(SLOT_6_AXI_arprot),
    .SLOT_6_AXI_arvalid(SLOT_6_AXI_arvalid),
    .SLOT_6_AXI_arready(SLOT_6_AXI_arready),
    .SLOT_6_AXI_rdata(SLOT_6_AXI_rdata),
    .SLOT_6_AXI_rresp(SLOT_6_AXI_rresp),
    .SLOT_6_AXI_rlast(SLOT_6_AXI_rlast),
    .SLOT_6_AXI_rvalid(SLOT_6_AXI_rvalid),
    .SLOT_6_AXI_rready(SLOT_6_AXI_rready),
    .SLOT_7_AXIS_tid(SLOT_7_AXIS_tid),
    .SLOT_7_AXIS_tdest(SLOT_7_AXIS_tdest),
    .SLOT_7_AXIS_tdata(SLOT_7_AXIS_tdata),
    .SLOT_7_AXIS_tstrb(SLOT_7_AXIS_tstrb),
    .SLOT_7_AXIS_tkeep(SLOT_7_AXIS_tkeep),
    .SLOT_7_AXIS_tlast(SLOT_7_AXIS_tlast),
    .SLOT_7_AXIS_tuser(SLOT_7_AXIS_tuser),
    .SLOT_7_AXIS_tvalid(SLOT_7_AXIS_tvalid),
    .SLOT_7_AXIS_tready(SLOT_7_AXIS_tready),
    .SLOT_8_AXI_awaddr(SLOT_8_AXI_awaddr),
    .SLOT_8_AXI_awprot(SLOT_8_AXI_awprot),
    .SLOT_8_AXI_awvalid(SLOT_8_AXI_awvalid),
    .SLOT_8_AXI_awready(SLOT_8_AXI_awready),
    .SLOT_8_AXI_wdata(SLOT_8_AXI_wdata),
    .SLOT_8_AXI_wstrb(SLOT_8_AXI_wstrb),
    .SLOT_8_AXI_wvalid(SLOT_8_AXI_wvalid),
    .SLOT_8_AXI_wready(SLOT_8_AXI_wready),
    .SLOT_8_AXI_bresp(SLOT_8_AXI_bresp),
    .SLOT_8_AXI_bvalid(SLOT_8_AXI_bvalid),
    .SLOT_8_AXI_bready(SLOT_8_AXI_bready),
    .SLOT_8_AXI_araddr(SLOT_8_AXI_araddr),
    .SLOT_8_AXI_arprot(SLOT_8_AXI_arprot),
    .SLOT_8_AXI_arvalid(SLOT_8_AXI_arvalid),
    .SLOT_8_AXI_arready(SLOT_8_AXI_arready),
    .SLOT_8_AXI_rdata(SLOT_8_AXI_rdata),
    .SLOT_8_AXI_rresp(SLOT_8_AXI_rresp),
    .SLOT_8_AXI_rvalid(SLOT_8_AXI_rvalid),
    .SLOT_8_AXI_rready(SLOT_8_AXI_rready),
    .SLOT_9_AXI_awaddr(SLOT_9_AXI_awaddr),
    .SLOT_9_AXI_awlen(SLOT_9_AXI_awlen),
    .SLOT_9_AXI_awsize(SLOT_9_AXI_awsize),
    .SLOT_9_AXI_awcache(SLOT_9_AXI_awcache),
    .SLOT_9_AXI_awprot(SLOT_9_AXI_awprot),
    .SLOT_9_AXI_awvalid(SLOT_9_AXI_awvalid),
    .SLOT_9_AXI_awready(SLOT_9_AXI_awready),
    .SLOT_9_AXI_wdata(SLOT_9_AXI_wdata),
    .SLOT_9_AXI_wstrb(SLOT_9_AXI_wstrb),
    .SLOT_9_AXI_wlast(SLOT_9_AXI_wlast),
    .SLOT_9_AXI_wvalid(SLOT_9_AXI_wvalid),
    .SLOT_9_AXI_wready(SLOT_9_AXI_wready),
    .SLOT_9_AXI_bresp(SLOT_9_AXI_bresp),
    .SLOT_9_AXI_bvalid(SLOT_9_AXI_bvalid),
    .SLOT_9_AXI_bready(SLOT_9_AXI_bready),
    .SLOT_9_AXI_araddr(SLOT_9_AXI_araddr),
    .SLOT_9_AXI_arlen(SLOT_9_AXI_arlen),
    .SLOT_9_AXI_arsize(SLOT_9_AXI_arsize),
    .SLOT_9_AXI_arcache(SLOT_9_AXI_arcache),
    .SLOT_9_AXI_arprot(SLOT_9_AXI_arprot),
    .SLOT_9_AXI_arvalid(SLOT_9_AXI_arvalid),
    .SLOT_9_AXI_arready(SLOT_9_AXI_arready),
    .SLOT_9_AXI_rdata(SLOT_9_AXI_rdata),
    .SLOT_9_AXI_rresp(SLOT_9_AXI_rresp),
    .SLOT_9_AXI_rlast(SLOT_9_AXI_rlast),
    .SLOT_9_AXI_rvalid(SLOT_9_AXI_rvalid),
    .SLOT_9_AXI_rready(SLOT_9_AXI_rready),
    .SLOT_10_AXI_awaddr(SLOT_10_AXI_awaddr),
    .SLOT_10_AXI_awlen(SLOT_10_AXI_awlen),
    .SLOT_10_AXI_awsize(SLOT_10_AXI_awsize),
    .SLOT_10_AXI_awvalid(SLOT_10_AXI_awvalid),
    .SLOT_10_AXI_awready(SLOT_10_AXI_awready),
    .SLOT_10_AXI_wdata(SLOT_10_AXI_wdata),
    .SLOT_10_AXI_wstrb(SLOT_10_AXI_wstrb),
    .SLOT_10_AXI_wlast(SLOT_10_AXI_wlast),
    .SLOT_10_AXI_wvalid(SLOT_10_AXI_wvalid),
    .SLOT_10_AXI_wready(SLOT_10_AXI_wready),
    .SLOT_10_AXI_bresp(SLOT_10_AXI_bresp),
    .SLOT_10_AXI_bvalid(SLOT_10_AXI_bvalid),
    .SLOT_10_AXI_bready(SLOT_10_AXI_bready),
    .SLOT_10_AXI_araddr(SLOT_10_AXI_araddr),
    .SLOT_10_AXI_arlen(SLOT_10_AXI_arlen),
    .SLOT_10_AXI_arsize(SLOT_10_AXI_arsize),
    .SLOT_10_AXI_arvalid(SLOT_10_AXI_arvalid),
    .SLOT_10_AXI_arready(SLOT_10_AXI_arready),
    .SLOT_10_AXI_rdata(SLOT_10_AXI_rdata),
    .SLOT_10_AXI_rlast(SLOT_10_AXI_rlast),
    .SLOT_10_AXI_rvalid(SLOT_10_AXI_rvalid),
    .SLOT_10_AXI_rready(SLOT_10_AXI_rready),
    .SLOT_11_AXI_awaddr(SLOT_11_AXI_awaddr),
    .SLOT_11_AXI_awlen(SLOT_11_AXI_awlen),
    .SLOT_11_AXI_awsize(SLOT_11_AXI_awsize),
    .SLOT_11_AXI_awcache(SLOT_11_AXI_awcache),
    .SLOT_11_AXI_awvalid(SLOT_11_AXI_awvalid),
    .SLOT_11_AXI_awready(SLOT_11_AXI_awready),
    .SLOT_11_AXI_wdata(SLOT_11_AXI_wdata),
    .SLOT_11_AXI_wstrb(SLOT_11_AXI_wstrb),
    .SLOT_11_AXI_wlast(SLOT_11_AXI_wlast),
    .SLOT_11_AXI_wvalid(SLOT_11_AXI_wvalid),
    .SLOT_11_AXI_wready(SLOT_11_AXI_wready),
    .SLOT_11_AXI_bresp(SLOT_11_AXI_bresp),
    .SLOT_11_AXI_bvalid(SLOT_11_AXI_bvalid),
    .SLOT_11_AXI_bready(SLOT_11_AXI_bready),
    .SLOT_11_AXI_araddr(SLOT_11_AXI_araddr),
    .SLOT_11_AXI_arlen(SLOT_11_AXI_arlen),
    .SLOT_11_AXI_arsize(SLOT_11_AXI_arsize),
    .SLOT_11_AXI_arvalid(SLOT_11_AXI_arvalid),
    .SLOT_11_AXI_arready(SLOT_11_AXI_arready),
    .SLOT_11_AXI_rdata(SLOT_11_AXI_rdata),
    .SLOT_11_AXI_rlast(SLOT_11_AXI_rlast),
    .SLOT_11_AXI_rvalid(SLOT_11_AXI_rvalid),
    .SLOT_11_AXI_rready(SLOT_11_AXI_rready),
    .resetn(resetn)
  );
endmodule
