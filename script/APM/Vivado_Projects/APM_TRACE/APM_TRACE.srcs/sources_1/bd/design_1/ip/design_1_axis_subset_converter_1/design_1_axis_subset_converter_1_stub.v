// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun May 17 23:20:28 2020
// Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/renato/MemorEDF_old/Vivado_Projects/APM_TRACE/APM_TRACE.srcs/sources_1/bd/design_1/ip/design_1_axis_subset_converter_1/design_1_axis_subset_converter_1_stub.v
// Design      : design_1_axis_subset_converter_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top_design_1_axis_subset_converter_1,Vivado 2017.4" *)
module design_1_axis_subset_converter_1(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tstrb, s_axis_tid, m_axis_tvalid, m_axis_tready, m_axis_tdata, 
  m_axis_tstrb, m_axis_tlast, m_axis_tid)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[55:0],s_axis_tstrb[6:0],s_axis_tid[0:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[31:0],m_axis_tstrb[3:0],m_axis_tlast,m_axis_tid[0:0]" */;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [55:0]s_axis_tdata;
  input [6:0]s_axis_tstrb;
  input [0:0]s_axis_tid;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
endmodule
