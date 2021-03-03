//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Wed Mar  3 14:27:49 2021
//Host        : denis-ThinkPad-T480s running 64-bit Ubuntu 16.04.7 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (Q_0_kill_the_core_0,
    Q_1_kill_the_core_0,
    Q_2_kill_the_core_0,
    Q_3_kill_the_core_0,
    aclk_0,
    aresetn_0);
  output Q_0_kill_the_core_0;
  output Q_1_kill_the_core_0;
  output Q_2_kill_the_core_0;
  output Q_3_kill_the_core_0;
  input aclk_0;
  input aresetn_0;

  wire Q_0_kill_the_core_0;
  wire Q_1_kill_the_core_0;
  wire Q_2_kill_the_core_0;
  wire Q_3_kill_the_core_0;
  wire aclk_0;
  wire aresetn_0;

  design_1 design_1_i
       (.Q_0_kill_the_core_0(Q_0_kill_the_core_0),
        .Q_1_kill_the_core_0(Q_1_kill_the_core_0),
        .Q_2_kill_the_core_0(Q_2_kill_the_core_0),
        .Q_3_kill_the_core_0(Q_3_kill_the_core_0),
        .aclk_0(aclk_0),
        .aresetn_0(aresetn_0));
endmodule
