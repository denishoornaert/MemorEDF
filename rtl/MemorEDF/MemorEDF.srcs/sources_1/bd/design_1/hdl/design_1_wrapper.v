//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Fri Mar 13 14:54:58 2020
//Host        : CELSIUS running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (aclk_0,
    aresetn_0,
    txn_0);
  input aclk_0;
  input aresetn_0;
  input txn_0;

  wire aclk_0;
  wire aresetn_0;
  wire txn_0;

  design_1 design_1_i
       (.aclk_0(aclk_0),
        .aresetn_0(aresetn_0),
        .txn_0(txn_0));
endmodule
