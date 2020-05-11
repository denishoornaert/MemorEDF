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


// IP VLNV: user.org:user:MemorEDF:1.0
// IP Revision: 208

(* X_CORE_INFO = "MemorEDF,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "design_2_MemorEDF_0_0,MemorEDF,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_2_MemorEDF_0_0 (
  s00_axi_aclk,
  s00_axi_aresetn,
  s00_axi_awid,
  s00_axi_awaddr,
  s00_axi_awlen,
  s00_axi_awsize,
  s00_axi_awburst,
  s00_axi_awlock,
  s00_axi_awcache,
  s00_axi_awprot,
  s00_axi_awqos,
  s00_axi_awregion,
  s00_axi_awuser,
  s00_axi_awvalid,
  s00_axi_awready,
  s00_axi_wdata,
  s00_axi_wstrb,
  s00_axi_wlast,
  s00_axi_wvalid,
  s00_axi_wready,
  s00_axi_bid,
  s00_axi_bresp,
  s00_axi_bvalid,
  s00_axi_bready,
  s00_axi_arid,
  s00_axi_araddr,
  s00_axi_arlen,
  s00_axi_arsize,
  s00_axi_arburst,
  s00_axi_arlock,
  s00_axi_arcache,
  s00_axi_arprot,
  s00_axi_arqos,
  s00_axi_arregion,
  s00_axi_aruser,
  s00_axi_arvalid,
  s00_axi_arready,
  s00_axi_rid,
  s00_axi_rdata,
  s00_axi_rresp,
  s00_axi_rlast,
  s00_axi_rvalid,
  s00_axi_rready,
  s01_axi_aclk,
  s01_axi_aresetn,
  s01_axi_awid,
  s01_axi_awaddr,
  s01_axi_awlen,
  s01_axi_awsize,
  s01_axi_awburst,
  s01_axi_awlock,
  s01_axi_awcache,
  s01_axi_awprot,
  s01_axi_awqos,
  s01_axi_awregion,
  s01_axi_awuser,
  s01_axi_awvalid,
  s01_axi_awready,
  s01_axi_wdata,
  s01_axi_wstrb,
  s01_axi_wlast,
  s01_axi_wvalid,
  s01_axi_wready,
  s01_axi_bid,
  s01_axi_bresp,
  s01_axi_bvalid,
  s01_axi_bready,
  s01_axi_arid,
  s01_axi_araddr,
  s01_axi_arlen,
  s01_axi_arsize,
  s01_axi_arburst,
  s01_axi_arlock,
  s01_axi_arcache,
  s01_axi_arprot,
  s01_axi_arqos,
  s01_axi_arregion,
  s01_axi_aruser,
  s01_axi_arvalid,
  s01_axi_arready,
  s01_axi_rid,
  s01_axi_rdata,
  s01_axi_rresp,
  s01_axi_rlast,
  s01_axi_rvalid,
  s01_axi_rready,
  m00_axi_aclk,
  m00_axi_aresetn,
  m00_axi_awid,
  m00_axi_awaddr,
  m00_axi_awlen,
  m00_axi_awsize,
  m00_axi_awburst,
  m00_axi_awlock,
  m00_axi_awcache,
  m00_axi_awprot,
  m00_axi_awqos,
  m00_axi_awuser,
  m00_axi_awvalid,
  m00_axi_awready,
  m00_axi_wdata,
  m00_axi_wstrb,
  m00_axi_wlast,
  m00_axi_wvalid,
  m00_axi_wready,
  m00_axi_bid,
  m00_axi_bresp,
  m00_axi_bvalid,
  m00_axi_bready,
  m00_axi_arid,
  m00_axi_araddr,
  m00_axi_arlen,
  m00_axi_arsize,
  m00_axi_arburst,
  m00_axi_arlock,
  m00_axi_arcache,
  m00_axi_arprot,
  m00_axi_arqos,
  m00_axi_aruser,
  m00_axi_arvalid,
  m00_axi_arready,
  m00_axi_rid,
  m00_axi_rdata,
  m00_axi_rresp,
  m00_axi_rlast,
  m00_axi_rvalid,
  m00_axi_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 99990000, PHASE 0.000, CLK_DOMAIN design_2_zynq_ultra_ps_e_0_0_pl_clk0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *)
input wire s00_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *)
input wire s00_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWID" *)
input wire [15 : 0] s00_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *)
input wire [39 : 0] s00_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWLEN" *)
input wire [7 : 0] s00_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWSIZE" *)
input wire [2 : 0] s00_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWBURST" *)
input wire [1 : 0] s00_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWLOCK" *)
input wire s00_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWCACHE" *)
input wire [3 : 0] s00_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *)
input wire [2 : 0] s00_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWQOS" *)
input wire [3 : 0] s00_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREGION" *)
input wire [3 : 0] s00_axi_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWUSER" *)
input wire [15 : 0] s00_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *)
input wire s00_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *)
output wire s00_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *)
input wire [127 : 0] s00_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *)
input wire [15 : 0] s00_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WLAST" *)
input wire s00_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *)
input wire s00_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *)
output wire s00_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BID" *)
output wire [15 : 0] s00_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *)
output wire [1 : 0] s00_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *)
output wire s00_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *)
input wire s00_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARID" *)
input wire [15 : 0] s00_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *)
input wire [39 : 0] s00_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARLEN" *)
input wire [7 : 0] s00_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARSIZE" *)
input wire [2 : 0] s00_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARBURST" *)
input wire [1 : 0] s00_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARLOCK" *)
input wire s00_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARCACHE" *)
input wire [3 : 0] s00_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *)
input wire [2 : 0] s00_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARQOS" *)
input wire [3 : 0] s00_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREGION" *)
input wire [3 : 0] s00_axi_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARUSER" *)
input wire [15 : 0] s00_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *)
input wire s00_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *)
output wire s00_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RID" *)
output wire [15 : 0] s00_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *)
output wire [127 : 0] s00_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *)
output wire [1 : 0] s00_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RLAST" *)
output wire s00_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *)
output wire s00_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99990000, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_2_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *)
input wire s00_axi_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axi_aclk, ASSOCIATED_RESET s01_axi_aresetn, ASSOCIATED_BUSIF s01_axi, FREQ_HZ 99990000, PHASE 0.000, CLK_DOMAIN design_2_zynq_ultra_ps_e_0_0_pl_clk0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s01_axi_aclk CLK" *)
input wire s01_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axi_aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s01_axi_aresetn RST" *)
input wire s01_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWID" *)
input wire [15 : 0] s01_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWADDR" *)
input wire [39 : 0] s01_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWLEN" *)
input wire [7 : 0] s01_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWSIZE" *)
input wire [2 : 0] s01_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWBURST" *)
input wire [1 : 0] s01_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWLOCK" *)
input wire s01_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWCACHE" *)
input wire [3 : 0] s01_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWPROT" *)
input wire [2 : 0] s01_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWQOS" *)
input wire [3 : 0] s01_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWREGION" *)
input wire [3 : 0] s01_axi_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWUSER" *)
input wire [15 : 0] s01_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWVALID" *)
input wire s01_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWREADY" *)
output wire s01_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WDATA" *)
input wire [127 : 0] s01_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WSTRB" *)
input wire [15 : 0] s01_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WLAST" *)
input wire s01_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WVALID" *)
input wire s01_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WREADY" *)
output wire s01_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi BID" *)
output wire [15 : 0] s01_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi BRESP" *)
output wire [1 : 0] s01_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi BVALID" *)
output wire s01_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi BREADY" *)
input wire s01_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARID" *)
input wire [15 : 0] s01_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARADDR" *)
input wire [39 : 0] s01_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARLEN" *)
input wire [7 : 0] s01_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARSIZE" *)
input wire [2 : 0] s01_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARBURST" *)
input wire [1 : 0] s01_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARLOCK" *)
input wire s01_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARCACHE" *)
input wire [3 : 0] s01_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARPROT" *)
input wire [2 : 0] s01_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARQOS" *)
input wire [3 : 0] s01_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARREGION" *)
input wire [3 : 0] s01_axi_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARUSER" *)
input wire [15 : 0] s01_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARVALID" *)
input wire s01_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARREADY" *)
output wire s01_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RID" *)
output wire [15 : 0] s01_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RDATA" *)
output wire [127 : 0] s01_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RRESP" *)
output wire [1 : 0] s01_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RLAST" *)
output wire s01_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RVALID" *)
output wire s01_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99990000, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_2_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RREADY" *)
input wire s01_axi_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axi_aclk, ASSOCIATED_BUSIF m00_axi, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 99990000, PHASE 0.000, CLK_DOMAIN design_2_zynq_ultra_ps_e_0_0_pl_clk0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m00_axi_aclk CLK" *)
input wire m00_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axi_aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m00_axi_aresetn RST" *)
input wire m00_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWID" *)
output wire [15 : 0] m00_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWADDR" *)
output wire [39 : 0] m00_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWLEN" *)
output wire [7 : 0] m00_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWSIZE" *)
output wire [2 : 0] m00_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWBURST" *)
output wire [1 : 0] m00_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWLOCK" *)
output wire m00_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWCACHE" *)
output wire [3 : 0] m00_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWPROT" *)
output wire [2 : 0] m00_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWQOS" *)
output wire [3 : 0] m00_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWUSER" *)
output wire [15 : 0] m00_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWVALID" *)
output wire m00_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWREADY" *)
input wire m00_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WDATA" *)
output wire [127 : 0] m00_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WSTRB" *)
output wire [15 : 0] m00_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WLAST" *)
output wire m00_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WVALID" *)
output wire m00_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WREADY" *)
input wire m00_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BID" *)
input wire [15 : 0] m00_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BRESP" *)
input wire [1 : 0] m00_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BVALID" *)
input wire m00_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BREADY" *)
output wire m00_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARID" *)
output wire [15 : 0] m00_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARADDR" *)
output wire [39 : 0] m00_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARLEN" *)
output wire [7 : 0] m00_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARSIZE" *)
output wire [2 : 0] m00_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARBURST" *)
output wire [1 : 0] m00_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARLOCK" *)
output wire m00_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARCACHE" *)
output wire [3 : 0] m00_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARPROT" *)
output wire [2 : 0] m00_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARQOS" *)
output wire [3 : 0] m00_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARUSER" *)
output wire [15 : 0] m00_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARVALID" *)
output wire m00_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARREADY" *)
input wire m00_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RID" *)
input wire [15 : 0] m00_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RDATA" *)
input wire [127 : 0] m00_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RRESP" *)
input wire [1 : 0] m00_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RLAST" *)
input wire m00_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RVALID" *)
input wire m00_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99990000, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_2_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RREADY" *)
output wire m00_axi_rready;

  MemorEDF #(
    .CONFIGURATION_PORT_ENABLED(1'B1),
    .NUMBER_OF_QUEUES(4),
    .DATA_SIZE(246),
    .QUEUE_LENGTH(16),
    .REGISTER_SIZE(32),
    .TDMA_ENABLED(1'B1),
    .EDF_ENABLED(1'B1),
    .C_S00_AXI_ID_WIDTH(16),
    .C_S00_AXI_DATA_WIDTH(128),
    .C_S00_AXI_ADDR_WIDTH(40),
    .C_S01_AXI_ID_WIDTH(16),
    .C_S01_AXI_DATA_WIDTH(128),
    .C_S01_AXI_ADDR_WIDTH(40),
    .C_S01_AXI_AWUSER_WIDTH(16),
    .C_S01_AXI_ARUSER_WIDTH(16),
    .C_M00_AXI_BURST_LEN(1),
    .C_M00_AXI_ID_WIDTH(16),
    .C_M00_AXI_ADDR_WIDTH(40),
    .C_M00_AXI_DATA_WIDTH(128),
    .C_S00_AXI_AWUSER_WIDTH(16),
    .C_S00_AXI_ARUSER_WIDTH(16),
    .C_M00_AXI_AWUSER_WIDTH(16),
    .C_M00_AXI_ARUSER_WIDTH(16),
    .PRIORITY_SIZE(4),
    .FP_ENABLED(1'B1),
    .MG_ENABLED(1'B1)
  ) inst (
    .s00_axi_aclk(s00_axi_aclk),
    .s00_axi_aresetn(s00_axi_aresetn),
    .s00_axi_awid(s00_axi_awid),
    .s00_axi_awaddr(s00_axi_awaddr),
    .s00_axi_awlen(s00_axi_awlen),
    .s00_axi_awsize(s00_axi_awsize),
    .s00_axi_awburst(s00_axi_awburst),
    .s00_axi_awlock(s00_axi_awlock),
    .s00_axi_awcache(s00_axi_awcache),
    .s00_axi_awprot(s00_axi_awprot),
    .s00_axi_awqos(s00_axi_awqos),
    .s00_axi_awregion(s00_axi_awregion),
    .s00_axi_awuser(s00_axi_awuser),
    .s00_axi_awvalid(s00_axi_awvalid),
    .s00_axi_awready(s00_axi_awready),
    .s00_axi_wdata(s00_axi_wdata),
    .s00_axi_wstrb(s00_axi_wstrb),
    .s00_axi_wlast(s00_axi_wlast),
    .s00_axi_wvalid(s00_axi_wvalid),
    .s00_axi_wready(s00_axi_wready),
    .s00_axi_bid(s00_axi_bid),
    .s00_axi_bresp(s00_axi_bresp),
    .s00_axi_bvalid(s00_axi_bvalid),
    .s00_axi_bready(s00_axi_bready),
    .s00_axi_arid(s00_axi_arid),
    .s00_axi_araddr(s00_axi_araddr),
    .s00_axi_arlen(s00_axi_arlen),
    .s00_axi_arsize(s00_axi_arsize),
    .s00_axi_arburst(s00_axi_arburst),
    .s00_axi_arlock(s00_axi_arlock),
    .s00_axi_arcache(s00_axi_arcache),
    .s00_axi_arprot(s00_axi_arprot),
    .s00_axi_arqos(s00_axi_arqos),
    .s00_axi_arregion(s00_axi_arregion),
    .s00_axi_aruser(s00_axi_aruser),
    .s00_axi_arvalid(s00_axi_arvalid),
    .s00_axi_arready(s00_axi_arready),
    .s00_axi_rid(s00_axi_rid),
    .s00_axi_rdata(s00_axi_rdata),
    .s00_axi_rresp(s00_axi_rresp),
    .s00_axi_rlast(s00_axi_rlast),
    .s00_axi_rvalid(s00_axi_rvalid),
    .s00_axi_rready(s00_axi_rready),
    .s01_axi_aclk(s01_axi_aclk),
    .s01_axi_aresetn(s01_axi_aresetn),
    .s01_axi_awid(s01_axi_awid),
    .s01_axi_awaddr(s01_axi_awaddr),
    .s01_axi_awlen(s01_axi_awlen),
    .s01_axi_awsize(s01_axi_awsize),
    .s01_axi_awburst(s01_axi_awburst),
    .s01_axi_awlock(s01_axi_awlock),
    .s01_axi_awcache(s01_axi_awcache),
    .s01_axi_awprot(s01_axi_awprot),
    .s01_axi_awqos(s01_axi_awqos),
    .s01_axi_awregion(s01_axi_awregion),
    .s01_axi_awuser(s01_axi_awuser),
    .s01_axi_awvalid(s01_axi_awvalid),
    .s01_axi_awready(s01_axi_awready),
    .s01_axi_wdata(s01_axi_wdata),
    .s01_axi_wstrb(s01_axi_wstrb),
    .s01_axi_wlast(s01_axi_wlast),
    .s01_axi_wvalid(s01_axi_wvalid),
    .s01_axi_wready(s01_axi_wready),
    .s01_axi_bid(s01_axi_bid),
    .s01_axi_bresp(s01_axi_bresp),
    .s01_axi_bvalid(s01_axi_bvalid),
    .s01_axi_bready(s01_axi_bready),
    .s01_axi_arid(s01_axi_arid),
    .s01_axi_araddr(s01_axi_araddr),
    .s01_axi_arlen(s01_axi_arlen),
    .s01_axi_arsize(s01_axi_arsize),
    .s01_axi_arburst(s01_axi_arburst),
    .s01_axi_arlock(s01_axi_arlock),
    .s01_axi_arcache(s01_axi_arcache),
    .s01_axi_arprot(s01_axi_arprot),
    .s01_axi_arqos(s01_axi_arqos),
    .s01_axi_arregion(s01_axi_arregion),
    .s01_axi_aruser(s01_axi_aruser),
    .s01_axi_arvalid(s01_axi_arvalid),
    .s01_axi_arready(s01_axi_arready),
    .s01_axi_rid(s01_axi_rid),
    .s01_axi_rdata(s01_axi_rdata),
    .s01_axi_rresp(s01_axi_rresp),
    .s01_axi_rlast(s01_axi_rlast),
    .s01_axi_rvalid(s01_axi_rvalid),
    .s01_axi_rready(s01_axi_rready),
    .m00_axi_aclk(m00_axi_aclk),
    .m00_axi_aresetn(m00_axi_aresetn),
    .m00_axi_awid(m00_axi_awid),
    .m00_axi_awaddr(m00_axi_awaddr),
    .m00_axi_awlen(m00_axi_awlen),
    .m00_axi_awsize(m00_axi_awsize),
    .m00_axi_awburst(m00_axi_awburst),
    .m00_axi_awlock(m00_axi_awlock),
    .m00_axi_awcache(m00_axi_awcache),
    .m00_axi_awprot(m00_axi_awprot),
    .m00_axi_awqos(m00_axi_awqos),
    .m00_axi_awuser(m00_axi_awuser),
    .m00_axi_awvalid(m00_axi_awvalid),
    .m00_axi_awready(m00_axi_awready),
    .m00_axi_wdata(m00_axi_wdata),
    .m00_axi_wstrb(m00_axi_wstrb),
    .m00_axi_wlast(m00_axi_wlast),
    .m00_axi_wvalid(m00_axi_wvalid),
    .m00_axi_wready(m00_axi_wready),
    .m00_axi_bid(m00_axi_bid),
    .m00_axi_bresp(m00_axi_bresp),
    .m00_axi_bvalid(m00_axi_bvalid),
    .m00_axi_bready(m00_axi_bready),
    .m00_axi_arid(m00_axi_arid),
    .m00_axi_araddr(m00_axi_araddr),
    .m00_axi_arlen(m00_axi_arlen),
    .m00_axi_arsize(m00_axi_arsize),
    .m00_axi_arburst(m00_axi_arburst),
    .m00_axi_arlock(m00_axi_arlock),
    .m00_axi_arcache(m00_axi_arcache),
    .m00_axi_arprot(m00_axi_arprot),
    .m00_axi_arqos(m00_axi_arqos),
    .m00_axi_aruser(m00_axi_aruser),
    .m00_axi_arvalid(m00_axi_arvalid),
    .m00_axi_arready(m00_axi_arready),
    .m00_axi_rid(m00_axi_rid),
    .m00_axi_rdata(m00_axi_rdata),
    .m00_axi_rresp(m00_axi_rresp),
    .m00_axi_rlast(m00_axi_rlast),
    .m00_axi_rvalid(m00_axi_rvalid),
    .m00_axi_rready(m00_axi_rready)
  );
endmodule
