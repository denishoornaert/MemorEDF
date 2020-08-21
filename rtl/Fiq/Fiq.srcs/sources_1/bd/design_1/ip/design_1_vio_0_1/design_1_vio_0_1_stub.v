// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Thu Aug 13 11:37:09 2020
// Host        : tower running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ro0zkhosh/Fiq/Fiq.srcs/sources_1/bd/design_1/ip/design_1_vio_0_1/design_1_vio_0_1_stub.v
// Design      : design_1_vio_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2017.4" *)
module design_1_vio_0_1(clk, probe_out0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_out0[1:0]" */;
  input clk;
  output [1:0]probe_out0;
endmodule
