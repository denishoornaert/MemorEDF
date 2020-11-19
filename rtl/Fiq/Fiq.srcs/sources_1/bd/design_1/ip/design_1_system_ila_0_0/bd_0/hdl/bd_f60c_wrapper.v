//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f60c_wrapper.bd
//Design : bd_f60c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_f60c_wrapper
   (clk,
    probe0);
  input clk;
  input [9:0]probe0;

  wire clk;
  wire [9:0]probe0;

  bd_f60c bd_f60c_i
       (.clk(clk),
        .probe0(probe0));
endmodule
