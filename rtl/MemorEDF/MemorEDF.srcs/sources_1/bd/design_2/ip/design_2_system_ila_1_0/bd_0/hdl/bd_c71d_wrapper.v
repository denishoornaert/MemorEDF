//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_c71d_wrapper.bd
//Design : bd_c71d_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_c71d_wrapper
   (clk,
    probe0);
  input clk;
  input [1:0]probe0;

  wire clk;
  wire [1:0]probe0;

  bd_c71d bd_c71d_i
       (.clk(clk),
        .probe0(probe0));
endmodule
