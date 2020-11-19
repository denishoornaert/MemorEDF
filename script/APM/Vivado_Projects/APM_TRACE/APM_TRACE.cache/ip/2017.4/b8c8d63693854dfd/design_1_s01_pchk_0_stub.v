// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon May 11 18:18:13 2020
// Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_s01_pchk_0_stub.v
// Design      : design_1_s01_pchk_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_protocol_checker_v2_0_1_top,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(pc_status, pc_asserted, aclk, aresetn, 
  pc_axi_awaddr, pc_axi_awlen, pc_axi_awsize, pc_axi_awburst, pc_axi_awlock, pc_axi_awcache, 
  pc_axi_awprot, pc_axi_awqos, pc_axi_awregion, pc_axi_awvalid, pc_axi_awready, pc_axi_wlast, 
  pc_axi_wdata, pc_axi_wstrb, pc_axi_wvalid, pc_axi_wready, pc_axi_bresp, pc_axi_bvalid, 
  pc_axi_bready, pc_axi_araddr, pc_axi_arlen, pc_axi_arsize, pc_axi_arburst, pc_axi_arlock, 
  pc_axi_arcache, pc_axi_arprot, pc_axi_arqos, pc_axi_arregion, pc_axi_arvalid, 
  pc_axi_arready, pc_axi_rlast, pc_axi_rdata, pc_axi_rresp, pc_axi_rvalid, pc_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="pc_status[159:0],pc_asserted,aclk,aresetn,pc_axi_awaddr[31:0],pc_axi_awlen[7:0],pc_axi_awsize[2:0],pc_axi_awburst[1:0],pc_axi_awlock[0:0],pc_axi_awcache[3:0],pc_axi_awprot[2:0],pc_axi_awqos[3:0],pc_axi_awregion[3:0],pc_axi_awvalid,pc_axi_awready,pc_axi_wlast,pc_axi_wdata[31:0],pc_axi_wstrb[3:0],pc_axi_wvalid,pc_axi_wready,pc_axi_bresp[1:0],pc_axi_bvalid,pc_axi_bready,pc_axi_araddr[31:0],pc_axi_arlen[7:0],pc_axi_arsize[2:0],pc_axi_arburst[1:0],pc_axi_arlock[0:0],pc_axi_arcache[3:0],pc_axi_arprot[2:0],pc_axi_arqos[3:0],pc_axi_arregion[3:0],pc_axi_arvalid,pc_axi_arready,pc_axi_rlast,pc_axi_rdata[31:0],pc_axi_rresp[1:0],pc_axi_rvalid,pc_axi_rready" */;
  output [159:0]pc_status;
  output pc_asserted;
  input aclk;
  input aresetn;
  input [31:0]pc_axi_awaddr;
  input [7:0]pc_axi_awlen;
  input [2:0]pc_axi_awsize;
  input [1:0]pc_axi_awburst;
  input [0:0]pc_axi_awlock;
  input [3:0]pc_axi_awcache;
  input [2:0]pc_axi_awprot;
  input [3:0]pc_axi_awqos;
  input [3:0]pc_axi_awregion;
  input pc_axi_awvalid;
  input pc_axi_awready;
  input pc_axi_wlast;
  input [31:0]pc_axi_wdata;
  input [3:0]pc_axi_wstrb;
  input pc_axi_wvalid;
  input pc_axi_wready;
  input [1:0]pc_axi_bresp;
  input pc_axi_bvalid;
  input pc_axi_bready;
  input [31:0]pc_axi_araddr;
  input [7:0]pc_axi_arlen;
  input [2:0]pc_axi_arsize;
  input [1:0]pc_axi_arburst;
  input [0:0]pc_axi_arlock;
  input [3:0]pc_axi_arcache;
  input [2:0]pc_axi_arprot;
  input [3:0]pc_axi_arqos;
  input [3:0]pc_axi_arregion;
  input pc_axi_arvalid;
  input pc_axi_arready;
  input pc_axi_rlast;
  input [31:0]pc_axi_rdata;
  input [1:0]pc_axi_rresp;
  input pc_axi_rvalid;
  input pc_axi_rready;
endmodule
