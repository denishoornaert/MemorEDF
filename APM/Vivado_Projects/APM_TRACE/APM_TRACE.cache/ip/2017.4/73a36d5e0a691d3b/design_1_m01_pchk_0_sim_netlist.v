// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sat May  9 14:14:51 2020
// Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_m01_pchk_0_sim_netlist.v
// Design      : design_1_m01_pchk_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_axi4pc_asr_inline
   (\gen_deflt_chks.s101sq_reg[1]_0 ,
    \gen_deflt_chks.AwAddrIncr_q1_reg[3]_0 ,
    \gen_deflt_chks.ArAddrIncr_q1_reg[3]_0 ,
    ASR_59_reg_0,
    D,
    \gen_deflt_chks.AwAddrIncr_q1_reg[3]_1 ,
    \gen_deflt_chks.AwAddrIncr_q1_reg[3]_2 ,
    \gen_deflt_chks.AwAddrIncr_q1_reg[3]_3 ,
    \gen_deflt_chks.AwAddrIncr_q1_reg[3]_4 ,
    \gen_deflt_chks.AwAddrIncr_q1_reg[3]_5 ,
    \gen_deflt_chks.AwAddrIncr_q1_reg[3]_6 ,
    \gen_deflt_chks.AwAddrIncr_q1_reg[3]_7 ,
    \gen_deflt_chks.AwAddrIncr_q1_reg[3]_8 ,
    \gen_deflt_chks.ArAddrIncr_q1_reg[3]_1 ,
    \gen_deflt_chks.ArAddrIncr_q1_reg[3]_2 ,
    \gen_deflt_chks.ArAddrIncr_q1_reg[3]_3 ,
    \gen_deflt_chks.ArAddrIncr_q1_reg[3]_4 ,
    \gen_deflt_chks.ArAddrIncr_q1_reg[3]_5 ,
    \gen_deflt_chks.ArAddrIncr_q1_reg[3]_6 ,
    \gen_deflt_chks.ArAddrIncr_q1_reg[3]_7 ,
    \gen_deflt_chks.ArAddrIncr_q1_reg[3]_8 ,
    aclk,
    WDataNumError1,
    BStrbError,
    BrespErrorLead,
    ASR_590,
    ASR_610,
    awid_qq,
    wlast_qq,
    bid_qq,
    arid_qq,
    rid_qq,
    rlast_qq,
    awuser_qq,
    wuser_qq,
    buser_qq,
    aruser_qq,
    ruser_qq,
    Q,
    \araddr_qq_reg[31] ,
    data_in,
    \arlen_qq_reg[7] ,
    \arsize_qq_reg[2] ,
    resetn_qq,
    \arcache_qq_reg[3] ,
    \arqos_qq_reg[3] ,
    \arregion_qq_reg[3] ,
    \awcache_qq_reg[3] ,
    \awqos_qq_reg[3] ,
    \awregion_qq_reg[3] ,
    \awburst_qq_reg[1] ,
    awvalid_qq,
    \awprot_qq_reg[2] ,
    \arburst_qq_reg[1] ,
    arvalid_qq,
    \arprot_qq_reg[2] ,
    rvalid_qq,
    \wstrb_qq_reg[15] ,
    pc_status,
    wvalid_qq,
    \bresp_qq_reg[1] ,
    bvalid_qq,
    rid_mismatch_q,
    \rresp_qq_reg[1] ,
    wready_qq,
    rready_qq,
    bready_qq,
    awready_qq,
    arready_qq,
    S,
    \awaddr_qq_reg[14] ,
    \araddr_qq_reg[7] ,
    \araddr_qq_reg[14] ,
    \wdata_qq_reg[127] ,
    \rdata_qq_reg[127] );
  output \gen_deflt_chks.s101sq_reg[1]_0 ;
  output \gen_deflt_chks.AwAddrIncr_q1_reg[3]_0 ;
  output \gen_deflt_chks.ArAddrIncr_q1_reg[3]_0 ;
  output ASR_59_reg_0;
  output [56:0]D;
  output \gen_deflt_chks.AwAddrIncr_q1_reg[3]_1 ;
  output \gen_deflt_chks.AwAddrIncr_q1_reg[3]_2 ;
  output \gen_deflt_chks.AwAddrIncr_q1_reg[3]_3 ;
  output \gen_deflt_chks.AwAddrIncr_q1_reg[3]_4 ;
  output \gen_deflt_chks.AwAddrIncr_q1_reg[3]_5 ;
  output \gen_deflt_chks.AwAddrIncr_q1_reg[3]_6 ;
  output \gen_deflt_chks.AwAddrIncr_q1_reg[3]_7 ;
  output \gen_deflt_chks.AwAddrIncr_q1_reg[3]_8 ;
  output \gen_deflt_chks.ArAddrIncr_q1_reg[3]_1 ;
  output \gen_deflt_chks.ArAddrIncr_q1_reg[3]_2 ;
  output \gen_deflt_chks.ArAddrIncr_q1_reg[3]_3 ;
  output \gen_deflt_chks.ArAddrIncr_q1_reg[3]_4 ;
  output \gen_deflt_chks.ArAddrIncr_q1_reg[3]_5 ;
  output \gen_deflt_chks.ArAddrIncr_q1_reg[3]_6 ;
  output \gen_deflt_chks.ArAddrIncr_q1_reg[3]_7 ;
  output \gen_deflt_chks.ArAddrIncr_q1_reg[3]_8 ;
  input aclk;
  input WDataNumError1;
  input BStrbError;
  input BrespErrorLead;
  input ASR_590;
  input ASR_610;
  input awid_qq;
  input wlast_qq;
  input bid_qq;
  input arid_qq;
  input rid_qq;
  input rlast_qq;
  input awuser_qq;
  input wuser_qq;
  input buser_qq;
  input aruser_qq;
  input ruser_qq;
  input [31:0]Q;
  input [31:0]\araddr_qq_reg[31] ;
  input [10:0]data_in;
  input [7:0]\arlen_qq_reg[7] ;
  input [2:0]\arsize_qq_reg[2] ;
  input resetn_qq;
  input [3:0]\arcache_qq_reg[3] ;
  input [3:0]\arqos_qq_reg[3] ;
  input [3:0]\arregion_qq_reg[3] ;
  input [3:0]\awcache_qq_reg[3] ;
  input [3:0]\awqos_qq_reg[3] ;
  input [3:0]\awregion_qq_reg[3] ;
  input [1:0]\awburst_qq_reg[1] ;
  input awvalid_qq;
  input [2:0]\awprot_qq_reg[2] ;
  input [1:0]\arburst_qq_reg[1] ;
  input arvalid_qq;
  input [2:0]\arprot_qq_reg[2] ;
  input rvalid_qq;
  input [15:0]\wstrb_qq_reg[15] ;
  input [56:0]pc_status;
  input wvalid_qq;
  input [1:0]\bresp_qq_reg[1] ;
  input bvalid_qq;
  input rid_mismatch_q;
  input [1:0]\rresp_qq_reg[1] ;
  input wready_qq;
  input rready_qq;
  input bready_qq;
  input awready_qq;
  input arready_qq;
  input [7:0]S;
  input [6:0]\awaddr_qq_reg[14] ;
  input [7:0]\araddr_qq_reg[7] ;
  input [6:0]\araddr_qq_reg[14] ;
  input [127:0]\wdata_qq_reg[127] ;
  input [127:0]\rdata_qq_reg[127] ;

  wire ASR_10;
  wire ASR_12;
  wire ASR_12_carry_i_1_n_0;
  wire ASR_12_carry_i_2_n_0;
  wire ASR_12_carry_i_3_n_0;
  wire ASR_12_carry_i_4_n_0;
  wire ASR_12_carry_i_5_n_0;
  wire ASR_12_carry_i_6_n_0;
  wire ASR_12_carry_i_7_n_0;
  wire ASR_12_carry_n_2;
  wire ASR_12_carry_n_3;
  wire ASR_12_carry_n_5;
  wire ASR_12_carry_n_6;
  wire ASR_12_carry_n_7;
  wire ASR_20;
  wire ASR_30;
  wire ASR_380;
  wire ASR_382;
  wire ASR_382_carry_i_1_n_0;
  wire ASR_382_carry_i_2_n_0;
  wire ASR_382_carry_i_3_n_0;
  wire ASR_382_carry_i_4_n_0;
  wire ASR_382_carry_i_5_n_0;
  wire ASR_382_carry_i_6_n_0;
  wire ASR_382_carry_i_7_n_0;
  wire ASR_382_carry_n_2;
  wire ASR_382_carry_n_3;
  wire ASR_382_carry_n_5;
  wire ASR_382_carry_n_6;
  wire ASR_382_carry_n_7;
  wire ASR_390;
  wire ASR_400;
  wire ASR_420;
  wire ASR_430;
  wire ASR_440;
  wire ASR_450;
  wire ASR_50;
  wire ASR_590;
  wire ASR_59_reg_0;
  wire ASR_60;
  wire ASR_600;
  wire ASR_610;
  wire ASR_70;
  wire ASR_80;
  wire [31:12]ArAddrIncr;
  wire [31:12]AwAddrIncr;
  wire [77:0]Axi4PC_asr_inline_out;
  wire BStrbError;
  wire BrespErrorLead;
  wire [56:0]D;
  wire [31:0]Q;
  wire [7:0]S;
  wire WDataNumError1;
  wire aclk;
  wire [6:0]\araddr_qq_reg[14] ;
  wire [31:0]\araddr_qq_reg[31] ;
  wire [7:0]\araddr_qq_reg[7] ;
  wire [1:0]\arburst_qq_reg[1] ;
  wire [3:0]\arcache_qq_reg[3] ;
  wire arid_qq;
  wire [7:0]\arlen_qq_reg[7] ;
  wire [2:0]\arprot_qq_reg[2] ;
  wire [3:0]\arqos_qq_reg[3] ;
  wire arready_qq;
  wire [3:0]\arregion_qq_reg[3] ;
  wire [2:0]\arsize_qq_reg[2] ;
  wire aruser_qq;
  wire arvalid_qq;
  wire [6:0]\awaddr_qq_reg[14] ;
  wire [1:0]\awburst_qq_reg[1] ;
  wire [3:0]\awcache_qq_reg[3] ;
  wire awid_qq;
  wire [2:0]\awprot_qq_reg[2] ;
  wire [3:0]\awqos_qq_reg[3] ;
  wire awready_qq;
  wire [3:0]\awregion_qq_reg[3] ;
  wire awuser_qq;
  wire awvalid_qq;
  wire bid_qq;
  wire bready_qq;
  wire [1:0]\bresp_qq_reg[1] ;
  wire buser_qq;
  wire bvalid_qq;
  wire [10:0]data_in;
  wire [3:0]\gen_deflt_chks.ARADDR_eq ;
  wire \gen_deflt_chks.ARADDR_eq0 ;
  wire \gen_deflt_chks.ARADDR_eq047_out ;
  wire \gen_deflt_chks.ARADDR_eq050_out ;
  wire \gen_deflt_chks.ARADDR_eq053_out ;
  wire \gen_deflt_chks.ARADDR_eq[0]_i_2_n_0 ;
  wire \gen_deflt_chks.ARADDR_eq[0]_i_3_n_0 ;
  wire \gen_deflt_chks.ARADDR_eq[1]_i_2_n_0 ;
  wire \gen_deflt_chks.ARADDR_eq[1]_i_3_n_0 ;
  wire \gen_deflt_chks.ARADDR_eq[2]_i_2_n_0 ;
  wire \gen_deflt_chks.ARADDR_eq[2]_i_3_n_0 ;
  wire \gen_deflt_chks.ARADDR_eq[3]_i_2_n_0 ;
  wire \gen_deflt_chks.ARADDR_eq[3]_i_3_n_0 ;
  wire [19:0]\gen_deflt_chks.ARADDR_q1 ;
  wire \gen_deflt_chks.ARADDR_q_reg_n_0_[0] ;
  wire \gen_deflt_chks.ARADDR_q_reg_n_0_[1] ;
  wire \gen_deflt_chks.ARADDR_q_reg_n_0_[2] ;
  wire \gen_deflt_chks.ARADDR_q_reg_n_0_[3] ;
  wire \gen_deflt_chks.ARADDR_q_reg_n_0_[4] ;
  wire \gen_deflt_chks.ARADDR_q_reg_n_0_[5] ;
  wire \gen_deflt_chks.ARADDR_q_reg_n_0_[6] ;
  wire \gen_deflt_chks.ARADDR_q_reg_n_0_[7] ;
  wire [0:0]\gen_deflt_chks.ARADDR_stage_1_eq ;
  wire \gen_deflt_chks.ARADDR_stage_1_eq[0]_i_1_n_0 ;
  wire [0:0]\gen_deflt_chks.ARADDR_stage_2_eq ;
  wire \gen_deflt_chks.ARUSER_eq0 ;
  wire \gen_deflt_chks.ARUSER_q ;
  wire \gen_deflt_chks.ARUSER_stage_1_eq_reg[0]_srl2_n_0 ;
  wire [0:0]\gen_deflt_chks.ARUSER_stage_2_eq ;
  wire \gen_deflt_chks.ASR_10_i_1_n_0 ;
  wire \gen_deflt_chks.ASR_12_i_3_n_0 ;
  wire \gen_deflt_chks.ASR_14_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_14_i_3_n_0 ;
  wire \gen_deflt_chks.ASR_14_i_4_n_0 ;
  wire \gen_deflt_chks.ASR_16_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_17_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_18_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_19_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_25_i_1_n_0 ;
  wire \gen_deflt_chks.ASR_27_i_1_n_0 ;
  wire \gen_deflt_chks.ASR_2_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_2_i_3_n_0 ;
  wire \gen_deflt_chks.ASR_2_i_4_n_0 ;
  wire \gen_deflt_chks.ASR_39_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_39_i_3_n_0 ;
  wire \gen_deflt_chks.ASR_39_i_4_n_0 ;
  wire \gen_deflt_chks.ASR_43_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_44_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_47_i_1_n_0 ;
  wire \gen_deflt_chks.ASR_49_i_3_n_0 ;
  wire \gen_deflt_chks.ASR_51_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_51_i_3_n_0 ;
  wire \gen_deflt_chks.ASR_51_i_4_n_0 ;
  wire \gen_deflt_chks.ASR_53_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_54_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_55_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_56_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_63_i_1_n_0 ;
  wire \gen_deflt_chks.ASR_6_i_2_n_0 ;
  wire \gen_deflt_chks.ASR_74_i_1_n_0 ;
  wire \gen_deflt_chks.ASR_75_i_1_n_0 ;
  wire \gen_deflt_chks.ASR_76_i_1_n_0 ;
  wire \gen_deflt_chks.ASR_77_i_1_n_0 ;
  wire \gen_deflt_chks.ASR_78_i_1_n_0 ;
  wire \gen_deflt_chks.ASR_7_i_2_n_0 ;
  wire [3:0]\gen_deflt_chks.AWADDR_eq ;
  wire \gen_deflt_chks.AWADDR_eq0 ;
  wire \gen_deflt_chks.AWADDR_eq0108_out ;
  wire \gen_deflt_chks.AWADDR_eq0111_out ;
  wire \gen_deflt_chks.AWADDR_eq0114_out ;
  wire \gen_deflt_chks.AWADDR_eq[0]_i_2_n_0 ;
  wire \gen_deflt_chks.AWADDR_eq[0]_i_3_n_0 ;
  wire \gen_deflt_chks.AWADDR_eq[1]_i_2_n_0 ;
  wire \gen_deflt_chks.AWADDR_eq[1]_i_3_n_0 ;
  wire \gen_deflt_chks.AWADDR_eq[2]_i_2_n_0 ;
  wire \gen_deflt_chks.AWADDR_eq[2]_i_3_n_0 ;
  wire \gen_deflt_chks.AWADDR_eq[3]_i_2_n_0 ;
  wire \gen_deflt_chks.AWADDR_eq[3]_i_3_n_0 ;
  wire [19:0]\gen_deflt_chks.AWADDR_q1 ;
  wire \gen_deflt_chks.AWADDR_q_reg_n_0_[0] ;
  wire \gen_deflt_chks.AWADDR_q_reg_n_0_[1] ;
  wire \gen_deflt_chks.AWADDR_q_reg_n_0_[2] ;
  wire \gen_deflt_chks.AWADDR_q_reg_n_0_[3] ;
  wire \gen_deflt_chks.AWADDR_q_reg_n_0_[4] ;
  wire \gen_deflt_chks.AWADDR_q_reg_n_0_[5] ;
  wire \gen_deflt_chks.AWADDR_q_reg_n_0_[6] ;
  wire \gen_deflt_chks.AWADDR_q_reg_n_0_[7] ;
  wire [0:0]\gen_deflt_chks.AWADDR_stage_1_eq ;
  wire \gen_deflt_chks.AWADDR_stage_1_eq[0]_i_1_n_0 ;
  wire [0:0]\gen_deflt_chks.AWADDR_stage_2_eq ;
  wire \gen_deflt_chks.AWUSER_eq0 ;
  wire \gen_deflt_chks.AWUSER_q ;
  wire \gen_deflt_chks.AWUSER_stage_1_eq_reg[0]_srl2_n_0 ;
  wire [0:0]\gen_deflt_chks.AWUSER_stage_2_eq ;
  wire [19:0]\gen_deflt_chks.ArAddrIncr_q1 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_1 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_2 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_3 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_5 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_6 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_7 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_n_1 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_n_2 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_n_3 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_n_5 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_n_6 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_n_7 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_1 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_2 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_3 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_4 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_5 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_6 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_7 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_8 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_1 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_2 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_3 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_5 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_6 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_7 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_1 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_2 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_3 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_5 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_6 ;
  wire \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_7 ;
  wire [19:0]\gen_deflt_chks.AwAddrIncr_q1 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_1 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_2 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_3 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_5 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_6 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_7 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_n_1 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_n_2 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_n_3 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_n_5 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_n_6 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_n_7 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_1 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_2 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_3 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_4 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_5 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_6 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_7 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_8 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_1 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_2 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_3 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_5 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_6 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_7 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_1 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_2 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_3 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_5 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_6 ;
  wire \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_7 ;
  wire \gen_deflt_chks.BUSER_eq0 ;
  wire \gen_deflt_chks.BUSER_q ;
  wire \gen_deflt_chks.BUSER_stage_1_eq_reg[0]_srl2_n_0 ;
  wire [0:0]\gen_deflt_chks.BUSER_stage_2_eq ;
  wire \gen_deflt_chks.RDATA_eq00_out ;
  wire \gen_deflt_chks.RDATA_eq012_out ;
  wire \gen_deflt_chks.RDATA_eq015_out ;
  wire \gen_deflt_chks.RDATA_eq018_out ;
  wire \gen_deflt_chks.RDATA_eq021_out ;
  wire \gen_deflt_chks.RDATA_eq024_out ;
  wire \gen_deflt_chks.RDATA_eq027_out ;
  wire \gen_deflt_chks.RDATA_eq030_out ;
  wire \gen_deflt_chks.RDATA_eq033_out ;
  wire \gen_deflt_chks.RDATA_eq036_out ;
  wire \gen_deflt_chks.RDATA_eq039_out ;
  wire \gen_deflt_chks.RDATA_eq03_out ;
  wire \gen_deflt_chks.RDATA_eq042_out ;
  wire \gen_deflt_chks.RDATA_eq06_out ;
  wire \gen_deflt_chks.RDATA_eq09_out ;
  wire \gen_deflt_chks.RDATA_eq0__0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__0/gen_deflt_chks.RDATA_eq[1]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__0/gen_deflt_chks.RDATA_eq[1]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__1/gen_deflt_chks.RDATA_eq[2]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__1/gen_deflt_chks.RDATA_eq[2]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__10/gen_deflt_chks.RDATA_eq[11]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__10/gen_deflt_chks.RDATA_eq[11]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__11/gen_deflt_chks.RDATA_eq[12]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__11/gen_deflt_chks.RDATA_eq[12]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__12/gen_deflt_chks.RDATA_eq[13]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__12/gen_deflt_chks.RDATA_eq[13]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__13/gen_deflt_chks.RDATA_eq[14]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__13/gen_deflt_chks.RDATA_eq[14]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__14/gen_deflt_chks.RDATA_eq[15]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__14/gen_deflt_chks.RDATA_eq[15]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__2/gen_deflt_chks.RDATA_eq[3]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__2/gen_deflt_chks.RDATA_eq[3]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__3/gen_deflt_chks.RDATA_eq[4]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__3/gen_deflt_chks.RDATA_eq[4]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__4/gen_deflt_chks.RDATA_eq[5]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__4/gen_deflt_chks.RDATA_eq[5]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__5/gen_deflt_chks.RDATA_eq[6]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__5/gen_deflt_chks.RDATA_eq[6]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__6/gen_deflt_chks.RDATA_eq[7]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__6/gen_deflt_chks.RDATA_eq[7]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__7/gen_deflt_chks.RDATA_eq[8]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__7/gen_deflt_chks.RDATA_eq[8]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__8/gen_deflt_chks.RDATA_eq[9]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__8/gen_deflt_chks.RDATA_eq[9]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__9/gen_deflt_chks.RDATA_eq[10]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq0_inferred__9/gen_deflt_chks.RDATA_eq[10]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq[0]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_eq[0]_i_3_n_0 ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[0] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[10] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[11] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[12] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[13] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[14] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[15] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[1] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[2] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[3] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[4] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[5] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[6] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[7] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[8] ;
  wire \gen_deflt_chks.RDATA_eq_reg_n_0_[9] ;
  wire \gen_deflt_chks.RDATA_q_reg_n_0_[0] ;
  wire \gen_deflt_chks.RDATA_q_reg_n_0_[1] ;
  wire \gen_deflt_chks.RDATA_q_reg_n_0_[2] ;
  wire \gen_deflt_chks.RDATA_q_reg_n_0_[3] ;
  wire \gen_deflt_chks.RDATA_q_reg_n_0_[4] ;
  wire \gen_deflt_chks.RDATA_q_reg_n_0_[5] ;
  wire \gen_deflt_chks.RDATA_q_reg_n_0_[6] ;
  wire \gen_deflt_chks.RDATA_q_reg_n_0_[7] ;
  wire [1:0]\gen_deflt_chks.RDATA_stage_1_eq ;
  wire \gen_deflt_chks.RDATA_stage_1_eq0__0 ;
  wire \gen_deflt_chks.RDATA_stage_1_eq0_inferred__0/gen_deflt_chks.RDATA_stage_1_eq[1]_i_2_n_0 ;
  wire \gen_deflt_chks.RDATA_stage_1_eq[0]_i_1_n_0 ;
  wire \gen_deflt_chks.RDATA_stage_1_eq[0]_i_2_n_0 ;
  wire [0:0]\gen_deflt_chks.RDATA_stage_2_eq ;
  wire \gen_deflt_chks.RDATA_stage_2_eq[0]_i_1_n_0 ;
  wire \gen_deflt_chks.RUSER_eq0 ;
  wire \gen_deflt_chks.RUSER_q ;
  wire \gen_deflt_chks.RUSER_stage_1_eq_reg[0]_srl2_n_0 ;
  wire [0:0]\gen_deflt_chks.RUSER_stage_2_eq ;
  wire \gen_deflt_chks.WDATA_eq0100_out ;
  wire \gen_deflt_chks.WDATA_eq0103_out ;
  wire \gen_deflt_chks.WDATA_eq061_out ;
  wire \gen_deflt_chks.WDATA_eq064_out ;
  wire \gen_deflt_chks.WDATA_eq067_out ;
  wire \gen_deflt_chks.WDATA_eq070_out ;
  wire \gen_deflt_chks.WDATA_eq073_out ;
  wire \gen_deflt_chks.WDATA_eq076_out ;
  wire \gen_deflt_chks.WDATA_eq079_out ;
  wire \gen_deflt_chks.WDATA_eq082_out ;
  wire \gen_deflt_chks.WDATA_eq085_out ;
  wire \gen_deflt_chks.WDATA_eq088_out ;
  wire \gen_deflt_chks.WDATA_eq091_out ;
  wire \gen_deflt_chks.WDATA_eq094_out ;
  wire \gen_deflt_chks.WDATA_eq097_out ;
  wire \gen_deflt_chks.WDATA_eq0__0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__0/gen_deflt_chks.WDATA_eq[1]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__0/gen_deflt_chks.WDATA_eq[1]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__1/gen_deflt_chks.WDATA_eq[2]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__1/gen_deflt_chks.WDATA_eq[2]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__10/gen_deflt_chks.WDATA_eq[11]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__10/gen_deflt_chks.WDATA_eq[11]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__11/gen_deflt_chks.WDATA_eq[12]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__11/gen_deflt_chks.WDATA_eq[12]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__12/gen_deflt_chks.WDATA_eq[13]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__12/gen_deflt_chks.WDATA_eq[13]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__13/gen_deflt_chks.WDATA_eq[14]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__13/gen_deflt_chks.WDATA_eq[14]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__14/gen_deflt_chks.WDATA_eq[15]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__14/gen_deflt_chks.WDATA_eq[15]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__2/gen_deflt_chks.WDATA_eq[3]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__2/gen_deflt_chks.WDATA_eq[3]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__3/gen_deflt_chks.WDATA_eq[4]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__3/gen_deflt_chks.WDATA_eq[4]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__4/gen_deflt_chks.WDATA_eq[5]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__4/gen_deflt_chks.WDATA_eq[5]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__5/gen_deflt_chks.WDATA_eq[6]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__5/gen_deflt_chks.WDATA_eq[6]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__6/gen_deflt_chks.WDATA_eq[7]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__6/gen_deflt_chks.WDATA_eq[7]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__7/gen_deflt_chks.WDATA_eq[8]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__7/gen_deflt_chks.WDATA_eq[8]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__8/gen_deflt_chks.WDATA_eq[9]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__8/gen_deflt_chks.WDATA_eq[9]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__9/gen_deflt_chks.WDATA_eq[10]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq0_inferred__9/gen_deflt_chks.WDATA_eq[10]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq[0]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_eq[0]_i_3_n_0 ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[0] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[10] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[11] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[12] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[13] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[14] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[15] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[1] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[2] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[3] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[4] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[5] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[6] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[7] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[8] ;
  wire \gen_deflt_chks.WDATA_eq_reg_n_0_[9] ;
  wire \gen_deflt_chks.WDATA_q_reg_n_0_[0] ;
  wire \gen_deflt_chks.WDATA_q_reg_n_0_[1] ;
  wire \gen_deflt_chks.WDATA_q_reg_n_0_[2] ;
  wire \gen_deflt_chks.WDATA_q_reg_n_0_[3] ;
  wire \gen_deflt_chks.WDATA_q_reg_n_0_[4] ;
  wire \gen_deflt_chks.WDATA_q_reg_n_0_[5] ;
  wire \gen_deflt_chks.WDATA_q_reg_n_0_[6] ;
  wire \gen_deflt_chks.WDATA_q_reg_n_0_[7] ;
  wire [1:0]\gen_deflt_chks.WDATA_stage_1_eq ;
  wire \gen_deflt_chks.WDATA_stage_1_eq0__0 ;
  wire \gen_deflt_chks.WDATA_stage_1_eq0_inferred__0/gen_deflt_chks.WDATA_stage_1_eq[1]_i_2_n_0 ;
  wire \gen_deflt_chks.WDATA_stage_1_eq[0]_i_1_n_0 ;
  wire \gen_deflt_chks.WDATA_stage_1_eq[0]_i_2_n_0 ;
  wire [0:0]\gen_deflt_chks.WDATA_stage_2_eq ;
  wire \gen_deflt_chks.WDATA_stage_2_eq[0]_i_1_n_0 ;
  wire [1:0]\gen_deflt_chks.WSTRB_eq ;
  wire \gen_deflt_chks.WSTRB_eq0 ;
  wire \gen_deflt_chks.WSTRB_eq058_out ;
  wire \gen_deflt_chks.WSTRB_eq[0]_i_2_n_0 ;
  wire \gen_deflt_chks.WSTRB_eq[0]_i_3_n_0 ;
  wire \gen_deflt_chks.WSTRB_eq[1]_i_2_n_0 ;
  wire \gen_deflt_chks.WSTRB_eq[1]_i_3_n_0 ;
  wire \gen_deflt_chks.WSTRB_q_reg_n_0_[0] ;
  wire \gen_deflt_chks.WSTRB_q_reg_n_0_[1] ;
  wire \gen_deflt_chks.WSTRB_q_reg_n_0_[2] ;
  wire \gen_deflt_chks.WSTRB_q_reg_n_0_[3] ;
  wire \gen_deflt_chks.WSTRB_q_reg_n_0_[4] ;
  wire \gen_deflt_chks.WSTRB_q_reg_n_0_[5] ;
  wire \gen_deflt_chks.WSTRB_q_reg_n_0_[6] ;
  wire \gen_deflt_chks.WSTRB_q_reg_n_0_[7] ;
  wire [0:0]\gen_deflt_chks.WSTRB_stage_1_eq ;
  wire \gen_deflt_chks.WSTRB_stage_1_eq[0]_i_1_n_0 ;
  wire [0:0]\gen_deflt_chks.WSTRB_stage_2_eq ;
  wire \gen_deflt_chks.WUSER_eq0 ;
  wire \gen_deflt_chks.WUSER_q ;
  wire \gen_deflt_chks.WUSER_stage_1_eq_reg[0]_srl2_n_0 ;
  wire [0:0]\gen_deflt_chks.WUSER_stage_2_eq ;
  wire \gen_deflt_chks.asr_1_ctrl ;
  wire \gen_deflt_chks.asr_1_ctrl0 ;
  wire \gen_deflt_chks.asr_38_ctrl ;
  wire \gen_deflt_chks.asr_38_ctrl0 ;
  wire \gen_deflt_chks.s101sq_reg[1]_0 ;
  wire [4:4]\gen_deflt_chks.s_ARADDR_s ;
  wire \gen_deflt_chks.s_ARUSER_s010_out ;
  wire \gen_deflt_chks.s_ARUSER_sq_reg_n_0_[2] ;
  wire \gen_deflt_chks.s_ARUSER_sq_reg_n_0_[3] ;
  wire [4:4]\gen_deflt_chks.s_AWADDR_s ;
  wire \gen_deflt_chks.s_AWUSER_s019_out ;
  wire \gen_deflt_chks.s_AWUSER_sq_reg_n_0_[2] ;
  wire \gen_deflt_chks.s_AWUSER_sq_reg_n_0_[3] ;
  wire [4:4]\gen_deflt_chks.s_BUSER_s ;
  wire [2:1]\gen_deflt_chks.s_BUSER_s__0 ;
  wire [4:4]\gen_deflt_chks.s_RDATA_s ;
  wire \gen_deflt_chks.s_RUSER_sq_reg_n_0_[2] ;
  wire \gen_deflt_chks.s_RUSER_sq_reg_n_0_[3] ;
  wire [4:4]\gen_deflt_chks.s_WDATA_s ;
  wire \gen_deflt_chks.s_WUSER_sq_reg_n_0_[2] ;
  wire \gen_deflt_chks.s_WUSER_sq_reg_n_0_[3] ;
  wire [3:0]p_0_in106_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in17_in;
  wire p_0_in28_in;
  wire p_0_in40_in;
  wire [3:0]p_0_in45_in;
  wire [7:0]p_0_in56_in;
  wire p_0_in5_in;
  wire p_0_in64_in;
  wire p_0_in71_in;
  wire p_0_in84_in;
  wire p_0_in8_in;
  wire [7:0]p_1_in;
  wire [7:0]p_1_in102_in;
  wire [7:0]p_1_in11_in;
  wire [7:0]p_1_in14_in;
  wire [7:0]p_1_in17_in;
  wire [7:0]p_1_in20_in;
  wire [7:0]p_1_in23_in;
  wire [7:0]p_1_in26_in;
  wire [7:0]p_1_in29_in;
  wire [7:0]p_1_in2_in;
  wire [7:0]p_1_in32_in;
  wire [7:0]p_1_in35_in;
  wire [7:0]p_1_in38_in;
  wire [7:0]p_1_in41_in;
  wire [7:0]p_1_in5_in;
  wire [7:0]p_1_in60_in;
  wire [7:0]p_1_in63_in;
  wire [7:0]p_1_in66_in;
  wire [7:0]p_1_in69_in;
  wire [7:0]p_1_in72_in;
  wire [7:0]p_1_in75_in;
  wire [7:0]p_1_in78_in;
  wire [7:0]p_1_in81_in;
  wire [7:0]p_1_in84_in;
  wire [7:0]p_1_in87_in;
  wire [7:0]p_1_in8_in;
  wire [7:0]p_1_in90_in;
  wire [7:0]p_1_in93_in;
  wire [7:0]p_1_in96_in;
  wire [7:0]p_1_in99_in;
  wire [56:0]pc_status;
  wire [127:0]\rdata_qq_reg[127] ;
  wire resetn_qq;
  wire rid_mismatch_q;
  wire rid_qq;
  wire rlast_qq;
  wire rready_qq;
  wire [1:0]\rresp_qq_reg[1] ;
  wire ruser_qq;
  wire rvalid_qq;
  wire s100s0;
  wire s101s0;
  wire s10s0;
  wire s11;
  wire s13s0;
  wire [7:0]s14;
  wire s16s0;
  wire [2:0]s20;
  wire s22s0;
  wire [2:0]s23;
  wire s25s0;
  wire [3:0]s26;
  wire s28s0;
  wire [3:0]s29;
  wire s31s0;
  wire s32s0;
  wire s38;
  wire s40s0;
  wire s44s0;
  wire s47;
  wire s49s0;
  wire [1:0]s5;
  wire [1:0]s50;
  wire s52s0;
  wire s53s0;
  wire [1:0]s59;
  wire s61s0;
  wire [3:0]s62;
  wire s64s0;
  wire s65;
  wire s67s0;
  wire [7:0]s68;
  wire s70s0;
  wire [2:0]s74;
  wire s76s0;
  wire [2:0]s77;
  wire s79s0;
  wire s7s0;
  wire [3:0]s8;
  wire [3:0]s80;
  wire s82s0;
  wire [3:0]s83;
  wire s85s0;
  wire s86s0;
  wire s92;
  wire s94s0;
  wire s95;
  wire s97s0;
  wire [1:0]s98;
  wire [127:0]\wdata_qq_reg[127] ;
  wire wlast_qq;
  wire wready_qq;
  wire [15:0]\wstrb_qq_reg[15] ;
  wire wuser_qq;
  wire wvalid_qq;
  wire [7:3]NLW_ASR_12_carry_CO_UNCONNECTED;
  wire [7:7]NLW_ASR_12_carry_DI_UNCONNECTED;
  wire [7:0]NLW_ASR_12_carry_O_UNCONNECTED;
  wire [7:7]NLW_ASR_12_carry_S_UNCONNECTED;
  wire [7:3]NLW_ASR_382_carry_CO_UNCONNECTED;
  wire [7:7]NLW_ASR_382_carry_DI_UNCONNECTED;
  wire [7:0]NLW_ASR_382_carry_O_UNCONNECTED;
  wire [7:7]NLW_ASR_382_carry_S_UNCONNECTED;
  wire [3:3]\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_CO_UNCONNECTED ;
  wire [7:0]\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_CO_UNCONNECTED ;
  wire [7:0]\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_O_UNCONNECTED ;

  CARRY8 ASR_12_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_ASR_12_carry_CO_UNCONNECTED[7],ASR_12,ASR_12_carry_n_2,ASR_12_carry_n_3,NLW_ASR_12_carry_CO_UNCONNECTED[3],ASR_12_carry_n_5,ASR_12_carry_n_6,ASR_12_carry_n_7}),
        .DI({NLW_ASR_12_carry_DI_UNCONNECTED[7],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ASR_12_carry_O_UNCONNECTED[7:0]),
        .S({NLW_ASR_12_carry_S_UNCONNECTED[7],ASR_12_carry_i_1_n_0,ASR_12_carry_i_2_n_0,ASR_12_carry_i_3_n_0,ASR_12_carry_i_4_n_0,ASR_12_carry_i_5_n_0,ASR_12_carry_i_6_n_0,ASR_12_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    ASR_12_carry_i_1
       (.I0(\gen_deflt_chks.AWADDR_q1 [19]),
        .I1(\gen_deflt_chks.AwAddrIncr_q1 [19]),
        .I2(\gen_deflt_chks.AWADDR_q1 [18]),
        .I3(\gen_deflt_chks.AwAddrIncr_q1 [18]),
        .O(ASR_12_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_12_carry_i_2
       (.I0(\gen_deflt_chks.AwAddrIncr_q1 [15]),
        .I1(\gen_deflt_chks.AWADDR_q1 [15]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [16]),
        .I3(\gen_deflt_chks.AWADDR_q1 [16]),
        .I4(\gen_deflt_chks.AWADDR_q1 [17]),
        .I5(\gen_deflt_chks.AwAddrIncr_q1 [17]),
        .O(ASR_12_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_12_carry_i_3
       (.I0(\gen_deflt_chks.AwAddrIncr_q1 [12]),
        .I1(\gen_deflt_chks.AWADDR_q1 [12]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [13]),
        .I3(\gen_deflt_chks.AWADDR_q1 [13]),
        .I4(\gen_deflt_chks.AWADDR_q1 [14]),
        .I5(\gen_deflt_chks.AwAddrIncr_q1 [14]),
        .O(ASR_12_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_12_carry_i_4
       (.I0(\gen_deflt_chks.AwAddrIncr_q1 [9]),
        .I1(\gen_deflt_chks.AWADDR_q1 [9]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [10]),
        .I3(\gen_deflt_chks.AWADDR_q1 [10]),
        .I4(\gen_deflt_chks.AWADDR_q1 [11]),
        .I5(\gen_deflt_chks.AwAddrIncr_q1 [11]),
        .O(ASR_12_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_12_carry_i_5
       (.I0(\gen_deflt_chks.AwAddrIncr_q1 [6]),
        .I1(\gen_deflt_chks.AWADDR_q1 [6]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [7]),
        .I3(\gen_deflt_chks.AWADDR_q1 [7]),
        .I4(\gen_deflt_chks.AWADDR_q1 [8]),
        .I5(\gen_deflt_chks.AwAddrIncr_q1 [8]),
        .O(ASR_12_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_12_carry_i_6
       (.I0(\gen_deflt_chks.AwAddrIncr_q1 [5]),
        .I1(\gen_deflt_chks.AWADDR_q1 [5]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [3]),
        .I3(\gen_deflt_chks.AWADDR_q1 [3]),
        .I4(\gen_deflt_chks.AWADDR_q1 [4]),
        .I5(\gen_deflt_chks.AwAddrIncr_q1 [4]),
        .O(ASR_12_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_12_carry_i_7
       (.I0(\gen_deflt_chks.AwAddrIncr_q1 [0]),
        .I1(\gen_deflt_chks.AWADDR_q1 [0]),
        .I2(\gen_deflt_chks.AwAddrIncr_q1 [1]),
        .I3(\gen_deflt_chks.AWADDR_q1 [1]),
        .I4(\gen_deflt_chks.AWADDR_q1 [2]),
        .I5(\gen_deflt_chks.AwAddrIncr_q1 [2]),
        .O(ASR_12_carry_i_7_n_0));
  FDRE ASR_22_reg
       (.C(aclk),
        .CE(1'b1),
        .D(WDataNumError1),
        .Q(Axi4PC_asr_inline_out[21]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE ASR_33_reg
       (.C(aclk),
        .CE(1'b1),
        .D(BrespErrorLead),
        .Q(Axi4PC_asr_inline_out[32]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  CARRY8 ASR_382_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_ASR_382_carry_CO_UNCONNECTED[7],ASR_382,ASR_382_carry_n_2,ASR_382_carry_n_3,NLW_ASR_382_carry_CO_UNCONNECTED[3],ASR_382_carry_n_5,ASR_382_carry_n_6,ASR_382_carry_n_7}),
        .DI({NLW_ASR_382_carry_DI_UNCONNECTED[7],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ASR_382_carry_O_UNCONNECTED[7:0]),
        .S({NLW_ASR_382_carry_S_UNCONNECTED[7],ASR_382_carry_i_1_n_0,ASR_382_carry_i_2_n_0,ASR_382_carry_i_3_n_0,ASR_382_carry_i_4_n_0,ASR_382_carry_i_5_n_0,ASR_382_carry_i_6_n_0,ASR_382_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    ASR_382_carry_i_1
       (.I0(\gen_deflt_chks.ARADDR_q1 [19]),
        .I1(\gen_deflt_chks.ArAddrIncr_q1 [19]),
        .I2(\gen_deflt_chks.ARADDR_q1 [18]),
        .I3(\gen_deflt_chks.ArAddrIncr_q1 [18]),
        .O(ASR_382_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_382_carry_i_2
       (.I0(\gen_deflt_chks.ArAddrIncr_q1 [15]),
        .I1(\gen_deflt_chks.ARADDR_q1 [15]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [16]),
        .I3(\gen_deflt_chks.ARADDR_q1 [16]),
        .I4(\gen_deflt_chks.ARADDR_q1 [17]),
        .I5(\gen_deflt_chks.ArAddrIncr_q1 [17]),
        .O(ASR_382_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_382_carry_i_3
       (.I0(\gen_deflt_chks.ArAddrIncr_q1 [12]),
        .I1(\gen_deflt_chks.ARADDR_q1 [12]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [13]),
        .I3(\gen_deflt_chks.ARADDR_q1 [13]),
        .I4(\gen_deflt_chks.ARADDR_q1 [14]),
        .I5(\gen_deflt_chks.ArAddrIncr_q1 [14]),
        .O(ASR_382_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_382_carry_i_4
       (.I0(\gen_deflt_chks.ArAddrIncr_q1 [9]),
        .I1(\gen_deflt_chks.ARADDR_q1 [9]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [10]),
        .I3(\gen_deflt_chks.ARADDR_q1 [10]),
        .I4(\gen_deflt_chks.ARADDR_q1 [11]),
        .I5(\gen_deflt_chks.ArAddrIncr_q1 [11]),
        .O(ASR_382_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_382_carry_i_5
       (.I0(\gen_deflt_chks.ArAddrIncr_q1 [6]),
        .I1(\gen_deflt_chks.ARADDR_q1 [6]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [7]),
        .I3(\gen_deflt_chks.ARADDR_q1 [7]),
        .I4(\gen_deflt_chks.ARADDR_q1 [8]),
        .I5(\gen_deflt_chks.ArAddrIncr_q1 [8]),
        .O(ASR_382_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_382_carry_i_6
       (.I0(\gen_deflt_chks.ArAddrIncr_q1 [5]),
        .I1(\gen_deflt_chks.ARADDR_q1 [5]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [3]),
        .I3(\gen_deflt_chks.ARADDR_q1 [3]),
        .I4(\gen_deflt_chks.ARADDR_q1 [4]),
        .I5(\gen_deflt_chks.ArAddrIncr_q1 [4]),
        .O(ASR_382_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_382_carry_i_7
       (.I0(\gen_deflt_chks.ArAddrIncr_q1 [2]),
        .I1(\gen_deflt_chks.ARADDR_q1 [2]),
        .I2(\gen_deflt_chks.ArAddrIncr_q1 [0]),
        .I3(\gen_deflt_chks.ARADDR_q1 [0]),
        .I4(\gen_deflt_chks.ARADDR_q1 [1]),
        .I5(\gen_deflt_chks.ArAddrIncr_q1 [1]),
        .O(ASR_382_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    ASR_45_i_1
       (.I0(arvalid_qq),
        .I1(\arsize_qq_reg[2] [2]),
        .I2(\arsize_qq_reg[2] [0]),
        .I3(\arsize_qq_reg[2] [1]),
        .O(ASR_450));
  FDRE ASR_45_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_450),
        .Q(Axi4PC_asr_inline_out[44]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ASR_59_i_2
       (.I0(resetn_qq),
        .I1(rvalid_qq),
        .O(ASR_59_reg_0));
  FDRE ASR_59_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_590),
        .Q(Axi4PC_asr_inline_out[58]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ASR_60_i_1
       (.I0(rid_mismatch_q),
        .I1(rvalid_qq),
        .O(ASR_600));
  FDRE ASR_60_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_600),
        .Q(Axi4PC_asr_inline_out[59]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    ASR_8_i_1
       (.I0(awvalid_qq),
        .I1(data_in[2]),
        .I2(data_in[0]),
        .I3(data_in[1]),
        .O(ASR_80));
  FDRE ASR_8_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_80),
        .Q(Axi4PC_asr_inline_out[7]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \gen_deflt_chks.ARADDR_eq[0]_i_1 
       (.I0(\araddr_qq_reg[31] [6]),
        .I1(\gen_deflt_chks.ARADDR_q_reg_n_0_[6] ),
        .I2(\araddr_qq_reg[31] [7]),
        .I3(\gen_deflt_chks.ARADDR_q_reg_n_0_[7] ),
        .I4(\gen_deflt_chks.ARADDR_eq[0]_i_2_n_0 ),
        .I5(\gen_deflt_chks.ARADDR_eq[0]_i_3_n_0 ),
        .O(\gen_deflt_chks.ARADDR_eq0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.ARADDR_eq[0]_i_2 
       (.I0(\gen_deflt_chks.ARADDR_q_reg_n_0_[0] ),
        .I1(\araddr_qq_reg[31] [0]),
        .I2(\araddr_qq_reg[31] [2]),
        .I3(\gen_deflt_chks.ARADDR_q_reg_n_0_[2] ),
        .I4(\araddr_qq_reg[31] [1]),
        .I5(\gen_deflt_chks.ARADDR_q_reg_n_0_[1] ),
        .O(\gen_deflt_chks.ARADDR_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.ARADDR_eq[0]_i_3 
       (.I0(\gen_deflt_chks.ARADDR_q_reg_n_0_[3] ),
        .I1(\araddr_qq_reg[31] [3]),
        .I2(\araddr_qq_reg[31] [4]),
        .I3(\gen_deflt_chks.ARADDR_q_reg_n_0_[4] ),
        .I4(\araddr_qq_reg[31] [5]),
        .I5(\gen_deflt_chks.ARADDR_q_reg_n_0_[5] ),
        .O(\gen_deflt_chks.ARADDR_eq[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \gen_deflt_chks.ARADDR_eq[1]_i_1 
       (.I0(\gen_deflt_chks.ARADDR_q1 [2]),
        .I1(\araddr_qq_reg[31] [14]),
        .I2(\gen_deflt_chks.ARADDR_q1 [3]),
        .I3(\araddr_qq_reg[31] [15]),
        .I4(\gen_deflt_chks.ARADDR_eq[1]_i_2_n_0 ),
        .I5(\gen_deflt_chks.ARADDR_eq[1]_i_3_n_0 ),
        .O(\gen_deflt_chks.ARADDR_eq047_out ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.ARADDR_eq[1]_i_2 
       (.I0(p_0_in45_in[0]),
        .I1(\araddr_qq_reg[31] [8]),
        .I2(\araddr_qq_reg[31] [10]),
        .I3(p_0_in45_in[2]),
        .I4(\araddr_qq_reg[31] [9]),
        .I5(p_0_in45_in[1]),
        .O(\gen_deflt_chks.ARADDR_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.ARADDR_eq[1]_i_3 
       (.I0(p_0_in45_in[3]),
        .I1(\araddr_qq_reg[31] [11]),
        .I2(\gen_deflt_chks.ARADDR_q1 [0]),
        .I3(\araddr_qq_reg[31] [12]),
        .I4(\gen_deflt_chks.ARADDR_q1 [1]),
        .I5(\araddr_qq_reg[31] [13]),
        .O(\gen_deflt_chks.ARADDR_eq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \gen_deflt_chks.ARADDR_eq[2]_i_1 
       (.I0(\gen_deflt_chks.ARADDR_q1 [10]),
        .I1(\araddr_qq_reg[31] [22]),
        .I2(\gen_deflt_chks.ARADDR_q1 [11]),
        .I3(\araddr_qq_reg[31] [23]),
        .I4(\gen_deflt_chks.ARADDR_eq[2]_i_2_n_0 ),
        .I5(\gen_deflt_chks.ARADDR_eq[2]_i_3_n_0 ),
        .O(\gen_deflt_chks.ARADDR_eq050_out ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.ARADDR_eq[2]_i_2 
       (.I0(\araddr_qq_reg[31] [16]),
        .I1(\gen_deflt_chks.ARADDR_q1 [4]),
        .I2(\gen_deflt_chks.ARADDR_q1 [6]),
        .I3(\araddr_qq_reg[31] [18]),
        .I4(\gen_deflt_chks.ARADDR_q1 [5]),
        .I5(\araddr_qq_reg[31] [17]),
        .O(\gen_deflt_chks.ARADDR_eq[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.ARADDR_eq[2]_i_3 
       (.I0(\araddr_qq_reg[31] [19]),
        .I1(\gen_deflt_chks.ARADDR_q1 [7]),
        .I2(\gen_deflt_chks.ARADDR_q1 [8]),
        .I3(\araddr_qq_reg[31] [20]),
        .I4(\gen_deflt_chks.ARADDR_q1 [9]),
        .I5(\araddr_qq_reg[31] [21]),
        .O(\gen_deflt_chks.ARADDR_eq[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \gen_deflt_chks.ARADDR_eq[3]_i_1 
       (.I0(\gen_deflt_chks.ARADDR_q1 [18]),
        .I1(\araddr_qq_reg[31] [30]),
        .I2(\gen_deflt_chks.ARADDR_q1 [19]),
        .I3(\araddr_qq_reg[31] [31]),
        .I4(\gen_deflt_chks.ARADDR_eq[3]_i_2_n_0 ),
        .I5(\gen_deflt_chks.ARADDR_eq[3]_i_3_n_0 ),
        .O(\gen_deflt_chks.ARADDR_eq053_out ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.ARADDR_eq[3]_i_2 
       (.I0(\gen_deflt_chks.ARADDR_q1 [13]),
        .I1(\araddr_qq_reg[31] [25]),
        .I2(\gen_deflt_chks.ARADDR_q1 [14]),
        .I3(\araddr_qq_reg[31] [26]),
        .I4(\araddr_qq_reg[31] [24]),
        .I5(\gen_deflt_chks.ARADDR_q1 [12]),
        .O(\gen_deflt_chks.ARADDR_eq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.ARADDR_eq[3]_i_3 
       (.I0(\araddr_qq_reg[31] [27]),
        .I1(\gen_deflt_chks.ARADDR_q1 [15]),
        .I2(\gen_deflt_chks.ARADDR_q1 [16]),
        .I3(\araddr_qq_reg[31] [28]),
        .I4(\gen_deflt_chks.ARADDR_q1 [17]),
        .I5(\araddr_qq_reg[31] [29]),
        .O(\gen_deflt_chks.ARADDR_eq[3]_i_3_n_0 ));
  FDRE \gen_deflt_chks.ARADDR_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ARADDR_eq0 ),
        .Q(\gen_deflt_chks.ARADDR_eq [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ARADDR_eq047_out ),
        .Q(\gen_deflt_chks.ARADDR_eq [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_eq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ARADDR_eq050_out ),
        .Q(\gen_deflt_chks.ARADDR_eq [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_eq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ARADDR_eq053_out ),
        .Q(\gen_deflt_chks.ARADDR_eq [3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [12]),
        .Q(\gen_deflt_chks.ARADDR_q1 [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [22]),
        .Q(\gen_deflt_chks.ARADDR_q1 [10]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [23]),
        .Q(\gen_deflt_chks.ARADDR_q1 [11]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [24]),
        .Q(\gen_deflt_chks.ARADDR_q1 [12]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [25]),
        .Q(\gen_deflt_chks.ARADDR_q1 [13]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [26]),
        .Q(\gen_deflt_chks.ARADDR_q1 [14]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [27]),
        .Q(\gen_deflt_chks.ARADDR_q1 [15]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [28]),
        .Q(\gen_deflt_chks.ARADDR_q1 [16]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [29]),
        .Q(\gen_deflt_chks.ARADDR_q1 [17]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [30]),
        .Q(\gen_deflt_chks.ARADDR_q1 [18]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [31]),
        .Q(\gen_deflt_chks.ARADDR_q1 [19]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [13]),
        .Q(\gen_deflt_chks.ARADDR_q1 [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [14]),
        .Q(\gen_deflt_chks.ARADDR_q1 [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [15]),
        .Q(\gen_deflt_chks.ARADDR_q1 [3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [16]),
        .Q(\gen_deflt_chks.ARADDR_q1 [4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [17]),
        .Q(\gen_deflt_chks.ARADDR_q1 [5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [18]),
        .Q(\gen_deflt_chks.ARADDR_q1 [6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [19]),
        .Q(\gen_deflt_chks.ARADDR_q1 [7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [20]),
        .Q(\gen_deflt_chks.ARADDR_q1 [8]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [21]),
        .Q(\gen_deflt_chks.ARADDR_q1 [9]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [0]),
        .Q(\gen_deflt_chks.ARADDR_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [10]),
        .Q(p_0_in45_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [11]),
        .Q(p_0_in45_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [1]),
        .Q(\gen_deflt_chks.ARADDR_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [2]),
        .Q(\gen_deflt_chks.ARADDR_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [3]),
        .Q(\gen_deflt_chks.ARADDR_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [4]),
        .Q(\gen_deflt_chks.ARADDR_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [5]),
        .Q(\gen_deflt_chks.ARADDR_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [6]),
        .Q(\gen_deflt_chks.ARADDR_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [7]),
        .Q(\gen_deflt_chks.ARADDR_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [8]),
        .Q(p_0_in45_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_qq_reg[31] [9]),
        .Q(p_0_in45_in[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_deflt_chks.ARADDR_stage_1_eq[0]_i_1 
       (.I0(\gen_deflt_chks.ARADDR_eq [1]),
        .I1(\gen_deflt_chks.ARADDR_eq [0]),
        .I2(\gen_deflt_chks.ARADDR_eq [3]),
        .I3(\gen_deflt_chks.ARADDR_eq [2]),
        .O(\gen_deflt_chks.ARADDR_stage_1_eq[0]_i_1_n_0 ));
  FDRE \gen_deflt_chks.ARADDR_stage_1_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ARADDR_stage_1_eq[0]_i_1_n_0 ),
        .Q(\gen_deflt_chks.ARADDR_stage_1_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARADDR_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ARADDR_stage_1_eq ),
        .Q(\gen_deflt_chks.ARADDR_stage_2_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.ARUSER_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aruser_qq),
        .Q(\gen_deflt_chks.ARUSER_q ),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/i_Axi4PC_asr_inline/gen_deflt_chks.ARUSER_stage_1_eq_reg " *) 
  (* srl_name = "inst/\CORE/i_Axi4PC_asr_inline/gen_deflt_chks.ARUSER_stage_1_eq_reg[0]_srl2 " *) 
  SRL16E \gen_deflt_chks.ARUSER_stage_1_eq_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(\gen_deflt_chks.ARUSER_eq0 ),
        .Q(\gen_deflt_chks.ARUSER_stage_1_eq_reg[0]_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_deflt_chks.ARUSER_stage_1_eq_reg[0]_srl2_i_1 
       (.I0(\gen_deflt_chks.ARUSER_q ),
        .I1(aruser_qq),
        .O(\gen_deflt_chks.ARUSER_eq0 ));
  FDRE \gen_deflt_chks.ARUSER_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ARUSER_stage_1_eq_reg[0]_srl2_n_0 ),
        .Q(\gen_deflt_chks.ARUSER_stage_2_eq ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_10_i_1 
       (.I0(p_0_in17_in),
        .I1(\gen_deflt_chks.AWADDR_stage_2_eq ),
        .O(\gen_deflt_chks.ASR_10_i_1_n_0 ));
  FDRE \gen_deflt_chks.ASR_10_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ASR_10_i_1_n_0 ),
        .Q(Axi4PC_asr_inline_out[9]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h28AAAA28)) 
    \gen_deflt_chks.ASR_11_i_1 
       (.I0(p_0_in84_in),
        .I1(\awburst_qq_reg[1] [0]),
        .I2(s5[0]),
        .I3(\awburst_qq_reg[1] [1]),
        .I4(s5[1]),
        .O(s7s0));
  FDRE \gen_deflt_chks.ASR_11_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s7s0),
        .Q(Axi4PC_asr_inline_out[10]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    \gen_deflt_chks.ASR_12_i_1 
       (.I0(\gen_deflt_chks.s_AWUSER_s019_out ),
        .I1(\gen_deflt_chks.ASR_12_i_3_n_0 ),
        .I2(\awcache_qq_reg[3] [0]),
        .I3(s8[0]),
        .I4(s8[2]),
        .I5(\awcache_qq_reg[3] [2]),
        .O(s10s0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_deflt_chks.ASR_12_i_2 
       (.I0(resetn_qq),
        .I1(p_0_in84_in),
        .O(\gen_deflt_chks.s_AWUSER_s019_out ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_deflt_chks.ASR_12_i_3 
       (.I0(s8[3]),
        .I1(\awcache_qq_reg[3] [3]),
        .I2(s8[1]),
        .I3(\awcache_qq_reg[3] [1]),
        .O(\gen_deflt_chks.ASR_12_i_3_n_0 ));
  FDRE \gen_deflt_chks.ASR_12_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s10s0),
        .Q(Axi4PC_asr_inline_out[11]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \gen_deflt_chks.ASR_13_i_1 
       (.I0(p_0_in84_in),
        .I1(awid_qq),
        .I2(s11),
        .O(s13s0));
  FDRE \gen_deflt_chks.ASR_13_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s13s0),
        .Q(Axi4PC_asr_inline_out[12]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \gen_deflt_chks.ASR_14_i_1 
       (.I0(p_0_in84_in),
        .I1(\gen_deflt_chks.ASR_14_i_2_n_0 ),
        .I2(\gen_deflt_chks.ASR_14_i_3_n_0 ),
        .I3(\gen_deflt_chks.ASR_14_i_4_n_0 ),
        .O(s16s0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.ASR_14_i_2 
       (.I0(s14[3]),
        .I1(data_in[6]),
        .I2(data_in[7]),
        .I3(s14[4]),
        .I4(data_in[8]),
        .I5(s14[5]),
        .O(\gen_deflt_chks.ASR_14_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.ASR_14_i_3 
       (.I0(s14[0]),
        .I1(data_in[3]),
        .I2(data_in[4]),
        .I3(s14[1]),
        .I4(data_in[5]),
        .I5(s14[2]),
        .O(\gen_deflt_chks.ASR_14_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gen_deflt_chks.ASR_14_i_4 
       (.I0(s14[7]),
        .I1(data_in[10]),
        .I2(s14[6]),
        .I3(data_in[9]),
        .O(\gen_deflt_chks.ASR_14_i_4_n_0 ));
  FDRE \gen_deflt_chks.ASR_14_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s16s0),
        .Q(Axi4PC_asr_inline_out[13]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_16_i_1 
       (.I0(p_0_in84_in),
        .I1(\gen_deflt_chks.ASR_16_i_2_n_0 ),
        .O(s22s0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.ASR_16_i_2 
       (.I0(s20[2]),
        .I1(\awprot_qq_reg[2] [2]),
        .I2(s20[1]),
        .I3(\awprot_qq_reg[2] [1]),
        .I4(\awprot_qq_reg[2] [0]),
        .I5(s20[0]),
        .O(\gen_deflt_chks.ASR_16_i_2_n_0 ));
  FDRE \gen_deflt_chks.ASR_16_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s22s0),
        .Q(Axi4PC_asr_inline_out[15]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_17_i_1 
       (.I0(p_0_in84_in),
        .I1(\gen_deflt_chks.ASR_17_i_2_n_0 ),
        .O(s25s0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.ASR_17_i_2 
       (.I0(s23[1]),
        .I1(data_in[1]),
        .I2(s23[2]),
        .I3(data_in[2]),
        .I4(data_in[0]),
        .I5(s23[0]),
        .O(\gen_deflt_chks.ASR_17_i_2_n_0 ));
  FDRE \gen_deflt_chks.ASR_17_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s25s0),
        .Q(Axi4PC_asr_inline_out[16]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    \gen_deflt_chks.ASR_18_i_1 
       (.I0(\gen_deflt_chks.s_AWUSER_s019_out ),
        .I1(\gen_deflt_chks.ASR_18_i_2_n_0 ),
        .I2(\awqos_qq_reg[3] [1]),
        .I3(s26[1]),
        .I4(\awqos_qq_reg[3] [2]),
        .I5(s26[2]),
        .O(s28s0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_deflt_chks.ASR_18_i_2 
       (.I0(\awqos_qq_reg[3] [3]),
        .I1(s26[3]),
        .I2(\awqos_qq_reg[3] [0]),
        .I3(s26[0]),
        .O(\gen_deflt_chks.ASR_18_i_2_n_0 ));
  FDRE \gen_deflt_chks.ASR_18_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s28s0),
        .Q(Axi4PC_asr_inline_out[17]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    \gen_deflt_chks.ASR_19_i_1 
       (.I0(\gen_deflt_chks.s_AWUSER_s019_out ),
        .I1(\gen_deflt_chks.ASR_19_i_2_n_0 ),
        .I2(\awregion_qq_reg[3] [2]),
        .I3(s29[2]),
        .I4(\awregion_qq_reg[3] [1]),
        .I5(s29[1]),
        .O(s31s0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_deflt_chks.ASR_19_i_2 
       (.I0(\awregion_qq_reg[3] [3]),
        .I1(s29[3]),
        .I2(\awregion_qq_reg[3] [0]),
        .I3(s29[0]),
        .O(\gen_deflt_chks.ASR_19_i_2_n_0 ));
  FDRE \gen_deflt_chks.ASR_19_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s31s0),
        .Q(Axi4PC_asr_inline_out[18]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_1_i_1 
       (.I0(\gen_deflt_chks.asr_1_ctrl ),
        .I1(ASR_12),
        .O(ASR_10));
  FDRE \gen_deflt_chks.ASR_1_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_10),
        .Q(Axi4PC_asr_inline_out[0]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_20_i_1 
       (.I0(p_0_in84_in),
        .I1(awvalid_qq),
        .O(s32s0));
  FDRE \gen_deflt_chks.ASR_20_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s32s0),
        .Q(Axi4PC_asr_inline_out[19]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.ASR_23_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(BStrbError),
        .Q(Axi4PC_asr_inline_out[22]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_25_i_1 
       (.I0(p_0_in14_in),
        .I1(\gen_deflt_chks.WDATA_stage_2_eq ),
        .O(\gen_deflt_chks.ASR_25_i_1_n_0 ));
  FDRE \gen_deflt_chks.ASR_25_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ASR_25_i_1_n_0 ),
        .Q(Axi4PC_asr_inline_out[24]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \gen_deflt_chks.ASR_26_i_1 
       (.I0(p_0_in71_in),
        .I1(wlast_qq),
        .I2(s38),
        .O(s40s0));
  FDRE \gen_deflt_chks.ASR_26_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s40s0),
        .Q(Axi4PC_asr_inline_out[25]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_27_i_1 
       (.I0(p_0_in14_in),
        .I1(\gen_deflt_chks.WSTRB_stage_2_eq ),
        .O(\gen_deflt_chks.ASR_27_i_1_n_0 ));
  FDRE \gen_deflt_chks.ASR_27_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ASR_27_i_1_n_0 ),
        .Q(Axi4PC_asr_inline_out[26]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_28_i_1 
       (.I0(p_0_in71_in),
        .I1(wvalid_qq),
        .O(s44s0));
  FDRE \gen_deflt_chks.ASR_28_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s44s0),
        .Q(Axi4PC_asr_inline_out[27]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h40004040)) 
    \gen_deflt_chks.ASR_2_i_1 
       (.I0(\awburst_qq_reg[1] [0]),
        .I1(awvalid_qq),
        .I2(\awburst_qq_reg[1] [1]),
        .I3(\gen_deflt_chks.ASR_2_i_2_n_0 ),
        .I4(\gen_deflt_chks.ASR_2_i_3_n_0 ),
        .O(ASR_20));
  LUT6 #(
    .INIT(64'hEEE0FFFFE0E0E0E0)) 
    \gen_deflt_chks.ASR_2_i_2 
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(\gen_deflt_chks.ASR_2_i_4_n_0 ),
        .I5(data_in[2]),
        .O(\gen_deflt_chks.ASR_2_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h03570377)) 
    \gen_deflt_chks.ASR_2_i_3 
       (.I0(data_in[1]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(data_in[2]),
        .I4(data_in[0]),
        .O(\gen_deflt_chks.ASR_2_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000557F)) 
    \gen_deflt_chks.ASR_2_i_4 
       (.I0(data_in[1]),
        .I1(data_in[0]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\gen_deflt_chks.ASR_2_i_4_n_0 ));
  FDRE \gen_deflt_chks.ASR_2_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_20),
        .Q(Axi4PC_asr_inline_out[1]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \gen_deflt_chks.ASR_34_i_1 
       (.I0(p_0_in64_in),
        .I1(bid_qq),
        .I2(s47),
        .O(s49s0));
  FDRE \gen_deflt_chks.ASR_34_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s49s0),
        .Q(Axi4PC_asr_inline_out[33]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h28AAAA28)) 
    \gen_deflt_chks.ASR_35_i_1 
       (.I0(p_0_in64_in),
        .I1(s50[0]),
        .I2(\bresp_qq_reg[1] [0]),
        .I3(s50[1]),
        .I4(\bresp_qq_reg[1] [1]),
        .O(s52s0));
  FDRE \gen_deflt_chks.ASR_35_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s52s0),
        .Q(Axi4PC_asr_inline_out[34]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_36_i_1 
       (.I0(p_0_in64_in),
        .I1(bvalid_qq),
        .O(s53s0));
  FDRE \gen_deflt_chks.ASR_36_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s53s0),
        .Q(Axi4PC_asr_inline_out[35]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_38_i_1 
       (.I0(\gen_deflt_chks.asr_38_ctrl ),
        .I1(ASR_382),
        .O(ASR_380));
  FDRE \gen_deflt_chks.ASR_38_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_380),
        .Q(Axi4PC_asr_inline_out[37]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h08000808)) 
    \gen_deflt_chks.ASR_39_i_1 
       (.I0(arvalid_qq),
        .I1(\arburst_qq_reg[1] [1]),
        .I2(\arburst_qq_reg[1] [0]),
        .I3(\gen_deflt_chks.ASR_39_i_2_n_0 ),
        .I4(\gen_deflt_chks.ASR_39_i_3_n_0 ),
        .O(ASR_390));
  LUT6 #(
    .INIT(64'hEEE0FFFFE0E0E0E0)) 
    \gen_deflt_chks.ASR_39_i_2 
       (.I0(\arsize_qq_reg[2] [0]),
        .I1(\arsize_qq_reg[2] [1]),
        .I2(\araddr_qq_reg[31] [0]),
        .I3(\araddr_qq_reg[31] [4]),
        .I4(\gen_deflt_chks.ASR_39_i_4_n_0 ),
        .I5(\arsize_qq_reg[2] [2]),
        .O(\gen_deflt_chks.ASR_39_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h03570377)) 
    \gen_deflt_chks.ASR_39_i_3 
       (.I0(\arsize_qq_reg[2] [1]),
        .I1(\araddr_qq_reg[31] [1]),
        .I2(\araddr_qq_reg[31] [2]),
        .I3(\arsize_qq_reg[2] [2]),
        .I4(\arsize_qq_reg[2] [0]),
        .O(\gen_deflt_chks.ASR_39_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000557F)) 
    \gen_deflt_chks.ASR_39_i_4 
       (.I0(\arsize_qq_reg[2] [1]),
        .I1(\arsize_qq_reg[2] [0]),
        .I2(\araddr_qq_reg[31] [6]),
        .I3(\araddr_qq_reg[31] [5]),
        .I4(\araddr_qq_reg[31] [3]),
        .I5(\araddr_qq_reg[31] [0]),
        .O(\gen_deflt_chks.ASR_39_i_4_n_0 ));
  FDRE \gen_deflt_chks.ASR_39_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_390),
        .Q(Axi4PC_asr_inline_out[38]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gen_deflt_chks.ASR_3_i_1 
       (.I0(\awburst_qq_reg[1] [1]),
        .I1(\awburst_qq_reg[1] [0]),
        .I2(awvalid_qq),
        .O(ASR_30));
  FDRE \gen_deflt_chks.ASR_3_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_30),
        .Q(Axi4PC_asr_inline_out[2]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gen_deflt_chks.ASR_40_i_1 
       (.I0(\arburst_qq_reg[1] [0]),
        .I1(\arburst_qq_reg[1] [1]),
        .I2(arvalid_qq),
        .O(ASR_400));
  FDRE \gen_deflt_chks.ASR_40_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_400),
        .Q(Axi4PC_asr_inline_out[39]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \gen_deflt_chks.ASR_42_i_1 
       (.I0(\arcache_qq_reg[3] [2]),
        .I1(\arcache_qq_reg[3] [3]),
        .I2(arvalid_qq),
        .I3(\arcache_qq_reg[3] [1]),
        .O(ASR_420));
  FDRE \gen_deflt_chks.ASR_42_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_420),
        .Q(Axi4PC_asr_inline_out[41]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \gen_deflt_chks.ASR_43_i_1 
       (.I0(\gen_deflt_chks.ASR_43_i_2_n_0 ),
        .I1(\arburst_qq_reg[1] [1]),
        .I2(arvalid_qq),
        .I3(\arburst_qq_reg[1] [0]),
        .O(ASR_430));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_deflt_chks.ASR_43_i_2 
       (.I0(\arlen_qq_reg[7] [6]),
        .I1(\arlen_qq_reg[7] [4]),
        .I2(\arlen_qq_reg[7] [7]),
        .I3(\arlen_qq_reg[7] [5]),
        .O(\gen_deflt_chks.ASR_43_i_2_n_0 ));
  FDRE \gen_deflt_chks.ASR_43_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_430),
        .Q(Axi4PC_asr_inline_out[42]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAA8AAA8A8A)) 
    \gen_deflt_chks.ASR_44_i_1 
       (.I0(\gen_deflt_chks.ASR_44_i_2_n_0 ),
        .I1(\gen_deflt_chks.ASR_43_i_2_n_0 ),
        .I2(\arlen_qq_reg[7] [0]),
        .I3(\arlen_qq_reg[7] [1]),
        .I4(\arlen_qq_reg[7] [2]),
        .I5(\arlen_qq_reg[7] [3]),
        .O(ASR_440));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_deflt_chks.ASR_44_i_2 
       (.I0(\arburst_qq_reg[1] [0]),
        .I1(\arburst_qq_reg[1] [1]),
        .I2(arvalid_qq),
        .O(\gen_deflt_chks.ASR_44_i_2_n_0 ));
  FDRE \gen_deflt_chks.ASR_44_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_440),
        .Q(Axi4PC_asr_inline_out[43]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_47_i_1 
       (.I0(p_0_in8_in),
        .I1(\gen_deflt_chks.ARADDR_stage_2_eq ),
        .O(\gen_deflt_chks.ASR_47_i_1_n_0 ));
  FDRE \gen_deflt_chks.ASR_47_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ASR_47_i_1_n_0 ),
        .Q(Axi4PC_asr_inline_out[46]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h28AAAA28)) 
    \gen_deflt_chks.ASR_48_i_1 
       (.I0(p_0_in40_in),
        .I1(\arburst_qq_reg[1] [0]),
        .I2(s59[0]),
        .I3(\arburst_qq_reg[1] [1]),
        .I4(s59[1]),
        .O(s61s0));
  FDRE \gen_deflt_chks.ASR_48_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s61s0),
        .Q(Axi4PC_asr_inline_out[47]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    \gen_deflt_chks.ASR_49_i_1 
       (.I0(\gen_deflt_chks.s_ARUSER_s010_out ),
        .I1(\gen_deflt_chks.ASR_49_i_3_n_0 ),
        .I2(s62[3]),
        .I3(\arcache_qq_reg[3] [3]),
        .I4(s62[1]),
        .I5(\arcache_qq_reg[3] [1]),
        .O(s64s0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_deflt_chks.ASR_49_i_2 
       (.I0(resetn_qq),
        .I1(p_0_in40_in),
        .O(\gen_deflt_chks.s_ARUSER_s010_out ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_deflt_chks.ASR_49_i_3 
       (.I0(\arcache_qq_reg[3] [0]),
        .I1(s62[0]),
        .I2(s62[2]),
        .I3(\arcache_qq_reg[3] [2]),
        .O(\gen_deflt_chks.ASR_49_i_3_n_0 ));
  FDRE \gen_deflt_chks.ASR_49_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s64s0),
        .Q(Axi4PC_asr_inline_out[48]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \gen_deflt_chks.ASR_50_i_1 
       (.I0(p_0_in40_in),
        .I1(arid_qq),
        .I2(s65),
        .O(s67s0));
  FDRE \gen_deflt_chks.ASR_50_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s67s0),
        .Q(Axi4PC_asr_inline_out[49]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \gen_deflt_chks.ASR_51_i_1 
       (.I0(p_0_in40_in),
        .I1(\gen_deflt_chks.ASR_51_i_2_n_0 ),
        .I2(\gen_deflt_chks.ASR_51_i_3_n_0 ),
        .I3(\gen_deflt_chks.ASR_51_i_4_n_0 ),
        .O(s70s0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.ASR_51_i_2 
       (.I0(s68[3]),
        .I1(\arlen_qq_reg[7] [3]),
        .I2(\arlen_qq_reg[7] [5]),
        .I3(s68[5]),
        .I4(\arlen_qq_reg[7] [4]),
        .I5(s68[4]),
        .O(\gen_deflt_chks.ASR_51_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.ASR_51_i_3 
       (.I0(s68[0]),
        .I1(\arlen_qq_reg[7] [0]),
        .I2(\arlen_qq_reg[7] [2]),
        .I3(s68[2]),
        .I4(\arlen_qq_reg[7] [1]),
        .I5(s68[1]),
        .O(\gen_deflt_chks.ASR_51_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gen_deflt_chks.ASR_51_i_4 
       (.I0(s68[7]),
        .I1(\arlen_qq_reg[7] [7]),
        .I2(s68[6]),
        .I3(\arlen_qq_reg[7] [6]),
        .O(\gen_deflt_chks.ASR_51_i_4_n_0 ));
  FDRE \gen_deflt_chks.ASR_51_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s70s0),
        .Q(Axi4PC_asr_inline_out[50]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_53_i_1 
       (.I0(p_0_in40_in),
        .I1(\gen_deflt_chks.ASR_53_i_2_n_0 ),
        .O(s76s0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.ASR_53_i_2 
       (.I0(s74[1]),
        .I1(\arprot_qq_reg[2] [1]),
        .I2(s74[2]),
        .I3(\arprot_qq_reg[2] [2]),
        .I4(\arprot_qq_reg[2] [0]),
        .I5(s74[0]),
        .O(\gen_deflt_chks.ASR_53_i_2_n_0 ));
  FDRE \gen_deflt_chks.ASR_53_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s76s0),
        .Q(Axi4PC_asr_inline_out[52]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_54_i_1 
       (.I0(p_0_in40_in),
        .I1(\gen_deflt_chks.ASR_54_i_2_n_0 ),
        .O(s79s0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.ASR_54_i_2 
       (.I0(s77[1]),
        .I1(\arsize_qq_reg[2] [1]),
        .I2(s77[2]),
        .I3(\arsize_qq_reg[2] [2]),
        .I4(\arsize_qq_reg[2] [0]),
        .I5(s77[0]),
        .O(\gen_deflt_chks.ASR_54_i_2_n_0 ));
  FDRE \gen_deflt_chks.ASR_54_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s79s0),
        .Q(Axi4PC_asr_inline_out[53]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    \gen_deflt_chks.ASR_55_i_1 
       (.I0(\gen_deflt_chks.s_ARUSER_s010_out ),
        .I1(\gen_deflt_chks.ASR_55_i_2_n_0 ),
        .I2(\arqos_qq_reg[3] [0]),
        .I3(s80[0]),
        .I4(\arqos_qq_reg[3] [1]),
        .I5(s80[1]),
        .O(s82s0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_deflt_chks.ASR_55_i_2 
       (.I0(\arqos_qq_reg[3] [3]),
        .I1(s80[3]),
        .I2(\arqos_qq_reg[3] [2]),
        .I3(s80[2]),
        .O(\gen_deflt_chks.ASR_55_i_2_n_0 ));
  FDRE \gen_deflt_chks.ASR_55_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s82s0),
        .Q(Axi4PC_asr_inline_out[54]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    \gen_deflt_chks.ASR_56_i_1 
       (.I0(\gen_deflt_chks.s_ARUSER_s010_out ),
        .I1(\gen_deflt_chks.ASR_56_i_2_n_0 ),
        .I2(\arregion_qq_reg[3] [0]),
        .I3(s83[0]),
        .I4(\arregion_qq_reg[3] [2]),
        .I5(s83[2]),
        .O(s85s0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_deflt_chks.ASR_56_i_2 
       (.I0(\arregion_qq_reg[3] [3]),
        .I1(s83[3]),
        .I2(\arregion_qq_reg[3] [1]),
        .I3(s83[1]),
        .O(\gen_deflt_chks.ASR_56_i_2_n_0 ));
  FDRE \gen_deflt_chks.ASR_56_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s85s0),
        .Q(Axi4PC_asr_inline_out[55]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_57_i_1 
       (.I0(p_0_in40_in),
        .I1(arvalid_qq),
        .O(s86s0));
  FDRE \gen_deflt_chks.ASR_57_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s86s0),
        .Q(Axi4PC_asr_inline_out[56]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \gen_deflt_chks.ASR_5_i_1 
       (.I0(\awcache_qq_reg[3] [2]),
        .I1(\awcache_qq_reg[3] [3]),
        .I2(awvalid_qq),
        .I3(\awcache_qq_reg[3] [1]),
        .O(ASR_50));
  FDRE \gen_deflt_chks.ASR_5_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_50),
        .Q(Axi4PC_asr_inline_out[4]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.ASR_61_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_610),
        .Q(Axi4PC_asr_inline_out[60]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_63_i_1 
       (.I0(p_0_in5_in),
        .I1(\gen_deflt_chks.RDATA_stage_2_eq ),
        .O(\gen_deflt_chks.ASR_63_i_1_n_0 ));
  FDRE \gen_deflt_chks.ASR_63_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ASR_63_i_1_n_0 ),
        .Q(Axi4PC_asr_inline_out[62]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \gen_deflt_chks.ASR_64_i_1 
       (.I0(p_0_in28_in),
        .I1(rid_qq),
        .I2(s92),
        .O(s94s0));
  FDRE \gen_deflt_chks.ASR_64_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s94s0),
        .Q(Axi4PC_asr_inline_out[63]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \gen_deflt_chks.ASR_65_i_1 
       (.I0(p_0_in28_in),
        .I1(rlast_qq),
        .I2(s95),
        .O(s97s0));
  FDRE \gen_deflt_chks.ASR_65_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s97s0),
        .Q(Axi4PC_asr_inline_out[64]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h28AAAA28)) 
    \gen_deflt_chks.ASR_66_i_1 
       (.I0(p_0_in28_in),
        .I1(\rresp_qq_reg[1] [0]),
        .I2(s98[0]),
        .I3(\rresp_qq_reg[1] [1]),
        .I4(s98[1]),
        .O(s100s0));
  FDRE \gen_deflt_chks.ASR_66_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s100s0),
        .Q(Axi4PC_asr_inline_out[65]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_67_i_1 
       (.I0(p_0_in28_in),
        .I1(rvalid_qq),
        .O(s101s0));
  FDRE \gen_deflt_chks.ASR_67_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s101s0),
        .Q(Axi4PC_asr_inline_out[66]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \gen_deflt_chks.ASR_6_i_1 
       (.I0(\gen_deflt_chks.ASR_6_i_2_n_0 ),
        .I1(\awburst_qq_reg[1] [0]),
        .I2(awvalid_qq),
        .I3(\awburst_qq_reg[1] [1]),
        .O(ASR_60));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_deflt_chks.ASR_6_i_2 
       (.I0(data_in[9]),
        .I1(data_in[7]),
        .I2(data_in[10]),
        .I3(data_in[8]),
        .O(\gen_deflt_chks.ASR_6_i_2_n_0 ));
  FDRE \gen_deflt_chks.ASR_6_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_60),
        .Q(Axi4PC_asr_inline_out[5]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_74_i_1 
       (.I0(p_0_in17_in),
        .I1(\gen_deflt_chks.AWUSER_stage_2_eq ),
        .O(\gen_deflt_chks.ASR_74_i_1_n_0 ));
  FDRE \gen_deflt_chks.ASR_74_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ASR_74_i_1_n_0 ),
        .Q(Axi4PC_asr_inline_out[73]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_75_i_1 
       (.I0(p_0_in14_in),
        .I1(\gen_deflt_chks.WUSER_stage_2_eq ),
        .O(\gen_deflt_chks.ASR_75_i_1_n_0 ));
  FDRE \gen_deflt_chks.ASR_75_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ASR_75_i_1_n_0 ),
        .Q(Axi4PC_asr_inline_out[74]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_76_i_1 
       (.I0(p_0_in11_in),
        .I1(\gen_deflt_chks.BUSER_stage_2_eq ),
        .O(\gen_deflt_chks.ASR_76_i_1_n_0 ));
  FDRE \gen_deflt_chks.ASR_76_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ASR_76_i_1_n_0 ),
        .Q(Axi4PC_asr_inline_out[75]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_77_i_1 
       (.I0(p_0_in8_in),
        .I1(\gen_deflt_chks.ARUSER_stage_2_eq ),
        .O(\gen_deflt_chks.ASR_77_i_1_n_0 ));
  FDRE \gen_deflt_chks.ASR_77_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ASR_77_i_1_n_0 ),
        .Q(Axi4PC_asr_inline_out[76]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.ASR_78_i_1 
       (.I0(p_0_in5_in),
        .I1(\gen_deflt_chks.RUSER_stage_2_eq ),
        .O(\gen_deflt_chks.ASR_78_i_1_n_0 ));
  FDRE \gen_deflt_chks.ASR_78_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.ASR_78_i_1_n_0 ),
        .Q(Axi4PC_asr_inline_out[77]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2A20AAAA)) 
    \gen_deflt_chks.ASR_7_i_1 
       (.I0(\gen_deflt_chks.ASR_7_i_2_n_0 ),
        .I1(data_in[4]),
        .I2(data_in[5]),
        .I3(data_in[6]),
        .I4(data_in[3]),
        .I5(\gen_deflt_chks.ASR_6_i_2_n_0 ),
        .O(ASR_70));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \gen_deflt_chks.ASR_7_i_2 
       (.I0(\awburst_qq_reg[1] [1]),
        .I1(awvalid_qq),
        .I2(\awburst_qq_reg[1] [0]),
        .O(\gen_deflt_chks.ASR_7_i_2_n_0 ));
  FDRE \gen_deflt_chks.ASR_7_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_70),
        .Q(Axi4PC_asr_inline_out[6]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \gen_deflt_chks.AWADDR_eq[0]_i_1 
       (.I0(Q[6]),
        .I1(\gen_deflt_chks.AWADDR_q_reg_n_0_[6] ),
        .I2(Q[7]),
        .I3(\gen_deflt_chks.AWADDR_q_reg_n_0_[7] ),
        .I4(\gen_deflt_chks.AWADDR_eq[0]_i_2_n_0 ),
        .I5(\gen_deflt_chks.AWADDR_eq[0]_i_3_n_0 ),
        .O(\gen_deflt_chks.AWADDR_eq0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.AWADDR_eq[0]_i_2 
       (.I0(\gen_deflt_chks.AWADDR_q_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\gen_deflt_chks.AWADDR_q_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\gen_deflt_chks.AWADDR_q_reg_n_0_[1] ),
        .O(\gen_deflt_chks.AWADDR_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.AWADDR_eq[0]_i_3 
       (.I0(\gen_deflt_chks.AWADDR_q_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\gen_deflt_chks.AWADDR_q_reg_n_0_[4] ),
        .I4(Q[5]),
        .I5(\gen_deflt_chks.AWADDR_q_reg_n_0_[5] ),
        .O(\gen_deflt_chks.AWADDR_eq[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \gen_deflt_chks.AWADDR_eq[1]_i_1 
       (.I0(\gen_deflt_chks.AWADDR_q1 [3]),
        .I1(Q[15]),
        .I2(\gen_deflt_chks.AWADDR_q1 [2]),
        .I3(Q[14]),
        .I4(\gen_deflt_chks.AWADDR_eq[1]_i_2_n_0 ),
        .I5(\gen_deflt_chks.AWADDR_eq[1]_i_3_n_0 ),
        .O(\gen_deflt_chks.AWADDR_eq0108_out ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.AWADDR_eq[1]_i_2 
       (.I0(p_0_in106_in[0]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_0_in106_in[1]),
        .I4(Q[10]),
        .I5(p_0_in106_in[2]),
        .O(\gen_deflt_chks.AWADDR_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.AWADDR_eq[1]_i_3 
       (.I0(p_0_in106_in[3]),
        .I1(Q[11]),
        .I2(\gen_deflt_chks.AWADDR_q1 [1]),
        .I3(Q[13]),
        .I4(\gen_deflt_chks.AWADDR_q1 [0]),
        .I5(Q[12]),
        .O(\gen_deflt_chks.AWADDR_eq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \gen_deflt_chks.AWADDR_eq[2]_i_1 
       (.I0(\gen_deflt_chks.AWADDR_q1 [10]),
        .I1(Q[22]),
        .I2(\gen_deflt_chks.AWADDR_q1 [11]),
        .I3(Q[23]),
        .I4(\gen_deflt_chks.AWADDR_eq[2]_i_2_n_0 ),
        .I5(\gen_deflt_chks.AWADDR_eq[2]_i_3_n_0 ),
        .O(\gen_deflt_chks.AWADDR_eq0111_out ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.AWADDR_eq[2]_i_2 
       (.I0(Q[16]),
        .I1(\gen_deflt_chks.AWADDR_q1 [4]),
        .I2(\gen_deflt_chks.AWADDR_q1 [5]),
        .I3(Q[17]),
        .I4(\gen_deflt_chks.AWADDR_q1 [6]),
        .I5(Q[18]),
        .O(\gen_deflt_chks.AWADDR_eq[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.AWADDR_eq[2]_i_3 
       (.I0(Q[19]),
        .I1(\gen_deflt_chks.AWADDR_q1 [7]),
        .I2(\gen_deflt_chks.AWADDR_q1 [9]),
        .I3(Q[21]),
        .I4(\gen_deflt_chks.AWADDR_q1 [8]),
        .I5(Q[20]),
        .O(\gen_deflt_chks.AWADDR_eq[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \gen_deflt_chks.AWADDR_eq[3]_i_1 
       (.I0(\gen_deflt_chks.AWADDR_q1 [19]),
        .I1(Q[31]),
        .I2(\gen_deflt_chks.AWADDR_q1 [18]),
        .I3(Q[30]),
        .I4(\gen_deflt_chks.AWADDR_eq[3]_i_2_n_0 ),
        .I5(\gen_deflt_chks.AWADDR_eq[3]_i_3_n_0 ),
        .O(\gen_deflt_chks.AWADDR_eq0114_out ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.AWADDR_eq[3]_i_2 
       (.I0(Q[24]),
        .I1(\gen_deflt_chks.AWADDR_q1 [12]),
        .I2(\gen_deflt_chks.AWADDR_q1 [14]),
        .I3(Q[26]),
        .I4(\gen_deflt_chks.AWADDR_q1 [13]),
        .I5(Q[25]),
        .O(\gen_deflt_chks.AWADDR_eq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.AWADDR_eq[3]_i_3 
       (.I0(Q[27]),
        .I1(\gen_deflt_chks.AWADDR_q1 [15]),
        .I2(\gen_deflt_chks.AWADDR_q1 [16]),
        .I3(Q[28]),
        .I4(\gen_deflt_chks.AWADDR_q1 [17]),
        .I5(Q[29]),
        .O(\gen_deflt_chks.AWADDR_eq[3]_i_3_n_0 ));
  FDRE \gen_deflt_chks.AWADDR_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.AWADDR_eq0 ),
        .Q(\gen_deflt_chks.AWADDR_eq [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.AWADDR_eq0108_out ),
        .Q(\gen_deflt_chks.AWADDR_eq [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_eq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.AWADDR_eq0111_out ),
        .Q(\gen_deflt_chks.AWADDR_eq [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_eq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.AWADDR_eq0114_out ),
        .Q(\gen_deflt_chks.AWADDR_eq [3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(\gen_deflt_chks.AWADDR_q1 [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(\gen_deflt_chks.AWADDR_q1 [10]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(\gen_deflt_chks.AWADDR_q1 [11]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(\gen_deflt_chks.AWADDR_q1 [12]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(\gen_deflt_chks.AWADDR_q1 [13]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(\gen_deflt_chks.AWADDR_q1 [14]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(\gen_deflt_chks.AWADDR_q1 [15]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(\gen_deflt_chks.AWADDR_q1 [16]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(\gen_deflt_chks.AWADDR_q1 [17]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(\gen_deflt_chks.AWADDR_q1 [18]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(\gen_deflt_chks.AWADDR_q1 [19]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(\gen_deflt_chks.AWADDR_q1 [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(\gen_deflt_chks.AWADDR_q1 [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(\gen_deflt_chks.AWADDR_q1 [3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(\gen_deflt_chks.AWADDR_q1 [4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(\gen_deflt_chks.AWADDR_q1 [5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(\gen_deflt_chks.AWADDR_q1 [6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(\gen_deflt_chks.AWADDR_q1 [7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(\gen_deflt_chks.AWADDR_q1 [8]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(\gen_deflt_chks.AWADDR_q1 [9]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\gen_deflt_chks.AWADDR_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(p_0_in106_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(p_0_in106_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\gen_deflt_chks.AWADDR_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\gen_deflt_chks.AWADDR_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\gen_deflt_chks.AWADDR_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\gen_deflt_chks.AWADDR_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\gen_deflt_chks.AWADDR_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\gen_deflt_chks.AWADDR_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\gen_deflt_chks.AWADDR_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(p_0_in106_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(p_0_in106_in[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_deflt_chks.AWADDR_stage_1_eq[0]_i_1 
       (.I0(\gen_deflt_chks.AWADDR_eq [1]),
        .I1(\gen_deflt_chks.AWADDR_eq [0]),
        .I2(\gen_deflt_chks.AWADDR_eq [3]),
        .I3(\gen_deflt_chks.AWADDR_eq [2]),
        .O(\gen_deflt_chks.AWADDR_stage_1_eq[0]_i_1_n_0 ));
  FDRE \gen_deflt_chks.AWADDR_stage_1_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.AWADDR_stage_1_eq[0]_i_1_n_0 ),
        .Q(\gen_deflt_chks.AWADDR_stage_1_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWADDR_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.AWADDR_stage_1_eq ),
        .Q(\gen_deflt_chks.AWADDR_stage_2_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.AWUSER_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awuser_qq),
        .Q(\gen_deflt_chks.AWUSER_q ),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/i_Axi4PC_asr_inline/gen_deflt_chks.AWUSER_stage_1_eq_reg " *) 
  (* srl_name = "inst/\CORE/i_Axi4PC_asr_inline/gen_deflt_chks.AWUSER_stage_1_eq_reg[0]_srl2 " *) 
  SRL16E \gen_deflt_chks.AWUSER_stage_1_eq_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(\gen_deflt_chks.AWUSER_eq0 ),
        .Q(\gen_deflt_chks.AWUSER_stage_1_eq_reg[0]_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_deflt_chks.AWUSER_stage_1_eq_reg[0]_srl2_i_1 
       (.I0(\gen_deflt_chks.AWUSER_q ),
        .I1(awuser_qq),
        .O(\gen_deflt_chks.AWUSER_eq0 ));
  FDRE \gen_deflt_chks.AWUSER_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.AWUSER_stage_1_eq_reg[0]_srl2_n_0 ),
        .Q(\gen_deflt_chks.AWUSER_stage_2_eq ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_18 
       (.I0(\arlen_qq_reg[7] [5]),
        .I1(\arlen_qq_reg[7] [6]),
        .I2(\arsize_qq_reg[2] [1]),
        .I3(\arlen_qq_reg[7] [7]),
        .I4(\arsize_qq_reg[2] [0]),
        .O(\gen_deflt_chks.ArAddrIncr_q1_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_19 
       (.I0(\arlen_qq_reg[7] [4]),
        .I1(\arlen_qq_reg[7] [5]),
        .I2(\arsize_qq_reg[2] [1]),
        .I3(\arlen_qq_reg[7] [6]),
        .I4(\arsize_qq_reg[2] [0]),
        .I5(\arlen_qq_reg[7] [7]),
        .O(\gen_deflt_chks.ArAddrIncr_q1_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_20 
       (.I0(\arlen_qq_reg[7] [3]),
        .I1(\arlen_qq_reg[7] [4]),
        .I2(\arsize_qq_reg[2] [1]),
        .I3(\arlen_qq_reg[7] [5]),
        .I4(\arsize_qq_reg[2] [0]),
        .I5(\arlen_qq_reg[7] [6]),
        .O(\gen_deflt_chks.ArAddrIncr_q1_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_21 
       (.I0(\arlen_qq_reg[7] [7]),
        .I1(\arsize_qq_reg[2] [0]),
        .I2(\arlen_qq_reg[7] [6]),
        .I3(\arsize_qq_reg[2] [1]),
        .O(\gen_deflt_chks.ArAddrIncr_q1_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_22 
       (.I0(\arlen_qq_reg[7] [2]),
        .I1(\arlen_qq_reg[7] [3]),
        .I2(\arsize_qq_reg[2] [1]),
        .I3(\arlen_qq_reg[7] [4]),
        .I4(\arsize_qq_reg[2] [0]),
        .I5(\arlen_qq_reg[7] [5]),
        .O(\gen_deflt_chks.ArAddrIncr_q1_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_23 
       (.I0(\arlen_qq_reg[7] [1]),
        .I1(\arlen_qq_reg[7] [2]),
        .I2(\arsize_qq_reg[2] [1]),
        .I3(\arlen_qq_reg[7] [3]),
        .I4(\arsize_qq_reg[2] [0]),
        .I5(\arlen_qq_reg[7] [4]),
        .O(\gen_deflt_chks.ArAddrIncr_q1_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_24 
       (.I0(\arlen_qq_reg[7] [0]),
        .I1(\arlen_qq_reg[7] [1]),
        .I2(\arsize_qq_reg[2] [1]),
        .I3(\arlen_qq_reg[7] [2]),
        .I4(\arsize_qq_reg[2] [0]),
        .I5(\arlen_qq_reg[7] [3]),
        .O(\gen_deflt_chks.ArAddrIncr_q1_reg[3]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_25 
       (.I0(\arlen_qq_reg[7] [0]),
        .I1(\arsize_qq_reg[2] [1]),
        .I2(\arlen_qq_reg[7] [1]),
        .I3(\arsize_qq_reg[2] [0]),
        .I4(\arlen_qq_reg[7] [2]),
        .O(\gen_deflt_chks.ArAddrIncr_q1_reg[3]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_26 
       (.I0(\arlen_qq_reg[7] [0]),
        .I1(\arsize_qq_reg[2] [0]),
        .I2(\arlen_qq_reg[7] [1]),
        .O(\gen_deflt_chks.ArAddrIncr_q1_reg[3]_8 ));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[12]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[22]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [10]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[23]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [11]),
        .R(1'b0));
  CARRY8 \gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1 
       (.CI(\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_0 ,\gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_1 ,\gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_2 ,\gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_3 ,\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_CO_UNCONNECTED [3],\gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_5 ,\gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_6 ,\gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(ArAddrIncr[23:16]),
        .S(\araddr_qq_reg[31] [23:16]));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[24]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [12]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[25]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [13]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[26]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [14]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[27]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [15]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[28]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [16]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[29]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [17]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[30]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [18]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[31]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [19]),
        .R(1'b0));
  CARRY8 \gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1 
       (.CI(\gen_deflt_chks.ArAddrIncr_q1_reg[11]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED [7],\gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_n_1 ,\gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_n_2 ,\gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_n_3 ,\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED [3],\gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_n_5 ,\gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_n_6 ,\gen_deflt_chks.ArAddrIncr_q1_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(ArAddrIncr[31:24]),
        .S(\araddr_qq_reg[31] [31:24]));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[13]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[14]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[15]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [3]),
        .R(1'b0));
  CARRY8 \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1 
       (.CI(\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_0 ,\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_1 ,\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_2 ,\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_3 ,\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_CO_UNCONNECTED [3],\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_5 ,\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_6 ,\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_n_7 }),
        .DI({1'b0,\araddr_qq_reg[31] [14:8]}),
        .O({ArAddrIncr[15:12],\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_1_O_UNCONNECTED [3:0]}),
        .S({\araddr_qq_reg[31] [15],\araddr_qq_reg[14] }));
  CARRY8 \gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_0 ,\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_1 ,\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_2 ,\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_3 ,\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_CO_UNCONNECTED [3],\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_5 ,\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_6 ,\gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_n_7 }),
        .DI(\araddr_qq_reg[31] [7:0]),
        .O(\NLW_gen_deflt_chks.ArAddrIncr_q1_reg[3]_i_2_O_UNCONNECTED [7:0]),
        .S(\araddr_qq_reg[7] ));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[16]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[17]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[18]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[19]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[20]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [8]),
        .R(1'b0));
  FDRE \gen_deflt_chks.ArAddrIncr_q1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[21]),
        .Q(\gen_deflt_chks.ArAddrIncr_q1 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_18 
       (.I0(data_in[8]),
        .I1(data_in[9]),
        .I2(data_in[1]),
        .I3(data_in[10]),
        .I4(data_in[0]),
        .O(\gen_deflt_chks.AwAddrIncr_q1_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_19 
       (.I0(data_in[7]),
        .I1(data_in[8]),
        .I2(data_in[1]),
        .I3(data_in[9]),
        .I4(data_in[0]),
        .I5(data_in[10]),
        .O(\gen_deflt_chks.AwAddrIncr_q1_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_20 
       (.I0(data_in[6]),
        .I1(data_in[7]),
        .I2(data_in[1]),
        .I3(data_in[8]),
        .I4(data_in[0]),
        .I5(data_in[9]),
        .O(\gen_deflt_chks.AwAddrIncr_q1_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_21 
       (.I0(data_in[10]),
        .I1(data_in[0]),
        .I2(data_in[9]),
        .I3(data_in[1]),
        .O(\gen_deflt_chks.AwAddrIncr_q1_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_22 
       (.I0(data_in[5]),
        .I1(data_in[6]),
        .I2(data_in[1]),
        .I3(data_in[7]),
        .I4(data_in[0]),
        .I5(data_in[8]),
        .O(\gen_deflt_chks.AwAddrIncr_q1_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_23 
       (.I0(data_in[4]),
        .I1(data_in[5]),
        .I2(data_in[1]),
        .I3(data_in[6]),
        .I4(data_in[0]),
        .I5(data_in[7]),
        .O(\gen_deflt_chks.AwAddrIncr_q1_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_24 
       (.I0(data_in[3]),
        .I1(data_in[4]),
        .I2(data_in[1]),
        .I3(data_in[5]),
        .I4(data_in[0]),
        .I5(data_in[6]),
        .O(\gen_deflt_chks.AwAddrIncr_q1_reg[3]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_25 
       (.I0(data_in[3]),
        .I1(data_in[1]),
        .I2(data_in[4]),
        .I3(data_in[0]),
        .I4(data_in[5]),
        .O(\gen_deflt_chks.AwAddrIncr_q1_reg[3]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_26 
       (.I0(data_in[3]),
        .I1(data_in[0]),
        .I2(data_in[4]),
        .O(\gen_deflt_chks.AwAddrIncr_q1_reg[3]_8 ));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[12]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[22]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [10]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[23]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [11]),
        .R(1'b0));
  CARRY8 \gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1 
       (.CI(\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_0 ,\gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_1 ,\gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_2 ,\gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_3 ,\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_CO_UNCONNECTED [3],\gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_5 ,\gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_6 ,\gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(AwAddrIncr[23:16]),
        .S(Q[23:16]));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[24]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [12]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[25]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [13]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[26]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [14]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[27]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [15]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[28]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [16]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[29]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [17]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[30]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [18]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[31]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [19]),
        .R(1'b0));
  CARRY8 \gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1 
       (.CI(\gen_deflt_chks.AwAddrIncr_q1_reg[11]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED [7],\gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_n_1 ,\gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_n_2 ,\gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_n_3 ,\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED [3],\gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_n_5 ,\gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_n_6 ,\gen_deflt_chks.AwAddrIncr_q1_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(AwAddrIncr[31:24]),
        .S(Q[31:24]));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[13]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[14]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[15]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [3]),
        .R(1'b0));
  CARRY8 \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1 
       (.CI(\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_0 ,\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_1 ,\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_2 ,\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_3 ,\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_CO_UNCONNECTED [3],\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_5 ,\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_6 ,\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_n_7 }),
        .DI({1'b0,Q[14:8]}),
        .O({AwAddrIncr[15:12],\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_1_O_UNCONNECTED [3:0]}),
        .S({Q[15],\awaddr_qq_reg[14] }));
  CARRY8 \gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_0 ,\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_1 ,\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_2 ,\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_3 ,\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_CO_UNCONNECTED [3],\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_5 ,\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_6 ,\gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_n_7 }),
        .DI(Q[7:0]),
        .O(\NLW_gen_deflt_chks.AwAddrIncr_q1_reg[3]_i_2_O_UNCONNECTED [7:0]),
        .S(S));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[16]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[17]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[18]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[19]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[20]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [8]),
        .R(1'b0));
  FDRE \gen_deflt_chks.AwAddrIncr_q1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[21]),
        .Q(\gen_deflt_chks.AwAddrIncr_q1 [9]),
        .R(1'b0));
  FDRE \gen_deflt_chks.BUSER_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(buser_qq),
        .Q(\gen_deflt_chks.BUSER_q ),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/i_Axi4PC_asr_inline/gen_deflt_chks.BUSER_stage_1_eq_reg " *) 
  (* srl_name = "inst/\CORE/i_Axi4PC_asr_inline/gen_deflt_chks.BUSER_stage_1_eq_reg[0]_srl2 " *) 
  SRL16E \gen_deflt_chks.BUSER_stage_1_eq_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(\gen_deflt_chks.BUSER_eq0 ),
        .Q(\gen_deflt_chks.BUSER_stage_1_eq_reg[0]_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_deflt_chks.BUSER_stage_1_eq_reg[0]_srl2_i_1 
       (.I0(\gen_deflt_chks.BUSER_q ),
        .I1(buser_qq),
        .O(\gen_deflt_chks.BUSER_eq0 ));
  FDRE \gen_deflt_chks.BUSER_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.BUSER_stage_1_eq_reg[0]_srl2_n_0 ),
        .Q(\gen_deflt_chks.BUSER_stage_2_eq ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__0/gen_deflt_chks.RDATA_eq[1]_i_1 
       (.I0(\rdata_qq_reg[127] [15]),
        .I1(p_1_in[7]),
        .I2(\rdata_qq_reg[127] [14]),
        .I3(p_1_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__0/gen_deflt_chks.RDATA_eq[1]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__0/gen_deflt_chks.RDATA_eq[1]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq00_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__0/gen_deflt_chks.RDATA_eq[1]_i_2 
       (.I0(p_1_in[3]),
        .I1(\rdata_qq_reg[127] [11]),
        .I2(\rdata_qq_reg[127] [13]),
        .I3(p_1_in[5]),
        .I4(\rdata_qq_reg[127] [12]),
        .I5(p_1_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__0/gen_deflt_chks.RDATA_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__0/gen_deflt_chks.RDATA_eq[1]_i_3 
       (.I0(p_1_in[0]),
        .I1(\rdata_qq_reg[127] [8]),
        .I2(\rdata_qq_reg[127] [10]),
        .I3(p_1_in[2]),
        .I4(\rdata_qq_reg[127] [9]),
        .I5(p_1_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__0/gen_deflt_chks.RDATA_eq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__1/gen_deflt_chks.RDATA_eq[2]_i_1 
       (.I0(\rdata_qq_reg[127] [23]),
        .I1(p_1_in2_in[7]),
        .I2(\rdata_qq_reg[127] [22]),
        .I3(p_1_in2_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__1/gen_deflt_chks.RDATA_eq[2]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__1/gen_deflt_chks.RDATA_eq[2]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq03_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__1/gen_deflt_chks.RDATA_eq[2]_i_2 
       (.I0(p_1_in2_in[3]),
        .I1(\rdata_qq_reg[127] [19]),
        .I2(\rdata_qq_reg[127] [21]),
        .I3(p_1_in2_in[5]),
        .I4(\rdata_qq_reg[127] [20]),
        .I5(p_1_in2_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__1/gen_deflt_chks.RDATA_eq[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__1/gen_deflt_chks.RDATA_eq[2]_i_3 
       (.I0(p_1_in2_in[0]),
        .I1(\rdata_qq_reg[127] [16]),
        .I2(\rdata_qq_reg[127] [18]),
        .I3(p_1_in2_in[2]),
        .I4(\rdata_qq_reg[127] [17]),
        .I5(p_1_in2_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__1/gen_deflt_chks.RDATA_eq[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__10/gen_deflt_chks.RDATA_eq[11]_i_1 
       (.I0(\rdata_qq_reg[127] [95]),
        .I1(p_1_in29_in[7]),
        .I2(\rdata_qq_reg[127] [94]),
        .I3(p_1_in29_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__10/gen_deflt_chks.RDATA_eq[11]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__10/gen_deflt_chks.RDATA_eq[11]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq030_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__10/gen_deflt_chks.RDATA_eq[11]_i_2 
       (.I0(p_1_in29_in[3]),
        .I1(\rdata_qq_reg[127] [91]),
        .I2(\rdata_qq_reg[127] [93]),
        .I3(p_1_in29_in[5]),
        .I4(\rdata_qq_reg[127] [92]),
        .I5(p_1_in29_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__10/gen_deflt_chks.RDATA_eq[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__10/gen_deflt_chks.RDATA_eq[11]_i_3 
       (.I0(p_1_in29_in[0]),
        .I1(\rdata_qq_reg[127] [88]),
        .I2(\rdata_qq_reg[127] [90]),
        .I3(p_1_in29_in[2]),
        .I4(\rdata_qq_reg[127] [89]),
        .I5(p_1_in29_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__10/gen_deflt_chks.RDATA_eq[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__11/gen_deflt_chks.RDATA_eq[12]_i_1 
       (.I0(\rdata_qq_reg[127] [103]),
        .I1(p_1_in32_in[7]),
        .I2(\rdata_qq_reg[127] [102]),
        .I3(p_1_in32_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__11/gen_deflt_chks.RDATA_eq[12]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__11/gen_deflt_chks.RDATA_eq[12]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq033_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__11/gen_deflt_chks.RDATA_eq[12]_i_2 
       (.I0(p_1_in32_in[3]),
        .I1(\rdata_qq_reg[127] [99]),
        .I2(\rdata_qq_reg[127] [101]),
        .I3(p_1_in32_in[5]),
        .I4(\rdata_qq_reg[127] [100]),
        .I5(p_1_in32_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__11/gen_deflt_chks.RDATA_eq[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__11/gen_deflt_chks.RDATA_eq[12]_i_3 
       (.I0(p_1_in32_in[0]),
        .I1(\rdata_qq_reg[127] [96]),
        .I2(\rdata_qq_reg[127] [98]),
        .I3(p_1_in32_in[2]),
        .I4(\rdata_qq_reg[127] [97]),
        .I5(p_1_in32_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__11/gen_deflt_chks.RDATA_eq[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__12/gen_deflt_chks.RDATA_eq[13]_i_1 
       (.I0(\rdata_qq_reg[127] [111]),
        .I1(p_1_in35_in[7]),
        .I2(\rdata_qq_reg[127] [110]),
        .I3(p_1_in35_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__12/gen_deflt_chks.RDATA_eq[13]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__12/gen_deflt_chks.RDATA_eq[13]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq036_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__12/gen_deflt_chks.RDATA_eq[13]_i_2 
       (.I0(p_1_in35_in[3]),
        .I1(\rdata_qq_reg[127] [107]),
        .I2(\rdata_qq_reg[127] [109]),
        .I3(p_1_in35_in[5]),
        .I4(\rdata_qq_reg[127] [108]),
        .I5(p_1_in35_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__12/gen_deflt_chks.RDATA_eq[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__12/gen_deflt_chks.RDATA_eq[13]_i_3 
       (.I0(p_1_in35_in[0]),
        .I1(\rdata_qq_reg[127] [104]),
        .I2(\rdata_qq_reg[127] [106]),
        .I3(p_1_in35_in[2]),
        .I4(\rdata_qq_reg[127] [105]),
        .I5(p_1_in35_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__12/gen_deflt_chks.RDATA_eq[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__13/gen_deflt_chks.RDATA_eq[14]_i_1 
       (.I0(\rdata_qq_reg[127] [119]),
        .I1(p_1_in38_in[7]),
        .I2(\rdata_qq_reg[127] [118]),
        .I3(p_1_in38_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__13/gen_deflt_chks.RDATA_eq[14]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__13/gen_deflt_chks.RDATA_eq[14]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq039_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__13/gen_deflt_chks.RDATA_eq[14]_i_2 
       (.I0(p_1_in38_in[3]),
        .I1(\rdata_qq_reg[127] [115]),
        .I2(\rdata_qq_reg[127] [117]),
        .I3(p_1_in38_in[5]),
        .I4(\rdata_qq_reg[127] [116]),
        .I5(p_1_in38_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__13/gen_deflt_chks.RDATA_eq[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__13/gen_deflt_chks.RDATA_eq[14]_i_3 
       (.I0(p_1_in38_in[0]),
        .I1(\rdata_qq_reg[127] [112]),
        .I2(\rdata_qq_reg[127] [114]),
        .I3(p_1_in38_in[2]),
        .I4(\rdata_qq_reg[127] [113]),
        .I5(p_1_in38_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__13/gen_deflt_chks.RDATA_eq[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__14/gen_deflt_chks.RDATA_eq[15]_i_1 
       (.I0(\rdata_qq_reg[127] [127]),
        .I1(p_1_in41_in[7]),
        .I2(\rdata_qq_reg[127] [126]),
        .I3(p_1_in41_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__14/gen_deflt_chks.RDATA_eq[15]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__14/gen_deflt_chks.RDATA_eq[15]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq042_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__14/gen_deflt_chks.RDATA_eq[15]_i_2 
       (.I0(p_1_in41_in[3]),
        .I1(\rdata_qq_reg[127] [123]),
        .I2(\rdata_qq_reg[127] [125]),
        .I3(p_1_in41_in[5]),
        .I4(\rdata_qq_reg[127] [124]),
        .I5(p_1_in41_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__14/gen_deflt_chks.RDATA_eq[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__14/gen_deflt_chks.RDATA_eq[15]_i_3 
       (.I0(p_1_in41_in[0]),
        .I1(\rdata_qq_reg[127] [120]),
        .I2(\rdata_qq_reg[127] [122]),
        .I3(p_1_in41_in[2]),
        .I4(\rdata_qq_reg[127] [121]),
        .I5(p_1_in41_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__14/gen_deflt_chks.RDATA_eq[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__2/gen_deflt_chks.RDATA_eq[3]_i_1 
       (.I0(\rdata_qq_reg[127] [31]),
        .I1(p_1_in5_in[7]),
        .I2(\rdata_qq_reg[127] [30]),
        .I3(p_1_in5_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__2/gen_deflt_chks.RDATA_eq[3]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__2/gen_deflt_chks.RDATA_eq[3]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq06_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__2/gen_deflt_chks.RDATA_eq[3]_i_2 
       (.I0(p_1_in5_in[3]),
        .I1(\rdata_qq_reg[127] [27]),
        .I2(\rdata_qq_reg[127] [29]),
        .I3(p_1_in5_in[5]),
        .I4(\rdata_qq_reg[127] [28]),
        .I5(p_1_in5_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__2/gen_deflt_chks.RDATA_eq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__2/gen_deflt_chks.RDATA_eq[3]_i_3 
       (.I0(p_1_in5_in[0]),
        .I1(\rdata_qq_reg[127] [24]),
        .I2(\rdata_qq_reg[127] [26]),
        .I3(p_1_in5_in[2]),
        .I4(\rdata_qq_reg[127] [25]),
        .I5(p_1_in5_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__2/gen_deflt_chks.RDATA_eq[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__3/gen_deflt_chks.RDATA_eq[4]_i_1 
       (.I0(\rdata_qq_reg[127] [39]),
        .I1(p_1_in8_in[7]),
        .I2(\rdata_qq_reg[127] [38]),
        .I3(p_1_in8_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__3/gen_deflt_chks.RDATA_eq[4]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__3/gen_deflt_chks.RDATA_eq[4]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq09_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__3/gen_deflt_chks.RDATA_eq[4]_i_2 
       (.I0(p_1_in8_in[3]),
        .I1(\rdata_qq_reg[127] [35]),
        .I2(\rdata_qq_reg[127] [37]),
        .I3(p_1_in8_in[5]),
        .I4(\rdata_qq_reg[127] [36]),
        .I5(p_1_in8_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__3/gen_deflt_chks.RDATA_eq[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__3/gen_deflt_chks.RDATA_eq[4]_i_3 
       (.I0(p_1_in8_in[0]),
        .I1(\rdata_qq_reg[127] [32]),
        .I2(\rdata_qq_reg[127] [34]),
        .I3(p_1_in8_in[2]),
        .I4(\rdata_qq_reg[127] [33]),
        .I5(p_1_in8_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__3/gen_deflt_chks.RDATA_eq[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__4/gen_deflt_chks.RDATA_eq[5]_i_1 
       (.I0(\rdata_qq_reg[127] [47]),
        .I1(p_1_in11_in[7]),
        .I2(\rdata_qq_reg[127] [46]),
        .I3(p_1_in11_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__4/gen_deflt_chks.RDATA_eq[5]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__4/gen_deflt_chks.RDATA_eq[5]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq012_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__4/gen_deflt_chks.RDATA_eq[5]_i_2 
       (.I0(p_1_in11_in[3]),
        .I1(\rdata_qq_reg[127] [43]),
        .I2(\rdata_qq_reg[127] [45]),
        .I3(p_1_in11_in[5]),
        .I4(\rdata_qq_reg[127] [44]),
        .I5(p_1_in11_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__4/gen_deflt_chks.RDATA_eq[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__4/gen_deflt_chks.RDATA_eq[5]_i_3 
       (.I0(p_1_in11_in[0]),
        .I1(\rdata_qq_reg[127] [40]),
        .I2(\rdata_qq_reg[127] [42]),
        .I3(p_1_in11_in[2]),
        .I4(\rdata_qq_reg[127] [41]),
        .I5(p_1_in11_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__4/gen_deflt_chks.RDATA_eq[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__5/gen_deflt_chks.RDATA_eq[6]_i_1 
       (.I0(\rdata_qq_reg[127] [55]),
        .I1(p_1_in14_in[7]),
        .I2(\rdata_qq_reg[127] [54]),
        .I3(p_1_in14_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__5/gen_deflt_chks.RDATA_eq[6]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__5/gen_deflt_chks.RDATA_eq[6]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq015_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__5/gen_deflt_chks.RDATA_eq[6]_i_2 
       (.I0(p_1_in14_in[3]),
        .I1(\rdata_qq_reg[127] [51]),
        .I2(\rdata_qq_reg[127] [53]),
        .I3(p_1_in14_in[5]),
        .I4(\rdata_qq_reg[127] [52]),
        .I5(p_1_in14_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__5/gen_deflt_chks.RDATA_eq[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__5/gen_deflt_chks.RDATA_eq[6]_i_3 
       (.I0(p_1_in14_in[0]),
        .I1(\rdata_qq_reg[127] [48]),
        .I2(\rdata_qq_reg[127] [50]),
        .I3(p_1_in14_in[2]),
        .I4(\rdata_qq_reg[127] [49]),
        .I5(p_1_in14_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__5/gen_deflt_chks.RDATA_eq[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__6/gen_deflt_chks.RDATA_eq[7]_i_1 
       (.I0(\rdata_qq_reg[127] [63]),
        .I1(p_1_in17_in[7]),
        .I2(\rdata_qq_reg[127] [62]),
        .I3(p_1_in17_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__6/gen_deflt_chks.RDATA_eq[7]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__6/gen_deflt_chks.RDATA_eq[7]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq018_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__6/gen_deflt_chks.RDATA_eq[7]_i_2 
       (.I0(p_1_in17_in[3]),
        .I1(\rdata_qq_reg[127] [59]),
        .I2(\rdata_qq_reg[127] [61]),
        .I3(p_1_in17_in[5]),
        .I4(\rdata_qq_reg[127] [60]),
        .I5(p_1_in17_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__6/gen_deflt_chks.RDATA_eq[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__6/gen_deflt_chks.RDATA_eq[7]_i_3 
       (.I0(p_1_in17_in[0]),
        .I1(\rdata_qq_reg[127] [56]),
        .I2(\rdata_qq_reg[127] [58]),
        .I3(p_1_in17_in[2]),
        .I4(\rdata_qq_reg[127] [57]),
        .I5(p_1_in17_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__6/gen_deflt_chks.RDATA_eq[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__7/gen_deflt_chks.RDATA_eq[8]_i_1 
       (.I0(\rdata_qq_reg[127] [71]),
        .I1(p_1_in20_in[7]),
        .I2(\rdata_qq_reg[127] [70]),
        .I3(p_1_in20_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__7/gen_deflt_chks.RDATA_eq[8]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__7/gen_deflt_chks.RDATA_eq[8]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq021_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__7/gen_deflt_chks.RDATA_eq[8]_i_2 
       (.I0(p_1_in20_in[3]),
        .I1(\rdata_qq_reg[127] [67]),
        .I2(\rdata_qq_reg[127] [69]),
        .I3(p_1_in20_in[5]),
        .I4(\rdata_qq_reg[127] [68]),
        .I5(p_1_in20_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__7/gen_deflt_chks.RDATA_eq[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__7/gen_deflt_chks.RDATA_eq[8]_i_3 
       (.I0(p_1_in20_in[0]),
        .I1(\rdata_qq_reg[127] [64]),
        .I2(\rdata_qq_reg[127] [66]),
        .I3(p_1_in20_in[2]),
        .I4(\rdata_qq_reg[127] [65]),
        .I5(p_1_in20_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__7/gen_deflt_chks.RDATA_eq[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__8/gen_deflt_chks.RDATA_eq[9]_i_1 
       (.I0(\rdata_qq_reg[127] [79]),
        .I1(p_1_in23_in[7]),
        .I2(\rdata_qq_reg[127] [78]),
        .I3(p_1_in23_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__8/gen_deflt_chks.RDATA_eq[9]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__8/gen_deflt_chks.RDATA_eq[9]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq024_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__8/gen_deflt_chks.RDATA_eq[9]_i_2 
       (.I0(p_1_in23_in[3]),
        .I1(\rdata_qq_reg[127] [75]),
        .I2(\rdata_qq_reg[127] [77]),
        .I3(p_1_in23_in[5]),
        .I4(\rdata_qq_reg[127] [76]),
        .I5(p_1_in23_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__8/gen_deflt_chks.RDATA_eq[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__8/gen_deflt_chks.RDATA_eq[9]_i_3 
       (.I0(p_1_in23_in[0]),
        .I1(\rdata_qq_reg[127] [72]),
        .I2(\rdata_qq_reg[127] [74]),
        .I3(p_1_in23_in[2]),
        .I4(\rdata_qq_reg[127] [73]),
        .I5(p_1_in23_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__8/gen_deflt_chks.RDATA_eq[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq0_inferred__9/gen_deflt_chks.RDATA_eq[10]_i_1 
       (.I0(\rdata_qq_reg[127] [87]),
        .I1(p_1_in26_in[7]),
        .I2(\rdata_qq_reg[127] [86]),
        .I3(p_1_in26_in[6]),
        .I4(\gen_deflt_chks.RDATA_eq0_inferred__9/gen_deflt_chks.RDATA_eq[10]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq0_inferred__9/gen_deflt_chks.RDATA_eq[10]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq027_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__9/gen_deflt_chks.RDATA_eq[10]_i_2 
       (.I0(p_1_in26_in[3]),
        .I1(\rdata_qq_reg[127] [83]),
        .I2(\rdata_qq_reg[127] [85]),
        .I3(p_1_in26_in[5]),
        .I4(\rdata_qq_reg[127] [84]),
        .I5(p_1_in26_in[4]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__9/gen_deflt_chks.RDATA_eq[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq0_inferred__9/gen_deflt_chks.RDATA_eq[10]_i_3 
       (.I0(p_1_in26_in[0]),
        .I1(\rdata_qq_reg[127] [80]),
        .I2(\rdata_qq_reg[127] [82]),
        .I3(p_1_in26_in[2]),
        .I4(\rdata_qq_reg[127] [81]),
        .I5(p_1_in26_in[1]),
        .O(\gen_deflt_chks.RDATA_eq0_inferred__9/gen_deflt_chks.RDATA_eq[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.RDATA_eq[0]_i_1 
       (.I0(\rdata_qq_reg[127] [7]),
        .I1(\gen_deflt_chks.RDATA_q_reg_n_0_[7] ),
        .I2(\rdata_qq_reg[127] [6]),
        .I3(\gen_deflt_chks.RDATA_q_reg_n_0_[6] ),
        .I4(\gen_deflt_chks.RDATA_eq[0]_i_2_n_0 ),
        .I5(\gen_deflt_chks.RDATA_eq[0]_i_3_n_0 ),
        .O(\gen_deflt_chks.RDATA_eq0__0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq[0]_i_2 
       (.I0(\gen_deflt_chks.RDATA_q_reg_n_0_[3] ),
        .I1(\rdata_qq_reg[127] [3]),
        .I2(\rdata_qq_reg[127] [5]),
        .I3(\gen_deflt_chks.RDATA_q_reg_n_0_[5] ),
        .I4(\rdata_qq_reg[127] [4]),
        .I5(\gen_deflt_chks.RDATA_q_reg_n_0_[4] ),
        .O(\gen_deflt_chks.RDATA_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.RDATA_eq[0]_i_3 
       (.I0(\gen_deflt_chks.RDATA_q_reg_n_0_[0] ),
        .I1(\rdata_qq_reg[127] [0]),
        .I2(\rdata_qq_reg[127] [2]),
        .I3(\gen_deflt_chks.RDATA_q_reg_n_0_[2] ),
        .I4(\rdata_qq_reg[127] [1]),
        .I5(\gen_deflt_chks.RDATA_q_reg_n_0_[1] ),
        .O(\gen_deflt_chks.RDATA_eq[0]_i_3_n_0 ));
  FDRE \gen_deflt_chks.RDATA_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq0__0 ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq027_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq030_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq033_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq036_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq039_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq042_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq00_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq03_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq06_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq09_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq012_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq015_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq018_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq021_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_eq_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_eq024_out ),
        .Q(\gen_deflt_chks.RDATA_eq_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [0]),
        .Q(\gen_deflt_chks.RDATA_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[100] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [100]),
        .Q(p_1_in32_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[101] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [101]),
        .Q(p_1_in32_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[102] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [102]),
        .Q(p_1_in32_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[103] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [103]),
        .Q(p_1_in32_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[104] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [104]),
        .Q(p_1_in35_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[105] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [105]),
        .Q(p_1_in35_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[106] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [106]),
        .Q(p_1_in35_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[107] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [107]),
        .Q(p_1_in35_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[108] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [108]),
        .Q(p_1_in35_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[109] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [109]),
        .Q(p_1_in35_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [10]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[110] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [110]),
        .Q(p_1_in35_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[111] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [111]),
        .Q(p_1_in35_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[112] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [112]),
        .Q(p_1_in38_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[113] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [113]),
        .Q(p_1_in38_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[114] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [114]),
        .Q(p_1_in38_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[115] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [115]),
        .Q(p_1_in38_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[116] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [116]),
        .Q(p_1_in38_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[117] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [117]),
        .Q(p_1_in38_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[118] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [118]),
        .Q(p_1_in38_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[119] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [119]),
        .Q(p_1_in38_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [11]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[120] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [120]),
        .Q(p_1_in41_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[121] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [121]),
        .Q(p_1_in41_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[122] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [122]),
        .Q(p_1_in41_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[123] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [123]),
        .Q(p_1_in41_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[124] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [124]),
        .Q(p_1_in41_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[125] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [125]),
        .Q(p_1_in41_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[126] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [126]),
        .Q(p_1_in41_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[127] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [127]),
        .Q(p_1_in41_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [12]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [13]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [14]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [15]),
        .Q(p_1_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [16]),
        .Q(p_1_in2_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [17]),
        .Q(p_1_in2_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [18]),
        .Q(p_1_in2_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [19]),
        .Q(p_1_in2_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [1]),
        .Q(\gen_deflt_chks.RDATA_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [20]),
        .Q(p_1_in2_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [21]),
        .Q(p_1_in2_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [22]),
        .Q(p_1_in2_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [23]),
        .Q(p_1_in2_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [24]),
        .Q(p_1_in5_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [25]),
        .Q(p_1_in5_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [26]),
        .Q(p_1_in5_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [27]),
        .Q(p_1_in5_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [28]),
        .Q(p_1_in5_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [29]),
        .Q(p_1_in5_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [2]),
        .Q(\gen_deflt_chks.RDATA_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [30]),
        .Q(p_1_in5_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [31]),
        .Q(p_1_in5_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [32]),
        .Q(p_1_in8_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [33]),
        .Q(p_1_in8_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [34]),
        .Q(p_1_in8_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [35]),
        .Q(p_1_in8_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [36]),
        .Q(p_1_in8_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [37]),
        .Q(p_1_in8_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [38]),
        .Q(p_1_in8_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [39]),
        .Q(p_1_in8_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [3]),
        .Q(\gen_deflt_chks.RDATA_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [40]),
        .Q(p_1_in11_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [41]),
        .Q(p_1_in11_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [42]),
        .Q(p_1_in11_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [43]),
        .Q(p_1_in11_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [44]),
        .Q(p_1_in11_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [45]),
        .Q(p_1_in11_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [46]),
        .Q(p_1_in11_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [47]),
        .Q(p_1_in11_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [48]),
        .Q(p_1_in14_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [49]),
        .Q(p_1_in14_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [4]),
        .Q(\gen_deflt_chks.RDATA_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [50]),
        .Q(p_1_in14_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [51]),
        .Q(p_1_in14_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [52]),
        .Q(p_1_in14_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [53]),
        .Q(p_1_in14_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [54]),
        .Q(p_1_in14_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [55]),
        .Q(p_1_in14_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [56]),
        .Q(p_1_in17_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [57]),
        .Q(p_1_in17_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [58]),
        .Q(p_1_in17_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [59]),
        .Q(p_1_in17_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [5]),
        .Q(\gen_deflt_chks.RDATA_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [60]),
        .Q(p_1_in17_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [61]),
        .Q(p_1_in17_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [62]),
        .Q(p_1_in17_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [63]),
        .Q(p_1_in17_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[64] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [64]),
        .Q(p_1_in20_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[65] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [65]),
        .Q(p_1_in20_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[66] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [66]),
        .Q(p_1_in20_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[67] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [67]),
        .Q(p_1_in20_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[68] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [68]),
        .Q(p_1_in20_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[69] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [69]),
        .Q(p_1_in20_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [6]),
        .Q(\gen_deflt_chks.RDATA_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[70] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [70]),
        .Q(p_1_in20_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[71] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [71]),
        .Q(p_1_in20_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[72] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [72]),
        .Q(p_1_in23_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[73] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [73]),
        .Q(p_1_in23_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[74] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [74]),
        .Q(p_1_in23_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[75] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [75]),
        .Q(p_1_in23_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[76] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [76]),
        .Q(p_1_in23_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[77] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [77]),
        .Q(p_1_in23_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[78] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [78]),
        .Q(p_1_in23_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[79] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [79]),
        .Q(p_1_in23_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [7]),
        .Q(\gen_deflt_chks.RDATA_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[80] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [80]),
        .Q(p_1_in26_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[81] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [81]),
        .Q(p_1_in26_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[82] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [82]),
        .Q(p_1_in26_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[83] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [83]),
        .Q(p_1_in26_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[84] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [84]),
        .Q(p_1_in26_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[85] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [85]),
        .Q(p_1_in26_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[86] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [86]),
        .Q(p_1_in26_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[87] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [87]),
        .Q(p_1_in26_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[88] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [88]),
        .Q(p_1_in29_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[89] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [89]),
        .Q(p_1_in29_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [8]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[90] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [90]),
        .Q(p_1_in29_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[91] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [91]),
        .Q(p_1_in29_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[92] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [92]),
        .Q(p_1_in29_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[93] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [93]),
        .Q(p_1_in29_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[94] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [94]),
        .Q(p_1_in29_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[95] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [95]),
        .Q(p_1_in29_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[96] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [96]),
        .Q(p_1_in32_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[97] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [97]),
        .Q(p_1_in32_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[98] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [98]),
        .Q(p_1_in32_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[99] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [99]),
        .Q(p_1_in32_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_qq_reg[127] [9]),
        .Q(p_1_in[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00008000)) 
    \gen_deflt_chks.RDATA_stage_1_eq0_inferred__0/gen_deflt_chks.RDATA_stage_1_eq[1]_i_1 
       (.I0(\gen_deflt_chks.RDATA_eq_reg_n_0_[15] ),
        .I1(\gen_deflt_chks.RDATA_eq_reg_n_0_[14] ),
        .I2(\gen_deflt_chks.RDATA_eq_reg_n_0_[12] ),
        .I3(\gen_deflt_chks.RDATA_eq_reg_n_0_[13] ),
        .I4(\gen_deflt_chks.RDATA_stage_1_eq0_inferred__0/gen_deflt_chks.RDATA_stage_1_eq[1]_i_2_n_0 ),
        .O(\gen_deflt_chks.RDATA_stage_1_eq0__0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_deflt_chks.RDATA_stage_1_eq0_inferred__0/gen_deflt_chks.RDATA_stage_1_eq[1]_i_2 
       (.I0(\gen_deflt_chks.RDATA_eq_reg_n_0_[9] ),
        .I1(\gen_deflt_chks.RDATA_eq_reg_n_0_[8] ),
        .I2(\gen_deflt_chks.RDATA_eq_reg_n_0_[11] ),
        .I3(\gen_deflt_chks.RDATA_eq_reg_n_0_[10] ),
        .O(\gen_deflt_chks.RDATA_stage_1_eq0_inferred__0/gen_deflt_chks.RDATA_stage_1_eq[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \gen_deflt_chks.RDATA_stage_1_eq[0]_i_1 
       (.I0(\gen_deflt_chks.RDATA_eq_reg_n_0_[7] ),
        .I1(\gen_deflt_chks.RDATA_eq_reg_n_0_[6] ),
        .I2(\gen_deflt_chks.RDATA_eq_reg_n_0_[4] ),
        .I3(\gen_deflt_chks.RDATA_eq_reg_n_0_[5] ),
        .I4(\gen_deflt_chks.RDATA_stage_1_eq[0]_i_2_n_0 ),
        .O(\gen_deflt_chks.RDATA_stage_1_eq[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_deflt_chks.RDATA_stage_1_eq[0]_i_2 
       (.I0(\gen_deflt_chks.RDATA_eq_reg_n_0_[1] ),
        .I1(\gen_deflt_chks.RDATA_eq_reg_n_0_[0] ),
        .I2(\gen_deflt_chks.RDATA_eq_reg_n_0_[3] ),
        .I3(\gen_deflt_chks.RDATA_eq_reg_n_0_[2] ),
        .O(\gen_deflt_chks.RDATA_stage_1_eq[0]_i_2_n_0 ));
  FDRE \gen_deflt_chks.RDATA_stage_1_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_stage_1_eq[0]_i_1_n_0 ),
        .Q(\gen_deflt_chks.RDATA_stage_1_eq [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.RDATA_stage_1_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_stage_1_eq0__0 ),
        .Q(\gen_deflt_chks.RDATA_stage_1_eq [1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_deflt_chks.RDATA_stage_2_eq[0]_i_1 
       (.I0(\gen_deflt_chks.RDATA_stage_1_eq [0]),
        .I1(\gen_deflt_chks.RDATA_stage_1_eq [1]),
        .O(\gen_deflt_chks.RDATA_stage_2_eq[0]_i_1_n_0 ));
  FDRE \gen_deflt_chks.RDATA_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RDATA_stage_2_eq[0]_i_1_n_0 ),
        .Q(\gen_deflt_chks.RDATA_stage_2_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.RUSER_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(ruser_qq),
        .Q(\gen_deflt_chks.RUSER_q ),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/i_Axi4PC_asr_inline/gen_deflt_chks.RUSER_stage_1_eq_reg " *) 
  (* srl_name = "inst/\CORE/i_Axi4PC_asr_inline/gen_deflt_chks.RUSER_stage_1_eq_reg[0]_srl2 " *) 
  SRL16E \gen_deflt_chks.RUSER_stage_1_eq_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(\gen_deflt_chks.RUSER_eq0 ),
        .Q(\gen_deflt_chks.RUSER_stage_1_eq_reg[0]_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_deflt_chks.RUSER_stage_1_eq_reg[0]_srl2_i_1 
       (.I0(\gen_deflt_chks.RUSER_q ),
        .I1(ruser_qq),
        .O(\gen_deflt_chks.RUSER_eq0 ));
  FDRE \gen_deflt_chks.RUSER_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.RUSER_stage_1_eq_reg[0]_srl2_n_0 ),
        .Q(\gen_deflt_chks.RUSER_stage_2_eq ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__0/gen_deflt_chks.WDATA_eq[1]_i_1 
       (.I0(\wdata_qq_reg[127] [15]),
        .I1(p_1_in60_in[7]),
        .I2(\wdata_qq_reg[127] [14]),
        .I3(p_1_in60_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__0/gen_deflt_chks.WDATA_eq[1]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__0/gen_deflt_chks.WDATA_eq[1]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq061_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__0/gen_deflt_chks.WDATA_eq[1]_i_2 
       (.I0(p_1_in60_in[3]),
        .I1(\wdata_qq_reg[127] [11]),
        .I2(\wdata_qq_reg[127] [13]),
        .I3(p_1_in60_in[5]),
        .I4(\wdata_qq_reg[127] [12]),
        .I5(p_1_in60_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__0/gen_deflt_chks.WDATA_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__0/gen_deflt_chks.WDATA_eq[1]_i_3 
       (.I0(p_1_in60_in[0]),
        .I1(\wdata_qq_reg[127] [8]),
        .I2(\wdata_qq_reg[127] [10]),
        .I3(p_1_in60_in[2]),
        .I4(\wdata_qq_reg[127] [9]),
        .I5(p_1_in60_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__0/gen_deflt_chks.WDATA_eq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__1/gen_deflt_chks.WDATA_eq[2]_i_1 
       (.I0(\wdata_qq_reg[127] [23]),
        .I1(p_1_in63_in[7]),
        .I2(\wdata_qq_reg[127] [22]),
        .I3(p_1_in63_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__1/gen_deflt_chks.WDATA_eq[2]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__1/gen_deflt_chks.WDATA_eq[2]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq064_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__1/gen_deflt_chks.WDATA_eq[2]_i_2 
       (.I0(p_1_in63_in[3]),
        .I1(\wdata_qq_reg[127] [19]),
        .I2(\wdata_qq_reg[127] [21]),
        .I3(p_1_in63_in[5]),
        .I4(\wdata_qq_reg[127] [20]),
        .I5(p_1_in63_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__1/gen_deflt_chks.WDATA_eq[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__1/gen_deflt_chks.WDATA_eq[2]_i_3 
       (.I0(p_1_in63_in[0]),
        .I1(\wdata_qq_reg[127] [16]),
        .I2(\wdata_qq_reg[127] [18]),
        .I3(p_1_in63_in[2]),
        .I4(\wdata_qq_reg[127] [17]),
        .I5(p_1_in63_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__1/gen_deflt_chks.WDATA_eq[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__10/gen_deflt_chks.WDATA_eq[11]_i_1 
       (.I0(\wdata_qq_reg[127] [95]),
        .I1(p_1_in90_in[7]),
        .I2(\wdata_qq_reg[127] [94]),
        .I3(p_1_in90_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__10/gen_deflt_chks.WDATA_eq[11]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__10/gen_deflt_chks.WDATA_eq[11]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq091_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__10/gen_deflt_chks.WDATA_eq[11]_i_2 
       (.I0(p_1_in90_in[3]),
        .I1(\wdata_qq_reg[127] [91]),
        .I2(\wdata_qq_reg[127] [93]),
        .I3(p_1_in90_in[5]),
        .I4(\wdata_qq_reg[127] [92]),
        .I5(p_1_in90_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__10/gen_deflt_chks.WDATA_eq[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__10/gen_deflt_chks.WDATA_eq[11]_i_3 
       (.I0(p_1_in90_in[0]),
        .I1(\wdata_qq_reg[127] [88]),
        .I2(\wdata_qq_reg[127] [90]),
        .I3(p_1_in90_in[2]),
        .I4(\wdata_qq_reg[127] [89]),
        .I5(p_1_in90_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__10/gen_deflt_chks.WDATA_eq[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__11/gen_deflt_chks.WDATA_eq[12]_i_1 
       (.I0(\wdata_qq_reg[127] [103]),
        .I1(p_1_in93_in[7]),
        .I2(\wdata_qq_reg[127] [102]),
        .I3(p_1_in93_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__11/gen_deflt_chks.WDATA_eq[12]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__11/gen_deflt_chks.WDATA_eq[12]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq094_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__11/gen_deflt_chks.WDATA_eq[12]_i_2 
       (.I0(p_1_in93_in[3]),
        .I1(\wdata_qq_reg[127] [99]),
        .I2(\wdata_qq_reg[127] [101]),
        .I3(p_1_in93_in[5]),
        .I4(\wdata_qq_reg[127] [100]),
        .I5(p_1_in93_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__11/gen_deflt_chks.WDATA_eq[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__11/gen_deflt_chks.WDATA_eq[12]_i_3 
       (.I0(p_1_in93_in[0]),
        .I1(\wdata_qq_reg[127] [96]),
        .I2(\wdata_qq_reg[127] [98]),
        .I3(p_1_in93_in[2]),
        .I4(\wdata_qq_reg[127] [97]),
        .I5(p_1_in93_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__11/gen_deflt_chks.WDATA_eq[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__12/gen_deflt_chks.WDATA_eq[13]_i_1 
       (.I0(\wdata_qq_reg[127] [111]),
        .I1(p_1_in96_in[7]),
        .I2(\wdata_qq_reg[127] [110]),
        .I3(p_1_in96_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__12/gen_deflt_chks.WDATA_eq[13]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__12/gen_deflt_chks.WDATA_eq[13]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq097_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__12/gen_deflt_chks.WDATA_eq[13]_i_2 
       (.I0(p_1_in96_in[3]),
        .I1(\wdata_qq_reg[127] [107]),
        .I2(\wdata_qq_reg[127] [109]),
        .I3(p_1_in96_in[5]),
        .I4(\wdata_qq_reg[127] [108]),
        .I5(p_1_in96_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__12/gen_deflt_chks.WDATA_eq[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__12/gen_deflt_chks.WDATA_eq[13]_i_3 
       (.I0(p_1_in96_in[0]),
        .I1(\wdata_qq_reg[127] [104]),
        .I2(\wdata_qq_reg[127] [106]),
        .I3(p_1_in96_in[2]),
        .I4(\wdata_qq_reg[127] [105]),
        .I5(p_1_in96_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__12/gen_deflt_chks.WDATA_eq[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__13/gen_deflt_chks.WDATA_eq[14]_i_1 
       (.I0(\wdata_qq_reg[127] [119]),
        .I1(p_1_in99_in[7]),
        .I2(\wdata_qq_reg[127] [118]),
        .I3(p_1_in99_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__13/gen_deflt_chks.WDATA_eq[14]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__13/gen_deflt_chks.WDATA_eq[14]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq0100_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__13/gen_deflt_chks.WDATA_eq[14]_i_2 
       (.I0(p_1_in99_in[3]),
        .I1(\wdata_qq_reg[127] [115]),
        .I2(\wdata_qq_reg[127] [117]),
        .I3(p_1_in99_in[5]),
        .I4(\wdata_qq_reg[127] [116]),
        .I5(p_1_in99_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__13/gen_deflt_chks.WDATA_eq[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__13/gen_deflt_chks.WDATA_eq[14]_i_3 
       (.I0(p_1_in99_in[0]),
        .I1(\wdata_qq_reg[127] [112]),
        .I2(\wdata_qq_reg[127] [114]),
        .I3(p_1_in99_in[2]),
        .I4(\wdata_qq_reg[127] [113]),
        .I5(p_1_in99_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__13/gen_deflt_chks.WDATA_eq[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__14/gen_deflt_chks.WDATA_eq[15]_i_1 
       (.I0(\wdata_qq_reg[127] [127]),
        .I1(p_1_in102_in[7]),
        .I2(\wdata_qq_reg[127] [126]),
        .I3(p_1_in102_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__14/gen_deflt_chks.WDATA_eq[15]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__14/gen_deflt_chks.WDATA_eq[15]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq0103_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__14/gen_deflt_chks.WDATA_eq[15]_i_2 
       (.I0(p_1_in102_in[3]),
        .I1(\wdata_qq_reg[127] [123]),
        .I2(\wdata_qq_reg[127] [125]),
        .I3(p_1_in102_in[5]),
        .I4(\wdata_qq_reg[127] [124]),
        .I5(p_1_in102_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__14/gen_deflt_chks.WDATA_eq[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__14/gen_deflt_chks.WDATA_eq[15]_i_3 
       (.I0(p_1_in102_in[0]),
        .I1(\wdata_qq_reg[127] [120]),
        .I2(\wdata_qq_reg[127] [122]),
        .I3(p_1_in102_in[2]),
        .I4(\wdata_qq_reg[127] [121]),
        .I5(p_1_in102_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__14/gen_deflt_chks.WDATA_eq[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__2/gen_deflt_chks.WDATA_eq[3]_i_1 
       (.I0(\wdata_qq_reg[127] [31]),
        .I1(p_1_in66_in[7]),
        .I2(\wdata_qq_reg[127] [30]),
        .I3(p_1_in66_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__2/gen_deflt_chks.WDATA_eq[3]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__2/gen_deflt_chks.WDATA_eq[3]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq067_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__2/gen_deflt_chks.WDATA_eq[3]_i_2 
       (.I0(p_1_in66_in[3]),
        .I1(\wdata_qq_reg[127] [27]),
        .I2(\wdata_qq_reg[127] [29]),
        .I3(p_1_in66_in[5]),
        .I4(\wdata_qq_reg[127] [28]),
        .I5(p_1_in66_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__2/gen_deflt_chks.WDATA_eq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__2/gen_deflt_chks.WDATA_eq[3]_i_3 
       (.I0(p_1_in66_in[0]),
        .I1(\wdata_qq_reg[127] [24]),
        .I2(\wdata_qq_reg[127] [26]),
        .I3(p_1_in66_in[2]),
        .I4(\wdata_qq_reg[127] [25]),
        .I5(p_1_in66_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__2/gen_deflt_chks.WDATA_eq[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__3/gen_deflt_chks.WDATA_eq[4]_i_1 
       (.I0(\wdata_qq_reg[127] [39]),
        .I1(p_1_in69_in[7]),
        .I2(\wdata_qq_reg[127] [38]),
        .I3(p_1_in69_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__3/gen_deflt_chks.WDATA_eq[4]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__3/gen_deflt_chks.WDATA_eq[4]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq070_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__3/gen_deflt_chks.WDATA_eq[4]_i_2 
       (.I0(p_1_in69_in[3]),
        .I1(\wdata_qq_reg[127] [35]),
        .I2(\wdata_qq_reg[127] [37]),
        .I3(p_1_in69_in[5]),
        .I4(\wdata_qq_reg[127] [36]),
        .I5(p_1_in69_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__3/gen_deflt_chks.WDATA_eq[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__3/gen_deflt_chks.WDATA_eq[4]_i_3 
       (.I0(p_1_in69_in[0]),
        .I1(\wdata_qq_reg[127] [32]),
        .I2(\wdata_qq_reg[127] [34]),
        .I3(p_1_in69_in[2]),
        .I4(\wdata_qq_reg[127] [33]),
        .I5(p_1_in69_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__3/gen_deflt_chks.WDATA_eq[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__4/gen_deflt_chks.WDATA_eq[5]_i_1 
       (.I0(\wdata_qq_reg[127] [47]),
        .I1(p_1_in72_in[7]),
        .I2(\wdata_qq_reg[127] [46]),
        .I3(p_1_in72_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__4/gen_deflt_chks.WDATA_eq[5]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__4/gen_deflt_chks.WDATA_eq[5]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq073_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__4/gen_deflt_chks.WDATA_eq[5]_i_2 
       (.I0(p_1_in72_in[3]),
        .I1(\wdata_qq_reg[127] [43]),
        .I2(\wdata_qq_reg[127] [45]),
        .I3(p_1_in72_in[5]),
        .I4(\wdata_qq_reg[127] [44]),
        .I5(p_1_in72_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__4/gen_deflt_chks.WDATA_eq[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__4/gen_deflt_chks.WDATA_eq[5]_i_3 
       (.I0(p_1_in72_in[0]),
        .I1(\wdata_qq_reg[127] [40]),
        .I2(\wdata_qq_reg[127] [42]),
        .I3(p_1_in72_in[2]),
        .I4(\wdata_qq_reg[127] [41]),
        .I5(p_1_in72_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__4/gen_deflt_chks.WDATA_eq[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__5/gen_deflt_chks.WDATA_eq[6]_i_1 
       (.I0(\wdata_qq_reg[127] [55]),
        .I1(p_1_in75_in[7]),
        .I2(\wdata_qq_reg[127] [54]),
        .I3(p_1_in75_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__5/gen_deflt_chks.WDATA_eq[6]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__5/gen_deflt_chks.WDATA_eq[6]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq076_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__5/gen_deflt_chks.WDATA_eq[6]_i_2 
       (.I0(p_1_in75_in[3]),
        .I1(\wdata_qq_reg[127] [51]),
        .I2(\wdata_qq_reg[127] [53]),
        .I3(p_1_in75_in[5]),
        .I4(\wdata_qq_reg[127] [52]),
        .I5(p_1_in75_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__5/gen_deflt_chks.WDATA_eq[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__5/gen_deflt_chks.WDATA_eq[6]_i_3 
       (.I0(p_1_in75_in[0]),
        .I1(\wdata_qq_reg[127] [48]),
        .I2(\wdata_qq_reg[127] [50]),
        .I3(p_1_in75_in[2]),
        .I4(\wdata_qq_reg[127] [49]),
        .I5(p_1_in75_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__5/gen_deflt_chks.WDATA_eq[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__6/gen_deflt_chks.WDATA_eq[7]_i_1 
       (.I0(\wdata_qq_reg[127] [63]),
        .I1(p_1_in78_in[7]),
        .I2(\wdata_qq_reg[127] [62]),
        .I3(p_1_in78_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__6/gen_deflt_chks.WDATA_eq[7]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__6/gen_deflt_chks.WDATA_eq[7]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq079_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__6/gen_deflt_chks.WDATA_eq[7]_i_2 
       (.I0(p_1_in78_in[3]),
        .I1(\wdata_qq_reg[127] [59]),
        .I2(\wdata_qq_reg[127] [61]),
        .I3(p_1_in78_in[5]),
        .I4(\wdata_qq_reg[127] [60]),
        .I5(p_1_in78_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__6/gen_deflt_chks.WDATA_eq[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__6/gen_deflt_chks.WDATA_eq[7]_i_3 
       (.I0(p_1_in78_in[0]),
        .I1(\wdata_qq_reg[127] [56]),
        .I2(\wdata_qq_reg[127] [58]),
        .I3(p_1_in78_in[2]),
        .I4(\wdata_qq_reg[127] [57]),
        .I5(p_1_in78_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__6/gen_deflt_chks.WDATA_eq[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__7/gen_deflt_chks.WDATA_eq[8]_i_1 
       (.I0(\wdata_qq_reg[127] [71]),
        .I1(p_1_in81_in[7]),
        .I2(\wdata_qq_reg[127] [70]),
        .I3(p_1_in81_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__7/gen_deflt_chks.WDATA_eq[8]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__7/gen_deflt_chks.WDATA_eq[8]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq082_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__7/gen_deflt_chks.WDATA_eq[8]_i_2 
       (.I0(p_1_in81_in[3]),
        .I1(\wdata_qq_reg[127] [67]),
        .I2(\wdata_qq_reg[127] [69]),
        .I3(p_1_in81_in[5]),
        .I4(\wdata_qq_reg[127] [68]),
        .I5(p_1_in81_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__7/gen_deflt_chks.WDATA_eq[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__7/gen_deflt_chks.WDATA_eq[8]_i_3 
       (.I0(p_1_in81_in[0]),
        .I1(\wdata_qq_reg[127] [64]),
        .I2(\wdata_qq_reg[127] [66]),
        .I3(p_1_in81_in[2]),
        .I4(\wdata_qq_reg[127] [65]),
        .I5(p_1_in81_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__7/gen_deflt_chks.WDATA_eq[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__8/gen_deflt_chks.WDATA_eq[9]_i_1 
       (.I0(\wdata_qq_reg[127] [79]),
        .I1(p_1_in84_in[7]),
        .I2(\wdata_qq_reg[127] [78]),
        .I3(p_1_in84_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__8/gen_deflt_chks.WDATA_eq[9]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__8/gen_deflt_chks.WDATA_eq[9]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq085_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__8/gen_deflt_chks.WDATA_eq[9]_i_2 
       (.I0(p_1_in84_in[3]),
        .I1(\wdata_qq_reg[127] [75]),
        .I2(\wdata_qq_reg[127] [77]),
        .I3(p_1_in84_in[5]),
        .I4(\wdata_qq_reg[127] [76]),
        .I5(p_1_in84_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__8/gen_deflt_chks.WDATA_eq[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__8/gen_deflt_chks.WDATA_eq[9]_i_3 
       (.I0(p_1_in84_in[0]),
        .I1(\wdata_qq_reg[127] [72]),
        .I2(\wdata_qq_reg[127] [74]),
        .I3(p_1_in84_in[2]),
        .I4(\wdata_qq_reg[127] [73]),
        .I5(p_1_in84_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__8/gen_deflt_chks.WDATA_eq[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq0_inferred__9/gen_deflt_chks.WDATA_eq[10]_i_1 
       (.I0(\wdata_qq_reg[127] [87]),
        .I1(p_1_in87_in[7]),
        .I2(\wdata_qq_reg[127] [86]),
        .I3(p_1_in87_in[6]),
        .I4(\gen_deflt_chks.WDATA_eq0_inferred__9/gen_deflt_chks.WDATA_eq[10]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq0_inferred__9/gen_deflt_chks.WDATA_eq[10]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq088_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__9/gen_deflt_chks.WDATA_eq[10]_i_2 
       (.I0(p_1_in87_in[3]),
        .I1(\wdata_qq_reg[127] [83]),
        .I2(\wdata_qq_reg[127] [85]),
        .I3(p_1_in87_in[5]),
        .I4(\wdata_qq_reg[127] [84]),
        .I5(p_1_in87_in[4]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__9/gen_deflt_chks.WDATA_eq[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq0_inferred__9/gen_deflt_chks.WDATA_eq[10]_i_3 
       (.I0(p_1_in87_in[0]),
        .I1(\wdata_qq_reg[127] [80]),
        .I2(\wdata_qq_reg[127] [82]),
        .I3(p_1_in87_in[2]),
        .I4(\wdata_qq_reg[127] [81]),
        .I5(p_1_in87_in[1]),
        .O(\gen_deflt_chks.WDATA_eq0_inferred__9/gen_deflt_chks.WDATA_eq[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_deflt_chks.WDATA_eq[0]_i_1 
       (.I0(\wdata_qq_reg[127] [7]),
        .I1(\gen_deflt_chks.WDATA_q_reg_n_0_[7] ),
        .I2(\wdata_qq_reg[127] [6]),
        .I3(\gen_deflt_chks.WDATA_q_reg_n_0_[6] ),
        .I4(\gen_deflt_chks.WDATA_eq[0]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WDATA_eq[0]_i_3_n_0 ),
        .O(\gen_deflt_chks.WDATA_eq0__0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq[0]_i_2 
       (.I0(\gen_deflt_chks.WDATA_q_reg_n_0_[3] ),
        .I1(\wdata_qq_reg[127] [3]),
        .I2(\wdata_qq_reg[127] [5]),
        .I3(\gen_deflt_chks.WDATA_q_reg_n_0_[5] ),
        .I4(\wdata_qq_reg[127] [4]),
        .I5(\gen_deflt_chks.WDATA_q_reg_n_0_[4] ),
        .O(\gen_deflt_chks.WDATA_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_deflt_chks.WDATA_eq[0]_i_3 
       (.I0(\gen_deflt_chks.WDATA_q_reg_n_0_[0] ),
        .I1(\wdata_qq_reg[127] [0]),
        .I2(\wdata_qq_reg[127] [2]),
        .I3(\gen_deflt_chks.WDATA_q_reg_n_0_[2] ),
        .I4(\wdata_qq_reg[127] [1]),
        .I5(\gen_deflt_chks.WDATA_q_reg_n_0_[1] ),
        .O(\gen_deflt_chks.WDATA_eq[0]_i_3_n_0 ));
  FDRE \gen_deflt_chks.WDATA_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq0__0 ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq088_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq091_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq094_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq097_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq0100_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq0103_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq061_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq064_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq067_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq070_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq073_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq076_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq079_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq082_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_eq_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_eq085_out ),
        .Q(\gen_deflt_chks.WDATA_eq_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [0]),
        .Q(\gen_deflt_chks.WDATA_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[100] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [100]),
        .Q(p_1_in93_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[101] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [101]),
        .Q(p_1_in93_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[102] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [102]),
        .Q(p_1_in93_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[103] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [103]),
        .Q(p_1_in93_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[104] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [104]),
        .Q(p_1_in96_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[105] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [105]),
        .Q(p_1_in96_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[106] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [106]),
        .Q(p_1_in96_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[107] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [107]),
        .Q(p_1_in96_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[108] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [108]),
        .Q(p_1_in96_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[109] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [109]),
        .Q(p_1_in96_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [10]),
        .Q(p_1_in60_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[110] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [110]),
        .Q(p_1_in96_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[111] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [111]),
        .Q(p_1_in96_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[112] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [112]),
        .Q(p_1_in99_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[113] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [113]),
        .Q(p_1_in99_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[114] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [114]),
        .Q(p_1_in99_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[115] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [115]),
        .Q(p_1_in99_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[116] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [116]),
        .Q(p_1_in99_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[117] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [117]),
        .Q(p_1_in99_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[118] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [118]),
        .Q(p_1_in99_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[119] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [119]),
        .Q(p_1_in99_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [11]),
        .Q(p_1_in60_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[120] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [120]),
        .Q(p_1_in102_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[121] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [121]),
        .Q(p_1_in102_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[122] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [122]),
        .Q(p_1_in102_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[123] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [123]),
        .Q(p_1_in102_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[124] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [124]),
        .Q(p_1_in102_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[125] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [125]),
        .Q(p_1_in102_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[126] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [126]),
        .Q(p_1_in102_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[127] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [127]),
        .Q(p_1_in102_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [12]),
        .Q(p_1_in60_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [13]),
        .Q(p_1_in60_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [14]),
        .Q(p_1_in60_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [15]),
        .Q(p_1_in60_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [16]),
        .Q(p_1_in63_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [17]),
        .Q(p_1_in63_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [18]),
        .Q(p_1_in63_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [19]),
        .Q(p_1_in63_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [1]),
        .Q(\gen_deflt_chks.WDATA_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [20]),
        .Q(p_1_in63_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [21]),
        .Q(p_1_in63_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [22]),
        .Q(p_1_in63_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [23]),
        .Q(p_1_in63_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [24]),
        .Q(p_1_in66_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [25]),
        .Q(p_1_in66_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [26]),
        .Q(p_1_in66_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [27]),
        .Q(p_1_in66_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [28]),
        .Q(p_1_in66_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [29]),
        .Q(p_1_in66_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [2]),
        .Q(\gen_deflt_chks.WDATA_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [30]),
        .Q(p_1_in66_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [31]),
        .Q(p_1_in66_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [32]),
        .Q(p_1_in69_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [33]),
        .Q(p_1_in69_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [34]),
        .Q(p_1_in69_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [35]),
        .Q(p_1_in69_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [36]),
        .Q(p_1_in69_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [37]),
        .Q(p_1_in69_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [38]),
        .Q(p_1_in69_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [39]),
        .Q(p_1_in69_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [3]),
        .Q(\gen_deflt_chks.WDATA_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [40]),
        .Q(p_1_in72_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [41]),
        .Q(p_1_in72_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [42]),
        .Q(p_1_in72_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [43]),
        .Q(p_1_in72_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [44]),
        .Q(p_1_in72_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [45]),
        .Q(p_1_in72_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [46]),
        .Q(p_1_in72_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [47]),
        .Q(p_1_in72_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [48]),
        .Q(p_1_in75_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [49]),
        .Q(p_1_in75_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [4]),
        .Q(\gen_deflt_chks.WDATA_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [50]),
        .Q(p_1_in75_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [51]),
        .Q(p_1_in75_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [52]),
        .Q(p_1_in75_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [53]),
        .Q(p_1_in75_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [54]),
        .Q(p_1_in75_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [55]),
        .Q(p_1_in75_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [56]),
        .Q(p_1_in78_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [57]),
        .Q(p_1_in78_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [58]),
        .Q(p_1_in78_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [59]),
        .Q(p_1_in78_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [5]),
        .Q(\gen_deflt_chks.WDATA_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [60]),
        .Q(p_1_in78_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [61]),
        .Q(p_1_in78_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [62]),
        .Q(p_1_in78_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [63]),
        .Q(p_1_in78_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[64] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [64]),
        .Q(p_1_in81_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[65] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [65]),
        .Q(p_1_in81_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[66] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [66]),
        .Q(p_1_in81_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[67] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [67]),
        .Q(p_1_in81_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[68] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [68]),
        .Q(p_1_in81_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[69] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [69]),
        .Q(p_1_in81_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [6]),
        .Q(\gen_deflt_chks.WDATA_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[70] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [70]),
        .Q(p_1_in81_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[71] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [71]),
        .Q(p_1_in81_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[72] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [72]),
        .Q(p_1_in84_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[73] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [73]),
        .Q(p_1_in84_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[74] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [74]),
        .Q(p_1_in84_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[75] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [75]),
        .Q(p_1_in84_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[76] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [76]),
        .Q(p_1_in84_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[77] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [77]),
        .Q(p_1_in84_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[78] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [78]),
        .Q(p_1_in84_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[79] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [79]),
        .Q(p_1_in84_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [7]),
        .Q(\gen_deflt_chks.WDATA_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[80] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [80]),
        .Q(p_1_in87_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[81] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [81]),
        .Q(p_1_in87_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[82] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [82]),
        .Q(p_1_in87_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[83] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [83]),
        .Q(p_1_in87_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[84] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [84]),
        .Q(p_1_in87_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[85] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [85]),
        .Q(p_1_in87_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[86] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [86]),
        .Q(p_1_in87_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[87] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [87]),
        .Q(p_1_in87_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[88] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [88]),
        .Q(p_1_in90_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[89] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [89]),
        .Q(p_1_in90_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [8]),
        .Q(p_1_in60_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[90] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [90]),
        .Q(p_1_in90_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[91] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [91]),
        .Q(p_1_in90_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[92] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [92]),
        .Q(p_1_in90_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[93] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [93]),
        .Q(p_1_in90_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[94] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [94]),
        .Q(p_1_in90_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[95] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [95]),
        .Q(p_1_in90_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[96] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [96]),
        .Q(p_1_in93_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[97] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [97]),
        .Q(p_1_in93_in[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[98] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [98]),
        .Q(p_1_in93_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[99] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [99]),
        .Q(p_1_in93_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_qq_reg[127] [9]),
        .Q(p_1_in60_in[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00008000)) 
    \gen_deflt_chks.WDATA_stage_1_eq0_inferred__0/gen_deflt_chks.WDATA_stage_1_eq[1]_i_1 
       (.I0(\gen_deflt_chks.WDATA_eq_reg_n_0_[15] ),
        .I1(\gen_deflt_chks.WDATA_eq_reg_n_0_[14] ),
        .I2(\gen_deflt_chks.WDATA_eq_reg_n_0_[12] ),
        .I3(\gen_deflt_chks.WDATA_eq_reg_n_0_[13] ),
        .I4(\gen_deflt_chks.WDATA_stage_1_eq0_inferred__0/gen_deflt_chks.WDATA_stage_1_eq[1]_i_2_n_0 ),
        .O(\gen_deflt_chks.WDATA_stage_1_eq0__0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_deflt_chks.WDATA_stage_1_eq0_inferred__0/gen_deflt_chks.WDATA_stage_1_eq[1]_i_2 
       (.I0(\gen_deflt_chks.WDATA_eq_reg_n_0_[9] ),
        .I1(\gen_deflt_chks.WDATA_eq_reg_n_0_[8] ),
        .I2(\gen_deflt_chks.WDATA_eq_reg_n_0_[11] ),
        .I3(\gen_deflt_chks.WDATA_eq_reg_n_0_[10] ),
        .O(\gen_deflt_chks.WDATA_stage_1_eq0_inferred__0/gen_deflt_chks.WDATA_stage_1_eq[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \gen_deflt_chks.WDATA_stage_1_eq[0]_i_1 
       (.I0(\gen_deflt_chks.WDATA_eq_reg_n_0_[7] ),
        .I1(\gen_deflt_chks.WDATA_eq_reg_n_0_[6] ),
        .I2(\gen_deflt_chks.WDATA_eq_reg_n_0_[4] ),
        .I3(\gen_deflt_chks.WDATA_eq_reg_n_0_[5] ),
        .I4(\gen_deflt_chks.WDATA_stage_1_eq[0]_i_2_n_0 ),
        .O(\gen_deflt_chks.WDATA_stage_1_eq[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_deflt_chks.WDATA_stage_1_eq[0]_i_2 
       (.I0(\gen_deflt_chks.WDATA_eq_reg_n_0_[1] ),
        .I1(\gen_deflt_chks.WDATA_eq_reg_n_0_[0] ),
        .I2(\gen_deflt_chks.WDATA_eq_reg_n_0_[3] ),
        .I3(\gen_deflt_chks.WDATA_eq_reg_n_0_[2] ),
        .O(\gen_deflt_chks.WDATA_stage_1_eq[0]_i_2_n_0 ));
  FDRE \gen_deflt_chks.WDATA_stage_1_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_stage_1_eq[0]_i_1_n_0 ),
        .Q(\gen_deflt_chks.WDATA_stage_1_eq [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WDATA_stage_1_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_stage_1_eq0__0 ),
        .Q(\gen_deflt_chks.WDATA_stage_1_eq [1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_deflt_chks.WDATA_stage_2_eq[0]_i_1 
       (.I0(\gen_deflt_chks.WDATA_stage_1_eq [0]),
        .I1(\gen_deflt_chks.WDATA_stage_1_eq [1]),
        .O(\gen_deflt_chks.WDATA_stage_2_eq[0]_i_1_n_0 ));
  FDRE \gen_deflt_chks.WDATA_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WDATA_stage_2_eq[0]_i_1_n_0 ),
        .Q(\gen_deflt_chks.WDATA_stage_2_eq ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \gen_deflt_chks.WSTRB_eq[0]_i_1 
       (.I0(\wstrb_qq_reg[15] [6]),
        .I1(\gen_deflt_chks.WSTRB_q_reg_n_0_[6] ),
        .I2(\wstrb_qq_reg[15] [7]),
        .I3(\gen_deflt_chks.WSTRB_q_reg_n_0_[7] ),
        .I4(\gen_deflt_chks.WSTRB_eq[0]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WSTRB_eq[0]_i_3_n_0 ),
        .O(\gen_deflt_chks.WSTRB_eq0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.WSTRB_eq[0]_i_2 
       (.I0(\gen_deflt_chks.WSTRB_q_reg_n_0_[0] ),
        .I1(\wstrb_qq_reg[15] [0]),
        .I2(\wstrb_qq_reg[15] [2]),
        .I3(\gen_deflt_chks.WSTRB_q_reg_n_0_[2] ),
        .I4(\wstrb_qq_reg[15] [1]),
        .I5(\gen_deflt_chks.WSTRB_q_reg_n_0_[1] ),
        .O(\gen_deflt_chks.WSTRB_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.WSTRB_eq[0]_i_3 
       (.I0(\gen_deflt_chks.WSTRB_q_reg_n_0_[3] ),
        .I1(\wstrb_qq_reg[15] [3]),
        .I2(\wstrb_qq_reg[15] [4]),
        .I3(\gen_deflt_chks.WSTRB_q_reg_n_0_[4] ),
        .I4(\wstrb_qq_reg[15] [5]),
        .I5(\gen_deflt_chks.WSTRB_q_reg_n_0_[5] ),
        .O(\gen_deflt_chks.WSTRB_eq[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \gen_deflt_chks.WSTRB_eq[1]_i_1 
       (.I0(\wstrb_qq_reg[15] [15]),
        .I1(p_0_in56_in[7]),
        .I2(\wstrb_qq_reg[15] [14]),
        .I3(p_0_in56_in[6]),
        .I4(\gen_deflt_chks.WSTRB_eq[1]_i_2_n_0 ),
        .I5(\gen_deflt_chks.WSTRB_eq[1]_i_3_n_0 ),
        .O(\gen_deflt_chks.WSTRB_eq058_out ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.WSTRB_eq[1]_i_2 
       (.I0(p_0_in56_in[0]),
        .I1(\wstrb_qq_reg[15] [8]),
        .I2(\wstrb_qq_reg[15] [10]),
        .I3(p_0_in56_in[2]),
        .I4(\wstrb_qq_reg[15] [9]),
        .I5(p_0_in56_in[1]),
        .O(\gen_deflt_chks.WSTRB_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_deflt_chks.WSTRB_eq[1]_i_3 
       (.I0(p_0_in56_in[3]),
        .I1(\wstrb_qq_reg[15] [11]),
        .I2(\wstrb_qq_reg[15] [12]),
        .I3(p_0_in56_in[4]),
        .I4(\wstrb_qq_reg[15] [13]),
        .I5(p_0_in56_in[5]),
        .O(\gen_deflt_chks.WSTRB_eq[1]_i_3_n_0 ));
  FDRE \gen_deflt_chks.WSTRB_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WSTRB_eq0 ),
        .Q(\gen_deflt_chks.WSTRB_eq [0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WSTRB_eq058_out ),
        .Q(\gen_deflt_chks.WSTRB_eq [1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [0]),
        .Q(\gen_deflt_chks.WSTRB_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [10]),
        .Q(p_0_in56_in[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [11]),
        .Q(p_0_in56_in[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [12]),
        .Q(p_0_in56_in[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [13]),
        .Q(p_0_in56_in[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [14]),
        .Q(p_0_in56_in[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [15]),
        .Q(p_0_in56_in[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [1]),
        .Q(\gen_deflt_chks.WSTRB_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [2]),
        .Q(\gen_deflt_chks.WSTRB_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [3]),
        .Q(\gen_deflt_chks.WSTRB_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [4]),
        .Q(\gen_deflt_chks.WSTRB_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [5]),
        .Q(\gen_deflt_chks.WSTRB_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [6]),
        .Q(\gen_deflt_chks.WSTRB_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [7]),
        .Q(\gen_deflt_chks.WSTRB_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [8]),
        .Q(p_0_in56_in[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_qq_reg[15] [9]),
        .Q(p_0_in56_in[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_deflt_chks.WSTRB_stage_1_eq[0]_i_1 
       (.I0(\gen_deflt_chks.WSTRB_eq [0]),
        .I1(\gen_deflt_chks.WSTRB_eq [1]),
        .O(\gen_deflt_chks.WSTRB_stage_1_eq[0]_i_1_n_0 ));
  FDRE \gen_deflt_chks.WSTRB_stage_1_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WSTRB_stage_1_eq[0]_i_1_n_0 ),
        .Q(\gen_deflt_chks.WSTRB_stage_1_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WSTRB_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WSTRB_stage_1_eq ),
        .Q(\gen_deflt_chks.WSTRB_stage_2_eq ),
        .R(1'b0));
  FDRE \gen_deflt_chks.WUSER_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(wuser_qq),
        .Q(\gen_deflt_chks.WUSER_q ),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/i_Axi4PC_asr_inline/gen_deflt_chks.WUSER_stage_1_eq_reg " *) 
  (* srl_name = "inst/\CORE/i_Axi4PC_asr_inline/gen_deflt_chks.WUSER_stage_1_eq_reg[0]_srl2 " *) 
  SRL16E \gen_deflt_chks.WUSER_stage_1_eq_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(\gen_deflt_chks.WUSER_eq0 ),
        .Q(\gen_deflt_chks.WUSER_stage_1_eq_reg[0]_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_deflt_chks.WUSER_stage_1_eq_reg[0]_srl2_i_1 
       (.I0(\gen_deflt_chks.WUSER_q ),
        .I1(wuser_qq),
        .O(\gen_deflt_chks.WUSER_eq0 ));
  FDRE \gen_deflt_chks.WUSER_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.WUSER_stage_1_eq_reg[0]_srl2_n_0 ),
        .Q(\gen_deflt_chks.WUSER_stage_2_eq ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_deflt_chks.asr_1_ctrl_i_1 
       (.I0(\awburst_qq_reg[1] [1]),
        .I1(\awburst_qq_reg[1] [0]),
        .I2(awvalid_qq),
        .O(\gen_deflt_chks.asr_1_ctrl0 ));
  FDRE \gen_deflt_chks.asr_1_ctrl_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.asr_1_ctrl0 ),
        .Q(\gen_deflt_chks.asr_1_ctrl ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \gen_deflt_chks.asr_38_ctrl_i_1 
       (.I0(\arburst_qq_reg[1] [0]),
        .I1(arvalid_qq),
        .I2(\arburst_qq_reg[1] [1]),
        .O(\gen_deflt_chks.asr_38_ctrl0 ));
  FDRE \gen_deflt_chks.asr_38_ctrl_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.asr_38_ctrl0 ),
        .Q(\gen_deflt_chks.asr_38_ctrl ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.s101sq[1]_i_1 
       (.I0(rvalid_qq),
        .I1(rready_qq),
        .O(\gen_deflt_chks.s_RDATA_s ));
  FDRE \gen_deflt_chks.s101sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_RDATA_s ),
        .Q(p_0_in28_in),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s11_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awid_qq),
        .Q(s11),
        .R(1'b0));
  FDRE \gen_deflt_chks.s14_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[3]),
        .Q(s14[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s14_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[4]),
        .Q(s14[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s14_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[5]),
        .Q(s14[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s14_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[6]),
        .Q(s14[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s14_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[7]),
        .Q(s14[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s14_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[8]),
        .Q(s14[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s14_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[9]),
        .Q(s14[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s14_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[10]),
        .Q(s14[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s20_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awprot_qq_reg[2] [0]),
        .Q(s20[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s20_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awprot_qq_reg[2] [1]),
        .Q(s20[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s20_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awprot_qq_reg[2] [2]),
        .Q(s20[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s23_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[0]),
        .Q(s23[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s23_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[1]),
        .Q(s23[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s23_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[2]),
        .Q(s23[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s26_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awqos_qq_reg[3] [0]),
        .Q(s26[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s26_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awqos_qq_reg[3] [1]),
        .Q(s26[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s26_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awqos_qq_reg[3] [2]),
        .Q(s26[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s26_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awqos_qq_reg[3] [3]),
        .Q(s26[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s29_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awregion_qq_reg[3] [0]),
        .Q(s29[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s29_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awregion_qq_reg[3] [1]),
        .Q(s29[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s29_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awregion_qq_reg[3] [2]),
        .Q(s29[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s29_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awregion_qq_reg[3] [3]),
        .Q(s29[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.s32sq[1]_i_1 
       (.I0(awvalid_qq),
        .I1(awready_qq),
        .O(\gen_deflt_chks.s_AWADDR_s ));
  FDRE \gen_deflt_chks.s32sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_AWADDR_s ),
        .Q(p_0_in84_in),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s38_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(wlast_qq),
        .Q(s38),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.s44sq[1]_i_1 
       (.I0(wvalid_qq),
        .I1(wready_qq),
        .O(\gen_deflt_chks.s_WDATA_s ));
  FDRE \gen_deflt_chks.s44sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_WDATA_s ),
        .Q(p_0_in71_in),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s47_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(bid_qq),
        .Q(s47),
        .R(1'b0));
  FDRE \gen_deflt_chks.s50_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bresp_qq_reg[1] [0]),
        .Q(s50[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s50_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bresp_qq_reg[1] [1]),
        .Q(s50[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.s53sq[1]_i_1 
       (.I0(bvalid_qq),
        .I1(bready_qq),
        .O(\gen_deflt_chks.s_BUSER_s ));
  FDRE \gen_deflt_chks.s53sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_BUSER_s ),
        .Q(p_0_in64_in),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s59_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arburst_qq_reg[1] [0]),
        .Q(s59[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s59_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arburst_qq_reg[1] [1]),
        .Q(s59[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s5_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awburst_qq_reg[1] [0]),
        .Q(s5[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s5_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awburst_qq_reg[1] [1]),
        .Q(s5[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s62_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arcache_qq_reg[3] [0]),
        .Q(s62[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s62_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arcache_qq_reg[3] [1]),
        .Q(s62[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s62_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arcache_qq_reg[3] [2]),
        .Q(s62[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s62_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arcache_qq_reg[3] [3]),
        .Q(s62[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s65_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(arid_qq),
        .Q(s65),
        .R(1'b0));
  FDRE \gen_deflt_chks.s68_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_qq_reg[7] [0]),
        .Q(s68[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s68_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_qq_reg[7] [1]),
        .Q(s68[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s68_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_qq_reg[7] [2]),
        .Q(s68[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s68_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_qq_reg[7] [3]),
        .Q(s68[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s68_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_qq_reg[7] [4]),
        .Q(s68[4]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s68_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_qq_reg[7] [5]),
        .Q(s68[5]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s68_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_qq_reg[7] [6]),
        .Q(s68[6]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s68_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_qq_reg[7] [7]),
        .Q(s68[7]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s74_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arprot_qq_reg[2] [0]),
        .Q(s74[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s74_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arprot_qq_reg[2] [1]),
        .Q(s74[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s74_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arprot_qq_reg[2] [2]),
        .Q(s74[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s77_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arsize_qq_reg[2] [0]),
        .Q(s77[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s77_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arsize_qq_reg[2] [1]),
        .Q(s77[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s77_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arsize_qq_reg[2] [2]),
        .Q(s77[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s80_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arqos_qq_reg[3] [0]),
        .Q(s80[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s80_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arqos_qq_reg[3] [1]),
        .Q(s80[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s80_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arqos_qq_reg[3] [2]),
        .Q(s80[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s80_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arqos_qq_reg[3] [3]),
        .Q(s80[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s83_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arregion_qq_reg[3] [0]),
        .Q(s83[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s83_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arregion_qq_reg[3] [1]),
        .Q(s83[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s83_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arregion_qq_reg[3] [2]),
        .Q(s83[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s83_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arregion_qq_reg[3] [3]),
        .Q(s83[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_deflt_chks.s86sq[1]_i_1 
       (.I0(arvalid_qq),
        .I1(arready_qq),
        .O(\gen_deflt_chks.s_ARADDR_s ));
  FDRE \gen_deflt_chks.s86sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_ARADDR_s ),
        .Q(p_0_in40_in),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s8_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awcache_qq_reg[3] [0]),
        .Q(s8[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s8_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awcache_qq_reg[3] [1]),
        .Q(s8[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s8_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awcache_qq_reg[3] [2]),
        .Q(s8[2]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s8_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awcache_qq_reg[3] [3]),
        .Q(s8[3]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s92_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(rid_qq),
        .Q(s92),
        .R(1'b0));
  FDRE \gen_deflt_chks.s95_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(rlast_qq),
        .Q(s95),
        .R(1'b0));
  FDRE \gen_deflt_chks.s98_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rresp_qq_reg[1] [0]),
        .Q(s98[0]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s98_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rresp_qq_reg[1] [1]),
        .Q(s98[1]),
        .R(1'b0));
  FDRE \gen_deflt_chks.s_ARUSER_sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_ARUSER_sq_reg_n_0_[2] ),
        .Q(p_0_in8_in),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_ARUSER_sq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_ARUSER_sq_reg_n_0_[3] ),
        .Q(\gen_deflt_chks.s_ARUSER_sq_reg_n_0_[2] ),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_ARUSER_sq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in40_in),
        .Q(\gen_deflt_chks.s_ARUSER_sq_reg_n_0_[3] ),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_AWUSER_sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_AWUSER_sq_reg_n_0_[2] ),
        .Q(p_0_in17_in),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_AWUSER_sq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_AWUSER_sq_reg_n_0_[3] ),
        .Q(\gen_deflt_chks.s_AWUSER_sq_reg_n_0_[2] ),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_AWUSER_sq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in84_in),
        .Q(\gen_deflt_chks.s_AWUSER_sq_reg_n_0_[3] ),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_BUSER_sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_BUSER_s__0 [1]),
        .Q(p_0_in11_in),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_BUSER_sq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_BUSER_s__0 [2]),
        .Q(\gen_deflt_chks.s_BUSER_s__0 [1]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_BUSER_sq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in64_in),
        .Q(\gen_deflt_chks.s_BUSER_s__0 [2]),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_RUSER_sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_RUSER_sq_reg_n_0_[2] ),
        .Q(p_0_in5_in),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_RUSER_sq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_RUSER_sq_reg_n_0_[3] ),
        .Q(\gen_deflt_chks.s_RUSER_sq_reg_n_0_[2] ),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_RUSER_sq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in28_in),
        .Q(\gen_deflt_chks.s_RUSER_sq_reg_n_0_[3] ),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_WUSER_sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_WUSER_sq_reg_n_0_[2] ),
        .Q(p_0_in14_in),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_WUSER_sq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_deflt_chks.s_WUSER_sq_reg_n_0_[3] ),
        .Q(\gen_deflt_chks.s_WUSER_sq_reg_n_0_[2] ),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  FDRE \gen_deflt_chks.s_WUSER_sq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in71_in),
        .Q(\gen_deflt_chks.s_WUSER_sq_reg_n_0_[3] ),
        .R(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[0]_i_1 
       (.I0(Axi4PC_asr_inline_out[0]),
        .I1(pc_status[0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[10]_i_1 
       (.I0(Axi4PC_asr_inline_out[10]),
        .I1(pc_status[8]),
        .O(D[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[11]_i_1 
       (.I0(Axi4PC_asr_inline_out[11]),
        .I1(pc_status[9]),
        .O(D[9]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[12]_i_1 
       (.I0(Axi4PC_asr_inline_out[12]),
        .I1(pc_status[10]),
        .O(D[10]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[13]_i_1 
       (.I0(Axi4PC_asr_inline_out[13]),
        .I1(pc_status[11]),
        .O(D[11]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[15]_i_1 
       (.I0(Axi4PC_asr_inline_out[15]),
        .I1(pc_status[12]),
        .O(D[12]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[16]_i_1 
       (.I0(Axi4PC_asr_inline_out[16]),
        .I1(pc_status[13]),
        .O(D[13]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[17]_i_1 
       (.I0(Axi4PC_asr_inline_out[17]),
        .I1(pc_status[14]),
        .O(D[14]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[18]_i_1 
       (.I0(Axi4PC_asr_inline_out[18]),
        .I1(pc_status[15]),
        .O(D[15]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[19]_i_1 
       (.I0(Axi4PC_asr_inline_out[19]),
        .I1(pc_status[16]),
        .O(D[16]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[1]_i_1 
       (.I0(Axi4PC_asr_inline_out[1]),
        .I1(pc_status[1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[21]_i_1 
       (.I0(Axi4PC_asr_inline_out[21]),
        .I1(pc_status[17]),
        .O(D[17]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[22]_i_1 
       (.I0(Axi4PC_asr_inline_out[22]),
        .I1(pc_status[18]),
        .O(D[18]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[24]_i_1 
       (.I0(Axi4PC_asr_inline_out[24]),
        .I1(pc_status[19]),
        .O(D[19]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[25]_i_1 
       (.I0(Axi4PC_asr_inline_out[25]),
        .I1(pc_status[20]),
        .O(D[20]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[26]_i_1 
       (.I0(Axi4PC_asr_inline_out[26]),
        .I1(pc_status[21]),
        .O(D[21]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[27]_i_1 
       (.I0(Axi4PC_asr_inline_out[27]),
        .I1(pc_status[22]),
        .O(D[22]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[2]_i_1 
       (.I0(Axi4PC_asr_inline_out[2]),
        .I1(pc_status[2]),
        .O(D[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[32]_i_1 
       (.I0(Axi4PC_asr_inline_out[32]),
        .I1(pc_status[23]),
        .O(D[23]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[33]_i_1 
       (.I0(Axi4PC_asr_inline_out[33]),
        .I1(pc_status[24]),
        .O(D[24]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[34]_i_1 
       (.I0(Axi4PC_asr_inline_out[34]),
        .I1(pc_status[25]),
        .O(D[25]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[35]_i_1 
       (.I0(Axi4PC_asr_inline_out[35]),
        .I1(pc_status[26]),
        .O(D[26]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[37]_i_1 
       (.I0(Axi4PC_asr_inline_out[37]),
        .I1(pc_status[27]),
        .O(D[27]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[38]_i_1 
       (.I0(Axi4PC_asr_inline_out[38]),
        .I1(pc_status[28]),
        .O(D[28]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[39]_i_1 
       (.I0(Axi4PC_asr_inline_out[39]),
        .I1(pc_status[29]),
        .O(D[29]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[41]_i_1 
       (.I0(Axi4PC_asr_inline_out[41]),
        .I1(pc_status[30]),
        .O(D[30]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[42]_i_1 
       (.I0(Axi4PC_asr_inline_out[42]),
        .I1(pc_status[31]),
        .O(D[31]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[43]_i_1 
       (.I0(Axi4PC_asr_inline_out[43]),
        .I1(pc_status[32]),
        .O(D[32]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[44]_i_1 
       (.I0(Axi4PC_asr_inline_out[44]),
        .I1(pc_status[33]),
        .O(D[33]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[46]_i_1 
       (.I0(Axi4PC_asr_inline_out[46]),
        .I1(pc_status[34]),
        .O(D[34]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[47]_i_1 
       (.I0(Axi4PC_asr_inline_out[47]),
        .I1(pc_status[35]),
        .O(D[35]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[48]_i_1 
       (.I0(Axi4PC_asr_inline_out[48]),
        .I1(pc_status[36]),
        .O(D[36]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[49]_i_1 
       (.I0(Axi4PC_asr_inline_out[49]),
        .I1(pc_status[37]),
        .O(D[37]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[4]_i_1 
       (.I0(Axi4PC_asr_inline_out[4]),
        .I1(pc_status[3]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[50]_i_1 
       (.I0(Axi4PC_asr_inline_out[50]),
        .I1(pc_status[38]),
        .O(D[38]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[52]_i_1 
       (.I0(Axi4PC_asr_inline_out[52]),
        .I1(pc_status[39]),
        .O(D[39]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[53]_i_1 
       (.I0(Axi4PC_asr_inline_out[53]),
        .I1(pc_status[40]),
        .O(D[40]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[54]_i_1 
       (.I0(Axi4PC_asr_inline_out[54]),
        .I1(pc_status[41]),
        .O(D[41]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[55]_i_1 
       (.I0(Axi4PC_asr_inline_out[55]),
        .I1(pc_status[42]),
        .O(D[42]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[56]_i_1 
       (.I0(Axi4PC_asr_inline_out[56]),
        .I1(pc_status[43]),
        .O(D[43]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[58]_i_1 
       (.I0(Axi4PC_asr_inline_out[58]),
        .I1(pc_status[44]),
        .O(D[44]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[59]_i_1 
       (.I0(Axi4PC_asr_inline_out[59]),
        .I1(pc_status[45]),
        .O(D[45]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[5]_i_1 
       (.I0(Axi4PC_asr_inline_out[5]),
        .I1(pc_status[4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[60]_i_1 
       (.I0(Axi4PC_asr_inline_out[60]),
        .I1(pc_status[46]),
        .O(D[46]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[62]_i_1 
       (.I0(Axi4PC_asr_inline_out[62]),
        .I1(pc_status[47]),
        .O(D[47]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[63]_i_1 
       (.I0(Axi4PC_asr_inline_out[63]),
        .I1(pc_status[48]),
        .O(D[48]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[64]_i_1 
       (.I0(Axi4PC_asr_inline_out[64]),
        .I1(pc_status[49]),
        .O(D[49]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[65]_i_1 
       (.I0(Axi4PC_asr_inline_out[65]),
        .I1(pc_status[50]),
        .O(D[50]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[66]_i_1 
       (.I0(Axi4PC_asr_inline_out[66]),
        .I1(pc_status[51]),
        .O(D[51]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[6]_i_1 
       (.I0(Axi4PC_asr_inline_out[6]),
        .I1(pc_status[5]),
        .O(D[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[73]_i_1 
       (.I0(Axi4PC_asr_inline_out[73]),
        .I1(pc_status[52]),
        .O(D[52]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[74]_i_1 
       (.I0(Axi4PC_asr_inline_out[74]),
        .I1(pc_status[53]),
        .O(D[53]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[75]_i_1 
       (.I0(Axi4PC_asr_inline_out[75]),
        .I1(pc_status[54]),
        .O(D[54]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[76]_i_1 
       (.I0(Axi4PC_asr_inline_out[76]),
        .I1(pc_status[55]),
        .O(D[55]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[77]_i_1 
       (.I0(Axi4PC_asr_inline_out[77]),
        .I1(pc_status[56]),
        .O(D[56]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[7]_i_1 
       (.I0(Axi4PC_asr_inline_out[7]),
        .I1(pc_status[6]),
        .O(D[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \pc_status_i[81]_i_1 
       (.I0(resetn_qq),
        .O(\gen_deflt_chks.s101sq_reg[1]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[9]_i_1 
       (.I0(Axi4PC_asr_inline_out[9]),
        .I1(pc_status[7]),
        .O(D[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_core
   (pc_status,
    pc_asserted_i_reg,
    aclk,
    awid_qq,
    wlast_qq,
    bid_qq,
    arid_qq,
    rid_qq,
    rlast_qq,
    awuser_qq,
    wuser_qq,
    buser_qq,
    aruser_qq,
    ruser_qq,
    Q,
    \araddr_qq_reg[31] ,
    awready_qq,
    awvalid_qq,
    wvalid_qq,
    wready_qq,
    resetn_qq,
    arvalid_qq,
    arready_qq,
    arid_index_q,
    rid_index_q,
    rvalid_qq,
    rready_qq,
    \awlen_qq_reg[7] ,
    \awsize_qq_reg[2] ,
    \arlen_qq_reg[7] ,
    \arsize_qq_reg[2] ,
    wcam_overflow_q,
    \awburst_qq_reg[1] ,
    \awcache_qq_reg[3] ,
    \awprot_qq_reg[2] ,
    \awqos_qq_reg[3] ,
    \awregion_qq_reg[3] ,
    \wdata_qq_reg[127] ,
    \wstrb_qq_reg[15] ,
    \bresp_qq_reg[1] ,
    \arburst_qq_reg[1] ,
    \arcache_qq_reg[3] ,
    \arprot_qq_reg[2] ,
    \arqos_qq_reg[3] ,
    \arregion_qq_reg[3] ,
    \rdata_qq_reg[127] ,
    \rresp_qq_reg[1] ,
    data_in,
    bid_index_q,
    bready_qq,
    bvalid_qq,
    bid_mismatch_q,
    rcam_overflow_q,
    rid_mismatch_q);
  output [60:0]pc_status;
  output pc_asserted_i_reg;
  input aclk;
  input awid_qq;
  input wlast_qq;
  input bid_qq;
  input arid_qq;
  input rid_qq;
  input rlast_qq;
  input awuser_qq;
  input wuser_qq;
  input buser_qq;
  input aruser_qq;
  input ruser_qq;
  input [31:0]Q;
  input [31:0]\araddr_qq_reg[31] ;
  input awready_qq;
  input awvalid_qq;
  input wvalid_qq;
  input wready_qq;
  input resetn_qq;
  input arvalid_qq;
  input arready_qq;
  input arid_index_q;
  input rid_index_q;
  input rvalid_qq;
  input rready_qq;
  input [7:0]\awlen_qq_reg[7] ;
  input [2:0]\awsize_qq_reg[2] ;
  input [7:0]\arlen_qq_reg[7] ;
  input [2:0]\arsize_qq_reg[2] ;
  input wcam_overflow_q;
  input [1:0]\awburst_qq_reg[1] ;
  input [3:0]\awcache_qq_reg[3] ;
  input [2:0]\awprot_qq_reg[2] ;
  input [3:0]\awqos_qq_reg[3] ;
  input [3:0]\awregion_qq_reg[3] ;
  input [127:0]\wdata_qq_reg[127] ;
  input [15:0]\wstrb_qq_reg[15] ;
  input [1:0]\bresp_qq_reg[1] ;
  input [1:0]\arburst_qq_reg[1] ;
  input [3:0]\arcache_qq_reg[3] ;
  input [2:0]\arprot_qq_reg[2] ;
  input [3:0]\arqos_qq_reg[3] ;
  input [3:0]\arregion_qq_reg[3] ;
  input [127:0]\rdata_qq_reg[127] ;
  input [1:0]\rresp_qq_reg[1] ;
  input [0:0]data_in;
  input bid_index_q;
  input bready_qq;
  input bvalid_qq;
  input bid_mismatch_q;
  input rcam_overflow_q;
  input rid_mismatch_q;

  wire ASR_590;
  wire ASR_610;
  wire AWCMD_n_1;
  wire AWCMD_n_14;
  wire AWCMD_n_15;
  wire AWCMD_n_16;
  wire AWCMD_n_17;
  wire AWCMD_n_18;
  wire AWCMD_n_19;
  wire AWCMD_n_2;
  wire AWCMD_n_20;
  wire AWCMD_n_21;
  wire AWCMD_n_22;
  wire AWCMD_n_23;
  wire AWCMD_n_24;
  wire AWCMD_n_25;
  wire AWCMD_n_26;
  wire AWCMD_n_27;
  wire AWCMD_n_29;
  wire AWCMD_n_3;
  wire AWCMD_n_30;
  wire AWCMD_n_33;
  wire AWCMD_n_34;
  wire AWCMD_n_4;
  wire AWIDOut;
  wire [2:0]AWStrbsizeOut;
  wire AWXferCountOverflow;
  wire \AWXferCount[1][1]_i_3_n_0 ;
  wire [1:0]\AWXferCount_reg[0]_2 ;
  wire [1:0]\AWXferCount_reg[1]_1 ;
  wire BStrbError;
  wire BStrbError_i_1_n_0;
  wire BrespErrorLead;
  wire BrespErrorLead_i_3_n_0;
  wire [3:0]CHKSTRB_eq;
  wire CHKSTRB_eq0;
  wire \CHKSTRB_eq[0]_i_2_n_0 ;
  wire \CHKSTRB_eq[1]_i_2_n_0 ;
  wire \CHKSTRB_eq[2]_i_2_n_0 ;
  wire \CHKSTRB_eq[3]_i_2_n_0 ;
  wire CHKSTRB_stage_1_eq;
  wire CHKSTRB_stage_1_eq0_n_0;
  wire CHKSTRB_stage_2_eq;
  wire CheckStrbAssert;
  wire [31:0]Q;
  wire [15:1]StrbMask_q1;
  wire [15:1]StrbMask_q10;
  wire StrbMask_q10_carry__0_n_2;
  wire StrbMask_q10_carry__0_n_3;
  wire StrbMask_q10_carry__0_n_5;
  wire StrbMask_q10_carry__0_n_6;
  wire StrbMask_q10_carry__0_n_7;
  wire StrbMask_q10_carry_n_0;
  wire StrbMask_q10_carry_n_1;
  wire StrbMask_q10_carry_n_2;
  wire StrbMask_q10_carry_n_3;
  wire StrbMask_q10_carry_n_5;
  wire StrbMask_q10_carry_n_6;
  wire StrbMask_q10_carry_n_7;
  wire [15:0]StrbMask_q2;
  wire \StrbMask_q2[0]_i_1_n_0 ;
  wire \StrbMask_q2[10]_i_1_n_0 ;
  wire \StrbMask_q2[10]_i_2_n_0 ;
  wire \StrbMask_q2[11]_i_1_n_0 ;
  wire \StrbMask_q2[11]_i_2_n_0 ;
  wire \StrbMask_q2[11]_i_3_n_0 ;
  wire \StrbMask_q2[12]_i_1_n_0 ;
  wire \StrbMask_q2[12]_i_2_n_0 ;
  wire \StrbMask_q2[12]_i_3_n_0 ;
  wire \StrbMask_q2[13]_i_1_n_0 ;
  wire \StrbMask_q2[13]_i_2_n_0 ;
  wire \StrbMask_q2[13]_i_3_n_0 ;
  wire \StrbMask_q2[14]_i_1_n_0 ;
  wire \StrbMask_q2[14]_i_2_n_0 ;
  wire \StrbMask_q2[14]_i_3_n_0 ;
  wire \StrbMask_q2[15]_i_1_n_0 ;
  wire \StrbMask_q2[15]_i_2_n_0 ;
  wire \StrbMask_q2[15]_i_3_n_0 ;
  wire \StrbMask_q2[15]_i_4_n_0 ;
  wire \StrbMask_q2[15]_i_5_n_0 ;
  wire \StrbMask_q2[15]_i_6_n_0 ;
  wire \StrbMask_q2[15]_i_7_n_0 ;
  wire \StrbMask_q2[15]_i_8_n_0 ;
  wire \StrbMask_q2[1]_i_1_n_0 ;
  wire \StrbMask_q2[1]_i_2_n_0 ;
  wire \StrbMask_q2[2]_i_1_n_0 ;
  wire \StrbMask_q2[2]_i_2_n_0 ;
  wire \StrbMask_q2[3]_i_1_n_0 ;
  wire \StrbMask_q2[3]_i_2_n_0 ;
  wire \StrbMask_q2[4]_i_1_n_0 ;
  wire \StrbMask_q2[4]_i_2_n_0 ;
  wire \StrbMask_q2[5]_i_1_n_0 ;
  wire \StrbMask_q2[5]_i_2_n_0 ;
  wire \StrbMask_q2[6]_i_1_n_0 ;
  wire \StrbMask_q2[6]_i_2_n_0 ;
  wire \StrbMask_q2[7]_i_1_n_0 ;
  wire \StrbMask_q2[7]_i_2_n_0 ;
  wire \StrbMask_q2[8]_i_1_n_0 ;
  wire \StrbMask_q2[8]_i_2_n_0 ;
  wire \StrbMask_q2[8]_i_3_n_0 ;
  wire \StrbMask_q2[9]_i_1_n_0 ;
  wire \StrbMask_q2[9]_i_2_n_0 ;
  wire \StrbMask_q3_n[0]_i_1_n_0 ;
  wire \StrbMask_q3_n[10]_i_1_n_0 ;
  wire \StrbMask_q3_n[10]_i_2_n_0 ;
  wire \StrbMask_q3_n[11]_i_1_n_0 ;
  wire \StrbMask_q3_n[11]_i_2_n_0 ;
  wire \StrbMask_q3_n[12]_i_1_n_0 ;
  wire \StrbMask_q3_n[12]_i_2_n_0 ;
  wire \StrbMask_q3_n[13]_i_1_n_0 ;
  wire \StrbMask_q3_n[13]_i_2_n_0 ;
  wire \StrbMask_q3_n[14]_i_1_n_0 ;
  wire \StrbMask_q3_n[14]_i_2_n_0 ;
  wire \StrbMask_q3_n[15]_i_1_n_0 ;
  wire \StrbMask_q3_n[15]_i_2_n_0 ;
  wire \StrbMask_q3_n[15]_i_3_n_0 ;
  wire \StrbMask_q3_n[15]_i_4_n_0 ;
  wire \StrbMask_q3_n[15]_i_5_n_0 ;
  wire \StrbMask_q3_n[1]_i_1_n_0 ;
  wire \StrbMask_q3_n[2]_i_1_n_0 ;
  wire \StrbMask_q3_n[3]_i_1_n_0 ;
  wire \StrbMask_q3_n[3]_i_2_n_0 ;
  wire \StrbMask_q3_n[4]_i_1_n_0 ;
  wire \StrbMask_q3_n[4]_i_2_n_0 ;
  wire \StrbMask_q3_n[5]_i_1_n_0 ;
  wire \StrbMask_q3_n[5]_i_2_n_0 ;
  wire \StrbMask_q3_n[6]_i_1_n_0 ;
  wire \StrbMask_q3_n[6]_i_2_n_0 ;
  wire \StrbMask_q3_n[7]_i_1_n_0 ;
  wire \StrbMask_q3_n[7]_i_2_n_0 ;
  wire \StrbMask_q3_n[7]_i_3_n_0 ;
  wire \StrbMask_q3_n[8]_i_1_n_0 ;
  wire \StrbMask_q3_n[8]_i_2_n_0 ;
  wire \StrbMask_q3_n[8]_i_3_n_0 ;
  wire \StrbMask_q3_n[9]_i_1_n_0 ;
  wire \StrbMask_q3_n[9]_i_2_n_0 ;
  wire \StrbMask_q3_n_reg_n_0_[0] ;
  wire \StrbMask_q3_n_reg_n_0_[10] ;
  wire \StrbMask_q3_n_reg_n_0_[11] ;
  wire \StrbMask_q3_n_reg_n_0_[12] ;
  wire \StrbMask_q3_n_reg_n_0_[13] ;
  wire \StrbMask_q3_n_reg_n_0_[14] ;
  wire \StrbMask_q3_n_reg_n_0_[15] ;
  wire \StrbMask_q3_n_reg_n_0_[1] ;
  wire \StrbMask_q3_n_reg_n_0_[2] ;
  wire \StrbMask_q3_n_reg_n_0_[3] ;
  wire \StrbMask_q3_n_reg_n_0_[4] ;
  wire \StrbMask_q3_n_reg_n_0_[5] ;
  wire \StrbMask_q3_n_reg_n_0_[6] ;
  wire \StrbMask_q3_n_reg_n_0_[7] ;
  wire \StrbMask_q3_n_reg_n_0_[8] ;
  wire \StrbMask_q3_n_reg_n_0_[9] ;
  wire \Strb_q2_reg[0]_srl2_n_0 ;
  wire \Strb_q2_reg[10]_srl2_n_0 ;
  wire \Strb_q2_reg[11]_srl2_n_0 ;
  wire \Strb_q2_reg[12]_srl2_n_0 ;
  wire \Strb_q2_reg[13]_srl2_n_0 ;
  wire \Strb_q2_reg[14]_srl2_n_0 ;
  wire \Strb_q2_reg[15]_srl2_n_0 ;
  wire \Strb_q2_reg[1]_srl2_n_0 ;
  wire \Strb_q2_reg[2]_srl2_n_0 ;
  wire \Strb_q2_reg[3]_srl2_n_0 ;
  wire \Strb_q2_reg[4]_srl2_n_0 ;
  wire \Strb_q2_reg[5]_srl2_n_0 ;
  wire \Strb_q2_reg[6]_srl2_n_0 ;
  wire \Strb_q2_reg[7]_srl2_n_0 ;
  wire \Strb_q2_reg[8]_srl2_n_0 ;
  wire \Strb_q2_reg[9]_srl2_n_0 ;
  wire \Strb_q3_reg_n_0_[0] ;
  wire \Strb_q3_reg_n_0_[10] ;
  wire \Strb_q3_reg_n_0_[11] ;
  wire \Strb_q3_reg_n_0_[12] ;
  wire \Strb_q3_reg_n_0_[13] ;
  wire \Strb_q3_reg_n_0_[14] ;
  wire \Strb_q3_reg_n_0_[15] ;
  wire \Strb_q3_reg_n_0_[1] ;
  wire \Strb_q3_reg_n_0_[2] ;
  wire \Strb_q3_reg_n_0_[3] ;
  wire \Strb_q3_reg_n_0_[4] ;
  wire \Strb_q3_reg_n_0_[5] ;
  wire \Strb_q3_reg_n_0_[6] ;
  wire \Strb_q3_reg_n_0_[7] ;
  wire \Strb_q3_reg_n_0_[8] ;
  wire \Strb_q3_reg_n_0_[9] ;
  wire WCHECK_n_0;
  wire WCHECK_n_10;
  wire WCHECK_n_14;
  wire WCHECK_n_15;
  wire WCHECK_n_16;
  wire WCHECK_n_17;
  wire WCHECK_n_18;
  wire WCHECK_n_19;
  wire WCHECK_n_20;
  wire WCHECK_n_21;
  wire WCHECK_n_22;
  wire WCHECK_n_23;
  wire WCHECK_n_24;
  wire WCHECK_n_25;
  wire WCHECK_n_26;
  wire WCHECK_n_27;
  wire WCHECK_n_28;
  wire WCHECK_n_29;
  wire WCHECK_n_3;
  wire WCHECK_n_5;
  wire WCHECK_n_6;
  wire WCHECK_n_7;
  wire WCHECK_n_8;
  wire WCHECK_n_9;
  wire [5:3]WCheckCountOut;
  wire \WCountIn[0]_i_1_n_0 ;
  wire \WCountIn[1]_i_1_n_0 ;
  wire \WCountIn[2]_i_1_n_0 ;
  wire \WCountIn[3]_i_1_n_0 ;
  wire \WCountIn[4]_i_1_n_0 ;
  wire \WCountIn[4]_i_2_n_0 ;
  wire \WCountIn[5]_i_1_n_0 ;
  wire \WCountIn[6]_i_1_n_0 ;
  wire \WCountIn[7]_i_1_n_0 ;
  wire \WCountIn[7]_i_2_n_0 ;
  wire \WCountIn[8]_i_1_n_0 ;
  wire \WCountIn[8]_i_2_n_0 ;
  wire [8:0]WCountIn_reg;
  wire WDataNumError1;
  wire [15:0]WSTRBq;
  wire WSTRBq0;
  wire aclk;
  wire [31:0]\araddr_qq_reg[31] ;
  wire [1:0]\arburst_qq_reg[1] ;
  wire [3:0]\arcache_qq_reg[3] ;
  wire arid_index_q;
  wire arid_qq;
  wire [7:0]\arlen_qq_reg[7] ;
  wire [2:0]\arprot_qq_reg[2] ;
  wire [3:0]\arqos_qq_reg[3] ;
  wire arready_qq;
  wire [3:0]\arregion_qq_reg[3] ;
  wire [2:0]\arsize_qq_reg[2] ;
  wire aruser_qq;
  wire arvalid_qq;
  wire [1:0]\awburst_qq_reg[1] ;
  wire [3:0]\awcache_qq_reg[3] ;
  wire awid_qq;
  wire [7:0]\awlen_qq_reg[7] ;
  wire [2:0]\awprot_qq_reg[2] ;
  wire [3:0]\awqos_qq_reg[3] ;
  wire awready_qq;
  wire [3:0]\awregion_qq_reg[3] ;
  wire [2:0]\awsize_qq_reg[2] ;
  wire awuser_qq;
  wire awvalid_qq;
  wire bid_index_q;
  wire bid_mismatch_q;
  wire bid_qq;
  wire bready_qq;
  wire [1:0]\bresp_qq_reg[1] ;
  wire buser_qq;
  wire bvalid_qq;
  wire clear;
  wire cmd_pop_1;
  wire [1:0]cnt;
  wire [1:0]cnt_0;
  wire [0:0]data_in;
  wire first_strb;
  wire first_strb_i_1_n_0;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_10_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_11_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_12_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_13_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_14_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_15_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_16_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_17_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_3_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_4_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_5_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_6_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_7_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_8_n_0 ;
  wire \gen_deflt_chks.ArAddrIncr_q1[3]_i_9_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_10_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_11_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_12_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_13_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_14_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_15_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_16_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_17_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_3_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_4_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_5_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_6_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_7_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_8_n_0 ;
  wire \gen_deflt_chks.AwAddrIncr_q1[3]_i_9_n_0 ;
  wire \gen_rthread_loop[0].RCount[0][8]_i_2_n_0 ;
  wire \gen_rthread_loop[0].RCount[0][8]_i_4_n_0 ;
  wire [8:0]\gen_rthread_loop[0].RCount_reg[0]_3 ;
  wire \gen_rthread_loop[0].RDCAM_n_0 ;
  wire \gen_rthread_loop[0].RDCAM_n_1 ;
  wire \gen_rthread_loop[0].RDCAM_n_2 ;
  wire \gen_rthread_loop[1].RCount[1][8]_i_4_n_0 ;
  wire [8:0]\gen_rthread_loop[1].RCount_reg[1]_4 ;
  wire \gen_rthread_loop[1].RDCAM_n_2 ;
  wire \gen_rthread_loop[1].RDCAM_n_3 ;
  wire \gen_rthread_loop[1].RDCAM_n_4 ;
  wire \gen_rthread_loop[1].RDCAM_n_5 ;
  wire \gen_rthread_loop[1].RDCAM_n_6 ;
  wire i_Axi4PC_asr_inline_n_0;
  wire i_Axi4PC_asr_inline_n_1;
  wire i_Axi4PC_asr_inline_n_10;
  wire i_Axi4PC_asr_inline_n_11;
  wire i_Axi4PC_asr_inline_n_12;
  wire i_Axi4PC_asr_inline_n_13;
  wire i_Axi4PC_asr_inline_n_14;
  wire i_Axi4PC_asr_inline_n_15;
  wire i_Axi4PC_asr_inline_n_16;
  wire i_Axi4PC_asr_inline_n_17;
  wire i_Axi4PC_asr_inline_n_18;
  wire i_Axi4PC_asr_inline_n_19;
  wire i_Axi4PC_asr_inline_n_2;
  wire i_Axi4PC_asr_inline_n_20;
  wire i_Axi4PC_asr_inline_n_21;
  wire i_Axi4PC_asr_inline_n_22;
  wire i_Axi4PC_asr_inline_n_23;
  wire i_Axi4PC_asr_inline_n_24;
  wire i_Axi4PC_asr_inline_n_25;
  wire i_Axi4PC_asr_inline_n_26;
  wire i_Axi4PC_asr_inline_n_27;
  wire i_Axi4PC_asr_inline_n_28;
  wire i_Axi4PC_asr_inline_n_29;
  wire i_Axi4PC_asr_inline_n_3;
  wire i_Axi4PC_asr_inline_n_30;
  wire i_Axi4PC_asr_inline_n_31;
  wire i_Axi4PC_asr_inline_n_32;
  wire i_Axi4PC_asr_inline_n_33;
  wire i_Axi4PC_asr_inline_n_34;
  wire i_Axi4PC_asr_inline_n_35;
  wire i_Axi4PC_asr_inline_n_36;
  wire i_Axi4PC_asr_inline_n_37;
  wire i_Axi4PC_asr_inline_n_38;
  wire i_Axi4PC_asr_inline_n_39;
  wire i_Axi4PC_asr_inline_n_4;
  wire i_Axi4PC_asr_inline_n_40;
  wire i_Axi4PC_asr_inline_n_41;
  wire i_Axi4PC_asr_inline_n_42;
  wire i_Axi4PC_asr_inline_n_43;
  wire i_Axi4PC_asr_inline_n_44;
  wire i_Axi4PC_asr_inline_n_45;
  wire i_Axi4PC_asr_inline_n_46;
  wire i_Axi4PC_asr_inline_n_47;
  wire i_Axi4PC_asr_inline_n_48;
  wire i_Axi4PC_asr_inline_n_49;
  wire i_Axi4PC_asr_inline_n_5;
  wire i_Axi4PC_asr_inline_n_50;
  wire i_Axi4PC_asr_inline_n_51;
  wire i_Axi4PC_asr_inline_n_52;
  wire i_Axi4PC_asr_inline_n_53;
  wire i_Axi4PC_asr_inline_n_54;
  wire i_Axi4PC_asr_inline_n_55;
  wire i_Axi4PC_asr_inline_n_56;
  wire i_Axi4PC_asr_inline_n_57;
  wire i_Axi4PC_asr_inline_n_58;
  wire i_Axi4PC_asr_inline_n_59;
  wire i_Axi4PC_asr_inline_n_6;
  wire i_Axi4PC_asr_inline_n_60;
  wire i_Axi4PC_asr_inline_n_61;
  wire i_Axi4PC_asr_inline_n_62;
  wire i_Axi4PC_asr_inline_n_63;
  wire i_Axi4PC_asr_inline_n_64;
  wire i_Axi4PC_asr_inline_n_65;
  wire i_Axi4PC_asr_inline_n_66;
  wire i_Axi4PC_asr_inline_n_67;
  wire i_Axi4PC_asr_inline_n_68;
  wire i_Axi4PC_asr_inline_n_69;
  wire i_Axi4PC_asr_inline_n_7;
  wire i_Axi4PC_asr_inline_n_70;
  wire i_Axi4PC_asr_inline_n_71;
  wire i_Axi4PC_asr_inline_n_72;
  wire i_Axi4PC_asr_inline_n_73;
  wire i_Axi4PC_asr_inline_n_74;
  wire i_Axi4PC_asr_inline_n_75;
  wire i_Axi4PC_asr_inline_n_76;
  wire i_Axi4PC_asr_inline_n_8;
  wire i_Axi4PC_asr_inline_n_9;
  wire [6:0]mask_shift_stage_1;
  wire \mask_shift_stage_1[0]_i_1_n_0 ;
  wire \mask_shift_stage_1[1]_i_1_n_0 ;
  wire \mask_shift_stage_1[2]_i_1_n_0 ;
  wire \mask_shift_stage_1[3]_i_1_n_0 ;
  wire \mask_shift_stage_1[4]_i_1_n_0 ;
  wire \mask_shift_stage_1[5]_i_1_n_0 ;
  wire \mask_shift_stage_1[6]_i_1_n_0 ;
  wire [3:0]mask_shift_stage_2;
  wire [3:0]mask_shift_stage_2_q1;
  wire [8:0]p_0_in;
  wire [8:0]p_0_in__0;
  wire [7:0]p_0_in__0_0;
  wire [2:0]p_0_out;
  wire [1:0]p_2_in;
  wire p_41_in;
  wire pc_asserted_i_i_10_n_0;
  wire pc_asserted_i_i_11_n_0;
  wire pc_asserted_i_i_12_n_0;
  wire pc_asserted_i_i_13_n_0;
  wire pc_asserted_i_i_14_n_0;
  wire pc_asserted_i_i_15_n_0;
  wire pc_asserted_i_i_16_n_0;
  wire pc_asserted_i_i_2_n_0;
  wire pc_asserted_i_i_3_n_0;
  wire pc_asserted_i_i_4_n_0;
  wire pc_asserted_i_i_5_n_0;
  wire pc_asserted_i_i_6_n_0;
  wire pc_asserted_i_i_7_n_0;
  wire pc_asserted_i_i_8_n_0;
  wire pc_asserted_i_i_9_n_0;
  wire pc_asserted_i_reg;
  wire [60:0]pc_status;
  wire rcam_overflow_q;
  wire [127:0]\rdata_qq_reg[127] ;
  wire resetn_qq;
  wire rid_index_q;
  wire rid_mismatch_q;
  wire rid_qq;
  wire rlast_qq;
  wire rready_qq;
  wire [1:0]\rresp_qq_reg[1] ;
  wire ruser_qq;
  wire rvalid_qq;
  wire sel;
  wire wcam_overflow_q;
  wire [6:6]wchechPop_shift;
  wire \wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3_n_0 ;
  wire \wchechPop_shift_reg[5]_CORE_wchechPop_shift_reg_r_4_n_0 ;
  wire wchechPop_shift_reg_gate_n_0;
  wire wchechPop_shift_reg_r_0_n_0;
  wire wchechPop_shift_reg_r_1_n_0;
  wire wchechPop_shift_reg_r_2_n_0;
  wire wchechPop_shift_reg_r_3_n_0;
  wire wchechPop_shift_reg_r_4_n_0;
  wire wchechPop_shift_reg_r_n_0;
  wire [127:0]\wdata_qq_reg[127] ;
  wire wlast_qq;
  wire wready_qq;
  wire [15:0]\wstrb_qq_reg[15] ;
  wire wuser_qq;
  wire wvalid_qq;
  wire [3:3]NLW_StrbMask_q10_carry_CO_UNCONNECTED;
  wire [7:3]NLW_StrbMask_q10_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_StrbMask_q10_carry__0_DI_UNCONNECTED;
  wire [7:7]NLW_StrbMask_q10_carry__0_O_UNCONNECTED;
  wire [7:7]NLW_StrbMask_q10_carry__0_S_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_syn_fifo__parameterized0 AWCMD
       (.AWXferCountOverflow(AWXferCountOverflow),
        .AWXferCountOverflow_reg(AWCMD_n_33),
        .\AWXferCount_reg[0][0] (AWCMD_n_27),
        .\AWXferCount_reg[0][0]_0 (BrespErrorLead_i_3_n_0),
        .\AWXferCount_reg[0][1] (AWCMD_n_29),
        .\AWXferCount_reg[1][1] (p_2_in[1]),
        .\AWXferCount_reg[1][1]_0 (\AWXferCount[1][1]_i_3_n_0 ),
        .\AWXferCount_reg[1][1]_1 (\AWXferCount_reg[1]_1 ),
        .BrespErrorLead_reg(AWCMD_n_30),
        .D({AWCMD_n_1,AWCMD_n_2,AWCMD_n_3,AWCMD_n_4}),
        .E(AWCMD_n_26),
        .Q(\AWXferCount_reg[0]_2 ),
        .S({AWCMD_n_21,AWCMD_n_22,AWCMD_n_23,AWCMD_n_24}),
        .\WCountIn_reg[1] (WCheckCountOut),
        .WDataNumError1_reg(AWCMD_n_34),
        .aclk(aclk),
        .awready_qq(awready_qq),
        .awvalid_qq(awvalid_qq),
        .awvalid_qq_reg(WCHECK_n_3),
        .bid_index_q(bid_index_q),
        .bid_mismatch_q(bid_mismatch_q),
        .bready_qq(bready_qq),
        .bvalid_qq(bvalid_qq),
        .bvalid_qq_reg(WCHECK_n_5),
        .bvalid_qq_reg_0(WCHECK_n_8),
        .\cnt_reg[1]_0 (WCHECK_n_6),
        .\cnt_reg[1]_1 (cnt_0),
        .\cnt_reg[1]_2 (WCHECK_n_10),
        .data_in({data_in,\awlen_qq_reg[7] ,\awsize_qq_reg[2] ,Q[6:0]}),
        .data_out({AWIDOut,p_0_in__0_0[7:6],p_0_in__0_0[2:0],AWStrbsizeOut,AWCMD_n_14,AWCMD_n_15,AWCMD_n_16,AWCMD_n_17,AWCMD_n_18,AWCMD_n_19,AWCMD_n_20}),
        .p_41_in(p_41_in),
        .pc_status(pc_status[59]),
        .\pc_status_i_reg[80] (AWCMD_n_25),
        .\rd_ptr_reg[0]_0 (cnt),
        .resetn_qq(resetn_qq),
        .resetn_qq_reg(i_Axi4PC_asr_inline_n_0),
        .wcam_overflow_q(wcam_overflow_q));
  FDRE AWXferCountOverflow_reg
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_33),
        .Q(AWXferCountOverflow),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hB8748B47)) 
    \AWXferCount[1][1]_i_3 
       (.I0(\AWXferCount_reg[1]_1 [1]),
        .I1(bid_index_q),
        .I2(\AWXferCount_reg[0]_2 [1]),
        .I3(\AWXferCount_reg[1]_1 [0]),
        .I4(\AWXferCount_reg[0]_2 [0]),
        .O(\AWXferCount[1][1]_i_3_n_0 ));
  FDRE \AWXferCount_reg[0][0] 
       (.C(aclk),
        .CE(AWCMD_n_27),
        .D(WCHECK_n_7),
        .Q(\AWXferCount_reg[0]_2 [0]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \AWXferCount_reg[0][1] 
       (.C(aclk),
        .CE(AWCMD_n_27),
        .D(AWCMD_n_29),
        .Q(\AWXferCount_reg[0]_2 [1]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \AWXferCount_reg[1][0] 
       (.C(aclk),
        .CE(AWCMD_n_26),
        .D(p_2_in[0]),
        .Q(\AWXferCount_reg[1]_1 [0]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \AWXferCount_reg[1][1] 
       (.C(aclk),
        .CE(AWCMD_n_26),
        .D(p_2_in[1]),
        .Q(\AWXferCount_reg[1]_1 [1]),
        .R(i_Axi4PC_asr_inline_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    BStrbError_i_1
       (.I0(wchechPop_shift),
        .I1(CheckStrbAssert),
        .O(BStrbError_i_1_n_0));
  FDRE BStrbError_reg
       (.C(aclk),
        .CE(1'b1),
        .D(BStrbError_i_1_n_0),
        .Q(BStrbError),
        .R(i_Axi4PC_asr_inline_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    BrespErrorLead_i_3
       (.I0(\AWXferCount_reg[0]_2 [0]),
        .I1(\AWXferCount_reg[1]_1 [0]),
        .I2(\AWXferCount_reg[0]_2 [1]),
        .I3(bid_index_q),
        .I4(\AWXferCount_reg[1]_1 [1]),
        .O(BrespErrorLead_i_3_n_0));
  FDRE BrespErrorLead_reg
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_30),
        .Q(BrespErrorLead),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    \CHKSTRB_eq[0]_i_1 
       (.I0(\Strb_q3_reg_n_0_[1] ),
        .I1(\StrbMask_q3_n_reg_n_0_[1] ),
        .I2(\Strb_q3_reg_n_0_[0] ),
        .I3(\StrbMask_q3_n_reg_n_0_[0] ),
        .I4(\CHKSTRB_eq[0]_i_2_n_0 ),
        .O(p_0_out[0]));
  LUT4 #(
    .INIT(16'h0777)) 
    \CHKSTRB_eq[0]_i_2 
       (.I0(\StrbMask_q3_n_reg_n_0_[3] ),
        .I1(\Strb_q3_reg_n_0_[3] ),
        .I2(\StrbMask_q3_n_reg_n_0_[2] ),
        .I3(\Strb_q3_reg_n_0_[2] ),
        .O(\CHKSTRB_eq[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    \CHKSTRB_eq[1]_i_1 
       (.I0(\Strb_q3_reg_n_0_[5] ),
        .I1(\StrbMask_q3_n_reg_n_0_[5] ),
        .I2(\Strb_q3_reg_n_0_[4] ),
        .I3(\StrbMask_q3_n_reg_n_0_[4] ),
        .I4(\CHKSTRB_eq[1]_i_2_n_0 ),
        .O(p_0_out[1]));
  LUT4 #(
    .INIT(16'h0777)) 
    \CHKSTRB_eq[1]_i_2 
       (.I0(\StrbMask_q3_n_reg_n_0_[7] ),
        .I1(\Strb_q3_reg_n_0_[7] ),
        .I2(\StrbMask_q3_n_reg_n_0_[6] ),
        .I3(\Strb_q3_reg_n_0_[6] ),
        .O(\CHKSTRB_eq[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    \CHKSTRB_eq[2]_i_1 
       (.I0(\Strb_q3_reg_n_0_[9] ),
        .I1(\StrbMask_q3_n_reg_n_0_[9] ),
        .I2(\Strb_q3_reg_n_0_[8] ),
        .I3(\StrbMask_q3_n_reg_n_0_[8] ),
        .I4(\CHKSTRB_eq[2]_i_2_n_0 ),
        .O(p_0_out[2]));
  LUT4 #(
    .INIT(16'h0777)) 
    \CHKSTRB_eq[2]_i_2 
       (.I0(\StrbMask_q3_n_reg_n_0_[11] ),
        .I1(\Strb_q3_reg_n_0_[11] ),
        .I2(\StrbMask_q3_n_reg_n_0_[10] ),
        .I3(\Strb_q3_reg_n_0_[10] ),
        .O(\CHKSTRB_eq[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    \CHKSTRB_eq[3]_i_1 
       (.I0(\Strb_q3_reg_n_0_[13] ),
        .I1(\StrbMask_q3_n_reg_n_0_[13] ),
        .I2(\Strb_q3_reg_n_0_[12] ),
        .I3(\StrbMask_q3_n_reg_n_0_[12] ),
        .I4(\CHKSTRB_eq[3]_i_2_n_0 ),
        .O(CHKSTRB_eq0));
  LUT4 #(
    .INIT(16'h0777)) 
    \CHKSTRB_eq[3]_i_2 
       (.I0(\StrbMask_q3_n_reg_n_0_[15] ),
        .I1(\Strb_q3_reg_n_0_[15] ),
        .I2(\StrbMask_q3_n_reg_n_0_[14] ),
        .I3(\Strb_q3_reg_n_0_[14] ),
        .O(\CHKSTRB_eq[3]_i_2_n_0 ));
  FDRE \CHKSTRB_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(CHKSTRB_eq[0]),
        .R(1'b0));
  FDRE \CHKSTRB_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(CHKSTRB_eq[1]),
        .R(1'b0));
  FDRE \CHKSTRB_eq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(CHKSTRB_eq[2]),
        .R(1'b0));
  FDRE \CHKSTRB_eq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(CHKSTRB_eq0),
        .Q(CHKSTRB_eq[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    CHKSTRB_stage_1_eq0
       (.I0(CHKSTRB_eq[1]),
        .I1(CHKSTRB_eq[0]),
        .I2(CHKSTRB_eq[2]),
        .I3(CHKSTRB_eq[3]),
        .O(CHKSTRB_stage_1_eq0_n_0));
  FDRE \CHKSTRB_stage_1_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(CHKSTRB_stage_1_eq0_n_0),
        .Q(CHKSTRB_stage_1_eq),
        .R(1'b0));
  FDRE \CHKSTRB_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(CHKSTRB_stage_1_eq),
        .Q(CHKSTRB_stage_2_eq),
        .R(1'b0));
  FDRE CheckStrbAssert_reg
       (.C(aclk),
        .CE(1'b1),
        .D(CHKSTRB_stage_2_eq),
        .Q(CheckStrbAssert),
        .R(i_Axi4PC_asr_inline_n_0));
  CARRY8 StrbMask_q10_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({StrbMask_q10_carry_n_0,StrbMask_q10_carry_n_1,StrbMask_q10_carry_n_2,StrbMask_q10_carry_n_3,NLW_StrbMask_q10_carry_CO_UNCONNECTED[3],StrbMask_q10_carry_n_5,StrbMask_q10_carry_n_6,StrbMask_q10_carry_n_7}),
        .DI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O(StrbMask_q10[8:1]),
        .S({AWCMD_n_21,1'b1,1'b1,1'b1,AWCMD_n_22,1'b1,AWCMD_n_23,AWCMD_n_24}));
  CARRY8 StrbMask_q10_carry__0
       (.CI(StrbMask_q10_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_StrbMask_q10_carry__0_CO_UNCONNECTED[7:6],StrbMask_q10_carry__0_n_2,StrbMask_q10_carry__0_n_3,NLW_StrbMask_q10_carry__0_CO_UNCONNECTED[3],StrbMask_q10_carry__0_n_5,StrbMask_q10_carry__0_n_6,StrbMask_q10_carry__0_n_7}),
        .DI({NLW_StrbMask_q10_carry__0_DI_UNCONNECTED[7],1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O({NLW_StrbMask_q10_carry__0_O_UNCONNECTED[7],StrbMask_q10[15:9]}),
        .S({NLW_StrbMask_q10_carry__0_S_UNCONNECTED[7],1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}));
  FDRE \StrbMask_q1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[10]),
        .Q(StrbMask_q1[10]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[11]),
        .Q(StrbMask_q1[11]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[12]),
        .Q(StrbMask_q1[12]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[13]),
        .Q(StrbMask_q1[13]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[14]),
        .Q(StrbMask_q1[14]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[15]),
        .Q(StrbMask_q1[15]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[1]),
        .Q(StrbMask_q1[1]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[2]),
        .Q(StrbMask_q1[2]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[3]),
        .Q(StrbMask_q1[3]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[4]),
        .Q(StrbMask_q1[4]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[5]),
        .Q(StrbMask_q1[5]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[6]),
        .Q(StrbMask_q1[6]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[7]),
        .Q(StrbMask_q1[7]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[8]),
        .Q(StrbMask_q1[8]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(StrbMask_q10[9]),
        .Q(StrbMask_q1[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00010000)) 
    \StrbMask_q2[0]_i_1 
       (.I0(mask_shift_stage_1[1]),
        .I1(mask_shift_stage_1[3]),
        .I2(mask_shift_stage_1[2]),
        .I3(mask_shift_stage_1[0]),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[10]_i_1 
       (.I0(StrbMask_q1[10]),
        .I1(\StrbMask_q2[10]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[11]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \StrbMask_q2[10]_i_2 
       (.I0(StrbMask_q1[3]),
        .I1(mask_shift_stage_1[2]),
        .I2(StrbMask_q1[7]),
        .I3(mask_shift_stage_1[3]),
        .I4(mask_shift_stage_1[1]),
        .I5(\StrbMask_q2[12]_i_3_n_0 ),
        .O(\StrbMask_q2[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[11]_i_1 
       (.I0(StrbMask_q1[11]),
        .I1(\StrbMask_q2[11]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[12]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \StrbMask_q2[11]_i_2 
       (.I0(\StrbMask_q2[11]_i_3_n_0 ),
        .I1(mask_shift_stage_1[1]),
        .I2(\StrbMask_q2[13]_i_3_n_0 ),
        .O(\StrbMask_q2[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h3B38)) 
    \StrbMask_q2[11]_i_3 
       (.I0(StrbMask_q1[4]),
        .I1(mask_shift_stage_1[2]),
        .I2(mask_shift_stage_1[3]),
        .I3(StrbMask_q1[8]),
        .O(\StrbMask_q2[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[12]_i_1 
       (.I0(StrbMask_q1[12]),
        .I1(\StrbMask_q2[12]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[13]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \StrbMask_q2[12]_i_2 
       (.I0(\StrbMask_q2[12]_i_3_n_0 ),
        .I1(mask_shift_stage_1[1]),
        .I2(\StrbMask_q2[14]_i_3_n_0 ),
        .O(\StrbMask_q2[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \StrbMask_q2[12]_i_3 
       (.I0(StrbMask_q1[5]),
        .I1(mask_shift_stage_1[2]),
        .I2(StrbMask_q1[1]),
        .I3(mask_shift_stage_1[3]),
        .I4(StrbMask_q1[9]),
        .O(\StrbMask_q2[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[13]_i_1 
       (.I0(StrbMask_q1[13]),
        .I1(\StrbMask_q2[13]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[14]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \StrbMask_q2[13]_i_2 
       (.I0(\StrbMask_q2[13]_i_3_n_0 ),
        .I1(mask_shift_stage_1[1]),
        .I2(\StrbMask_q2[15]_i_5_n_0 ),
        .O(\StrbMask_q2[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \StrbMask_q2[13]_i_3 
       (.I0(StrbMask_q1[6]),
        .I1(mask_shift_stage_1[2]),
        .I2(StrbMask_q1[2]),
        .I3(mask_shift_stage_1[3]),
        .I4(StrbMask_q1[10]),
        .O(\StrbMask_q2[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[14]_i_1 
       (.I0(StrbMask_q1[14]),
        .I1(\StrbMask_q2[14]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[15]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \StrbMask_q2[14]_i_2 
       (.I0(\StrbMask_q2[14]_i_3_n_0 ),
        .I1(mask_shift_stage_1[1]),
        .I2(\StrbMask_q2[15]_i_7_n_0 ),
        .O(\StrbMask_q2[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \StrbMask_q2[14]_i_3 
       (.I0(StrbMask_q1[7]),
        .I1(mask_shift_stage_1[2]),
        .I2(StrbMask_q1[3]),
        .I3(mask_shift_stage_1[3]),
        .I4(StrbMask_q1[11]),
        .O(\StrbMask_q2[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[15]_i_1 
       (.I0(StrbMask_q1[15]),
        .I1(\StrbMask_q2[15]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[15]_i_3_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \StrbMask_q2[15]_i_2 
       (.I0(\StrbMask_q2[15]_i_5_n_0 ),
        .I1(mask_shift_stage_1[1]),
        .I2(\StrbMask_q2[15]_i_6_n_0 ),
        .O(\StrbMask_q2[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \StrbMask_q2[15]_i_3 
       (.I0(\StrbMask_q2[15]_i_7_n_0 ),
        .I1(mask_shift_stage_1[1]),
        .I2(\StrbMask_q2[15]_i_8_n_0 ),
        .O(\StrbMask_q2[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \StrbMask_q2[15]_i_4 
       (.I0(mask_shift_stage_1[6]),
        .I1(mask_shift_stage_1[4]),
        .I2(mask_shift_stage_1[5]),
        .O(\StrbMask_q2[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \StrbMask_q2[15]_i_5 
       (.I0(StrbMask_q1[8]),
        .I1(mask_shift_stage_1[2]),
        .I2(StrbMask_q1[4]),
        .I3(mask_shift_stage_1[3]),
        .I4(StrbMask_q1[12]),
        .O(\StrbMask_q2[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \StrbMask_q2[15]_i_6 
       (.I0(StrbMask_q1[2]),
        .I1(StrbMask_q1[10]),
        .I2(mask_shift_stage_1[2]),
        .I3(StrbMask_q1[6]),
        .I4(mask_shift_stage_1[3]),
        .I5(StrbMask_q1[14]),
        .O(\StrbMask_q2[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \StrbMask_q2[15]_i_7 
       (.I0(StrbMask_q1[1]),
        .I1(StrbMask_q1[9]),
        .I2(mask_shift_stage_1[2]),
        .I3(StrbMask_q1[5]),
        .I4(mask_shift_stage_1[3]),
        .I5(StrbMask_q1[13]),
        .O(\StrbMask_q2[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \StrbMask_q2[15]_i_8 
       (.I0(StrbMask_q1[3]),
        .I1(StrbMask_q1[11]),
        .I2(mask_shift_stage_1[2]),
        .I3(StrbMask_q1[7]),
        .I4(mask_shift_stage_1[3]),
        .I5(StrbMask_q1[15]),
        .O(\StrbMask_q2[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \StrbMask_q2[1]_i_1 
       (.I0(StrbMask_q1[1]),
        .I1(\StrbMask_q2[1]_i_2_n_0 ),
        .I2(mask_shift_stage_1[6]),
        .I3(mask_shift_stage_1[4]),
        .I4(mask_shift_stage_1[5]),
        .O(\StrbMask_q2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00000032)) 
    \StrbMask_q2[1]_i_2 
       (.I0(mask_shift_stage_1[0]),
        .I1(mask_shift_stage_1[2]),
        .I2(StrbMask_q1[1]),
        .I3(mask_shift_stage_1[3]),
        .I4(mask_shift_stage_1[1]),
        .O(\StrbMask_q2[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[2]_i_1 
       (.I0(StrbMask_q1[2]),
        .I1(\StrbMask_q2[2]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[3]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \StrbMask_q2[2]_i_2 
       (.I0(mask_shift_stage_1[2]),
        .I1(StrbMask_q1[1]),
        .I2(mask_shift_stage_1[3]),
        .I3(mask_shift_stage_1[1]),
        .O(\StrbMask_q2[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[3]_i_1 
       (.I0(StrbMask_q1[3]),
        .I1(\StrbMask_q2[3]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[4]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0032)) 
    \StrbMask_q2[3]_i_2 
       (.I0(mask_shift_stage_1[1]),
        .I1(mask_shift_stage_1[3]),
        .I2(StrbMask_q1[2]),
        .I3(mask_shift_stage_1[2]),
        .O(\StrbMask_q2[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[4]_i_1 
       (.I0(StrbMask_q1[4]),
        .I1(\StrbMask_q2[4]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[5]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \StrbMask_q2[4]_i_2 
       (.I0(StrbMask_q1[1]),
        .I1(mask_shift_stage_1[1]),
        .I2(mask_shift_stage_1[3]),
        .I3(StrbMask_q1[3]),
        .I4(mask_shift_stage_1[2]),
        .O(\StrbMask_q2[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[5]_i_1 
       (.I0(StrbMask_q1[5]),
        .I1(\StrbMask_q2[5]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[6]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00003B38)) 
    \StrbMask_q2[5]_i_2 
       (.I0(StrbMask_q1[2]),
        .I1(mask_shift_stage_1[1]),
        .I2(mask_shift_stage_1[2]),
        .I3(StrbMask_q1[4]),
        .I4(mask_shift_stage_1[3]),
        .O(\StrbMask_q2[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[6]_i_1 
       (.I0(StrbMask_q1[6]),
        .I1(\StrbMask_q2[6]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[7]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \StrbMask_q2[6]_i_2 
       (.I0(StrbMask_q1[3]),
        .I1(mask_shift_stage_1[1]),
        .I2(StrbMask_q1[1]),
        .I3(mask_shift_stage_1[2]),
        .I4(StrbMask_q1[5]),
        .I5(mask_shift_stage_1[3]),
        .O(\StrbMask_q2[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[7]_i_1 
       (.I0(StrbMask_q1[7]),
        .I1(\StrbMask_q2[7]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[8]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00CC00B800B8)) 
    \StrbMask_q2[7]_i_2 
       (.I0(StrbMask_q1[2]),
        .I1(mask_shift_stage_1[2]),
        .I2(StrbMask_q1[6]),
        .I3(mask_shift_stage_1[3]),
        .I4(StrbMask_q1[4]),
        .I5(mask_shift_stage_1[1]),
        .O(\StrbMask_q2[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[8]_i_1 
       (.I0(StrbMask_q1[8]),
        .I1(\StrbMask_q2[8]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[9]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \StrbMask_q2[8]_i_2 
       (.I0(StrbMask_q1[1]),
        .I1(mask_shift_stage_1[2]),
        .I2(StrbMask_q1[5]),
        .I3(mask_shift_stage_1[3]),
        .I4(mask_shift_stage_1[1]),
        .I5(\StrbMask_q2[8]_i_3_n_0 ),
        .O(\StrbMask_q2[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \StrbMask_q2[8]_i_3 
       (.I0(StrbMask_q1[3]),
        .I1(mask_shift_stage_1[2]),
        .I2(StrbMask_q1[7]),
        .I3(mask_shift_stage_1[3]),
        .O(\StrbMask_q2[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[9]_i_1 
       (.I0(StrbMask_q1[9]),
        .I1(\StrbMask_q2[9]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[10]_i_2_n_0 ),
        .I4(\StrbMask_q2[15]_i_4_n_0 ),
        .O(\StrbMask_q2[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \StrbMask_q2[9]_i_2 
       (.I0(StrbMask_q1[2]),
        .I1(mask_shift_stage_1[2]),
        .I2(StrbMask_q1[6]),
        .I3(mask_shift_stage_1[3]),
        .I4(mask_shift_stage_1[1]),
        .I5(\StrbMask_q2[11]_i_3_n_0 ),
        .O(\StrbMask_q2[9]_i_2_n_0 ));
  FDRE \StrbMask_q2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[0]_i_1_n_0 ),
        .Q(StrbMask_q2[0]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[10]_i_1_n_0 ),
        .Q(StrbMask_q2[10]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[11]_i_1_n_0 ),
        .Q(StrbMask_q2[11]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[12]_i_1_n_0 ),
        .Q(StrbMask_q2[12]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[13]_i_1_n_0 ),
        .Q(StrbMask_q2[13]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[14]_i_1_n_0 ),
        .Q(StrbMask_q2[14]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[15]_i_1_n_0 ),
        .Q(StrbMask_q2[15]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[1]_i_1_n_0 ),
        .Q(StrbMask_q2[1]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[2]_i_1_n_0 ),
        .Q(StrbMask_q2[2]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[3]_i_1_n_0 ),
        .Q(StrbMask_q2[3]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[4]_i_1_n_0 ),
        .Q(StrbMask_q2[4]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[5]_i_1_n_0 ),
        .Q(StrbMask_q2[5]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[6]_i_1_n_0 ),
        .Q(StrbMask_q2[6]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[7]_i_1_n_0 ),
        .Q(StrbMask_q2[7]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[8]_i_1_n_0 ),
        .Q(StrbMask_q2[8]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[9]_i_1_n_0 ),
        .Q(StrbMask_q2[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \StrbMask_q3_n[0]_i_1 
       (.I0(mask_shift_stage_2_q1[0]),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(mask_shift_stage_2_q1[3]),
        .I3(StrbMask_q2[0]),
        .I4(mask_shift_stage_2_q1[2]),
        .O(\StrbMask_q3_n[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0047FF47)) 
    \StrbMask_q3_n[10]_i_1 
       (.I0(\StrbMask_q3_n[11]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(\StrbMask_q3_n[13]_i_2_n_0 ),
        .I3(mask_shift_stage_2_q1[0]),
        .I4(\StrbMask_q3_n[10]_i_2_n_0 ),
        .O(\StrbMask_q3_n[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \StrbMask_q3_n[10]_i_2 
       (.I0(StrbMask_q2[3]),
        .I1(mask_shift_stage_2_q1[2]),
        .I2(StrbMask_q2[7]),
        .I3(mask_shift_stage_2_q1[3]),
        .I4(mask_shift_stage_2_q1[1]),
        .I5(\StrbMask_q3_n[12]_i_2_n_0 ),
        .O(\StrbMask_q3_n[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h001D331DCC1DFF1D)) 
    \StrbMask_q3_n[11]_i_1 
       (.I0(\StrbMask_q3_n[14]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(\StrbMask_q3_n[12]_i_2_n_0 ),
        .I3(mask_shift_stage_2_q1[0]),
        .I4(\StrbMask_q3_n[13]_i_2_n_0 ),
        .I5(\StrbMask_q3_n[11]_i_2_n_0 ),
        .O(\StrbMask_q3_n[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \StrbMask_q3_n[11]_i_2 
       (.I0(StrbMask_q2[4]),
        .I1(mask_shift_stage_2_q1[2]),
        .I2(StrbMask_q2[0]),
        .I3(mask_shift_stage_2_q1[3]),
        .I4(StrbMask_q2[8]),
        .O(\StrbMask_q3_n[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h001D331DCC1DFF1D)) 
    \StrbMask_q3_n[12]_i_1 
       (.I0(\StrbMask_q3_n[15]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(\StrbMask_q3_n[13]_i_2_n_0 ),
        .I3(mask_shift_stage_2_q1[0]),
        .I4(\StrbMask_q3_n[14]_i_2_n_0 ),
        .I5(\StrbMask_q3_n[12]_i_2_n_0 ),
        .O(\StrbMask_q3_n[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \StrbMask_q3_n[12]_i_2 
       (.I0(StrbMask_q2[5]),
        .I1(mask_shift_stage_2_q1[2]),
        .I2(StrbMask_q2[1]),
        .I3(mask_shift_stage_2_q1[3]),
        .I4(StrbMask_q2[9]),
        .O(\StrbMask_q3_n[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h001D331DCC1DFF1D)) 
    \StrbMask_q3_n[13]_i_1 
       (.I0(\StrbMask_q3_n[15]_i_5_n_0 ),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(\StrbMask_q3_n[14]_i_2_n_0 ),
        .I3(mask_shift_stage_2_q1[0]),
        .I4(\StrbMask_q3_n[15]_i_2_n_0 ),
        .I5(\StrbMask_q3_n[13]_i_2_n_0 ),
        .O(\StrbMask_q3_n[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \StrbMask_q3_n[13]_i_2 
       (.I0(StrbMask_q2[6]),
        .I1(mask_shift_stage_2_q1[2]),
        .I2(StrbMask_q2[2]),
        .I3(mask_shift_stage_2_q1[3]),
        .I4(StrbMask_q2[10]),
        .O(\StrbMask_q3_n[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4747474700CC33FF)) 
    \StrbMask_q3_n[14]_i_1 
       (.I0(\StrbMask_q3_n[14]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(\StrbMask_q3_n[15]_i_5_n_0 ),
        .I3(\StrbMask_q3_n[15]_i_2_n_0 ),
        .I4(\StrbMask_q3_n[15]_i_3_n_0 ),
        .I5(mask_shift_stage_2_q1[0]),
        .O(\StrbMask_q3_n[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \StrbMask_q3_n[14]_i_2 
       (.I0(StrbMask_q2[7]),
        .I1(mask_shift_stage_2_q1[2]),
        .I2(StrbMask_q2[3]),
        .I3(mask_shift_stage_2_q1[3]),
        .I4(StrbMask_q2[11]),
        .O(\StrbMask_q3_n[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h474747470033CCFF)) 
    \StrbMask_q3_n[15]_i_1 
       (.I0(\StrbMask_q3_n[15]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(\StrbMask_q3_n[15]_i_3_n_0 ),
        .I3(\StrbMask_q3_n[15]_i_4_n_0 ),
        .I4(\StrbMask_q3_n[15]_i_5_n_0 ),
        .I5(mask_shift_stage_2_q1[0]),
        .O(\StrbMask_q3_n[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \StrbMask_q3_n[15]_i_2 
       (.I0(StrbMask_q2[0]),
        .I1(StrbMask_q2[8]),
        .I2(mask_shift_stage_2_q1[2]),
        .I3(StrbMask_q2[4]),
        .I4(mask_shift_stage_2_q1[3]),
        .I5(StrbMask_q2[12]),
        .O(\StrbMask_q3_n[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \StrbMask_q3_n[15]_i_3 
       (.I0(StrbMask_q2[2]),
        .I1(StrbMask_q2[10]),
        .I2(mask_shift_stage_2_q1[2]),
        .I3(StrbMask_q2[6]),
        .I4(mask_shift_stage_2_q1[3]),
        .I5(StrbMask_q2[14]),
        .O(\StrbMask_q3_n[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \StrbMask_q3_n[15]_i_4 
       (.I0(StrbMask_q2[3]),
        .I1(StrbMask_q2[11]),
        .I2(mask_shift_stage_2_q1[2]),
        .I3(StrbMask_q2[7]),
        .I4(mask_shift_stage_2_q1[3]),
        .I5(StrbMask_q2[15]),
        .O(\StrbMask_q3_n[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \StrbMask_q3_n[15]_i_5 
       (.I0(StrbMask_q2[1]),
        .I1(StrbMask_q2[9]),
        .I2(mask_shift_stage_2_q1[2]),
        .I3(StrbMask_q2[5]),
        .I4(mask_shift_stage_2_q1[3]),
        .I5(StrbMask_q2[13]),
        .O(\StrbMask_q3_n[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEFFEFFFFFFFEF)) 
    \StrbMask_q3_n[1]_i_1 
       (.I0(mask_shift_stage_2_q1[1]),
        .I1(mask_shift_stage_2_q1[3]),
        .I2(StrbMask_q2[1]),
        .I3(mask_shift_stage_2_q1[2]),
        .I4(mask_shift_stage_2_q1[0]),
        .I5(StrbMask_q2[0]),
        .O(\StrbMask_q3_n[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDD1DDDD)) 
    \StrbMask_q3_n[2]_i_1 
       (.I0(\StrbMask_q3_n[3]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(mask_shift_stage_2_q1[1]),
        .I3(mask_shift_stage_2_q1[3]),
        .I4(StrbMask_q2[1]),
        .I5(mask_shift_stage_2_q1[2]),
        .O(\StrbMask_q3_n[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \StrbMask_q3_n[3]_i_1 
       (.I0(\StrbMask_q3_n[4]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(\StrbMask_q3_n[3]_i_2_n_0 ),
        .O(\StrbMask_q3_n[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \StrbMask_q3_n[3]_i_2 
       (.I0(StrbMask_q2[0]),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(mask_shift_stage_2_q1[3]),
        .I3(StrbMask_q2[2]),
        .I4(mask_shift_stage_2_q1[2]),
        .O(\StrbMask_q3_n[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \StrbMask_q3_n[4]_i_1 
       (.I0(\StrbMask_q3_n[5]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(\StrbMask_q3_n[4]_i_2_n_0 ),
        .O(\StrbMask_q3_n[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \StrbMask_q3_n[4]_i_2 
       (.I0(StrbMask_q2[1]),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(mask_shift_stage_2_q1[3]),
        .I3(StrbMask_q2[3]),
        .I4(mask_shift_stage_2_q1[2]),
        .O(\StrbMask_q3_n[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \StrbMask_q3_n[5]_i_1 
       (.I0(\StrbMask_q3_n[6]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(\StrbMask_q3_n[5]_i_2_n_0 ),
        .O(\StrbMask_q3_n[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \StrbMask_q3_n[5]_i_2 
       (.I0(StrbMask_q2[2]),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(StrbMask_q2[0]),
        .I3(mask_shift_stage_2_q1[2]),
        .I4(StrbMask_q2[4]),
        .I5(mask_shift_stage_2_q1[3]),
        .O(\StrbMask_q3_n[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \StrbMask_q3_n[6]_i_1 
       (.I0(\StrbMask_q3_n[7]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(\StrbMask_q3_n[6]_i_2_n_0 ),
        .O(\StrbMask_q3_n[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \StrbMask_q3_n[6]_i_2 
       (.I0(StrbMask_q2[3]),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(StrbMask_q2[1]),
        .I3(mask_shift_stage_2_q1[2]),
        .I4(StrbMask_q2[5]),
        .I5(mask_shift_stage_2_q1[3]),
        .O(\StrbMask_q3_n[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \StrbMask_q3_n[7]_i_1 
       (.I0(\StrbMask_q3_n[8]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(\StrbMask_q3_n[7]_i_2_n_0 ),
        .O(\StrbMask_q3_n[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \StrbMask_q3_n[7]_i_2 
       (.I0(StrbMask_q2[0]),
        .I1(mask_shift_stage_2_q1[2]),
        .I2(StrbMask_q2[4]),
        .I3(mask_shift_stage_2_q1[3]),
        .I4(mask_shift_stage_2_q1[1]),
        .I5(\StrbMask_q3_n[7]_i_3_n_0 ),
        .O(\StrbMask_q3_n[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \StrbMask_q3_n[7]_i_3 
       (.I0(StrbMask_q2[2]),
        .I1(mask_shift_stage_2_q1[2]),
        .I2(StrbMask_q2[6]),
        .I3(mask_shift_stage_2_q1[3]),
        .O(\StrbMask_q3_n[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \StrbMask_q3_n[8]_i_1 
       (.I0(\StrbMask_q3_n[9]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(\StrbMask_q3_n[8]_i_2_n_0 ),
        .O(\StrbMask_q3_n[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \StrbMask_q3_n[8]_i_2 
       (.I0(StrbMask_q2[1]),
        .I1(mask_shift_stage_2_q1[2]),
        .I2(StrbMask_q2[5]),
        .I3(mask_shift_stage_2_q1[3]),
        .I4(mask_shift_stage_2_q1[1]),
        .I5(\StrbMask_q3_n[8]_i_3_n_0 ),
        .O(\StrbMask_q3_n[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \StrbMask_q3_n[8]_i_3 
       (.I0(StrbMask_q2[3]),
        .I1(mask_shift_stage_2_q1[2]),
        .I2(StrbMask_q2[7]),
        .I3(mask_shift_stage_2_q1[3]),
        .O(\StrbMask_q3_n[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \StrbMask_q3_n[9]_i_1 
       (.I0(\StrbMask_q3_n[10]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(\StrbMask_q3_n[9]_i_2_n_0 ),
        .O(\StrbMask_q3_n[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \StrbMask_q3_n[9]_i_2 
       (.I0(StrbMask_q2[2]),
        .I1(mask_shift_stage_2_q1[2]),
        .I2(StrbMask_q2[6]),
        .I3(mask_shift_stage_2_q1[3]),
        .I4(mask_shift_stage_2_q1[1]),
        .I5(\StrbMask_q3_n[11]_i_2_n_0 ),
        .O(\StrbMask_q3_n[9]_i_2_n_0 ));
  FDRE \StrbMask_q3_n_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[0]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[10]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[11]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[12]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[13]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[14]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[15]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[1]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[2]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[3]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[4]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[5]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[6]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[7]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[8]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[9]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[9] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[0]_srl2 " *) 
  SRL16E \Strb_q2_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_29),
        .Q(\Strb_q2_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[10]_srl2 " *) 
  SRL16E \Strb_q2_reg[10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_19),
        .Q(\Strb_q2_reg[10]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[11]_srl2 " *) 
  SRL16E \Strb_q2_reg[11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_18),
        .Q(\Strb_q2_reg[11]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[12]_srl2 " *) 
  SRL16E \Strb_q2_reg[12]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_17),
        .Q(\Strb_q2_reg[12]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[13]_srl2 " *) 
  SRL16E \Strb_q2_reg[13]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_16),
        .Q(\Strb_q2_reg[13]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[14]_srl2 " *) 
  SRL16E \Strb_q2_reg[14]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_15),
        .Q(\Strb_q2_reg[14]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[15]_srl2 " *) 
  SRL16E \Strb_q2_reg[15]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_14),
        .Q(\Strb_q2_reg[15]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[1]_srl2 " *) 
  SRL16E \Strb_q2_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_28),
        .Q(\Strb_q2_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[2]_srl2 " *) 
  SRL16E \Strb_q2_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_27),
        .Q(\Strb_q2_reg[2]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[3]_srl2 " *) 
  SRL16E \Strb_q2_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_26),
        .Q(\Strb_q2_reg[3]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[4]_srl2 " *) 
  SRL16E \Strb_q2_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_25),
        .Q(\Strb_q2_reg[4]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[5]_srl2 " *) 
  SRL16E \Strb_q2_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_24),
        .Q(\Strb_q2_reg[5]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[6]_srl2 " *) 
  SRL16E \Strb_q2_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_23),
        .Q(\Strb_q2_reg[6]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[7]_srl2 " *) 
  SRL16E \Strb_q2_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_22),
        .Q(\Strb_q2_reg[7]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[8]_srl2 " *) 
  SRL16E \Strb_q2_reg[8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_21),
        .Q(\Strb_q2_reg[8]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[9]_srl2 " *) 
  SRL16E \Strb_q2_reg[9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_20),
        .Q(\Strb_q2_reg[9]_srl2_n_0 ));
  FDRE \Strb_q3_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[0]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[10]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[11]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[12]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[13]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[14]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[15]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[1]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[2]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[3]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[4]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[5]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[6]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[7]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[8]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[9]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[9] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_syn_fifo__parameterized1 WCHECK
       (.\AWXferCount_reg[0][0] (WCHECK_n_7),
        .\AWXferCount_reg[0][0]_0 (WCHECK_n_8),
        .\AWXferCount_reg[0][0]_1 (\AWXferCount_reg[0]_2 [0]),
        .\AWXferCount_reg[1][0] (p_2_in[0]),
        .\AWXferCount_reg[1][0]_0 (WCHECK_n_5),
        .\AWXferCount_reg[1][0]_1 (\AWXferCount_reg[1]_1 [0]),
        .D(WCHECK_n_0),
        .Q(cnt_0),
        .WCountIn_reg(WCountIn_reg),
        .WDataNumError1_reg(WCHECK_n_6),
        .WDataNumError1_reg_0(WCHECK_n_9),
        .WDataNumError1_reg_1({WCheckCountOut,WCHECK_n_14,WCHECK_n_15,WCHECK_n_16,WCHECK_n_17,WCHECK_n_18,WCHECK_n_19,WCHECK_n_20,WCHECK_n_21,WCHECK_n_22,WCHECK_n_23,WCHECK_n_24,WCHECK_n_25,WCHECK_n_26,WCHECK_n_27,WCHECK_n_28,WCHECK_n_29}),
        .\WSTRBq_reg[15] (WSTRBq),
        .aclk(aclk),
        .\awaddr_qq_reg[1] (AWCMD_n_34),
        .awready_qq(awready_qq),
        .awvalid_qq(awvalid_qq),
        .bid_index_q(bid_index_q),
        .bready_qq(bready_qq),
        .bvalid_qq(bvalid_qq),
        .\cnt_reg[1]_0 (WCHECK_n_3),
        .\cnt_reg[1]_1 (WCHECK_n_10),
        .\cnt_reg[1]_2 (cnt),
        .data_out({AWIDOut,p_0_in__0_0[7:6],p_0_in__0_0[2:0]}),
        .first_strb(first_strb),
        .p_41_in(p_41_in),
        .pc_status(pc_status[60]),
        .resetn_qq(resetn_qq),
        .resetn_qq_reg(i_Axi4PC_asr_inline_n_0),
        .wlast_qq(wlast_qq),
        .wready_qq(wready_qq),
        .\wstrb_qq_reg[15] (\wstrb_qq_reg[15] ),
        .wvalid_qq(wvalid_qq));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \WCountIn[0]_i_1 
       (.I0(WCountIn_reg[0]),
        .I1(wvalid_qq),
        .I2(wready_qq),
        .I3(wlast_qq),
        .O(\WCountIn[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hBF40FF00)) 
    \WCountIn[1]_i_1 
       (.I0(wlast_qq),
        .I1(wready_qq),
        .I2(wvalid_qq),
        .I3(WCountIn_reg[1]),
        .I4(WCountIn_reg[0]),
        .O(\WCountIn[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \WCountIn[2]_i_1 
       (.I0(WCountIn_reg[2]),
        .I1(WCountIn_reg[1]),
        .I2(WCountIn_reg[0]),
        .I3(wlast_qq),
        .I4(wready_qq),
        .I5(wvalid_qq),
        .O(\WCountIn[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \WCountIn[3]_i_1 
       (.I0(WCountIn_reg[3]),
        .I1(WCountIn_reg[0]),
        .I2(WCountIn_reg[1]),
        .I3(WCountIn_reg[2]),
        .I4(\WCountIn[4]_i_2_n_0 ),
        .O(\WCountIn[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \WCountIn[4]_i_1 
       (.I0(WCountIn_reg[4]),
        .I1(WCountIn_reg[3]),
        .I2(\WCountIn[4]_i_2_n_0 ),
        .I3(WCountIn_reg[2]),
        .I4(WCountIn_reg[1]),
        .I5(WCountIn_reg[0]),
        .O(\WCountIn[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \WCountIn[4]_i_2 
       (.I0(wlast_qq),
        .I1(wready_qq),
        .I2(wvalid_qq),
        .O(\WCountIn[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \WCountIn[5]_i_1 
       (.I0(WCountIn_reg[5]),
        .I1(WCountIn_reg[4]),
        .I2(\WCountIn[7]_i_2_n_0 ),
        .I3(WCountIn_reg[3]),
        .O(\WCountIn[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \WCountIn[6]_i_1 
       (.I0(WCountIn_reg[6]),
        .I1(WCountIn_reg[5]),
        .I2(WCountIn_reg[3]),
        .I3(\WCountIn[7]_i_2_n_0 ),
        .I4(WCountIn_reg[4]),
        .O(\WCountIn[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \WCountIn[7]_i_1 
       (.I0(WCountIn_reg[7]),
        .I1(WCountIn_reg[6]),
        .I2(WCountIn_reg[4]),
        .I3(\WCountIn[7]_i_2_n_0 ),
        .I4(WCountIn_reg[3]),
        .I5(WCountIn_reg[5]),
        .O(\WCountIn[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \WCountIn[7]_i_2 
       (.I0(wvalid_qq),
        .I1(wready_qq),
        .I2(wlast_qq),
        .I3(WCountIn_reg[2]),
        .I4(WCountIn_reg[1]),
        .I5(WCountIn_reg[0]),
        .O(\WCountIn[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \WCountIn[8]_i_1 
       (.I0(WCountIn_reg[8]),
        .I1(WCountIn_reg[6]),
        .I2(WCountIn_reg[7]),
        .I3(\WCountIn[8]_i_2_n_0 ),
        .O(\WCountIn[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \WCountIn[8]_i_2 
       (.I0(WCountIn_reg[4]),
        .I1(\WCountIn[7]_i_2_n_0 ),
        .I2(WCountIn_reg[3]),
        .I3(WCountIn_reg[5]),
        .O(\WCountIn[8]_i_2_n_0 ));
  FDRE \WCountIn_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\WCountIn[0]_i_1_n_0 ),
        .Q(WCountIn_reg[0]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\WCountIn[1]_i_1_n_0 ),
        .Q(WCountIn_reg[1]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\WCountIn[2]_i_1_n_0 ),
        .Q(WCountIn_reg[2]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\WCountIn[3]_i_1_n_0 ),
        .Q(WCountIn_reg[3]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\WCountIn[4]_i_1_n_0 ),
        .Q(WCountIn_reg[4]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\WCountIn[5]_i_1_n_0 ),
        .Q(WCountIn_reg[5]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\WCountIn[6]_i_1_n_0 ),
        .Q(WCountIn_reg[6]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\WCountIn[7]_i_1_n_0 ),
        .Q(WCountIn_reg[7]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\WCountIn[8]_i_1_n_0 ),
        .Q(WCountIn_reg[8]),
        .R(first_strb_i_1_n_0));
  FDRE WDataNumError1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(WCHECK_n_9),
        .Q(WDataNumError1),
        .R(1'b0));
  FDRE \WSTRBq_reg[0] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [0]),
        .Q(WSTRBq[0]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[10] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [10]),
        .Q(WSTRBq[10]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[11] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [11]),
        .Q(WSTRBq[11]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[12] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [12]),
        .Q(WSTRBq[12]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[13] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [13]),
        .Q(WSTRBq[13]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[14] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [14]),
        .Q(WSTRBq[14]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[15] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [15]),
        .Q(WSTRBq[15]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[1] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [1]),
        .Q(WSTRBq[1]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[2] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [2]),
        .Q(WSTRBq[2]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[3] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [3]),
        .Q(WSTRBq[3]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[4] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [4]),
        .Q(WSTRBq[4]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[5] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [5]),
        .Q(WSTRBq[5]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[6] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [6]),
        .Q(WSTRBq[6]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[7] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [7]),
        .Q(WSTRBq[7]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[8] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [8]),
        .Q(WSTRBq[8]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[9] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_qq_reg[15] [9]),
        .Q(WSTRBq[9]),
        .R(first_strb_i_1_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    first_strb_i_1
       (.I0(wvalid_qq),
        .I1(wready_qq),
        .I2(wlast_qq),
        .I3(resetn_qq),
        .O(first_strb_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    first_strb_i_2
       (.I0(first_strb),
        .I1(wready_qq),
        .I2(wvalid_qq),
        .O(WSTRBq0));
  FDSE first_strb_reg
       (.C(aclk),
        .CE(WSTRBq0),
        .D(1'b0),
        .Q(first_strb),
        .S(first_strb_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_10 
       (.I0(\araddr_qq_reg[31] [7]),
        .I1(i_Axi4PC_asr_inline_n_70),
        .I2(\arsize_qq_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_74),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_11 
       (.I0(\araddr_qq_reg[31] [6]),
        .I1(i_Axi4PC_asr_inline_n_71),
        .I2(\arsize_qq_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_75),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hA656A6A6)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_12 
       (.I0(\araddr_qq_reg[31] [5]),
        .I1(i_Axi4PC_asr_inline_n_72),
        .I2(\arsize_qq_reg[2] [2]),
        .I3(\arsize_qq_reg[2] [1]),
        .I4(i_Axi4PC_asr_inline_n_76),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A6A6A656A6A6)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_13 
       (.I0(\araddr_qq_reg[31] [4]),
        .I1(i_Axi4PC_asr_inline_n_73),
        .I2(\arsize_qq_reg[2] [2]),
        .I3(\arsize_qq_reg[2] [1]),
        .I4(\arlen_qq_reg[7] [0]),
        .I5(\arsize_qq_reg[2] [0]),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_14 
       (.I0(\araddr_qq_reg[31] [3]),
        .I1(\arsize_qq_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_74),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_15 
       (.I0(\araddr_qq_reg[31] [2]),
        .I1(\arsize_qq_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_75),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA656A)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_16 
       (.I0(\araddr_qq_reg[31] [1]),
        .I1(\arlen_qq_reg[7] [0]),
        .I2(\arsize_qq_reg[2] [0]),
        .I3(\arlen_qq_reg[7] [1]),
        .I4(\arsize_qq_reg[2] [1]),
        .I5(\arsize_qq_reg[2] [2]),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA6)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_17 
       (.I0(\araddr_qq_reg[31] [0]),
        .I1(\arlen_qq_reg[7] [0]),
        .I2(\arsize_qq_reg[2] [0]),
        .I3(\arsize_qq_reg[2] [1]),
        .I4(\arsize_qq_reg[2] [2]),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_3 
       (.I0(\araddr_qq_reg[31] [14]),
        .I1(\arsize_qq_reg[2] [2]),
        .I2(\arsize_qq_reg[2] [0]),
        .I3(\arlen_qq_reg[7] [7]),
        .I4(\arsize_qq_reg[2] [1]),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6AAAAAAAAA)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_4 
       (.I0(\araddr_qq_reg[31] [13]),
        .I1(\arsize_qq_reg[2] [2]),
        .I2(\arlen_qq_reg[7] [7]),
        .I3(\arsize_qq_reg[2] [0]),
        .I4(\arlen_qq_reg[7] [6]),
        .I5(\arsize_qq_reg[2] [1]),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_5 
       (.I0(\araddr_qq_reg[31] [12]),
        .I1(\arsize_qq_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_69),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_6 
       (.I0(\araddr_qq_reg[31] [11]),
        .I1(\arsize_qq_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_70),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h55556AAAAAAA6AAA)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_7 
       (.I0(\araddr_qq_reg[31] [10]),
        .I1(\arsize_qq_reg[2] [1]),
        .I2(\arlen_qq_reg[7] [7]),
        .I3(\arsize_qq_reg[2] [0]),
        .I4(\arsize_qq_reg[2] [2]),
        .I5(i_Axi4PC_asr_inline_n_71),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_8 
       (.I0(\araddr_qq_reg[31] [9]),
        .I1(i_Axi4PC_asr_inline_n_2),
        .I2(\arsize_qq_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_72),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \gen_deflt_chks.ArAddrIncr_q1[3]_i_9 
       (.I0(\araddr_qq_reg[31] [8]),
        .I1(i_Axi4PC_asr_inline_n_69),
        .I2(\arsize_qq_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_73),
        .O(\gen_deflt_chks.ArAddrIncr_q1[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_10 
       (.I0(Q[7]),
        .I1(i_Axi4PC_asr_inline_n_62),
        .I2(\awsize_qq_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_66),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_11 
       (.I0(Q[6]),
        .I1(i_Axi4PC_asr_inline_n_63),
        .I2(\awsize_qq_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_67),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hA656A6A6)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_12 
       (.I0(Q[5]),
        .I1(i_Axi4PC_asr_inline_n_64),
        .I2(\awsize_qq_reg[2] [2]),
        .I3(\awsize_qq_reg[2] [1]),
        .I4(i_Axi4PC_asr_inline_n_68),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A6A6A656A6A6)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_13 
       (.I0(Q[4]),
        .I1(i_Axi4PC_asr_inline_n_65),
        .I2(\awsize_qq_reg[2] [2]),
        .I3(\awsize_qq_reg[2] [1]),
        .I4(\awlen_qq_reg[7] [0]),
        .I5(\awsize_qq_reg[2] [0]),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_14 
       (.I0(Q[3]),
        .I1(\awsize_qq_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_66),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_15 
       (.I0(Q[2]),
        .I1(\awsize_qq_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_67),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA656A)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_16 
       (.I0(Q[1]),
        .I1(\awlen_qq_reg[7] [0]),
        .I2(\awsize_qq_reg[2] [0]),
        .I3(\awlen_qq_reg[7] [1]),
        .I4(\awsize_qq_reg[2] [1]),
        .I5(\awsize_qq_reg[2] [2]),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA6)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_17 
       (.I0(Q[0]),
        .I1(\awlen_qq_reg[7] [0]),
        .I2(\awsize_qq_reg[2] [0]),
        .I3(\awsize_qq_reg[2] [1]),
        .I4(\awsize_qq_reg[2] [2]),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_3 
       (.I0(Q[14]),
        .I1(\awsize_qq_reg[2] [2]),
        .I2(\awsize_qq_reg[2] [0]),
        .I3(\awlen_qq_reg[7] [7]),
        .I4(\awsize_qq_reg[2] [1]),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6AAAAAAAAA)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_4 
       (.I0(Q[13]),
        .I1(\awsize_qq_reg[2] [2]),
        .I2(\awlen_qq_reg[7] [7]),
        .I3(\awsize_qq_reg[2] [0]),
        .I4(\awlen_qq_reg[7] [6]),
        .I5(\awsize_qq_reg[2] [1]),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_5 
       (.I0(Q[12]),
        .I1(\awsize_qq_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_61),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_6 
       (.I0(Q[11]),
        .I1(\awsize_qq_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_62),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h55556AAAAAAA6AAA)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_7 
       (.I0(Q[10]),
        .I1(\awsize_qq_reg[2] [1]),
        .I2(\awlen_qq_reg[7] [7]),
        .I3(\awsize_qq_reg[2] [0]),
        .I4(\awsize_qq_reg[2] [2]),
        .I5(i_Axi4PC_asr_inline_n_63),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_8 
       (.I0(Q[9]),
        .I1(i_Axi4PC_asr_inline_n_1),
        .I2(\awsize_qq_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_64),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \gen_deflt_chks.AwAddrIncr_q1[3]_i_9 
       (.I0(Q[8]),
        .I1(i_Axi4PC_asr_inline_n_61),
        .I2(\awsize_qq_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_65),
        .O(\gen_deflt_chks.AwAddrIncr_q1[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_rthread_loop[0].RCount[0][0]_i_1 
       (.I0(\gen_rthread_loop[0].RCount_reg[0]_3 [0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_rthread_loop[0].RCount[0][1]_i_1 
       (.I0(\gen_rthread_loop[0].RCount_reg[0]_3 [0]),
        .I1(\gen_rthread_loop[0].RCount_reg[0]_3 [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_rthread_loop[0].RCount[0][2]_i_1 
       (.I0(\gen_rthread_loop[0].RCount_reg[0]_3 [2]),
        .I1(\gen_rthread_loop[0].RCount_reg[0]_3 [0]),
        .I2(\gen_rthread_loop[0].RCount_reg[0]_3 [1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_rthread_loop[0].RCount[0][3]_i_1 
       (.I0(\gen_rthread_loop[0].RCount_reg[0]_3 [3]),
        .I1(\gen_rthread_loop[0].RCount_reg[0]_3 [1]),
        .I2(\gen_rthread_loop[0].RCount_reg[0]_3 [0]),
        .I3(\gen_rthread_loop[0].RCount_reg[0]_3 [2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gen_rthread_loop[0].RCount[0][4]_i_1 
       (.I0(\gen_rthread_loop[0].RCount_reg[0]_3 [2]),
        .I1(\gen_rthread_loop[0].RCount_reg[0]_3 [0]),
        .I2(\gen_rthread_loop[0].RCount_reg[0]_3 [1]),
        .I3(\gen_rthread_loop[0].RCount_reg[0]_3 [3]),
        .I4(\gen_rthread_loop[0].RCount_reg[0]_3 [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \gen_rthread_loop[0].RCount[0][5]_i_1 
       (.I0(\gen_rthread_loop[0].RCount_reg[0]_3 [5]),
        .I1(\gen_rthread_loop[0].RCount_reg[0]_3 [2]),
        .I2(\gen_rthread_loop[0].RCount_reg[0]_3 [0]),
        .I3(\gen_rthread_loop[0].RCount_reg[0]_3 [1]),
        .I4(\gen_rthread_loop[0].RCount_reg[0]_3 [3]),
        .I5(\gen_rthread_loop[0].RCount_reg[0]_3 [4]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_rthread_loop[0].RCount[0][6]_i_1 
       (.I0(\gen_rthread_loop[0].RCount_reg[0]_3 [6]),
        .I1(\gen_rthread_loop[0].RCount[0][8]_i_4_n_0 ),
        .I2(\gen_rthread_loop[0].RCount_reg[0]_3 [5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_rthread_loop[0].RCount[0][7]_i_1 
       (.I0(\gen_rthread_loop[0].RCount_reg[0]_3 [7]),
        .I1(\gen_rthread_loop[0].RCount_reg[0]_3 [5]),
        .I2(\gen_rthread_loop[0].RCount[0][8]_i_4_n_0 ),
        .I3(\gen_rthread_loop[0].RCount_reg[0]_3 [6]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'h0040)) 
    \gen_rthread_loop[0].RCount[0][8]_i_2 
       (.I0(rid_index_q),
        .I1(rvalid_qq),
        .I2(rready_qq),
        .I3(rlast_qq),
        .O(\gen_rthread_loop[0].RCount[0][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_rthread_loop[0].RCount[0][8]_i_3 
       (.I0(\gen_rthread_loop[0].RCount_reg[0]_3 [8]),
        .I1(\gen_rthread_loop[0].RCount_reg[0]_3 [6]),
        .I2(\gen_rthread_loop[0].RCount[0][8]_i_4_n_0 ),
        .I3(\gen_rthread_loop[0].RCount_reg[0]_3 [5]),
        .I4(\gen_rthread_loop[0].RCount_reg[0]_3 [7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \gen_rthread_loop[0].RCount[0][8]_i_4 
       (.I0(\gen_rthread_loop[0].RCount_reg[0]_3 [4]),
        .I1(\gen_rthread_loop[0].RCount_reg[0]_3 [3]),
        .I2(\gen_rthread_loop[0].RCount_reg[0]_3 [1]),
        .I3(\gen_rthread_loop[0].RCount_reg[0]_3 [0]),
        .I4(\gen_rthread_loop[0].RCount_reg[0]_3 [2]),
        .O(\gen_rthread_loop[0].RCount[0][8]_i_4_n_0 ));
  FDRE \gen_rthread_loop[0].RCount_reg[0][0] 
       (.C(aclk),
        .CE(\gen_rthread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\gen_rthread_loop[0].RCount_reg[0]_3 [0]),
        .R(\gen_rthread_loop[0].RDCAM_n_1 ));
  FDRE \gen_rthread_loop[0].RCount_reg[0][1] 
       (.C(aclk),
        .CE(\gen_rthread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\gen_rthread_loop[0].RCount_reg[0]_3 [1]),
        .R(\gen_rthread_loop[0].RDCAM_n_1 ));
  FDRE \gen_rthread_loop[0].RCount_reg[0][2] 
       (.C(aclk),
        .CE(\gen_rthread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\gen_rthread_loop[0].RCount_reg[0]_3 [2]),
        .R(\gen_rthread_loop[0].RDCAM_n_1 ));
  FDRE \gen_rthread_loop[0].RCount_reg[0][3] 
       (.C(aclk),
        .CE(\gen_rthread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\gen_rthread_loop[0].RCount_reg[0]_3 [3]),
        .R(\gen_rthread_loop[0].RDCAM_n_1 ));
  FDRE \gen_rthread_loop[0].RCount_reg[0][4] 
       (.C(aclk),
        .CE(\gen_rthread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\gen_rthread_loop[0].RCount_reg[0]_3 [4]),
        .R(\gen_rthread_loop[0].RDCAM_n_1 ));
  FDRE \gen_rthread_loop[0].RCount_reg[0][5] 
       (.C(aclk),
        .CE(\gen_rthread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\gen_rthread_loop[0].RCount_reg[0]_3 [5]),
        .R(\gen_rthread_loop[0].RDCAM_n_1 ));
  FDRE \gen_rthread_loop[0].RCount_reg[0][6] 
       (.C(aclk),
        .CE(\gen_rthread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\gen_rthread_loop[0].RCount_reg[0]_3 [6]),
        .R(\gen_rthread_loop[0].RDCAM_n_1 ));
  FDRE \gen_rthread_loop[0].RCount_reg[0][7] 
       (.C(aclk),
        .CE(\gen_rthread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\gen_rthread_loop[0].RCount_reg[0]_3 [7]),
        .R(\gen_rthread_loop[0].RDCAM_n_1 ));
  FDRE \gen_rthread_loop[0].RCount_reg[0][8] 
       (.C(aclk),
        .CE(\gen_rthread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(\gen_rthread_loop[0].RCount_reg[0]_3 [8]),
        .R(\gen_rthread_loop[0].RDCAM_n_1 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_syn_fifo \gen_rthread_loop[0].RDCAM 
       (.ASR_590(ASR_590),
        .ASR_610(ASR_610),
        .D(\gen_rthread_loop[0].RDCAM_n_0 ),
        .Q(\gen_rthread_loop[0].RCount_reg[0]_3 ),
        .SR(\gen_rthread_loop[0].RDCAM_n_1 ),
        .aclk(aclk),
        .arid_index_q(arid_index_q),
        .arready_qq(arready_qq),
        .arvalid_qq(arvalid_qq),
        .cmd_pop_1(cmd_pop_1),
        .\cnt_reg[0]_0 (\gen_rthread_loop[1].RDCAM_n_2 ),
        .data_in({\arlen_qq_reg[7] ,\araddr_qq_reg[31] [6:0]}),
        .data_out(\gen_rthread_loop[1].RDCAM_n_6 ),
        .\gen_rthread_loop[1].RCount_reg[1][0] (\gen_rthread_loop[1].RDCAM_n_4 ),
        .\gen_rthread_loop[1].RCount_reg[1][3] (\gen_rthread_loop[1].RDCAM_n_3 ),
        .pc_status(pc_status[58]),
        .\pc_status_i_reg[78] (\gen_rthread_loop[0].RDCAM_n_2 ),
        .rcam_overflow_q(rcam_overflow_q),
        .resetn_qq(resetn_qq),
        .resetn_qq_reg(i_Axi4PC_asr_inline_n_0),
        .resetn_qq_reg_0(i_Axi4PC_asr_inline_n_3),
        .rid_index_q(rid_index_q),
        .rlast_qq(rlast_qq),
        .rready_qq(rready_qq),
        .\rresp_qq_reg[1] (\rresp_qq_reg[1] ),
        .rvalid_qq(rvalid_qq));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_rthread_loop[1].RCount[1][0]_i_1 
       (.I0(\gen_rthread_loop[1].RCount_reg[1]_4 [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_rthread_loop[1].RCount[1][1]_i_1 
       (.I0(\gen_rthread_loop[1].RCount_reg[1]_4 [0]),
        .I1(\gen_rthread_loop[1].RCount_reg[1]_4 [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_rthread_loop[1].RCount[1][2]_i_1 
       (.I0(\gen_rthread_loop[1].RCount_reg[1]_4 [2]),
        .I1(\gen_rthread_loop[1].RCount_reg[1]_4 [0]),
        .I2(\gen_rthread_loop[1].RCount_reg[1]_4 [1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_rthread_loop[1].RCount[1][3]_i_1 
       (.I0(\gen_rthread_loop[1].RCount_reg[1]_4 [3]),
        .I1(\gen_rthread_loop[1].RCount_reg[1]_4 [1]),
        .I2(\gen_rthread_loop[1].RCount_reg[1]_4 [0]),
        .I3(\gen_rthread_loop[1].RCount_reg[1]_4 [2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gen_rthread_loop[1].RCount[1][4]_i_1 
       (.I0(\gen_rthread_loop[1].RCount_reg[1]_4 [2]),
        .I1(\gen_rthread_loop[1].RCount_reg[1]_4 [0]),
        .I2(\gen_rthread_loop[1].RCount_reg[1]_4 [1]),
        .I3(\gen_rthread_loop[1].RCount_reg[1]_4 [3]),
        .I4(\gen_rthread_loop[1].RCount_reg[1]_4 [4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \gen_rthread_loop[1].RCount[1][5]_i_1 
       (.I0(\gen_rthread_loop[1].RCount_reg[1]_4 [5]),
        .I1(\gen_rthread_loop[1].RCount_reg[1]_4 [2]),
        .I2(\gen_rthread_loop[1].RCount_reg[1]_4 [0]),
        .I3(\gen_rthread_loop[1].RCount_reg[1]_4 [1]),
        .I4(\gen_rthread_loop[1].RCount_reg[1]_4 [3]),
        .I5(\gen_rthread_loop[1].RCount_reg[1]_4 [4]),
        .O(p_0_in__0[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_rthread_loop[1].RCount[1][6]_i_1 
       (.I0(\gen_rthread_loop[1].RCount_reg[1]_4 [6]),
        .I1(\gen_rthread_loop[1].RCount[1][8]_i_4_n_0 ),
        .I2(\gen_rthread_loop[1].RCount_reg[1]_4 [5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_rthread_loop[1].RCount[1][7]_i_1 
       (.I0(\gen_rthread_loop[1].RCount_reg[1]_4 [7]),
        .I1(\gen_rthread_loop[1].RCount_reg[1]_4 [5]),
        .I2(\gen_rthread_loop[1].RCount[1][8]_i_4_n_0 ),
        .I3(\gen_rthread_loop[1].RCount_reg[1]_4 [6]),
        .O(p_0_in__0[7]));
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_rthread_loop[1].RCount[1][8]_i_2 
       (.I0(rid_index_q),
        .I1(rvalid_qq),
        .I2(rready_qq),
        .I3(rlast_qq),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_rthread_loop[1].RCount[1][8]_i_3 
       (.I0(\gen_rthread_loop[1].RCount_reg[1]_4 [8]),
        .I1(\gen_rthread_loop[1].RCount_reg[1]_4 [6]),
        .I2(\gen_rthread_loop[1].RCount[1][8]_i_4_n_0 ),
        .I3(\gen_rthread_loop[1].RCount_reg[1]_4 [5]),
        .I4(\gen_rthread_loop[1].RCount_reg[1]_4 [7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \gen_rthread_loop[1].RCount[1][8]_i_4 
       (.I0(\gen_rthread_loop[1].RCount_reg[1]_4 [4]),
        .I1(\gen_rthread_loop[1].RCount_reg[1]_4 [3]),
        .I2(\gen_rthread_loop[1].RCount_reg[1]_4 [1]),
        .I3(\gen_rthread_loop[1].RCount_reg[1]_4 [0]),
        .I4(\gen_rthread_loop[1].RCount_reg[1]_4 [2]),
        .O(\gen_rthread_loop[1].RCount[1][8]_i_4_n_0 ));
  FDRE \gen_rthread_loop[1].RCount_reg[1][0] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in__0[0]),
        .Q(\gen_rthread_loop[1].RCount_reg[1]_4 [0]),
        .R(clear));
  FDRE \gen_rthread_loop[1].RCount_reg[1][1] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in__0[1]),
        .Q(\gen_rthread_loop[1].RCount_reg[1]_4 [1]),
        .R(clear));
  FDRE \gen_rthread_loop[1].RCount_reg[1][2] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in__0[2]),
        .Q(\gen_rthread_loop[1].RCount_reg[1]_4 [2]),
        .R(clear));
  FDRE \gen_rthread_loop[1].RCount_reg[1][3] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in__0[3]),
        .Q(\gen_rthread_loop[1].RCount_reg[1]_4 [3]),
        .R(clear));
  FDRE \gen_rthread_loop[1].RCount_reg[1][4] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in__0[4]),
        .Q(\gen_rthread_loop[1].RCount_reg[1]_4 [4]),
        .R(clear));
  FDRE \gen_rthread_loop[1].RCount_reg[1][5] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in__0[5]),
        .Q(\gen_rthread_loop[1].RCount_reg[1]_4 [5]),
        .R(clear));
  FDRE \gen_rthread_loop[1].RCount_reg[1][6] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in__0[6]),
        .Q(\gen_rthread_loop[1].RCount_reg[1]_4 [6]),
        .R(clear));
  FDRE \gen_rthread_loop[1].RCount_reg[1][7] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in__0[7]),
        .Q(\gen_rthread_loop[1].RCount_reg[1]_4 [7]),
        .R(clear));
  FDRE \gen_rthread_loop[1].RCount_reg[1][8] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in__0[8]),
        .Q(\gen_rthread_loop[1].RCount_reg[1]_4 [8]),
        .R(clear));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_syn_fifo_4 \gen_rthread_loop[1].RDCAM 
       (.ASR_59_reg(\gen_rthread_loop[1].RDCAM_n_3 ),
        .ASR_59_reg_0(\gen_rthread_loop[1].RDCAM_n_4 ),
        .D(\gen_rthread_loop[1].RDCAM_n_5 ),
        .Q(\gen_rthread_loop[1].RCount_reg[1]_4 ),
        .SR(clear),
        .aclk(aclk),
        .arid_index_q(arid_index_q),
        .arready_qq(arready_qq),
        .arvalid_qq(arvalid_qq),
        .cmd_pop_1(cmd_pop_1),
        .data_in({\arlen_qq_reg[7] ,\araddr_qq_reg[31] [6:0]}),
        .data_out(\gen_rthread_loop[1].RDCAM_n_6 ),
        .pc_status(pc_status[57]),
        .\pc_status_i_reg[79] (\gen_rthread_loop[1].RDCAM_n_2 ),
        .rcam_overflow_q_reg(\gen_rthread_loop[0].RDCAM_n_2 ),
        .resetn_qq(resetn_qq),
        .resetn_qq_reg(i_Axi4PC_asr_inline_n_0),
        .rid_index_q(rid_index_q),
        .rlast_qq(rlast_qq),
        .rready_qq(rready_qq),
        .rvalid_qq(rvalid_qq));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_axi4pc_asr_inline i_Axi4PC_asr_inline
       (.ASR_590(ASR_590),
        .ASR_59_reg_0(i_Axi4PC_asr_inline_n_3),
        .ASR_610(ASR_610),
        .BStrbError(BStrbError),
        .BrespErrorLead(BrespErrorLead),
        .D({i_Axi4PC_asr_inline_n_4,i_Axi4PC_asr_inline_n_5,i_Axi4PC_asr_inline_n_6,i_Axi4PC_asr_inline_n_7,i_Axi4PC_asr_inline_n_8,i_Axi4PC_asr_inline_n_9,i_Axi4PC_asr_inline_n_10,i_Axi4PC_asr_inline_n_11,i_Axi4PC_asr_inline_n_12,i_Axi4PC_asr_inline_n_13,i_Axi4PC_asr_inline_n_14,i_Axi4PC_asr_inline_n_15,i_Axi4PC_asr_inline_n_16,i_Axi4PC_asr_inline_n_17,i_Axi4PC_asr_inline_n_18,i_Axi4PC_asr_inline_n_19,i_Axi4PC_asr_inline_n_20,i_Axi4PC_asr_inline_n_21,i_Axi4PC_asr_inline_n_22,i_Axi4PC_asr_inline_n_23,i_Axi4PC_asr_inline_n_24,i_Axi4PC_asr_inline_n_25,i_Axi4PC_asr_inline_n_26,i_Axi4PC_asr_inline_n_27,i_Axi4PC_asr_inline_n_28,i_Axi4PC_asr_inline_n_29,i_Axi4PC_asr_inline_n_30,i_Axi4PC_asr_inline_n_31,i_Axi4PC_asr_inline_n_32,i_Axi4PC_asr_inline_n_33,i_Axi4PC_asr_inline_n_34,i_Axi4PC_asr_inline_n_35,i_Axi4PC_asr_inline_n_36,i_Axi4PC_asr_inline_n_37,i_Axi4PC_asr_inline_n_38,i_Axi4PC_asr_inline_n_39,i_Axi4PC_asr_inline_n_40,i_Axi4PC_asr_inline_n_41,i_Axi4PC_asr_inline_n_42,i_Axi4PC_asr_inline_n_43,i_Axi4PC_asr_inline_n_44,i_Axi4PC_asr_inline_n_45,i_Axi4PC_asr_inline_n_46,i_Axi4PC_asr_inline_n_47,i_Axi4PC_asr_inline_n_48,i_Axi4PC_asr_inline_n_49,i_Axi4PC_asr_inline_n_50,i_Axi4PC_asr_inline_n_51,i_Axi4PC_asr_inline_n_52,i_Axi4PC_asr_inline_n_53,i_Axi4PC_asr_inline_n_54,i_Axi4PC_asr_inline_n_55,i_Axi4PC_asr_inline_n_56,i_Axi4PC_asr_inline_n_57,i_Axi4PC_asr_inline_n_58,i_Axi4PC_asr_inline_n_59,i_Axi4PC_asr_inline_n_60}),
        .Q(Q),
        .S({\gen_deflt_chks.AwAddrIncr_q1[3]_i_10_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_11_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_12_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_13_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_14_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_15_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_16_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_17_n_0 }),
        .WDataNumError1(WDataNumError1),
        .aclk(aclk),
        .\araddr_qq_reg[14] ({\gen_deflt_chks.ArAddrIncr_q1[3]_i_3_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_4_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_5_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_6_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_7_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_8_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_9_n_0 }),
        .\araddr_qq_reg[31] (\araddr_qq_reg[31] ),
        .\araddr_qq_reg[7] ({\gen_deflt_chks.ArAddrIncr_q1[3]_i_10_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_11_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_12_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_13_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_14_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_15_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_16_n_0 ,\gen_deflt_chks.ArAddrIncr_q1[3]_i_17_n_0 }),
        .\arburst_qq_reg[1] (\arburst_qq_reg[1] ),
        .\arcache_qq_reg[3] (\arcache_qq_reg[3] ),
        .arid_qq(arid_qq),
        .\arlen_qq_reg[7] (\arlen_qq_reg[7] ),
        .\arprot_qq_reg[2] (\arprot_qq_reg[2] ),
        .\arqos_qq_reg[3] (\arqos_qq_reg[3] ),
        .arready_qq(arready_qq),
        .\arregion_qq_reg[3] (\arregion_qq_reg[3] ),
        .\arsize_qq_reg[2] (\arsize_qq_reg[2] ),
        .aruser_qq(aruser_qq),
        .arvalid_qq(arvalid_qq),
        .\awaddr_qq_reg[14] ({\gen_deflt_chks.AwAddrIncr_q1[3]_i_3_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_4_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_5_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_6_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_7_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_8_n_0 ,\gen_deflt_chks.AwAddrIncr_q1[3]_i_9_n_0 }),
        .\awburst_qq_reg[1] (\awburst_qq_reg[1] ),
        .\awcache_qq_reg[3] (\awcache_qq_reg[3] ),
        .awid_qq(awid_qq),
        .\awprot_qq_reg[2] (\awprot_qq_reg[2] ),
        .\awqos_qq_reg[3] (\awqos_qq_reg[3] ),
        .awready_qq(awready_qq),
        .\awregion_qq_reg[3] (\awregion_qq_reg[3] ),
        .awuser_qq(awuser_qq),
        .awvalid_qq(awvalid_qq),
        .bid_qq(bid_qq),
        .bready_qq(bready_qq),
        .\bresp_qq_reg[1] (\bresp_qq_reg[1] ),
        .buser_qq(buser_qq),
        .bvalid_qq(bvalid_qq),
        .data_in({\awlen_qq_reg[7] ,\awsize_qq_reg[2] }),
        .\gen_deflt_chks.ArAddrIncr_q1_reg[3]_0 (i_Axi4PC_asr_inline_n_2),
        .\gen_deflt_chks.ArAddrIncr_q1_reg[3]_1 (i_Axi4PC_asr_inline_n_69),
        .\gen_deflt_chks.ArAddrIncr_q1_reg[3]_2 (i_Axi4PC_asr_inline_n_70),
        .\gen_deflt_chks.ArAddrIncr_q1_reg[3]_3 (i_Axi4PC_asr_inline_n_71),
        .\gen_deflt_chks.ArAddrIncr_q1_reg[3]_4 (i_Axi4PC_asr_inline_n_72),
        .\gen_deflt_chks.ArAddrIncr_q1_reg[3]_5 (i_Axi4PC_asr_inline_n_73),
        .\gen_deflt_chks.ArAddrIncr_q1_reg[3]_6 (i_Axi4PC_asr_inline_n_74),
        .\gen_deflt_chks.ArAddrIncr_q1_reg[3]_7 (i_Axi4PC_asr_inline_n_75),
        .\gen_deflt_chks.ArAddrIncr_q1_reg[3]_8 (i_Axi4PC_asr_inline_n_76),
        .\gen_deflt_chks.AwAddrIncr_q1_reg[3]_0 (i_Axi4PC_asr_inline_n_1),
        .\gen_deflt_chks.AwAddrIncr_q1_reg[3]_1 (i_Axi4PC_asr_inline_n_61),
        .\gen_deflt_chks.AwAddrIncr_q1_reg[3]_2 (i_Axi4PC_asr_inline_n_62),
        .\gen_deflt_chks.AwAddrIncr_q1_reg[3]_3 (i_Axi4PC_asr_inline_n_63),
        .\gen_deflt_chks.AwAddrIncr_q1_reg[3]_4 (i_Axi4PC_asr_inline_n_64),
        .\gen_deflt_chks.AwAddrIncr_q1_reg[3]_5 (i_Axi4PC_asr_inline_n_65),
        .\gen_deflt_chks.AwAddrIncr_q1_reg[3]_6 (i_Axi4PC_asr_inline_n_66),
        .\gen_deflt_chks.AwAddrIncr_q1_reg[3]_7 (i_Axi4PC_asr_inline_n_67),
        .\gen_deflt_chks.AwAddrIncr_q1_reg[3]_8 (i_Axi4PC_asr_inline_n_68),
        .\gen_deflt_chks.s101sq_reg[1]_0 (i_Axi4PC_asr_inline_n_0),
        .pc_status(pc_status[56:0]),
        .\rdata_qq_reg[127] (\rdata_qq_reg[127] ),
        .resetn_qq(resetn_qq),
        .rid_mismatch_q(rid_mismatch_q),
        .rid_qq(rid_qq),
        .rlast_qq(rlast_qq),
        .rready_qq(rready_qq),
        .\rresp_qq_reg[1] (\rresp_qq_reg[1] ),
        .ruser_qq(ruser_qq),
        .rvalid_qq(rvalid_qq),
        .\wdata_qq_reg[127] (\wdata_qq_reg[127] ),
        .wlast_qq(wlast_qq),
        .wready_qq(wready_qq),
        .\wstrb_qq_reg[15] (\wstrb_qq_reg[15] ),
        .wuser_qq(wuser_qq),
        .wvalid_qq(wvalid_qq));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \mask_shift_stage_1[0]_i_1 
       (.I0(AWCMD_n_20),
        .I1(AWStrbsizeOut[0]),
        .I2(AWStrbsizeOut[1]),
        .I3(AWStrbsizeOut[2]),
        .O(\mask_shift_stage_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \mask_shift_stage_1[1]_i_1 
       (.I0(AWCMD_n_19),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .O(\mask_shift_stage_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \mask_shift_stage_1[2]_i_1 
       (.I0(AWCMD_n_18),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .I3(AWStrbsizeOut[0]),
        .O(\mask_shift_stage_1[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mask_shift_stage_1[3]_i_1 
       (.I0(AWCMD_n_17),
        .I1(AWStrbsizeOut[2]),
        .O(\mask_shift_stage_1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \mask_shift_stage_1[4]_i_1 
       (.I0(AWCMD_n_16),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .I3(AWStrbsizeOut[0]),
        .O(\mask_shift_stage_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mask_shift_stage_1[5]_i_1 
       (.I0(AWCMD_n_15),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .O(\mask_shift_stage_1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mask_shift_stage_1[6]_i_1 
       (.I0(AWCMD_n_14),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .I3(AWStrbsizeOut[0]),
        .O(\mask_shift_stage_1[6]_i_1_n_0 ));
  FDRE \mask_shift_stage_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[0]_i_1_n_0 ),
        .Q(mask_shift_stage_1[0]),
        .R(1'b0));
  FDRE \mask_shift_stage_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[1]_i_1_n_0 ),
        .Q(mask_shift_stage_1[1]),
        .R(1'b0));
  FDRE \mask_shift_stage_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[2]_i_1_n_0 ),
        .Q(mask_shift_stage_1[2]),
        .R(1'b0));
  FDRE \mask_shift_stage_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[3]_i_1_n_0 ),
        .Q(mask_shift_stage_1[3]),
        .R(1'b0));
  FDRE \mask_shift_stage_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[4]_i_1_n_0 ),
        .Q(mask_shift_stage_1[4]),
        .R(1'b0));
  FDRE \mask_shift_stage_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[5]_i_1_n_0 ),
        .Q(mask_shift_stage_1[5]),
        .R(1'b0));
  FDRE \mask_shift_stage_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[6]_i_1_n_0 ),
        .Q(mask_shift_stage_1[6]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_q1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(mask_shift_stage_2[0]),
        .Q(mask_shift_stage_2_q1[0]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_q1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(mask_shift_stage_2[1]),
        .Q(mask_shift_stage_2_q1[1]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_q1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(mask_shift_stage_2[2]),
        .Q(mask_shift_stage_2_q1[2]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_q1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(mask_shift_stage_2[3]),
        .Q(mask_shift_stage_2_q1[3]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_4),
        .Q(mask_shift_stage_2[0]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_3),
        .Q(mask_shift_stage_2[1]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_2),
        .Q(mask_shift_stage_2[2]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_1),
        .Q(mask_shift_stage_2[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_1
       (.I0(pc_asserted_i_i_2_n_0),
        .I1(pc_asserted_i_i_3_n_0),
        .I2(pc_asserted_i_i_4_n_0),
        .I3(pc_asserted_i_i_5_n_0),
        .I4(pc_asserted_i_i_6_n_0),
        .I5(pc_asserted_i_i_7_n_0),
        .O(pc_asserted_i_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_10
       (.I0(pc_status[51]),
        .I1(pc_status[45]),
        .I2(pc_status[14]),
        .I3(pc_status[3]),
        .O(pc_asserted_i_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_11
       (.I0(pc_status[27]),
        .I1(pc_status[23]),
        .I2(pc_status[11]),
        .I3(pc_status[8]),
        .O(pc_asserted_i_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_12
       (.I0(pc_status[40]),
        .I1(pc_status[28]),
        .I2(pc_status[57]),
        .I3(pc_status[52]),
        .O(pc_asserted_i_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_13
       (.I0(pc_status[53]),
        .I1(pc_status[21]),
        .I2(pc_status[42]),
        .I3(pc_status[31]),
        .O(pc_asserted_i_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_14
       (.I0(pc_status[34]),
        .I1(pc_status[9]),
        .I2(pc_status[33]),
        .I3(pc_status[26]),
        .O(pc_asserted_i_i_14_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_15
       (.I0(pc_status[35]),
        .I1(pc_status[7]),
        .I2(pc_status[48]),
        .I3(pc_status[2]),
        .O(pc_asserted_i_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_16
       (.I0(pc_status[58]),
        .I1(pc_status[25]),
        .I2(pc_status[17]),
        .I3(pc_status[16]),
        .O(pc_asserted_i_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_2
       (.I0(pc_asserted_i_i_8_n_0),
        .I1(pc_asserted_i_i_9_n_0),
        .I2(pc_status[20]),
        .I3(pc_status[19]),
        .I4(pc_status[54]),
        .I5(pc_status[22]),
        .O(pc_asserted_i_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pc_asserted_i_i_3
       (.I0(pc_status[4]),
        .I1(pc_status[30]),
        .I2(pc_status[13]),
        .I3(pc_status[38]),
        .I4(pc_asserted_i_i_10_n_0),
        .O(pc_asserted_i_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pc_asserted_i_i_4
       (.I0(pc_status[41]),
        .I1(pc_status[49]),
        .I2(pc_status[0]),
        .I3(pc_status[50]),
        .I4(pc_asserted_i_i_11_n_0),
        .O(pc_asserted_i_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pc_asserted_i_i_5
       (.I0(pc_status[18]),
        .I1(pc_status[37]),
        .I2(pc_status[15]),
        .I3(pc_status[36]),
        .I4(pc_asserted_i_i_12_n_0),
        .O(pc_asserted_i_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pc_asserted_i_i_6
       (.I0(pc_status[39]),
        .I1(pc_status[60]),
        .I2(pc_status[1]),
        .I3(pc_status[32]),
        .I4(pc_asserted_i_i_13_n_0),
        .O(pc_asserted_i_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_7
       (.I0(pc_asserted_i_i_14_n_0),
        .I1(pc_asserted_i_i_15_n_0),
        .I2(pc_asserted_i_i_16_n_0),
        .I3(pc_status[44]),
        .I4(pc_status[55]),
        .I5(pc_status[6]),
        .O(pc_asserted_i_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_8
       (.I0(pc_status[12]),
        .I1(pc_status[10]),
        .I2(pc_status[24]),
        .I3(pc_status[47]),
        .I4(pc_status[5]),
        .I5(pc_status[29]),
        .O(pc_asserted_i_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_9
       (.I0(pc_status[46]),
        .I1(pc_status[43]),
        .I2(pc_status[59]),
        .I3(pc_status[56]),
        .O(pc_asserted_i_i_9_n_0));
  FDRE \pc_status_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_60),
        .Q(pc_status[0]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_52),
        .Q(pc_status[8]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_51),
        .Q(pc_status[9]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_50),
        .Q(pc_status[10]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_49),
        .Q(pc_status[11]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_48),
        .Q(pc_status[12]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_47),
        .Q(pc_status[13]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_46),
        .Q(pc_status[14]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_45),
        .Q(pc_status[15]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_44),
        .Q(pc_status[16]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_59),
        .Q(pc_status[1]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_43),
        .Q(pc_status[17]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_42),
        .Q(pc_status[18]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_41),
        .Q(pc_status[19]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_40),
        .Q(pc_status[20]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_39),
        .Q(pc_status[21]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_38),
        .Q(pc_status[22]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_58),
        .Q(pc_status[2]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_37),
        .Q(pc_status[23]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_36),
        .Q(pc_status[24]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_35),
        .Q(pc_status[25]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_34),
        .Q(pc_status[26]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_33),
        .Q(pc_status[27]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_32),
        .Q(pc_status[28]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_31),
        .Q(pc_status[29]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_30),
        .Q(pc_status[30]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_29),
        .Q(pc_status[31]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_28),
        .Q(pc_status[32]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_27),
        .Q(pc_status[33]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_26),
        .Q(pc_status[34]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_25),
        .Q(pc_status[35]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_24),
        .Q(pc_status[36]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_23),
        .Q(pc_status[37]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_57),
        .Q(pc_status[3]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_22),
        .Q(pc_status[38]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_21),
        .Q(pc_status[39]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_20),
        .Q(pc_status[40]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_19),
        .Q(pc_status[41]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_18),
        .Q(pc_status[42]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_17),
        .Q(pc_status[43]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_16),
        .Q(pc_status[44]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_15),
        .Q(pc_status[45]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_56),
        .Q(pc_status[4]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_14),
        .Q(pc_status[46]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_13),
        .Q(pc_status[47]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_12),
        .Q(pc_status[48]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[64] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_11),
        .Q(pc_status[49]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[65] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_10),
        .Q(pc_status[50]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[66] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_9),
        .Q(pc_status[51]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_55),
        .Q(pc_status[5]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[73] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_8),
        .Q(pc_status[52]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[74] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_7),
        .Q(pc_status[53]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[75] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_6),
        .Q(pc_status[54]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[76] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_5),
        .Q(pc_status[55]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[77] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_4),
        .Q(pc_status[56]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[78] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rthread_loop[1].RDCAM_n_5 ),
        .Q(pc_status[57]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[79] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rthread_loop[0].RDCAM_n_0 ),
        .Q(pc_status[58]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_54),
        .Q(pc_status[6]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[80] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_25),
        .Q(pc_status[59]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[81] 
       (.C(aclk),
        .CE(1'b1),
        .D(WCHECK_n_0),
        .Q(pc_status[60]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_53),
        .Q(pc_status[7]),
        .R(i_Axi4PC_asr_inline_n_0));
  (* srl_bus_name = "inst/\CORE/wchechPop_shift_reg " *) 
  (* srl_name = "inst/\CORE/wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3 " *) 
  SRL16E \wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(p_41_in),
        .Q(\wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3_n_0 ));
  FDRE \wchechPop_shift_reg[5]_CORE_wchechPop_shift_reg_r_4 
       (.C(aclk),
        .CE(1'b1),
        .D(\wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3_n_0 ),
        .Q(\wchechPop_shift_reg[5]_CORE_wchechPop_shift_reg_r_4_n_0 ),
        .R(1'b0));
  FDRE \wchechPop_shift_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(wchechPop_shift_reg_gate_n_0),
        .Q(wchechPop_shift),
        .R(i_Axi4PC_asr_inline_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    wchechPop_shift_reg_gate
       (.I0(\wchechPop_shift_reg[5]_CORE_wchechPop_shift_reg_r_4_n_0 ),
        .I1(wchechPop_shift_reg_r_4_n_0),
        .O(wchechPop_shift_reg_gate_n_0));
  FDRE wchechPop_shift_reg_r
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(wchechPop_shift_reg_r_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE wchechPop_shift_reg_r_0
       (.C(aclk),
        .CE(1'b1),
        .D(wchechPop_shift_reg_r_n_0),
        .Q(wchechPop_shift_reg_r_0_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE wchechPop_shift_reg_r_1
       (.C(aclk),
        .CE(1'b1),
        .D(wchechPop_shift_reg_r_0_n_0),
        .Q(wchechPop_shift_reg_r_1_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE wchechPop_shift_reg_r_2
       (.C(aclk),
        .CE(1'b1),
        .D(wchechPop_shift_reg_r_1_n_0),
        .Q(wchechPop_shift_reg_r_2_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE wchechPop_shift_reg_r_3
       (.C(aclk),
        .CE(1'b1),
        .D(wchechPop_shift_reg_r_2_n_0),
        .Q(wchechPop_shift_reg_r_3_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE wchechPop_shift_reg_r_4
       (.C(aclk),
        .CE(1'b1),
        .D(wchechPop_shift_reg_r_3_n_0),
        .Q(wchechPop_shift_reg_r_4_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_syn_fifo
   (D,
    SR,
    \pc_status_i_reg[78] ,
    ASR_590,
    ASR_610,
    resetn_qq_reg,
    aclk,
    arvalid_qq,
    arready_qq,
    arid_index_q,
    rready_qq,
    rvalid_qq,
    rlast_qq,
    rid_index_q,
    pc_status,
    \cnt_reg[0]_0 ,
    cmd_pop_1,
    resetn_qq,
    rcam_overflow_q,
    resetn_qq_reg_0,
    \gen_rthread_loop[1].RCount_reg[1][3] ,
    \gen_rthread_loop[1].RCount_reg[1][0] ,
    Q,
    \rresp_qq_reg[1] ,
    data_out,
    data_in);
  output [0:0]D;
  output [0:0]SR;
  output \pc_status_i_reg[78] ;
  output ASR_590;
  output ASR_610;
  input resetn_qq_reg;
  input aclk;
  input arvalid_qq;
  input arready_qq;
  input arid_index_q;
  input rready_qq;
  input rvalid_qq;
  input rlast_qq;
  input rid_index_q;
  input [0:0]pc_status;
  input \cnt_reg[0]_0 ;
  input cmd_pop_1;
  input resetn_qq;
  input rcam_overflow_q;
  input resetn_qq_reg_0;
  input \gen_rthread_loop[1].RCount_reg[1][3] ;
  input \gen_rthread_loop[1].RCount_reg[1][0] ;
  input [8:0]Q;
  input [1:0]\rresp_qq_reg[1] ;
  input [0:0]data_out;
  input [14:0]data_in;

  wire [1:0]A;
  wire ASR_590;
  wire ASR_59_i_3_n_0;
  wire ASR_59_i_4_n_0;
  wire ASR_59_i_7_n_0;
  wire ASR_59_i_8_n_0;
  wire ASR_610;
  wire [0:0]D;
  wire [8:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire arid_index_q;
  wire arready_qq;
  wire arvalid_qq;
  wire cmd_pop_1;
  wire \cnt[0]_i_1__1_n_0 ;
  wire \cnt[1]_i_2__1_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire [14:0]data_in;
  wire [0:0]data_out;
  wire data_ram_reg_0_1_0_5_i_1__2_n_0;
  wire data_ram_reg_0_1_0_5_n_0;
  wire data_ram_reg_0_1_0_5_n_1;
  wire data_ram_reg_0_1_0_5_n_10;
  wire data_ram_reg_0_1_0_5_n_11;
  wire data_ram_reg_0_1_0_5_n_12;
  wire data_ram_reg_0_1_0_5_n_13;
  wire data_ram_reg_0_1_0_5_n_2;
  wire data_ram_reg_0_1_0_5_n_3;
  wire data_ram_reg_0_1_0_5_n_4;
  wire data_ram_reg_0_1_0_5_n_5;
  wire data_ram_reg_0_1_0_5_n_6;
  wire data_ram_reg_0_1_0_5_n_7;
  wire data_ram_reg_0_1_0_5_n_8;
  wire data_ram_reg_0_1_0_5_n_9;
  wire data_ram_reg_0_1_6_11_n_0;
  wire data_ram_reg_0_1_6_11_n_1;
  wire \gen_deflt_chks.ASR_61_i_2_n_0 ;
  wire \gen_rthread_loop[1].RCount_reg[1][0] ;
  wire \gen_rthread_loop[1].RCount_reg[1][3] ;
  wire p_0_in_5;
  wire [0:0]pc_status;
  wire \pc_status_i[79]_i_2_n_0 ;
  wire \pc_status_i_reg[78] ;
  wire rcam_overflow_q;
  wire rd_ptr;
  wire \rd_ptr[0]_i_1__1_n_0 ;
  wire resetn_qq;
  wire resetn_qq_reg;
  wire resetn_qq_reg_0;
  wire rid_index_q;
  wire rlast_qq;
  wire rready_qq;
  wire [1:0]\rresp_qq_reg[1] ;
  wire rvalid_qq;
  wire wr_ptr;
  wire \wr_ptr[0]_i_1__1_n_0 ;
  wire [1:0]NLW_data_ram_reg_0_1_0_5_DOH_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOB_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOC_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOE_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOF_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOG_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOH_UNCONNECTED;

  LUT6 #(
    .INIT(64'hA800A8A802AA0202)) 
    ASR_59_i_1
       (.I0(resetn_qq_reg_0),
        .I1(ASR_59_i_3_n_0),
        .I2(ASR_59_i_4_n_0),
        .I3(\gen_rthread_loop[1].RCount_reg[1][3] ),
        .I4(\gen_rthread_loop[1].RCount_reg[1][0] ),
        .I5(rlast_qq),
        .O(ASR_590));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    ASR_59_i_3
       (.I0(Q[1]),
        .I1(data_ram_reg_0_1_0_5_n_8),
        .I2(Q[2]),
        .I3(data_ram_reg_0_1_0_5_n_11),
        .I4(ASR_59_i_7_n_0),
        .O(ASR_59_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFEFFE)) 
    ASR_59_i_4
       (.I0(rid_index_q),
        .I1(Q[8]),
        .I2(Q[0]),
        .I3(data_ram_reg_0_1_0_5_n_9),
        .I4(ASR_59_i_8_n_0),
        .O(ASR_59_i_4_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ASR_59_i_7
       (.I0(data_ram_reg_0_1_6_11_n_0),
        .I1(Q[7]),
        .I2(Q[4]),
        .I3(data_ram_reg_0_1_0_5_n_13),
        .I4(Q[6]),
        .I5(data_ram_reg_0_1_6_11_n_1),
        .O(ASR_59_i_7_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ASR_59_i_8
       (.I0(data_ram_reg_0_1_0_5_n_12),
        .I1(Q[5]),
        .I2(data_ram_reg_0_1_0_5_n_10),
        .I3(Q[3]),
        .O(ASR_59_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__1 
       (.I0(A[0]),
        .O(\cnt[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAA6AAA2A0040)) 
    \cnt[1]_i_1__1 
       (.I0(\pc_status_i[79]_i_2_n_0 ),
        .I1(arvalid_qq),
        .I2(arready_qq),
        .I3(arid_index_q),
        .I4(A[1]),
        .I5(A[0]),
        .O(p_0_in_5));
  LUT6 #(
    .INIT(64'hF70008FF08FF0000)) 
    \cnt[1]_i_2__1 
       (.I0(arvalid_qq),
        .I1(arready_qq),
        .I2(arid_index_q),
        .I3(\pc_status_i[79]_i_2_n_0 ),
        .I4(A[1]),
        .I5(A[0]),
        .O(\cnt[1]_i_2__1_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(aclk),
        .CE(p_0_in_5),
        .D(\cnt[0]_i_1__1_n_0 ),
        .Q(A[0]),
        .R(resetn_qq_reg));
  FDRE \cnt_reg[1] 
       (.C(aclk),
        .CE(p_0_in_5),
        .D(\cnt[1]_i_2__1_n_0 ),
        .Q(A[1]),
        .R(resetn_qq_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M16 data_ram_reg_0_1_0_5
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRE({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRF({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRG({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRH({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(data_in[1:0]),
        .DIB(data_in[3:2]),
        .DIC(data_in[5:4]),
        .DID({1'b0,data_in[6]}),
        .DIE(data_in[8:7]),
        .DIF(data_in[10:9]),
        .DIG(data_in[12:11]),
        .DIH({1'b0,1'b0}),
        .DOA({data_ram_reg_0_1_0_5_n_0,data_ram_reg_0_1_0_5_n_1}),
        .DOB({data_ram_reg_0_1_0_5_n_2,data_ram_reg_0_1_0_5_n_3}),
        .DOC({data_ram_reg_0_1_0_5_n_4,data_ram_reg_0_1_0_5_n_5}),
        .DOD({data_ram_reg_0_1_0_5_n_6,data_ram_reg_0_1_0_5_n_7}),
        .DOE({data_ram_reg_0_1_0_5_n_8,data_ram_reg_0_1_0_5_n_9}),
        .DOF({data_ram_reg_0_1_0_5_n_10,data_ram_reg_0_1_0_5_n_11}),
        .DOG({data_ram_reg_0_1_0_5_n_12,data_ram_reg_0_1_0_5_n_13}),
        .DOH(NLW_data_ram_reg_0_1_0_5_DOH_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(data_ram_reg_0_1_0_5_i_1__2_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    data_ram_reg_0_1_0_5_i_1__2
       (.I0(arid_index_q),
        .I1(arready_qq),
        .I2(arvalid_qq),
        .O(data_ram_reg_0_1_0_5_i_1__2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M16 data_ram_reg_0_1_6_11
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRE({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRF({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRG({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRH({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(data_in[14:13]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA({data_ram_reg_0_1_6_11_n_0,data_ram_reg_0_1_6_11_n_1}),
        .DOB(NLW_data_ram_reg_0_1_6_11_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_data_ram_reg_0_1_6_11_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED[1:0]),
        .DOE(NLW_data_ram_reg_0_1_6_11_DOE_UNCONNECTED[1:0]),
        .DOF(NLW_data_ram_reg_0_1_6_11_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_data_ram_reg_0_1_6_11_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_data_ram_reg_0_1_6_11_DOH_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(data_ram_reg_0_1_0_5_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    \gen_deflt_chks.ASR_61_i_1 
       (.I0(\rresp_qq_reg[1] [1]),
        .I1(rready_qq),
        .I2(\rresp_qq_reg[1] [0]),
        .I3(\gen_deflt_chks.ASR_61_i_2_n_0 ),
        .O(ASR_610));
  LUT5 #(
    .INIT(32'hE2FFFFFF)) 
    \gen_deflt_chks.ASR_61_i_2 
       (.I0(data_ram_reg_0_1_0_5_n_6),
        .I1(rid_index_q),
        .I2(data_out),
        .I3(resetn_qq),
        .I4(rvalid_qq),
        .O(\gen_deflt_chks.ASR_61_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hBBBBBBFB)) 
    \gen_rthread_loop[0].RCount[0][8]_i_1 
       (.I0(\pc_status_i[79]_i_2_n_0 ),
        .I1(resetn_qq),
        .I2(data_ram_reg_0_1_0_5_i_1__2_n_0),
        .I3(A[1]),
        .I4(A[0]),
        .O(SR));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \pc_status_i[78]_i_2 
       (.I0(rcam_overflow_q),
        .I1(A[0]),
        .I2(A[1]),
        .I3(arid_index_q),
        .I4(arready_qq),
        .I5(arvalid_qq),
        .O(\pc_status_i_reg[78] ));
  LUT6 #(
    .INIT(64'hFFFFF1F0F1F0F1F0)) 
    \pc_status_i[79]_i_1 
       (.I0(A[0]),
        .I1(A[1]),
        .I2(pc_status),
        .I3(\pc_status_i[79]_i_2_n_0 ),
        .I4(\cnt_reg[0]_0 ),
        .I5(cmd_pop_1),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \pc_status_i[79]_i_2 
       (.I0(rid_index_q),
        .I1(rlast_qq),
        .I2(rvalid_qq),
        .I3(rready_qq),
        .O(\pc_status_i[79]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \rd_ptr[0]_i_1__1 
       (.I0(rready_qq),
        .I1(rvalid_qq),
        .I2(rlast_qq),
        .I3(rid_index_q),
        .I4(rd_ptr),
        .O(\rd_ptr[0]_i_1__1_n_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rd_ptr[0]_i_1__1_n_0 ),
        .Q(rd_ptr),
        .R(resetn_qq_reg));
  LUT4 #(
    .INIT(16'hF708)) 
    \wr_ptr[0]_i_1__1 
       (.I0(arvalid_qq),
        .I1(arready_qq),
        .I2(arid_index_q),
        .I3(wr_ptr),
        .O(\wr_ptr[0]_i_1__1_n_0 ));
  FDRE \wr_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wr_ptr[0]_i_1__1_n_0 ),
        .Q(wr_ptr),
        .R(resetn_qq_reg));
endmodule

(* ORIG_REF_NAME = "axi_protocol_checker_v2_0_1_syn_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_syn_fifo_4
   (SR,
    cmd_pop_1,
    \pc_status_i_reg[79] ,
    ASR_59_reg,
    ASR_59_reg_0,
    D,
    data_out,
    resetn_qq_reg,
    aclk,
    arvalid_qq,
    arready_qq,
    arid_index_q,
    rready_qq,
    rvalid_qq,
    rlast_qq,
    rid_index_q,
    resetn_qq,
    Q,
    pc_status,
    rcam_overflow_q_reg,
    data_in);
  output [0:0]SR;
  output cmd_pop_1;
  output \pc_status_i_reg[79] ;
  output ASR_59_reg;
  output ASR_59_reg_0;
  output [0:0]D;
  output [0:0]data_out;
  input resetn_qq_reg;
  input aclk;
  input arvalid_qq;
  input arready_qq;
  input arid_index_q;
  input rready_qq;
  input rvalid_qq;
  input rlast_qq;
  input rid_index_q;
  input resetn_qq;
  input [8:0]Q;
  input [0:0]pc_status;
  input rcam_overflow_q_reg;
  input [14:0]data_in;

  wire ASR_59_i_10_n_0;
  wire ASR_59_i_9_n_0;
  wire ASR_59_reg;
  wire ASR_59_reg_0;
  wire [0:0]D;
  wire [8:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire arid_index_q;
  wire arready_qq;
  wire arvalid_qq;
  wire cmd_pop_1;
  wire \cnt[0]_i_1__2_n_0 ;
  wire \cnt[1]_i_1__2_n_0 ;
  wire \cnt[1]_i_2__2_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire [14:0]data_in;
  wire [0:0]data_out;
  wire data_ram_reg_0_1_0_5_n_0;
  wire data_ram_reg_0_1_0_5_n_1;
  wire data_ram_reg_0_1_0_5_n_10;
  wire data_ram_reg_0_1_0_5_n_11;
  wire data_ram_reg_0_1_0_5_n_12;
  wire data_ram_reg_0_1_0_5_n_13;
  wire data_ram_reg_0_1_0_5_n_2;
  wire data_ram_reg_0_1_0_5_n_3;
  wire data_ram_reg_0_1_0_5_n_4;
  wire data_ram_reg_0_1_0_5_n_5;
  wire data_ram_reg_0_1_0_5_n_7;
  wire data_ram_reg_0_1_0_5_n_8;
  wire data_ram_reg_0_1_0_5_n_9;
  wire data_ram_reg_0_1_6_11_n_0;
  wire data_ram_reg_0_1_6_11_n_1;
  wire p_4_in;
  wire [0:0]pc_status;
  wire \pc_status_i_reg[79] ;
  wire rcam_overflow_q_reg;
  wire rd_ptr;
  wire \rd_ptr[0]_i_1__2_n_0 ;
  wire resetn_qq;
  wire resetn_qq_reg;
  wire rid_index_q;
  wire rlast_qq;
  wire rready_qq;
  wire rvalid_qq;
  wire wr_ptr;
  wire \wr_ptr[0]_i_1__2_n_0 ;
  wire [1:0]NLW_data_ram_reg_0_1_0_5_DOH_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOB_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOC_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOE_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOF_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOG_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOH_UNCONNECTED;

  LUT6 #(
    .INIT(64'h22F2FFFFFFFF22F2)) 
    ASR_59_i_10
       (.I0(data_ram_reg_0_1_0_5_n_13),
        .I1(Q[4]),
        .I2(data_ram_reg_0_1_0_5_n_10),
        .I3(Q[3]),
        .I4(data_ram_reg_0_1_0_5_n_8),
        .I5(Q[1]),
        .O(ASR_59_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2FF2)) 
    ASR_59_i_5
       (.I0(Q[3]),
        .I1(data_ram_reg_0_1_0_5_n_10),
        .I2(Q[5]),
        .I3(data_ram_reg_0_1_0_5_n_12),
        .I4(ASR_59_i_9_n_0),
        .I5(ASR_59_i_10_n_0),
        .O(ASR_59_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_59_i_6
       (.I0(Q[0]),
        .I1(data_ram_reg_0_1_0_5_n_9),
        .I2(Q[6]),
        .I3(data_ram_reg_0_1_6_11_n_1),
        .I4(data_ram_reg_0_1_6_11_n_0),
        .I5(Q[7]),
        .O(ASR_59_reg_0));
  LUT6 #(
    .INIT(64'hFFFF66F6FFFFFFFF)) 
    ASR_59_i_9
       (.I0(data_ram_reg_0_1_0_5_n_11),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(data_ram_reg_0_1_0_5_n_13),
        .I4(Q[8]),
        .I5(rid_index_q),
        .O(ASR_59_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__2 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA2AAA4000)) 
    \cnt[1]_i_1__2 
       (.I0(cmd_pop_1),
        .I1(arvalid_qq),
        .I2(arready_qq),
        .I3(arid_index_q),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\cnt[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7F0080FF80FF0000)) 
    \cnt[1]_i_2__2 
       (.I0(arvalid_qq),
        .I1(arready_qq),
        .I2(arid_index_q),
        .I3(cmd_pop_1),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\cnt[1]_i_2__2_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(aclk),
        .CE(\cnt[1]_i_1__2_n_0 ),
        .D(\cnt[0]_i_1__2_n_0 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(resetn_qq_reg));
  FDRE \cnt_reg[1] 
       (.C(aclk),
        .CE(\cnt[1]_i_1__2_n_0 ),
        .D(\cnt[1]_i_2__2_n_0 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(resetn_qq_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M16 data_ram_reg_0_1_0_5
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRE({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRF({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRG({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRH({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(data_in[1:0]),
        .DIB(data_in[3:2]),
        .DIC(data_in[5:4]),
        .DID({1'b0,data_in[6]}),
        .DIE(data_in[8:7]),
        .DIF(data_in[10:9]),
        .DIG(data_in[12:11]),
        .DIH({1'b0,1'b0}),
        .DOA({data_ram_reg_0_1_0_5_n_0,data_ram_reg_0_1_0_5_n_1}),
        .DOB({data_ram_reg_0_1_0_5_n_2,data_ram_reg_0_1_0_5_n_3}),
        .DOC({data_ram_reg_0_1_0_5_n_4,data_ram_reg_0_1_0_5_n_5}),
        .DOD({data_out,data_ram_reg_0_1_0_5_n_7}),
        .DOE({data_ram_reg_0_1_0_5_n_8,data_ram_reg_0_1_0_5_n_9}),
        .DOF({data_ram_reg_0_1_0_5_n_10,data_ram_reg_0_1_0_5_n_11}),
        .DOG({data_ram_reg_0_1_0_5_n_12,data_ram_reg_0_1_0_5_n_13}),
        .DOH(NLW_data_ram_reg_0_1_0_5_DOH_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(p_4_in));
  LUT3 #(
    .INIT(8'h80)) 
    data_ram_reg_0_1_0_5_i_1__1
       (.I0(arid_index_q),
        .I1(arready_qq),
        .I2(arvalid_qq),
        .O(p_4_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M16 data_ram_reg_0_1_6_11
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRE({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRF({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRG({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRH({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(data_in[14:13]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA({data_ram_reg_0_1_6_11_n_0,data_ram_reg_0_1_6_11_n_1}),
        .DOB(NLW_data_ram_reg_0_1_6_11_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_data_ram_reg_0_1_6_11_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED[1:0]),
        .DOE(NLW_data_ram_reg_0_1_6_11_DOE_UNCONNECTED[1:0]),
        .DOF(NLW_data_ram_reg_0_1_6_11_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_data_ram_reg_0_1_6_11_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_data_ram_reg_0_1_6_11_DOH_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(p_4_in));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hBBBBBBFB)) 
    \gen_rthread_loop[1].RCount[1][8]_i_1 
       (.I0(cmd_pop_1),
        .I1(resetn_qq),
        .I2(p_4_in),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFAEAA)) 
    \pc_status_i[78]_i_1 
       (.I0(pc_status),
        .I1(p_4_in),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(rcam_overflow_q_reg),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \pc_status_i[79]_i_3 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(\pc_status_i_reg[79] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pc_status_i[79]_i_4 
       (.I0(rid_index_q),
        .I1(rlast_qq),
        .I2(rvalid_qq),
        .I3(rready_qq),
        .O(cmd_pop_1));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_ptr[0]_i_1__2 
       (.I0(rready_qq),
        .I1(rvalid_qq),
        .I2(rlast_qq),
        .I3(rid_index_q),
        .I4(rd_ptr),
        .O(\rd_ptr[0]_i_1__2_n_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rd_ptr[0]_i_1__2_n_0 ),
        .Q(rd_ptr),
        .R(resetn_qq_reg));
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_ptr[0]_i_1__2 
       (.I0(arvalid_qq),
        .I1(arready_qq),
        .I2(arid_index_q),
        .I3(wr_ptr),
        .O(\wr_ptr[0]_i_1__2_n_0 ));
  FDRE \wr_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wr_ptr[0]_i_1__2_n_0 ),
        .Q(wr_ptr),
        .R(resetn_qq_reg));
endmodule

(* ORIG_REF_NAME = "axi_protocol_checker_v2_0_1_syn_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_syn_fifo__parameterized0
   (p_41_in,
    D,
    data_out,
    S,
    \pc_status_i_reg[80] ,
    E,
    \AWXferCount_reg[0][0] ,
    \AWXferCount_reg[1][1] ,
    \AWXferCount_reg[0][1] ,
    BrespErrorLead_reg,
    \rd_ptr_reg[0]_0 ,
    AWXferCountOverflow_reg,
    WDataNumError1_reg,
    resetn_qq_reg,
    aclk,
    awready_qq,
    awvalid_qq,
    pc_status,
    AWXferCountOverflow,
    wcam_overflow_q,
    bid_index_q,
    \cnt_reg[1]_0 ,
    bready_qq,
    bvalid_qq,
    \AWXferCount_reg[1][1]_0 ,
    bvalid_qq_reg,
    Q,
    \AWXferCount_reg[1][1]_1 ,
    bvalid_qq_reg_0,
    resetn_qq,
    bid_mismatch_q,
    \AWXferCount_reg[0][0]_0 ,
    \cnt_reg[1]_1 ,
    \WCountIn_reg[1] ,
    data_in,
    \cnt_reg[1]_2 ,
    awvalid_qq_reg);
  output p_41_in;
  output [3:0]D;
  output [15:0]data_out;
  output [3:0]S;
  output [0:0]\pc_status_i_reg[80] ;
  output [0:0]E;
  output [0:0]\AWXferCount_reg[0][0] ;
  output [0:0]\AWXferCount_reg[1][1] ;
  output [0:0]\AWXferCount_reg[0][1] ;
  output BrespErrorLead_reg;
  output [1:0]\rd_ptr_reg[0]_0 ;
  output AWXferCountOverflow_reg;
  output WDataNumError1_reg;
  input resetn_qq_reg;
  input aclk;
  input awready_qq;
  input awvalid_qq;
  input [0:0]pc_status;
  input AWXferCountOverflow;
  input wcam_overflow_q;
  input bid_index_q;
  input \cnt_reg[1]_0 ;
  input bready_qq;
  input bvalid_qq;
  input \AWXferCount_reg[1][1]_0 ;
  input bvalid_qq_reg;
  input [1:0]Q;
  input [1:0]\AWXferCount_reg[1][1]_1 ;
  input bvalid_qq_reg_0;
  input resetn_qq;
  input bid_mismatch_q;
  input \AWXferCount_reg[0][0]_0 ;
  input [1:0]\cnt_reg[1]_1 ;
  input [2:0]\WCountIn_reg[1] ;
  input [18:0]data_in;
  input [0:0]\cnt_reg[1]_2 ;
  input [0:0]awvalid_qq_reg;

  wire AWPush;
  wire AWXferCountOverflow;
  wire AWXferCountOverflow_i_2_n_0;
  wire AWXferCountOverflow_i_3_n_0;
  wire AWXferCountOverflow_reg;
  wire \AWXferCount[1][1]_i_5_n_0 ;
  wire [0:0]\AWXferCount_reg[0][0] ;
  wire \AWXferCount_reg[0][0]_0 ;
  wire [0:0]\AWXferCount_reg[0][1] ;
  wire [0:0]\AWXferCount_reg[1][1] ;
  wire \AWXferCount_reg[1][1]_0 ;
  wire [1:0]\AWXferCount_reg[1][1]_1 ;
  wire BrespErrorLead_i_2_n_0;
  wire BrespErrorLead_reg;
  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [3:0]S;
  wire [2:0]\WCountIn_reg[1] ;
  wire WDataNumError1_reg;
  wire aclk;
  wire awready_qq;
  wire awvalid_qq;
  wire [0:0]awvalid_qq_reg;
  wire bid_index_q;
  wire bid_mismatch_q;
  wire bready_qq;
  wire bvalid_qq;
  wire bvalid_qq_reg;
  wire bvalid_qq_reg_0;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt_reg[1]_0 ;
  wire [1:0]\cnt_reg[1]_1 ;
  wire [0:0]\cnt_reg[1]_2 ;
  wire [18:0]data_in;
  wire [15:0]data_out;
  wire [5:3]p_0_in__0_0;
  wire p_41_in;
  wire [0:0]pc_status;
  wire \pc_status_i[80]_i_2_n_0 ;
  wire [0:0]\pc_status_i_reg[80] ;
  wire rd_ptr;
  wire \rd_ptr[0]_i_2_n_0 ;
  wire [1:0]\rd_ptr_reg[0]_0 ;
  wire resetn_qq;
  wire resetn_qq_reg;
  wire wcam_overflow_q;
  wire wr_ptr;
  wire \wr_ptr[0]_i_1_n_0 ;
  wire [1:0]NLW_data_ram_reg_0_1_0_5_DOH_UNCONNECTED;
  wire [1:1]NLW_data_ram_reg_0_1_6_11_DOC_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOE_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOF_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOG_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOH_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0202020000000200)) 
    AWXferCountOverflow_i_1
       (.I0(AWXferCountOverflow_i_2_n_0),
        .I1(AWXferCountOverflow_i_3_n_0),
        .I2(\AWXferCount[1][1]_i_5_n_0 ),
        .I3(Q[1]),
        .I4(data_out[15]),
        .I5(\AWXferCount_reg[1][1]_1 [1]),
        .O(AWXferCountOverflow_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA8A8A800)) 
    AWXferCountOverflow_i_2
       (.I0(resetn_qq),
        .I1(\rd_ptr_reg[0]_0 [0]),
        .I2(\rd_ptr_reg[0]_0 [1]),
        .I3(\cnt_reg[1]_1 [0]),
        .I4(\cnt_reg[1]_1 [1]),
        .O(AWXferCountOverflow_i_2_n_0));
  LUT4 #(
    .INIT(16'h8008)) 
    AWXferCountOverflow_i_3
       (.I0(bready_qq),
        .I1(bvalid_qq),
        .I2(bid_index_q),
        .I3(data_out[15]),
        .O(AWXferCountOverflow_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h36050505)) 
    \AWXferCount[0][1]_i_1 
       (.I0(data_out[15]),
        .I1(bid_index_q),
        .I2(\cnt_reg[1]_0 ),
        .I3(bready_qq),
        .I4(bvalid_qq),
        .O(\AWXferCount_reg[0][0] ));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \AWXferCount[0][1]_i_2 
       (.I0(\AWXferCount_reg[1][1]_0 ),
        .I1(bvalid_qq_reg_0),
        .I2(\AWXferCount[1][1]_i_5_n_0 ),
        .I3(Q[1]),
        .I4(data_out[15]),
        .I5(\AWXferCount_reg[1][1]_1 [1]),
        .O(\AWXferCount_reg[0][1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC60A0A0A)) 
    \AWXferCount[1][1]_i_1 
       (.I0(data_out[15]),
        .I1(bid_index_q),
        .I2(\cnt_reg[1]_0 ),
        .I3(bready_qq),
        .I4(bvalid_qq),
        .O(E));
  LUT6 #(
    .INIT(64'h8B8B8BB8B8B88BB8)) 
    \AWXferCount[1][1]_i_2 
       (.I0(\AWXferCount_reg[1][1]_0 ),
        .I1(bvalid_qq_reg),
        .I2(\AWXferCount[1][1]_i_5_n_0 ),
        .I3(Q[1]),
        .I4(data_out[15]),
        .I5(\AWXferCount_reg[1][1]_1 [1]),
        .O(\AWXferCount_reg[1][1] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \AWXferCount[1][1]_i_5 
       (.I0(\AWXferCount_reg[1][1]_1 [0]),
        .I1(data_out[15]),
        .I2(Q[0]),
        .O(\AWXferCount[1][1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80808088)) 
    BrespErrorLead_i_1
       (.I0(bvalid_qq),
        .I1(resetn_qq),
        .I2(bid_mismatch_q),
        .I3(BrespErrorLead_i_2_n_0),
        .I4(\AWXferCount_reg[0][0]_0 ),
        .O(BrespErrorLead_reg));
  LUT6 #(
    .INIT(64'hEEE000000000EEE0)) 
    BrespErrorLead_i_2
       (.I0(\rd_ptr_reg[0]_0 [0]),
        .I1(\rd_ptr_reg[0]_0 [1]),
        .I2(\cnt_reg[1]_1 [0]),
        .I3(\cnt_reg[1]_1 [1]),
        .I4(bid_index_q),
        .I5(data_out[15]),
        .O(BrespErrorLead_i_2_n_0));
  LUT3 #(
    .INIT(8'hBF)) 
    StrbMask_q10_carry_i_1
       (.I0(data_out[9]),
        .I1(data_out[8]),
        .I2(data_out[7]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'hFB)) 
    StrbMask_q10_carry_i_2
       (.I0(data_out[9]),
        .I1(data_out[8]),
        .I2(data_out[7]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'hFB)) 
    StrbMask_q10_carry_i_3
       (.I0(data_out[9]),
        .I1(data_out[7]),
        .I2(data_out[8]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'hFE)) 
    StrbMask_q10_carry_i_4
       (.I0(data_out[9]),
        .I1(data_out[8]),
        .I2(data_out[7]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    WDataNumError1_i_4
       (.I0(p_0_in__0_0[3]),
        .I1(\WCountIn_reg[1] [0]),
        .I2(\WCountIn_reg[1] [1]),
        .I3(p_0_in__0_0[4]),
        .I4(\WCountIn_reg[1] [2]),
        .I5(p_0_in__0_0[5]),
        .O(WDataNumError1_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(\rd_ptr_reg[0]_0 [0]),
        .O(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(aclk),
        .CE(\cnt_reg[1]_2 ),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\rd_ptr_reg[0]_0 [0]),
        .R(resetn_qq_reg));
  FDRE \cnt_reg[1] 
       (.C(aclk),
        .CE(\cnt_reg[1]_2 ),
        .D(awvalid_qq_reg),
        .Q(\rd_ptr_reg[0]_0 [1]),
        .R(resetn_qq_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M16 data_ram_reg_0_1_0_5
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRE({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRF({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRG({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRH({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(data_in[1:0]),
        .DIB(data_in[3:2]),
        .DIC(data_in[5:4]),
        .DID(data_in[7:6]),
        .DIE(data_in[9:8]),
        .DIF(data_in[11:10]),
        .DIG(data_in[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(data_out[1:0]),
        .DOB(data_out[3:2]),
        .DOC(data_out[5:4]),
        .DOD(data_out[7:6]),
        .DOE(data_out[9:8]),
        .DOF(data_out[11:10]),
        .DOG({p_0_in__0_0[3],data_out[12]}),
        .DOH(NLW_data_ram_reg_0_1_0_5_DOH_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(AWPush));
  LUT2 #(
    .INIT(4'h8)) 
    data_ram_reg_0_1_0_5_i_1
       (.I0(awready_qq),
        .I1(awvalid_qq),
        .O(AWPush));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M16 data_ram_reg_0_1_6_11
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRE({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRF({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRG({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRH({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(data_in[15:14]),
        .DIB(data_in[17:16]),
        .DIC({1'b0,data_in[18]}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(p_0_in__0_0[5:4]),
        .DOB(data_out[14:13]),
        .DOC({NLW_data_ram_reg_0_1_6_11_DOC_UNCONNECTED[1],data_out[15]}),
        .DOD(NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED[1:0]),
        .DOE(NLW_data_ram_reg_0_1_6_11_DOE_UNCONNECTED[1:0]),
        .DOF(NLW_data_ram_reg_0_1_6_11_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_data_ram_reg_0_1_6_11_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_data_ram_reg_0_1_6_11_DOH_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(AWPush));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \mask_shift_stage_2[0]_i_1 
       (.I0(data_out[0]),
        .I1(data_out[9]),
        .I2(data_out[8]),
        .I3(data_out[7]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mask_shift_stage_2[1]_i_1 
       (.I0(data_out[1]),
        .I1(data_out[8]),
        .I2(data_out[9]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0222)) 
    \mask_shift_stage_2[2]_i_1 
       (.I0(data_out[2]),
        .I1(data_out[9]),
        .I2(data_out[8]),
        .I3(data_out[7]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mask_shift_stage_2[3]_i_1 
       (.I0(data_out[3]),
        .I1(data_out[9]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF0F8)) 
    \pc_status_i[80]_i_1 
       (.I0(awvalid_qq),
        .I1(awready_qq),
        .I2(pc_status),
        .I3(\pc_status_i[80]_i_2_n_0 ),
        .I4(AWXferCountOverflow),
        .I5(wcam_overflow_q),
        .O(\pc_status_i_reg[80] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pc_status_i[80]_i_2 
       (.I0(\rd_ptr_reg[0]_0 [0]),
        .I1(\rd_ptr_reg[0]_0 [1]),
        .O(\pc_status_i[80]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \rd_ptr[0]_i_1 
       (.I0(\rd_ptr_reg[0]_0 [0]),
        .I1(\rd_ptr_reg[0]_0 [1]),
        .I2(\cnt_reg[1]_1 [0]),
        .I3(\cnt_reg[1]_1 [1]),
        .O(p_41_in));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_2 
       (.I0(rd_ptr),
        .O(\rd_ptr[0]_i_2_n_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(aclk),
        .CE(p_41_in),
        .D(\rd_ptr[0]_i_2_n_0 ),
        .Q(rd_ptr),
        .R(resetn_qq_reg));
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[0]_i_1 
       (.I0(awready_qq),
        .I1(awvalid_qq),
        .I2(wr_ptr),
        .O(\wr_ptr[0]_i_1_n_0 ));
  FDRE \wr_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wr_ptr[0]_i_1_n_0 ),
        .Q(wr_ptr),
        .R(resetn_qq_reg));
endmodule

(* ORIG_REF_NAME = "axi_protocol_checker_v2_0_1_syn_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_syn_fifo__parameterized1
   (D,
    Q,
    \cnt_reg[1]_0 ,
    \AWXferCount_reg[1][0] ,
    \AWXferCount_reg[1][0]_0 ,
    WDataNumError1_reg,
    \AWXferCount_reg[0][0] ,
    \AWXferCount_reg[0][0]_0 ,
    WDataNumError1_reg_0,
    \cnt_reg[1]_1 ,
    WDataNumError1_reg_1,
    resetn_qq_reg,
    p_41_in,
    aclk,
    wvalid_qq,
    wready_qq,
    wlast_qq,
    pc_status,
    awvalid_qq,
    awready_qq,
    \cnt_reg[1]_2 ,
    \AWXferCount_reg[1][0]_1 ,
    data_out,
    \AWXferCount_reg[0][0]_1 ,
    bvalid_qq,
    bready_qq,
    bid_index_q,
    resetn_qq,
    \awaddr_qq_reg[1] ,
    \wstrb_qq_reg[15] ,
    first_strb,
    \WSTRBq_reg[15] ,
    WCountIn_reg);
  output [0:0]D;
  output [1:0]Q;
  output [0:0]\cnt_reg[1]_0 ;
  output [0:0]\AWXferCount_reg[1][0] ;
  output \AWXferCount_reg[1][0]_0 ;
  output WDataNumError1_reg;
  output [0:0]\AWXferCount_reg[0][0] ;
  output \AWXferCount_reg[0][0]_0 ;
  output WDataNumError1_reg_0;
  output [0:0]\cnt_reg[1]_1 ;
  output [18:0]WDataNumError1_reg_1;
  input resetn_qq_reg;
  input p_41_in;
  input aclk;
  input wvalid_qq;
  input wready_qq;
  input wlast_qq;
  input [0:0]pc_status;
  input awvalid_qq;
  input awready_qq;
  input [1:0]\cnt_reg[1]_2 ;
  input [0:0]\AWXferCount_reg[1][0]_1 ;
  input [5:0]data_out;
  input [0:0]\AWXferCount_reg[0][0]_1 ;
  input bvalid_qq;
  input bready_qq;
  input bid_index_q;
  input resetn_qq;
  input \awaddr_qq_reg[1] ;
  input [15:0]\wstrb_qq_reg[15] ;
  input first_strb;
  input [15:0]\WSTRBq_reg[15] ;
  input [8:0]WCountIn_reg;

  wire [0:0]\AWXferCount_reg[0][0] ;
  wire \AWXferCount_reg[0][0]_0 ;
  wire [0:0]\AWXferCount_reg[0][0]_1 ;
  wire [0:0]\AWXferCount_reg[1][0] ;
  wire \AWXferCount_reg[1][0]_0 ;
  wire [0:0]\AWXferCount_reg[1][0]_1 ;
  wire [0:0]D;
  wire [1:0]Q;
  wire [8:0]WCheckCountOut;
  wire [8:0]WCountIn_reg;
  wire WDataNumError1_i_2_n_0;
  wire WDataNumError1_i_3_n_0;
  wire WDataNumError1_reg;
  wire WDataNumError1_reg_0;
  wire [18:0]WDataNumError1_reg_1;
  wire WLastPush;
  wire [15:0]\WSTRBq_reg[15] ;
  wire aclk;
  wire \awaddr_qq_reg[1] ;
  wire awready_qq;
  wire awvalid_qq;
  wire bid_index_q;
  wire bready_qq;
  wire bvalid_qq;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[1]_i_2__0_n_0 ;
  wire [0:0]\cnt_reg[1]_0 ;
  wire [0:0]\cnt_reg[1]_1 ;
  wire [1:0]\cnt_reg[1]_2 ;
  wire [5:0]data_out;
  wire data_ram_reg_0_1_0_5_i_10_n_0;
  wire data_ram_reg_0_1_0_5_i_11_n_0;
  wire data_ram_reg_0_1_0_5_i_12_n_0;
  wire data_ram_reg_0_1_0_5_i_13_n_0;
  wire data_ram_reg_0_1_0_5_i_14_n_0;
  wire data_ram_reg_0_1_0_5_i_15_n_0;
  wire data_ram_reg_0_1_0_5_i_2_n_0;
  wire data_ram_reg_0_1_0_5_i_3_n_0;
  wire data_ram_reg_0_1_0_5_i_4_n_0;
  wire data_ram_reg_0_1_0_5_i_5_n_0;
  wire data_ram_reg_0_1_0_5_i_6_n_0;
  wire data_ram_reg_0_1_0_5_i_7_n_0;
  wire data_ram_reg_0_1_0_5_i_8_n_0;
  wire data_ram_reg_0_1_0_5_i_9_n_0;
  wire data_ram_reg_0_1_6_11_i_1_n_0;
  wire data_ram_reg_0_1_6_11_i_2_n_0;
  wire first_strb;
  wire p_41_in;
  wire [0:0]pc_status;
  wire rd_ptr;
  wire \rd_ptr[0]_i_1__0_n_0 ;
  wire resetn_qq;
  wire resetn_qq_reg;
  wire wlast_qq;
  wire wr_ptr;
  wire \wr_ptr[0]_i_1__0_n_0 ;
  wire wready_qq;
  wire [15:0]\wstrb_qq_reg[15] ;
  wire wvalid_qq;
  wire [1:0]NLW_data_ram_reg_0_1_0_5_DOH_UNCONNECTED;
  wire [1:1]NLW_data_ram_reg_0_1_6_11_DOF_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOG_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOH_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h10BF)) 
    \AWXferCount[0][0]_i_1 
       (.I0(\AWXferCount_reg[0][0]_0 ),
        .I1(\AWXferCount_reg[1][0]_1 ),
        .I2(data_out[5]),
        .I3(\AWXferCount_reg[0][0]_1 ),
        .O(\AWXferCount_reg[0][0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00880080)) 
    \AWXferCount[0][1]_i_3 
       (.I0(bvalid_qq),
        .I1(bready_qq),
        .I2(WDataNumError1_reg),
        .I3(bid_index_q),
        .I4(data_out[5]),
        .O(\AWXferCount_reg[0][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h3237)) 
    \AWXferCount[1][0]_i_1 
       (.I0(\AWXferCount_reg[1][0]_0 ),
        .I1(\AWXferCount_reg[1][0]_1 ),
        .I2(data_out[5]),
        .I3(\AWXferCount_reg[0][0]_1 ),
        .O(\AWXferCount_reg[1][0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80008800)) 
    \AWXferCount[1][1]_i_4 
       (.I0(bvalid_qq),
        .I1(bready_qq),
        .I2(WDataNumError1_reg),
        .I3(bid_index_q),
        .I4(data_out[5]),
        .O(\AWXferCount_reg[1][0]_0 ));
  LUT5 #(
    .INIT(32'h44444044)) 
    WDataNumError1_i_1
       (.I0(WDataNumError1_reg),
        .I1(resetn_qq),
        .I2(WDataNumError1_i_2_n_0),
        .I3(WDataNumError1_i_3_n_0),
        .I4(\awaddr_qq_reg[1] ),
        .O(WDataNumError1_reg_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    WDataNumError1_i_2
       (.I0(WCheckCountOut[2]),
        .I1(data_out[2]),
        .I2(WCheckCountOut[1]),
        .I3(data_out[1]),
        .I4(data_out[0]),
        .I5(WCheckCountOut[0]),
        .O(WDataNumError1_i_2_n_0));
  LUT5 #(
    .INIT(32'h09000009)) 
    WDataNumError1_i_3
       (.I0(WCheckCountOut[7]),
        .I1(data_out[4]),
        .I2(WCheckCountOut[8]),
        .I3(data_out[3]),
        .I4(WCheckCountOut[6]),
        .O(WDataNumError1_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(Q[0]),
        .O(\cnt[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h800080807F7F7F7F)) 
    \cnt[1]_i_1 
       (.I0(wvalid_qq),
        .I1(wready_qq),
        .I2(wlast_qq),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(WDataNumError1_reg),
        .O(\cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h110FEEE0EEE0EEE0)) 
    \cnt[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_reg[1]_2 [1]),
        .I3(\cnt_reg[1]_2 [0]),
        .I4(awvalid_qq),
        .I5(awready_qq),
        .O(\cnt_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h7770888F888F0000)) 
    \cnt[1]_i_2 
       (.I0(awvalid_qq),
        .I1(awready_qq),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\cnt_reg[1]_2 [1]),
        .I5(\cnt_reg[1]_2 [0]),
        .O(\cnt_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h007FFF80FF80007F)) 
    \cnt[1]_i_2__0 
       (.I0(wlast_qq),
        .I1(wready_qq),
        .I2(wvalid_qq),
        .I3(WDataNumError1_reg),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\cnt[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \cnt[1]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\cnt_reg[1]_2 [1]),
        .I3(\cnt_reg[1]_2 [0]),
        .O(WDataNumError1_reg));
  FDRE \cnt_reg[0] 
       (.C(aclk),
        .CE(\cnt[1]_i_1_n_0 ),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(resetn_qq_reg));
  FDRE \cnt_reg[1] 
       (.C(aclk),
        .CE(\cnt[1]_i_1_n_0 ),
        .D(\cnt[1]_i_2__0_n_0 ),
        .Q(Q[1]),
        .R(resetn_qq_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M16 data_ram_reg_0_1_0_5
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRE({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRF({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRG({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRH({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA({data_ram_reg_0_1_0_5_i_2_n_0,data_ram_reg_0_1_0_5_i_3_n_0}),
        .DIB({data_ram_reg_0_1_0_5_i_4_n_0,data_ram_reg_0_1_0_5_i_5_n_0}),
        .DIC({data_ram_reg_0_1_0_5_i_6_n_0,data_ram_reg_0_1_0_5_i_7_n_0}),
        .DID({data_ram_reg_0_1_0_5_i_8_n_0,data_ram_reg_0_1_0_5_i_9_n_0}),
        .DIE({data_ram_reg_0_1_0_5_i_10_n_0,data_ram_reg_0_1_0_5_i_11_n_0}),
        .DIF({data_ram_reg_0_1_0_5_i_12_n_0,data_ram_reg_0_1_0_5_i_13_n_0}),
        .DIG({data_ram_reg_0_1_0_5_i_14_n_0,data_ram_reg_0_1_0_5_i_15_n_0}),
        .DIH({1'b0,1'b0}),
        .DOA(WDataNumError1_reg_1[1:0]),
        .DOB(WDataNumError1_reg_1[3:2]),
        .DOC(WDataNumError1_reg_1[5:4]),
        .DOD(WDataNumError1_reg_1[7:6]),
        .DOE(WDataNumError1_reg_1[9:8]),
        .DOF(WDataNumError1_reg_1[11:10]),
        .DOG(WDataNumError1_reg_1[13:12]),
        .DOH(NLW_data_ram_reg_0_1_0_5_DOH_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(WLastPush));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_10
       (.I0(\wstrb_qq_reg[15] [9]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [9]),
        .O(data_ram_reg_0_1_0_5_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_11
       (.I0(\wstrb_qq_reg[15] [8]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [8]),
        .O(data_ram_reg_0_1_0_5_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_12
       (.I0(\wstrb_qq_reg[15] [11]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [11]),
        .O(data_ram_reg_0_1_0_5_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_13
       (.I0(\wstrb_qq_reg[15] [10]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [10]),
        .O(data_ram_reg_0_1_0_5_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_14
       (.I0(\wstrb_qq_reg[15] [13]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [13]),
        .O(data_ram_reg_0_1_0_5_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_15
       (.I0(\wstrb_qq_reg[15] [12]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [12]),
        .O(data_ram_reg_0_1_0_5_i_15_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    data_ram_reg_0_1_0_5_i_1__0
       (.I0(wlast_qq),
        .I1(wready_qq),
        .I2(wvalid_qq),
        .O(WLastPush));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_2
       (.I0(\wstrb_qq_reg[15] [1]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [1]),
        .O(data_ram_reg_0_1_0_5_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_3
       (.I0(\wstrb_qq_reg[15] [0]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [0]),
        .O(data_ram_reg_0_1_0_5_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_4
       (.I0(\wstrb_qq_reg[15] [3]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [3]),
        .O(data_ram_reg_0_1_0_5_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_5
       (.I0(\wstrb_qq_reg[15] [2]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [2]),
        .O(data_ram_reg_0_1_0_5_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_6
       (.I0(\wstrb_qq_reg[15] [5]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [5]),
        .O(data_ram_reg_0_1_0_5_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_7
       (.I0(\wstrb_qq_reg[15] [4]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [4]),
        .O(data_ram_reg_0_1_0_5_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_8
       (.I0(\wstrb_qq_reg[15] [7]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [7]),
        .O(data_ram_reg_0_1_0_5_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_9
       (.I0(\wstrb_qq_reg[15] [6]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [6]),
        .O(data_ram_reg_0_1_0_5_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M16 data_ram_reg_0_1_6_11
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRE({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRF({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRG({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRH({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA({data_ram_reg_0_1_6_11_i_1_n_0,data_ram_reg_0_1_6_11_i_2_n_0}),
        .DIB(WCountIn_reg[1:0]),
        .DIC(WCountIn_reg[3:2]),
        .DID(WCountIn_reg[5:4]),
        .DIE(WCountIn_reg[7:6]),
        .DIF({1'b0,WCountIn_reg[8]}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(WDataNumError1_reg_1[15:14]),
        .DOB(WCheckCountOut[1:0]),
        .DOC({WDataNumError1_reg_1[16],WCheckCountOut[2]}),
        .DOD(WDataNumError1_reg_1[18:17]),
        .DOE(WCheckCountOut[7:6]),
        .DOF({NLW_data_ram_reg_0_1_6_11_DOF_UNCONNECTED[1],WCheckCountOut[8]}),
        .DOG(NLW_data_ram_reg_0_1_6_11_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_data_ram_reg_0_1_6_11_DOH_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(WLastPush));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_6_11_i_1
       (.I0(\wstrb_qq_reg[15] [15]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [15]),
        .O(data_ram_reg_0_1_6_11_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_6_11_i_2
       (.I0(\wstrb_qq_reg[15] [14]),
        .I1(first_strb),
        .I2(\WSTRBq_reg[15] [14]),
        .O(data_ram_reg_0_1_6_11_i_2_n_0));
  LUT6 #(
    .INIT(64'hFF00FF80FF00FF00)) 
    \pc_status_i[81]_i_2 
       (.I0(wlast_qq),
        .I1(wready_qq),
        .I2(wvalid_qq),
        .I3(pc_status),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1__0 
       (.I0(rd_ptr),
        .O(\rd_ptr[0]_i_1__0_n_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(aclk),
        .CE(p_41_in),
        .D(\rd_ptr[0]_i_1__0_n_0 ),
        .Q(rd_ptr),
        .R(resetn_qq_reg));
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_ptr[0]_i_1__0 
       (.I0(wvalid_qq),
        .I1(wready_qq),
        .I2(wlast_qq),
        .I3(wr_ptr),
        .O(\wr_ptr[0]_i_1__0_n_0 ));
  FDRE \wr_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wr_ptr[0]_i_1__0_n_0 ),
        .Q(wr_ptr),
        .R(resetn_qq_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_threadcam
   (SS,
    SR,
    \gen_cam.cam_overflow_i ,
    arid_index,
    rid_mismatch,
    rid_index,
    aclk,
    resetn_q,
    arready_q,
    arvalid_q,
    arid_q,
    rid_q,
    rready_q,
    rvalid_q,
    rlast_q);
  output [0:0]SS;
  output [0:0]SR;
  output \gen_cam.cam_overflow_i ;
  output arid_index;
  output rid_mismatch;
  output rid_index;
  input aclk;
  input resetn_q;
  input arready_q;
  input arvalid_q;
  input arid_q;
  input rid_q;
  input rready_q;
  input rvalid_q;
  input rlast_q;

  wire \/FSM_sequential_gen_cam.state[0]_i_1_n_0 ;
  wire \/FSM_sequential_gen_cam.state[1]_i_3_n_0 ;
  wire \FSM_sequential_gen_cam.state[1]_i_2_n_0 ;
  wire [0:0]SR;
  wire [0:0]SS;
  wire aclk;
  wire arid_index;
  wire arid_q;
  wire arready_q;
  wire arvalid_q;
  wire \gen_cam.active_cnt[0][0]_i_1_n_0 ;
  wire \gen_cam.active_cnt[0][1]_i_1_n_0 ;
  wire \gen_cam.active_cnt[1][0]_i_1_n_0 ;
  wire \gen_cam.active_cnt[1][1]_i_1_n_0 ;
  wire \gen_cam.active_cnt_reg_n_0_[0][0] ;
  wire \gen_cam.active_cnt_reg_n_0_[0][1] ;
  wire \gen_cam.active_cnt_reg_n_0_[1][0] ;
  wire \gen_cam.active_cnt_reg_n_0_[1][1] ;
  wire \gen_cam.active_id[0]_i_1_n_0 ;
  wire \gen_cam.active_id[1]_i_1_n_0 ;
  wire \gen_cam.active_id_reg_n_0_[0] ;
  wire [1:0]\gen_cam.aid_match ;
  wire \gen_cam.aid_match_d_reg_n_0_[0] ;
  wire \gen_cam.allocate_available ;
  wire \gen_cam.allocate_cntr ;
  wire \gen_cam.allocate_cntr_reg_n_0_[0] ;
  wire [1:0]\gen_cam.allocate_next ;
  wire \gen_cam.any_pop__1 ;
  wire \gen_cam.any_push__1 ;
  wire \gen_cam.cam_overflow_i ;
  wire \gen_cam.cam_overflow_i_i_1_n_0 ;
  wire [1:0]\gen_cam.expire_thread ;
  wire \gen_cam.expire_thread[0]_i_2_n_0 ;
  wire \gen_cam.expire_thread[1]_i_2_n_0 ;
  wire \gen_cam.free_push ;
  wire \gen_cam.free_ready ;
  wire [1:0]\gen_cam.free_thread ;
  wire \gen_cam.init_push ;
  wire \gen_cam.init_push_i_1_n_0 ;
  wire \gen_cam.match_thread ;
  wire \gen_cam.max_count_i_1_n_0 ;
  wire \gen_cam.max_count_reg_n_0 ;
  wire \gen_cam.next1 ;
  wire \gen_cam.push_new_thread ;
  wire \gen_cam.push_si_thread ;
  wire \gen_cam.set_overflow ;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_cam.state ;
  wire \gen_cam.thread_last[0]_i_1_n_0 ;
  wire \gen_cam.thread_last[0]_i_2_n_0 ;
  wire \gen_cam.thread_last[0]_i_4_n_0 ;
  wire \gen_cam.thread_last[0]_i_5_n_0 ;
  wire \gen_cam.thread_last[0]_i_6_n_0 ;
  wire \gen_cam.thread_last[0]_i_7_n_0 ;
  wire \gen_cam.thread_last[1]_i_1_n_0 ;
  wire \gen_cam.thread_last[1]_i_2_n_0 ;
  wire \gen_cam.thread_last[1]_i_4_n_0 ;
  (* MAX_FANOUT = "40" *) (* RTL_MAX_FANOUT = "found" *) wire \gen_cam.thread_last_reg_n_0_[0] ;
  wire \gen_cam.thread_push_0__2 ;
  wire \gen_cam.thread_push_1__2 ;
  wire \gen_cam.thread_valid[0]_i_1_n_0 ;
  wire \gen_cam.thread_valid[1]_i_1_n_0 ;
  (* MAX_FANOUT = "40" *) (* RTL_MAX_FANOUT = "found" *) wire \gen_cam.thread_valid_reg_n_0_[0] ;
  wire \gen_cam.trans_count[0]_i_1__0_n_0 ;
  wire \gen_cam.trans_count[1]_i_1_n_0 ;
  wire \gen_cam.trans_count[1]_i_2_n_0 ;
  wire \gen_cam.trans_count[1]_i_4_n_0 ;
  wire \gen_cam.trans_count_reg_n_0_[0] ;
  wire \gen_cam.trans_count_reg_n_0_[1] ;
  wire \gen_cam.use_new_thread ;
  wire p_0_in0_in;
  wire p_0_in28_in;
  (* MAX_FANOUT = "40" *) (* RTL_MAX_FANOUT = "found" *) wire p_0_in69_in;
  wire p_1_in;
  (* MAX_FANOUT = "40" *) (* RTL_MAX_FANOUT = "found" *) wire p_1_in33_in;
  wire p_36_out;
  wire p_43_out;
  wire resetn_q;
  wire rid_index;
  wire rid_mismatch;
  wire rid_q;
  wire rlast_q;
  wire rready_q;
  wire rvalid_q;
  wire \w_threadcam/gen_cam.areset_d ;
  wire \NLW_gen_cam.allocate_queue_s_afull_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h45550111)) 
    \/FSM_sequential_gen_cam.state[0]_i_1 
       (.I0(\gen_cam.state [1]),
        .I1(\gen_cam.next1 ),
        .I2(arready_q),
        .I3(\gen_cam.allocate_available ),
        .I4(\gen_cam.max_count_reg_n_0 ),
        .O(\/FSM_sequential_gen_cam.state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00101110)) 
    \/FSM_sequential_gen_cam.state[1]_i_3 
       (.I0(arready_q),
        .I1(\gen_cam.state [1]),
        .I2(\gen_cam.allocate_available ),
        .I3(\gen_cam.next1 ),
        .I4(\gen_cam.max_count_reg_n_0 ),
        .O(\/FSM_sequential_gen_cam.state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555540004500)) 
    \/i_ 
       (.I0(\gen_cam.state [1]),
        .I1(\gen_cam.max_count_reg_n_0 ),
        .I2(\gen_cam.next1 ),
        .I3(arvalid_q),
        .I4(\gen_cam.allocate_available ),
        .I5(\gen_cam.state [0]),
        .O(\gen_cam.set_overflow ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_gen_cam.state[1]_i_1__0 
       (.I0(resetn_q),
        .O(SR));
  LUT4 #(
    .INIT(16'h88B8)) 
    \FSM_sequential_gen_cam.state[1]_i_2 
       (.I0(arready_q),
        .I1(\gen_cam.state [1]),
        .I2(arvalid_q),
        .I3(\gen_cam.state [0]),
        .O(\FSM_sequential_gen_cam.state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00,PENDING:10,ALLOCATE:11,OVERFLOW:01" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_gen_cam.state_reg[0] 
       (.C(aclk),
        .CE(\FSM_sequential_gen_cam.state[1]_i_2_n_0 ),
        .D(\/FSM_sequential_gen_cam.state[0]_i_1_n_0 ),
        .Q(\gen_cam.state [0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:00,PENDING:10,ALLOCATE:11,OVERFLOW:01" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_gen_cam.state_reg[1] 
       (.C(aclk),
        .CE(\FSM_sequential_gen_cam.state[1]_i_2_n_0 ),
        .D(\/FSM_sequential_gen_cam.state[1]_i_3_n_0 ),
        .Q(\gen_cam.state [1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAA000010000000)) 
    \__1/i_ 
       (.I0(\gen_cam.state [0]),
        .I1(\gen_cam.next1 ),
        .I2(\gen_cam.allocate_available ),
        .I3(arvalid_q),
        .I4(arready_q),
        .I5(\gen_cam.state [1]),
        .O(\gen_cam.push_new_thread ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \__6/i_ 
       (.I0(p_1_in),
        .I1(\gen_cam.init_push ),
        .I2(\gen_cam.free_ready ),
        .I3(\gen_cam.expire_thread [0]),
        .I4(\gen_cam.expire_thread [1]),
        .O(\gen_cam.allocate_cntr ));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    \arid_index_q[0]_i_1 
       (.I0(\gen_cam.state [1]),
        .I1(\gen_cam.state [0]),
        .I2(\gen_cam.aid_match [1]),
        .I3(p_0_in28_in),
        .I4(\gen_cam.use_new_thread ),
        .I5(\gen_cam.allocate_next [1]),
        .O(arid_index));
  LUT5 #(
    .INIT(32'hAAAA1000)) 
    \arid_index_q[0]_i_2 
       (.I0(\gen_cam.state [0]),
        .I1(\gen_cam.next1 ),
        .I2(arvalid_q),
        .I3(\gen_cam.allocate_available ),
        .I4(\gen_cam.state [1]),
        .O(\gen_cam.use_new_thread ));
  LUT4 #(
    .INIT(16'h6F9F)) 
    \gen_cam.active_cnt[0][0]_i_1 
       (.I0(\gen_cam.thread_last[0]_i_2_n_0 ),
        .I1(\gen_cam.thread_push_0__2 ),
        .I2(\gen_cam.thread_last[0]_i_4_n_0 ),
        .I3(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .O(\gen_cam.active_cnt[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AA8800200000000)) 
    \gen_cam.active_cnt[0][1]_i_1 
       (.I0(resetn_q),
        .I1(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .I2(\gen_cam.thread_push_0__2 ),
        .I3(\gen_cam.thread_last[0]_i_2_n_0 ),
        .I4(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .I5(\gen_cam.thread_last[0]_i_4_n_0 ),
        .O(\gen_cam.active_cnt[0][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F9F)) 
    \gen_cam.active_cnt[1][0]_i_1 
       (.I0(\gen_cam.thread_last[1]_i_2_n_0 ),
        .I1(\gen_cam.thread_push_1__2 ),
        .I2(\gen_cam.thread_last[1]_i_4_n_0 ),
        .I3(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .O(\gen_cam.active_cnt[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AA8800200000000)) 
    \gen_cam.active_cnt[1][1]_i_1 
       (.I0(resetn_q),
        .I1(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .I2(\gen_cam.thread_push_1__2 ),
        .I3(\gen_cam.thread_last[1]_i_2_n_0 ),
        .I4(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .I5(\gen_cam.thread_last[1]_i_4_n_0 ),
        .O(\gen_cam.active_cnt[1][1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[0][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_cnt[0][0]_i_1_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[0][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_cnt[0][1]_i_1_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[1][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_cnt[1][0]_i_1_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[1][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_cnt[1][1]_i_1_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_cam.active_id[0]_i_1 
       (.I0(\gen_cam.active_id_reg_n_0_[0] ),
        .I1(\gen_cam.thread_last[0]_i_4_n_0 ),
        .I2(arid_q),
        .O(\gen_cam.active_id[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_cam.active_id[1]_i_1 
       (.I0(p_0_in0_in),
        .I1(\gen_cam.thread_last[1]_i_4_n_0 ),
        .I2(arid_q),
        .O(\gen_cam.active_id[1]_i_1_n_0 ));
  FDRE \gen_cam.active_id_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_id[0]_i_1_n_0 ),
        .Q(\gen_cam.active_id_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_cam.active_id_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_id[1]_i_1_n_0 ),
        .Q(p_0_in0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \gen_cam.aid_match_d[0]_i_1 
       (.I0(\gen_cam.active_id_reg_n_0_[0] ),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(arid_q),
        .O(\gen_cam.aid_match [0]));
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_cam.aid_match_d[1]_i_1 
       (.I0(arvalid_q),
        .I1(\gen_cam.next1 ),
        .I2(\gen_cam.state [0]),
        .I3(\gen_cam.state [1]),
        .O(\gen_cam.match_thread ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \gen_cam.aid_match_d[1]_i_2 
       (.I0(p_0_in0_in),
        .I1(p_0_in69_in),
        .I2(arid_q),
        .O(\gen_cam.aid_match [1]));
  FDRE \gen_cam.aid_match_d_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.match_thread ),
        .D(\gen_cam.aid_match [0]),
        .Q(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_cam.aid_match_d_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.match_thread ),
        .D(\gen_cam.aid_match [1]),
        .Q(p_0_in28_in),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_cam.allocate_cntr_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.allocate_cntr ),
        .D(1'b0),
        .Q(\gen_cam.allocate_cntr_reg_n_0_[0] ),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.allocate_cntr_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.allocate_cntr ),
        .D(\gen_cam.allocate_cntr_reg_n_0_[0] ),
        .Q(p_1_in),
        .R(SS));
  (* C_FIFO_SIZE = "2" *) 
  (* C_FIFO_WIDTH = "2" *) 
  (* C_REG_CONFIG = "2" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_2_axic_reg_srl_fifo__1 \gen_cam.allocate_queue 
       (.aclk(aclk),
        .aclken(1'b0),
        .areset(SS),
        .m_mesg(\gen_cam.allocate_next ),
        .m_ready(\gen_cam.push_new_thread ),
        .m_valid(\gen_cam.allocate_available ),
        .s_afull(\NLW_gen_cam.allocate_queue_s_afull_UNCONNECTED ),
        .s_mesg(\gen_cam.free_thread ),
        .s_ready(\gen_cam.free_ready ),
        .s_valid(\gen_cam.free_push ));
  LUT2 #(
    .INIT(4'h1)) 
    \gen_cam.allocate_queue_i_1 
       (.I0(resetn_q),
        .I1(\w_threadcam/gen_cam.areset_d ),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \gen_cam.allocate_queue_i_2 
       (.I0(\gen_cam.expire_thread [1]),
        .I1(\gen_cam.expire_thread [0]),
        .I2(p_1_in),
        .O(\gen_cam.free_thread [1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    \gen_cam.allocate_queue_i_3 
       (.I0(\gen_cam.expire_thread [1]),
        .I1(\gen_cam.expire_thread [0]),
        .I2(\gen_cam.allocate_cntr_reg_n_0_[0] ),
        .O(\gen_cam.free_thread [0]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_cam.allocate_queue_i_4 
       (.I0(\gen_cam.init_push ),
        .I1(\gen_cam.expire_thread [0]),
        .I2(\gen_cam.expire_thread [1]),
        .O(\gen_cam.free_push ));
  FDRE \gen_cam.areset_d_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(\w_threadcam/gen_cam.areset_d ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_cam.cam_overflow_i_i_1 
       (.I0(\gen_cam.set_overflow ),
        .I1(\gen_cam.cam_overflow_i ),
        .O(\gen_cam.cam_overflow_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.cam_overflow_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.cam_overflow_i_i_1_n_0 ),
        .Q(\gen_cam.cam_overflow_i ),
        .R(SR));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_cam.expire_thread[0]_i_1 
       (.I0(\gen_cam.thread_push_0__2 ),
        .I1(\gen_cam.thread_last_reg_n_0_[0] ),
        .I2(\gen_cam.thread_last[0]_i_2_n_0 ),
        .I3(\gen_cam.expire_thread[0]_i_2_n_0 ),
        .O(p_43_out));
  LUT6 #(
    .INIT(64'h00000000FF008080)) 
    \gen_cam.expire_thread[0]_i_2 
       (.I0(arvalid_q),
        .I1(\gen_cam.next1 ),
        .I2(\gen_cam.aid_match [0]),
        .I3(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I4(\gen_cam.state [1]),
        .I5(\gen_cam.state [0]),
        .O(\gen_cam.expire_thread[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_cam.expire_thread[1]_i_1 
       (.I0(\gen_cam.thread_push_1__2 ),
        .I1(p_1_in33_in),
        .I2(\gen_cam.thread_last[1]_i_2_n_0 ),
        .I3(\gen_cam.expire_thread[1]_i_2_n_0 ),
        .O(p_36_out));
  LUT6 #(
    .INIT(64'h0000FF8000000080)) 
    \gen_cam.expire_thread[1]_i_2 
       (.I0(arvalid_q),
        .I1(\gen_cam.next1 ),
        .I2(\gen_cam.aid_match [1]),
        .I3(\gen_cam.state [1]),
        .I4(\gen_cam.state [0]),
        .I5(p_0_in28_in),
        .O(\gen_cam.expire_thread[1]_i_2_n_0 ));
  FDRE \gen_cam.expire_thread_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_43_out),
        .Q(\gen_cam.expire_thread [0]),
        .R(SR));
  FDRE \gen_cam.expire_thread_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_36_out),
        .Q(\gen_cam.expire_thread [1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hFDFF0000)) 
    \gen_cam.init_push_i_1 
       (.I0(p_1_in),
        .I1(\gen_cam.expire_thread [1]),
        .I2(\gen_cam.expire_thread [0]),
        .I3(\gen_cam.free_ready ),
        .I4(\gen_cam.init_push ),
        .O(\gen_cam.init_push_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_cam.init_push_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.init_push_i_1_n_0 ),
        .Q(\gen_cam.init_push ),
        .S(SS));
  LUT6 #(
    .INIT(64'h888800080A008888)) 
    \gen_cam.max_count_i_1 
       (.I0(resetn_q),
        .I1(\gen_cam.max_count_reg_n_0 ),
        .I2(\gen_cam.trans_count_reg_n_0_[1] ),
        .I3(\gen_cam.trans_count_reg_n_0_[0] ),
        .I4(\gen_cam.any_push__1 ),
        .I5(\gen_cam.any_pop__1 ),
        .O(\gen_cam.max_count_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00E4000000A0)) 
    \gen_cam.max_count_i_2 
       (.I0(\gen_cam.next1 ),
        .I1(\gen_cam.thread_last[0]_i_7_n_0 ),
        .I2(\gen_cam.thread_last[0]_i_5_n_0 ),
        .I3(\gen_cam.state [0]),
        .I4(\gen_cam.state [1]),
        .I5(arready_q),
        .O(\gen_cam.any_push__1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.max_count_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.max_count_i_1_n_0 ),
        .Q(\gen_cam.max_count_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1FF4FFFF1004FFFF)) 
    \gen_cam.thread_last[0]_i_1 
       (.I0(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .I1(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .I2(\gen_cam.thread_last[0]_i_2_n_0 ),
        .I3(\gen_cam.thread_push_0__2 ),
        .I4(\gen_cam.thread_last[0]_i_4_n_0 ),
        .I5(\gen_cam.thread_last_reg_n_0_[0] ),
        .O(\gen_cam.thread_last[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7BFFFFFFFFFFFFFF)) 
    \gen_cam.thread_last[0]_i_2 
       (.I0(\gen_cam.active_id_reg_n_0_[0] ),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(rid_q),
        .I3(rready_q),
        .I4(rvalid_q),
        .I5(rlast_q),
        .O(\gen_cam.thread_last[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \gen_cam.thread_last[0]_i_3 
       (.I0(\gen_cam.next1 ),
        .I1(\gen_cam.thread_last[0]_i_5_n_0 ),
        .I2(\gen_cam.thread_last[0]_i_6_n_0 ),
        .I3(\gen_cam.aid_match [0]),
        .I4(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I5(\gen_cam.trans_count[1]_i_4_n_0 ),
        .O(\gen_cam.thread_push_0__2 ));
  LUT6 #(
    .INIT(64'h7777FFBFFFFFFFFF)) 
    \gen_cam.thread_last[0]_i_4 
       (.I0(\gen_cam.state [1]),
        .I1(arready_q),
        .I2(\gen_cam.thread_last[0]_i_7_n_0 ),
        .I3(\gen_cam.next1 ),
        .I4(\gen_cam.state [0]),
        .I5(\gen_cam.allocate_next [0]),
        .O(\gen_cam.thread_last[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_cam.thread_last[0]_i_5 
       (.I0(\gen_cam.max_count_reg_n_0 ),
        .I1(arvalid_q),
        .I2(arready_q),
        .O(\gen_cam.thread_last[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gen_cam.thread_last[0]_i_6 
       (.I0(\gen_cam.state [1]),
        .I1(\gen_cam.state [0]),
        .O(\gen_cam.thread_last[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_cam.thread_last[0]_i_7 
       (.I0(arvalid_q),
        .I1(\gen_cam.allocate_available ),
        .O(\gen_cam.thread_last[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1FF4FFFF1004FFFF)) 
    \gen_cam.thread_last[1]_i_1 
       (.I0(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .I1(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .I2(\gen_cam.thread_last[1]_i_2_n_0 ),
        .I3(\gen_cam.thread_push_1__2 ),
        .I4(\gen_cam.thread_last[1]_i_4_n_0 ),
        .I5(p_1_in33_in),
        .O(\gen_cam.thread_last[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7BFFFFFFFFFFFFFF)) 
    \gen_cam.thread_last[1]_i_2 
       (.I0(rid_q),
        .I1(p_0_in69_in),
        .I2(p_0_in0_in),
        .I3(rready_q),
        .I4(rvalid_q),
        .I5(rlast_q),
        .O(\gen_cam.thread_last[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \gen_cam.thread_last[1]_i_3 
       (.I0(\gen_cam.next1 ),
        .I1(\gen_cam.thread_last[0]_i_5_n_0 ),
        .I2(\gen_cam.thread_last[0]_i_6_n_0 ),
        .I3(\gen_cam.aid_match [1]),
        .I4(\gen_cam.trans_count[1]_i_4_n_0 ),
        .I5(p_0_in28_in),
        .O(\gen_cam.thread_push_1__2 ));
  LUT6 #(
    .INIT(64'h7F7F7F7FFFFFDFFF)) 
    \gen_cam.thread_last[1]_i_4 
       (.I0(\gen_cam.allocate_next [1]),
        .I1(\gen_cam.state [1]),
        .I2(arready_q),
        .I3(\gen_cam.thread_last[0]_i_7_n_0 ),
        .I4(\gen_cam.next1 ),
        .I5(\gen_cam.state [0]),
        .O(\gen_cam.thread_last[1]_i_4_n_0 ));
  (* MAX_FANOUT = "40" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE \gen_cam.thread_last_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_last[0]_i_1_n_0 ),
        .Q(\gen_cam.thread_last_reg_n_0_[0] ),
        .R(SR));
  (* MAX_FANOUT = "40" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE \gen_cam.thread_last_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_last[1]_i_1_n_0 ),
        .Q(p_1_in33_in),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFF7F337)) 
    \gen_cam.thread_valid[0]_i_1 
       (.I0(\gen_cam.thread_last_reg_n_0_[0] ),
        .I1(\gen_cam.thread_last[0]_i_4_n_0 ),
        .I2(\gen_cam.thread_last[0]_i_2_n_0 ),
        .I3(\gen_cam.thread_push_0__2 ),
        .I4(\gen_cam.thread_valid_reg_n_0_[0] ),
        .O(\gen_cam.thread_valid[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF7F337)) 
    \gen_cam.thread_valid[1]_i_1 
       (.I0(p_1_in33_in),
        .I1(\gen_cam.thread_last[1]_i_4_n_0 ),
        .I2(\gen_cam.thread_last[1]_i_2_n_0 ),
        .I3(\gen_cam.thread_push_1__2 ),
        .I4(p_0_in69_in),
        .O(\gen_cam.thread_valid[1]_i_1_n_0 ));
  (* MAX_FANOUT = "40" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE \gen_cam.thread_valid_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_valid[0]_i_1_n_0 ),
        .Q(\gen_cam.thread_valid_reg_n_0_[0] ),
        .R(SR));
  (* MAX_FANOUT = "40" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE \gen_cam.thread_valid_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_valid[1]_i_1_n_0 ),
        .Q(p_0_in69_in),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_cam.trans_count[0]_i_1__0 
       (.I0(\gen_cam.trans_count_reg_n_0_[0] ),
        .O(\gen_cam.trans_count[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000EFFFFFFF0)) 
    \gen_cam.trans_count[1]_i_1 
       (.I0(\gen_cam.trans_count_reg_n_0_[1] ),
        .I1(\gen_cam.trans_count_reg_n_0_[0] ),
        .I2(\gen_cam.push_new_thread ),
        .I3(\gen_cam.push_si_thread ),
        .I4(\gen_cam.trans_count[1]_i_4_n_0 ),
        .I5(\gen_cam.any_pop__1 ),
        .O(\gen_cam.trans_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0100FE00FEFF01)) 
    \gen_cam.trans_count[1]_i_2 
       (.I0(\gen_cam.push_new_thread ),
        .I1(\gen_cam.push_si_thread ),
        .I2(\gen_cam.trans_count[1]_i_4_n_0 ),
        .I3(\gen_cam.any_pop__1 ),
        .I4(\gen_cam.trans_count_reg_n_0_[0] ),
        .I5(\gen_cam.trans_count_reg_n_0_[1] ),
        .O(\gen_cam.trans_count[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \gen_cam.trans_count[1]_i_3 
       (.I0(\gen_cam.next1 ),
        .I1(\gen_cam.max_count_reg_n_0 ),
        .I2(arvalid_q),
        .I3(arready_q),
        .I4(\gen_cam.state [0]),
        .I5(\gen_cam.state [1]),
        .O(\gen_cam.push_si_thread ));
  LUT3 #(
    .INIT(8'h08)) 
    \gen_cam.trans_count[1]_i_4 
       (.I0(arready_q),
        .I1(\gen_cam.state [1]),
        .I2(\gen_cam.state [0]),
        .O(\gen_cam.trans_count[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_cam.trans_count[1]_i_5 
       (.I0(rlast_q),
        .I1(rvalid_q),
        .I2(rready_q),
        .O(\gen_cam.any_pop__1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.trans_count_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.trans_count[1]_i_1_n_0 ),
        .D(\gen_cam.trans_count[0]_i_1__0_n_0 ),
        .Q(\gen_cam.trans_count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.trans_count_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.trans_count[1]_i_1_n_0 ),
        .D(\gen_cam.trans_count[1]_i_2_n_0 ),
        .Q(\gen_cam.trans_count_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hF2828F82)) 
    i__i_1
       (.I0(p_0_in69_in),
        .I1(p_0_in0_in),
        .I2(arid_q),
        .I3(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I4(\gen_cam.active_id_reg_n_0_[0] ),
        .O(\gen_cam.next1 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \rid_index_q[0]_i_1 
       (.I0(p_0_in0_in),
        .I1(p_0_in69_in),
        .I2(rid_q),
        .O(rid_index));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h0777D0DD)) 
    rid_mismatch_q_i_1
       (.I0(p_0_in69_in),
        .I1(p_0_in0_in),
        .I2(\gen_cam.active_id_reg_n_0_[0] ),
        .I3(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I4(rid_q),
        .O(rid_mismatch));
endmodule

(* ORIG_REF_NAME = "axi_protocol_checker_v2_0_1_threadcam" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_threadcam_0
   (wcam_overflow_q_reg,
    awid_index,
    bid_mismatch,
    bid_index,
    aclk,
    SS,
    SR,
    awvalid_q,
    resetn_q,
    awready_q,
    awid_q,
    bid_q,
    bvalid_q,
    bready_q);
  output wcam_overflow_q_reg;
  output awid_index;
  output bid_mismatch;
  output bid_index;
  input aclk;
  input [0:0]SS;
  input [0:0]SR;
  input awvalid_q;
  input resetn_q;
  input awready_q;
  input awid_q;
  input bid_q;
  input bvalid_q;
  input bready_q;

  wire \/FSM_sequential_gen_cam.state[0]_i_1_n_0 ;
  wire \/FSM_sequential_gen_cam.state[1]_i_2_n_0 ;
  wire \FSM_sequential_gen_cam.state[1]_i_1_n_0 ;
  wire [0:0]SR;
  wire [0:0]SS;
  wire aclk;
  wire awid_index;
  wire awid_q;
  wire awready_q;
  wire awvalid_q;
  wire bid_index;
  wire bid_mismatch;
  wire bid_q;
  wire bready_q;
  wire bvalid_q;
  wire \gen_cam.active_cnt[0][0]_i_1__0_n_0 ;
  wire \gen_cam.active_cnt[0][1]_i_1__0_n_0 ;
  wire \gen_cam.active_cnt[1][0]_i_1__0_n_0 ;
  wire \gen_cam.active_cnt[1][1]_i_1__0_n_0 ;
  wire \gen_cam.active_cnt_reg_n_0_[0][0] ;
  wire \gen_cam.active_cnt_reg_n_0_[0][1] ;
  wire \gen_cam.active_cnt_reg_n_0_[1][0] ;
  wire \gen_cam.active_cnt_reg_n_0_[1][1] ;
  wire \gen_cam.active_id[0]_i_1__0_n_0 ;
  wire \gen_cam.active_id[1]_i_1__0_n_0 ;
  wire \gen_cam.active_id_reg_n_0_[0] ;
  wire [1:0]\gen_cam.aid_match ;
  wire \gen_cam.aid_match_d_reg_n_0_[0] ;
  wire \gen_cam.allocate_available ;
  wire \gen_cam.allocate_cntr ;
  wire \gen_cam.allocate_cntr_reg_n_0_[0] ;
  wire [1:0]\gen_cam.allocate_next ;
  wire \gen_cam.any_pop__0 ;
  wire \gen_cam.any_push__1 ;
  wire \gen_cam.cam_overflow_i_i_1__0_n_0 ;
  wire [1:0]\gen_cam.expire_thread ;
  wire \gen_cam.expire_thread[0]_i_2__0_n_0 ;
  wire \gen_cam.expire_thread[1]_i_2__0_n_0 ;
  wire \gen_cam.free_push ;
  wire \gen_cam.free_ready ;
  wire [1:0]\gen_cam.free_thread ;
  wire \gen_cam.init_push ;
  wire \gen_cam.init_push_i_1__0_n_0 ;
  wire \gen_cam.match_thread ;
  wire \gen_cam.max_count_i_1__0_n_0 ;
  wire \gen_cam.max_count_reg_n_0 ;
  wire \gen_cam.next1 ;
  wire \gen_cam.push_new_thread ;
  wire \gen_cam.push_si_thread ;
  wire \gen_cam.set_overflow ;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_cam.state ;
  wire \gen_cam.thread_last[0]_i_1_n_0 ;
  wire \gen_cam.thread_last[0]_i_2__0_n_0 ;
  wire \gen_cam.thread_last[0]_i_4__0_n_0 ;
  wire \gen_cam.thread_last[0]_i_5__0_n_0 ;
  wire \gen_cam.thread_last[0]_i_6__0_n_0 ;
  wire \gen_cam.thread_last[0]_i_7__0_n_0 ;
  wire \gen_cam.thread_last[1]_i_1_n_0 ;
  wire \gen_cam.thread_last[1]_i_2__0_n_0 ;
  wire \gen_cam.thread_last[1]_i_4__0_n_0 ;
  (* MAX_FANOUT = "40" *) (* RTL_MAX_FANOUT = "found" *) wire \gen_cam.thread_last_reg_n_0_[0] ;
  wire \gen_cam.thread_push_0__2 ;
  wire \gen_cam.thread_push_1__2 ;
  wire \gen_cam.thread_valid[0]_i_1_n_0 ;
  wire \gen_cam.thread_valid[1]_i_1_n_0 ;
  (* MAX_FANOUT = "40" *) (* RTL_MAX_FANOUT = "found" *) wire \gen_cam.thread_valid_reg_n_0_[0] ;
  wire \gen_cam.trans_count[0]_i_1_n_0 ;
  wire \gen_cam.trans_count[1]_i_1__0_n_0 ;
  wire \gen_cam.trans_count[1]_i_2__0_n_0 ;
  wire \gen_cam.trans_count[1]_i_4__0_n_0 ;
  wire \gen_cam.trans_count_reg_n_0_[0] ;
  wire \gen_cam.trans_count_reg_n_0_[1] ;
  wire \gen_cam.use_new_thread ;
  wire p_0_in0_in;
  wire p_0_in28_in;
  (* MAX_FANOUT = "40" *) (* RTL_MAX_FANOUT = "found" *) wire p_0_in69_in;
  wire p_1_in;
  (* MAX_FANOUT = "40" *) (* RTL_MAX_FANOUT = "found" *) wire p_1_in33_in;
  wire p_36_out;
  wire p_43_out;
  wire resetn_q;
  wire wcam_overflow_q_reg;
  wire \NLW_gen_cam.allocate_queue_s_afull_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h45550111)) 
    \/FSM_sequential_gen_cam.state[0]_i_1 
       (.I0(\gen_cam.state [1]),
        .I1(\gen_cam.next1 ),
        .I2(awready_q),
        .I3(\gen_cam.allocate_available ),
        .I4(\gen_cam.max_count_reg_n_0 ),
        .O(\/FSM_sequential_gen_cam.state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00101110)) 
    \/FSM_sequential_gen_cam.state[1]_i_2 
       (.I0(awready_q),
        .I1(\gen_cam.state [1]),
        .I2(\gen_cam.allocate_available ),
        .I3(\gen_cam.next1 ),
        .I4(\gen_cam.max_count_reg_n_0 ),
        .O(\/FSM_sequential_gen_cam.state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555540004500)) 
    \/i_ 
       (.I0(\gen_cam.state [1]),
        .I1(\gen_cam.max_count_reg_n_0 ),
        .I2(\gen_cam.next1 ),
        .I3(awvalid_q),
        .I4(\gen_cam.allocate_available ),
        .I5(\gen_cam.state [0]),
        .O(\gen_cam.set_overflow ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \FSM_sequential_gen_cam.state[1]_i_1 
       (.I0(awready_q),
        .I1(\gen_cam.state [1]),
        .I2(awvalid_q),
        .I3(\gen_cam.state [0]),
        .O(\FSM_sequential_gen_cam.state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00,PENDING:10,ALLOCATE:11,OVERFLOW:01" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_gen_cam.state_reg[0] 
       (.C(aclk),
        .CE(\FSM_sequential_gen_cam.state[1]_i_1_n_0 ),
        .D(\/FSM_sequential_gen_cam.state[0]_i_1_n_0 ),
        .Q(\gen_cam.state [0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:00,PENDING:10,ALLOCATE:11,OVERFLOW:01" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_gen_cam.state_reg[1] 
       (.C(aclk),
        .CE(\FSM_sequential_gen_cam.state[1]_i_1_n_0 ),
        .D(\/FSM_sequential_gen_cam.state[1]_i_2_n_0 ),
        .Q(\gen_cam.state [1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAA000010000000)) 
    \__1/i_ 
       (.I0(\gen_cam.state [0]),
        .I1(\gen_cam.next1 ),
        .I2(\gen_cam.allocate_available ),
        .I3(awvalid_q),
        .I4(awready_q),
        .I5(\gen_cam.state [1]),
        .O(\gen_cam.push_new_thread ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \__6/i_ 
       (.I0(p_1_in),
        .I1(\gen_cam.init_push ),
        .I2(\gen_cam.free_ready ),
        .I3(\gen_cam.expire_thread [0]),
        .I4(\gen_cam.expire_thread [1]),
        .O(\gen_cam.allocate_cntr ));
  LUT6 #(
    .INIT(64'hFFFFF2D00000F2D0)) 
    \awid_index_q[0]_i_1 
       (.I0(\gen_cam.state [1]),
        .I1(\gen_cam.state [0]),
        .I2(\gen_cam.aid_match [1]),
        .I3(p_0_in28_in),
        .I4(\gen_cam.use_new_thread ),
        .I5(\gen_cam.allocate_next [1]),
        .O(awid_index));
  LUT5 #(
    .INIT(32'hAAAA1000)) 
    \awid_index_q[0]_i_2 
       (.I0(\gen_cam.state [0]),
        .I1(\gen_cam.next1 ),
        .I2(awvalid_q),
        .I3(\gen_cam.allocate_available ),
        .I4(\gen_cam.state [1]),
        .O(\gen_cam.use_new_thread ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \bid_index_q[0]_i_1 
       (.I0(p_0_in0_in),
        .I1(p_0_in69_in),
        .I2(bid_q),
        .O(bid_index));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h0777D0DD)) 
    bid_mismatch_q_i_1
       (.I0(p_0_in69_in),
        .I1(p_0_in0_in),
        .I2(\gen_cam.active_id_reg_n_0_[0] ),
        .I3(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I4(bid_q),
        .O(bid_mismatch));
  LUT4 #(
    .INIT(16'h6F9F)) 
    \gen_cam.active_cnt[0][0]_i_1__0 
       (.I0(\gen_cam.thread_last[0]_i_2__0_n_0 ),
        .I1(\gen_cam.thread_push_0__2 ),
        .I2(\gen_cam.thread_last[0]_i_4__0_n_0 ),
        .I3(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .O(\gen_cam.active_cnt[0][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2AA8800200000000)) 
    \gen_cam.active_cnt[0][1]_i_1__0 
       (.I0(resetn_q),
        .I1(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .I2(\gen_cam.thread_push_0__2 ),
        .I3(\gen_cam.thread_last[0]_i_2__0_n_0 ),
        .I4(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .I5(\gen_cam.thread_last[0]_i_4__0_n_0 ),
        .O(\gen_cam.active_cnt[0][1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h6F9F)) 
    \gen_cam.active_cnt[1][0]_i_1__0 
       (.I0(\gen_cam.thread_last[1]_i_2__0_n_0 ),
        .I1(\gen_cam.thread_push_1__2 ),
        .I2(\gen_cam.thread_last[1]_i_4__0_n_0 ),
        .I3(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .O(\gen_cam.active_cnt[1][0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2AA8800200000000)) 
    \gen_cam.active_cnt[1][1]_i_1__0 
       (.I0(resetn_q),
        .I1(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .I2(\gen_cam.thread_push_1__2 ),
        .I3(\gen_cam.thread_last[1]_i_2__0_n_0 ),
        .I4(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .I5(\gen_cam.thread_last[1]_i_4__0_n_0 ),
        .O(\gen_cam.active_cnt[1][1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[0][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_cnt[0][0]_i_1__0_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[0][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_cnt[0][1]_i_1__0_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[1][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_cnt[1][0]_i_1__0_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.active_cnt_reg[1][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_cnt[1][1]_i_1__0_n_0 ),
        .Q(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_cam.active_id[0]_i_1__0 
       (.I0(\gen_cam.active_id_reg_n_0_[0] ),
        .I1(\gen_cam.thread_last[0]_i_4__0_n_0 ),
        .I2(awid_q),
        .O(\gen_cam.active_id[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_cam.active_id[1]_i_1__0 
       (.I0(p_0_in0_in),
        .I1(\gen_cam.thread_last[1]_i_4__0_n_0 ),
        .I2(awid_q),
        .O(\gen_cam.active_id[1]_i_1__0_n_0 ));
  FDRE \gen_cam.active_id_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_id[0]_i_1__0_n_0 ),
        .Q(\gen_cam.active_id_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_cam.active_id_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.active_id[1]_i_1__0_n_0 ),
        .Q(p_0_in0_in),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h84)) 
    \gen_cam.aid_match_d[0]_i_1__0 
       (.I0(\gen_cam.active_id_reg_n_0_[0] ),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(awid_q),
        .O(\gen_cam.aid_match [0]));
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_cam.aid_match_d[1]_i_1__0 
       (.I0(awvalid_q),
        .I1(\gen_cam.next1 ),
        .I2(\gen_cam.state [0]),
        .I3(\gen_cam.state [1]),
        .O(\gen_cam.match_thread ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \gen_cam.aid_match_d[1]_i_2__0 
       (.I0(p_0_in0_in),
        .I1(p_0_in69_in),
        .I2(awid_q),
        .O(\gen_cam.aid_match [1]));
  FDRE \gen_cam.aid_match_d_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.match_thread ),
        .D(\gen_cam.aid_match [0]),
        .Q(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_cam.aid_match_d_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.match_thread ),
        .D(\gen_cam.aid_match [1]),
        .Q(p_0_in28_in),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_cam.allocate_cntr_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.allocate_cntr ),
        .D(1'b0),
        .Q(\gen_cam.allocate_cntr_reg_n_0_[0] ),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.allocate_cntr_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.allocate_cntr ),
        .D(\gen_cam.allocate_cntr_reg_n_0_[0] ),
        .Q(p_1_in),
        .R(SS));
  (* C_FIFO_SIZE = "2" *) 
  (* C_FIFO_WIDTH = "2" *) 
  (* C_REG_CONFIG = "2" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_2_axic_reg_srl_fifo \gen_cam.allocate_queue 
       (.aclk(aclk),
        .aclken(1'b0),
        .areset(SS),
        .m_mesg(\gen_cam.allocate_next ),
        .m_ready(\gen_cam.push_new_thread ),
        .m_valid(\gen_cam.allocate_available ),
        .s_afull(\NLW_gen_cam.allocate_queue_s_afull_UNCONNECTED ),
        .s_mesg(\gen_cam.free_thread ),
        .s_ready(\gen_cam.free_ready ),
        .s_valid(\gen_cam.free_push ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \gen_cam.allocate_queue_i_1 
       (.I0(\gen_cam.expire_thread [1]),
        .I1(\gen_cam.expire_thread [0]),
        .I2(p_1_in),
        .O(\gen_cam.free_thread [1]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    \gen_cam.allocate_queue_i_2 
       (.I0(\gen_cam.expire_thread [1]),
        .I1(\gen_cam.expire_thread [0]),
        .I2(\gen_cam.allocate_cntr_reg_n_0_[0] ),
        .O(\gen_cam.free_thread [0]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_cam.allocate_queue_i_3 
       (.I0(\gen_cam.init_push ),
        .I1(\gen_cam.expire_thread [0]),
        .I2(\gen_cam.expire_thread [1]),
        .O(\gen_cam.free_push ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_cam.cam_overflow_i_i_1__0 
       (.I0(\gen_cam.set_overflow ),
        .I1(wcam_overflow_q_reg),
        .O(\gen_cam.cam_overflow_i_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.cam_overflow_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.cam_overflow_i_i_1__0_n_0 ),
        .Q(wcam_overflow_q_reg),
        .R(SR));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_cam.expire_thread[0]_i_1__0 
       (.I0(\gen_cam.thread_push_0__2 ),
        .I1(\gen_cam.thread_last_reg_n_0_[0] ),
        .I2(\gen_cam.thread_last[0]_i_2__0_n_0 ),
        .I3(\gen_cam.expire_thread[0]_i_2__0_n_0 ),
        .O(p_43_out));
  LUT6 #(
    .INIT(64'h00000000FF008080)) 
    \gen_cam.expire_thread[0]_i_2__0 
       (.I0(awvalid_q),
        .I1(\gen_cam.next1 ),
        .I2(\gen_cam.aid_match [0]),
        .I3(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I4(\gen_cam.state [1]),
        .I5(\gen_cam.state [0]),
        .O(\gen_cam.expire_thread[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_cam.expire_thread[1]_i_1__0 
       (.I0(\gen_cam.thread_push_1__2 ),
        .I1(p_1_in33_in),
        .I2(\gen_cam.thread_last[1]_i_2__0_n_0 ),
        .I3(\gen_cam.expire_thread[1]_i_2__0_n_0 ),
        .O(p_36_out));
  LUT6 #(
    .INIT(64'h0000FF8000000080)) 
    \gen_cam.expire_thread[1]_i_2__0 
       (.I0(awvalid_q),
        .I1(\gen_cam.next1 ),
        .I2(\gen_cam.aid_match [1]),
        .I3(\gen_cam.state [1]),
        .I4(\gen_cam.state [0]),
        .I5(p_0_in28_in),
        .O(\gen_cam.expire_thread[1]_i_2__0_n_0 ));
  FDRE \gen_cam.expire_thread_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_43_out),
        .Q(\gen_cam.expire_thread [0]),
        .R(SR));
  FDRE \gen_cam.expire_thread_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_36_out),
        .Q(\gen_cam.expire_thread [1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hFDFF0000)) 
    \gen_cam.init_push_i_1__0 
       (.I0(p_1_in),
        .I1(\gen_cam.expire_thread [1]),
        .I2(\gen_cam.expire_thread [0]),
        .I3(\gen_cam.free_ready ),
        .I4(\gen_cam.init_push ),
        .O(\gen_cam.init_push_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_cam.init_push_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.init_push_i_1__0_n_0 ),
        .Q(\gen_cam.init_push ),
        .S(SS));
  LUT6 #(
    .INIT(64'h808080880808A808)) 
    \gen_cam.max_count_i_1__0 
       (.I0(resetn_q),
        .I1(\gen_cam.max_count_reg_n_0 ),
        .I2(\gen_cam.any_push__1 ),
        .I3(\gen_cam.trans_count_reg_n_0_[0] ),
        .I4(\gen_cam.trans_count_reg_n_0_[1] ),
        .I5(\gen_cam.any_pop__0 ),
        .O(\gen_cam.max_count_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00E4000000A0)) 
    \gen_cam.max_count_i_2__0 
       (.I0(\gen_cam.next1 ),
        .I1(\gen_cam.thread_last[0]_i_7__0_n_0 ),
        .I2(\gen_cam.thread_last[0]_i_5__0_n_0 ),
        .I3(\gen_cam.state [0]),
        .I4(\gen_cam.state [1]),
        .I5(awready_q),
        .O(\gen_cam.any_push__1 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.max_count_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.max_count_i_1__0_n_0 ),
        .Q(\gen_cam.max_count_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1FF4FFFF1004FFFF)) 
    \gen_cam.thread_last[0]_i_1 
       (.I0(\gen_cam.active_cnt_reg_n_0_[0][0] ),
        .I1(\gen_cam.active_cnt_reg_n_0_[0][1] ),
        .I2(\gen_cam.thread_last[0]_i_2__0_n_0 ),
        .I3(\gen_cam.thread_push_0__2 ),
        .I4(\gen_cam.thread_last[0]_i_4__0_n_0 ),
        .I5(\gen_cam.thread_last_reg_n_0_[0] ),
        .O(\gen_cam.thread_last[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7BFFFFFF)) 
    \gen_cam.thread_last[0]_i_2__0 
       (.I0(\gen_cam.active_id_reg_n_0_[0] ),
        .I1(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I2(bid_q),
        .I3(bvalid_q),
        .I4(bready_q),
        .O(\gen_cam.thread_last[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \gen_cam.thread_last[0]_i_3__0 
       (.I0(\gen_cam.next1 ),
        .I1(\gen_cam.thread_last[0]_i_5__0_n_0 ),
        .I2(\gen_cam.thread_last[0]_i_6__0_n_0 ),
        .I3(\gen_cam.aid_match [0]),
        .I4(\gen_cam.aid_match_d_reg_n_0_[0] ),
        .I5(\gen_cam.trans_count[1]_i_4__0_n_0 ),
        .O(\gen_cam.thread_push_0__2 ));
  LUT6 #(
    .INIT(64'h7777FFBFFFFFFFFF)) 
    \gen_cam.thread_last[0]_i_4__0 
       (.I0(\gen_cam.state [1]),
        .I1(awready_q),
        .I2(\gen_cam.thread_last[0]_i_7__0_n_0 ),
        .I3(\gen_cam.next1 ),
        .I4(\gen_cam.state [0]),
        .I5(\gen_cam.allocate_next [0]),
        .O(\gen_cam.thread_last[0]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_cam.thread_last[0]_i_5__0 
       (.I0(\gen_cam.max_count_reg_n_0 ),
        .I1(awvalid_q),
        .I2(awready_q),
        .O(\gen_cam.thread_last[0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gen_cam.thread_last[0]_i_6__0 
       (.I0(\gen_cam.state [1]),
        .I1(\gen_cam.state [0]),
        .O(\gen_cam.thread_last[0]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_cam.thread_last[0]_i_7__0 
       (.I0(awvalid_q),
        .I1(\gen_cam.allocate_available ),
        .O(\gen_cam.thread_last[0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h1FF4FFFF1004FFFF)) 
    \gen_cam.thread_last[1]_i_1 
       (.I0(\gen_cam.active_cnt_reg_n_0_[1][0] ),
        .I1(\gen_cam.active_cnt_reg_n_0_[1][1] ),
        .I2(\gen_cam.thread_last[1]_i_2__0_n_0 ),
        .I3(\gen_cam.thread_push_1__2 ),
        .I4(\gen_cam.thread_last[1]_i_4__0_n_0 ),
        .I5(p_1_in33_in),
        .O(\gen_cam.thread_last[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h7BFFFFFF)) 
    \gen_cam.thread_last[1]_i_2__0 
       (.I0(bid_q),
        .I1(p_0_in69_in),
        .I2(p_0_in0_in),
        .I3(bvalid_q),
        .I4(bready_q),
        .O(\gen_cam.thread_last[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \gen_cam.thread_last[1]_i_3__0 
       (.I0(\gen_cam.next1 ),
        .I1(\gen_cam.thread_last[0]_i_5__0_n_0 ),
        .I2(\gen_cam.thread_last[0]_i_6__0_n_0 ),
        .I3(\gen_cam.aid_match [1]),
        .I4(\gen_cam.trans_count[1]_i_4__0_n_0 ),
        .I5(p_0_in28_in),
        .O(\gen_cam.thread_push_1__2 ));
  LUT6 #(
    .INIT(64'h7F7F7F7FFFFFDFFF)) 
    \gen_cam.thread_last[1]_i_4__0 
       (.I0(\gen_cam.allocate_next [1]),
        .I1(\gen_cam.state [1]),
        .I2(awready_q),
        .I3(\gen_cam.thread_last[0]_i_7__0_n_0 ),
        .I4(\gen_cam.next1 ),
        .I5(\gen_cam.state [0]),
        .O(\gen_cam.thread_last[1]_i_4__0_n_0 ));
  (* MAX_FANOUT = "40" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE \gen_cam.thread_last_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_last[0]_i_1_n_0 ),
        .Q(\gen_cam.thread_last_reg_n_0_[0] ),
        .R(SR));
  (* MAX_FANOUT = "40" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE \gen_cam.thread_last_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_last[1]_i_1_n_0 ),
        .Q(p_1_in33_in),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFF7F337)) 
    \gen_cam.thread_valid[0]_i_1 
       (.I0(\gen_cam.thread_last_reg_n_0_[0] ),
        .I1(\gen_cam.thread_last[0]_i_4__0_n_0 ),
        .I2(\gen_cam.thread_last[0]_i_2__0_n_0 ),
        .I3(\gen_cam.thread_push_0__2 ),
        .I4(\gen_cam.thread_valid_reg_n_0_[0] ),
        .O(\gen_cam.thread_valid[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF7F337)) 
    \gen_cam.thread_valid[1]_i_1 
       (.I0(p_1_in33_in),
        .I1(\gen_cam.thread_last[1]_i_4__0_n_0 ),
        .I2(\gen_cam.thread_last[1]_i_2__0_n_0 ),
        .I3(\gen_cam.thread_push_1__2 ),
        .I4(p_0_in69_in),
        .O(\gen_cam.thread_valid[1]_i_1_n_0 ));
  (* MAX_FANOUT = "40" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE \gen_cam.thread_valid_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_valid[0]_i_1_n_0 ),
        .Q(\gen_cam.thread_valid_reg_n_0_[0] ),
        .R(SR));
  (* MAX_FANOUT = "40" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE \gen_cam.thread_valid_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.thread_valid[1]_i_1_n_0 ),
        .Q(p_0_in69_in),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_cam.trans_count[0]_i_1 
       (.I0(\gen_cam.trans_count_reg_n_0_[0] ),
        .O(\gen_cam.trans_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000EFFFFFFF0)) 
    \gen_cam.trans_count[1]_i_1__0 
       (.I0(\gen_cam.trans_count_reg_n_0_[0] ),
        .I1(\gen_cam.trans_count_reg_n_0_[1] ),
        .I2(\gen_cam.push_new_thread ),
        .I3(\gen_cam.push_si_thread ),
        .I4(\gen_cam.trans_count[1]_i_4__0_n_0 ),
        .I5(\gen_cam.any_pop__0 ),
        .O(\gen_cam.trans_count[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF0100FE00FEFF01)) 
    \gen_cam.trans_count[1]_i_2__0 
       (.I0(\gen_cam.push_new_thread ),
        .I1(\gen_cam.push_si_thread ),
        .I2(\gen_cam.trans_count[1]_i_4__0_n_0 ),
        .I3(\gen_cam.any_pop__0 ),
        .I4(\gen_cam.trans_count_reg_n_0_[0] ),
        .I5(\gen_cam.trans_count_reg_n_0_[1] ),
        .O(\gen_cam.trans_count[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \gen_cam.trans_count[1]_i_3__0 
       (.I0(\gen_cam.next1 ),
        .I1(\gen_cam.max_count_reg_n_0 ),
        .I2(awvalid_q),
        .I3(awready_q),
        .I4(\gen_cam.state [0]),
        .I5(\gen_cam.state [1]),
        .O(\gen_cam.push_si_thread ));
  LUT3 #(
    .INIT(8'h08)) 
    \gen_cam.trans_count[1]_i_4__0 
       (.I0(awready_q),
        .I1(\gen_cam.state [1]),
        .I2(\gen_cam.state [0]),
        .O(\gen_cam.trans_count[1]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_cam.trans_count[1]_i_5__0 
       (.I0(bready_q),
        .I1(bvalid_q),
        .O(\gen_cam.any_pop__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.trans_count_reg[0] 
       (.C(aclk),
        .CE(\gen_cam.trans_count[1]_i_1__0_n_0 ),
        .D(\gen_cam.trans_count[0]_i_1_n_0 ),
        .Q(\gen_cam.trans_count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_cam.trans_count_reg[1] 
       (.C(aclk),
        .CE(\gen_cam.trans_count[1]_i_1__0_n_0 ),
        .D(\gen_cam.trans_count[1]_i_2__0_n_0 ),
        .Q(\gen_cam.trans_count_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hF2828F82)) 
    i__i_1__0
       (.I0(p_0_in69_in),
        .I1(p_0_in0_in),
        .I2(awid_q),
        .I3(\gen_cam.thread_valid_reg_n_0_[0] ),
        .I4(\gen_cam.active_id_reg_n_0_[0] ),
        .O(\gen_cam.next1 ));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "128" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_PROTOCOL = "0" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_ENABLE_CONTROL = "0" *) (* C_ENABLE_MARK_DEBUG = "1" *) (* C_HAS_WSTRB = "1" *) 
(* C_PC_AR_MAXWAITS = "0" *) (* C_PC_AW_MAXWAITS = "0" *) (* C_PC_B_MAXWAITS = "0" *) 
(* C_PC_EXMON_WIDTH = "0" *) (* C_PC_HAS_SYSTEM_RESET = "0" *) (* C_PC_LIGHT_WEIGHT = "0" *) 
(* C_PC_MAXRBURSTS = "2" *) (* C_PC_MAXWBURSTS = "2" *) (* C_PC_MAX_BURST_LENGTH = "256" *) 
(* C_PC_MAX_CONTINUOUS_RTRANSFERS_WAITS = "0" *) (* C_PC_MAX_CONTINUOUS_WTRANSFERS_WAITS = "0" *) (* C_PC_MAX_WLAST_TO_AWVALID_WAITS = "0" *) 
(* C_PC_MAX_WRITE_TO_BVALID_WAITS = "0" *) (* C_PC_MESSAGE_LEVEL = "2" *) (* C_PC_R_MAXWAITS = "0" *) 
(* C_PC_STATUS_WIDTH = "160" *) (* C_PC_SUPPORTS_NARROW_BURST = "1" *) (* C_PC_W_MAXWAITS = "0" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* LP_AXI_SIZE = "3'b011" *) (* P_INDEX_WIDTH = "1" *) 
(* P_NUM_REPORTED_CHECKS = "104" *) (* P_NUM_RTHREADS = "2" *) (* P_NUM_WTHREADS = "2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_top
   (pc_status,
    pc_asserted,
    system_resetn,
    aclk,
    aresetn,
    pc_axi_awid,
    pc_axi_awaddr,
    pc_axi_awlen,
    pc_axi_awsize,
    pc_axi_awburst,
    pc_axi_awlock,
    pc_axi_awcache,
    pc_axi_awprot,
    pc_axi_awqos,
    pc_axi_awregion,
    pc_axi_awuser,
    pc_axi_awvalid,
    pc_axi_awready,
    pc_axi_wid,
    pc_axi_wlast,
    pc_axi_wdata,
    pc_axi_wstrb,
    pc_axi_wuser,
    pc_axi_wvalid,
    pc_axi_wready,
    pc_axi_bid,
    pc_axi_bresp,
    pc_axi_buser,
    pc_axi_bvalid,
    pc_axi_bready,
    pc_axi_arid,
    pc_axi_araddr,
    pc_axi_arlen,
    pc_axi_arsize,
    pc_axi_arburst,
    pc_axi_arlock,
    pc_axi_arcache,
    pc_axi_arprot,
    pc_axi_arqos,
    pc_axi_arregion,
    pc_axi_aruser,
    pc_axi_arvalid,
    pc_axi_arready,
    pc_axi_rid,
    pc_axi_rlast,
    pc_axi_rdata,
    pc_axi_rresp,
    pc_axi_ruser,
    pc_axi_rvalid,
    pc_axi_rready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  output [159:0]pc_status;
  output pc_asserted;
  input system_resetn;
  input aclk;
  input aresetn;
  input [0:0]pc_axi_awid;
  input [31:0]pc_axi_awaddr;
  input [7:0]pc_axi_awlen;
  input [2:0]pc_axi_awsize;
  input [1:0]pc_axi_awburst;
  input [0:0]pc_axi_awlock;
  input [3:0]pc_axi_awcache;
  input [2:0]pc_axi_awprot;
  input [3:0]pc_axi_awqos;
  input [3:0]pc_axi_awregion;
  input [0:0]pc_axi_awuser;
  input pc_axi_awvalid;
  input pc_axi_awready;
  input [0:0]pc_axi_wid;
  input pc_axi_wlast;
  input [127:0]pc_axi_wdata;
  input [15:0]pc_axi_wstrb;
  input [0:0]pc_axi_wuser;
  input pc_axi_wvalid;
  input pc_axi_wready;
  input [0:0]pc_axi_bid;
  input [1:0]pc_axi_bresp;
  input [0:0]pc_axi_buser;
  input pc_axi_bvalid;
  input pc_axi_bready;
  input [0:0]pc_axi_arid;
  input [31:0]pc_axi_araddr;
  input [7:0]pc_axi_arlen;
  input [2:0]pc_axi_arsize;
  input [1:0]pc_axi_arburst;
  input [0:0]pc_axi_arlock;
  input [3:0]pc_axi_arcache;
  input [2:0]pc_axi_arprot;
  input [3:0]pc_axi_arqos;
  input [3:0]pc_axi_arregion;
  input [0:0]pc_axi_aruser;
  input pc_axi_arvalid;
  input pc_axi_arready;
  input [0:0]pc_axi_rid;
  input pc_axi_rlast;
  input [127:0]pc_axi_rdata;
  input [1:0]pc_axi_rresp;
  input [0:0]pc_axi_ruser;
  input pc_axi_rvalid;
  input pc_axi_rready;
  input [9:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;

  wire \<const0> ;
  wire CORE_n_61;
  wire aclk;
  wire [31:0]araddr_q;
  wire [31:0]araddr_qq;
  wire [1:0]arburst_q;
  wire [1:0]arburst_qq;
  wire [3:0]arcache_q;
  wire [3:0]arcache_qq;
  wire aresetn;
  wire arid_index;
  wire arid_index_q;
  wire arid_q;
  wire arid_qq;
  wire [7:0]arlen_q;
  wire [7:0]arlen_qq;
  wire [2:0]arprot_q;
  wire [2:0]arprot_qq;
  wire [3:0]arqos_q;
  wire [3:0]arqos_qq;
  wire arready_q;
  wire arready_qq;
  wire [3:0]arregion_q;
  wire [3:0]arregion_qq;
  wire [2:0]arsize_q;
  wire [2:0]arsize_qq;
  wire aruser_q;
  wire aruser_qq;
  wire arvalid_q;
  wire arvalid_qq;
  wire [31:0]awaddr_q;
  wire [31:0]awaddr_qq;
  wire [1:0]awburst_q;
  wire [1:0]awburst_qq;
  wire [3:0]awcache_q;
  wire [3:0]awcache_qq;
  wire awid_index;
  wire awid_index_q;
  wire awid_q;
  wire awid_qq;
  wire [7:0]awlen_q;
  wire [7:0]awlen_qq;
  wire [2:0]awprot_q;
  wire [2:0]awprot_qq;
  wire [3:0]awqos_q;
  wire [3:0]awqos_qq;
  wire awready_q;
  wire awready_qq;
  wire [3:0]awregion_q;
  wire [3:0]awregion_qq;
  wire [2:0]awsize_q;
  wire [2:0]awsize_qq;
  wire awuser_q;
  wire awuser_qq;
  wire awvalid_q;
  wire awvalid_qq;
  wire bid_index;
  wire bid_index_q;
  wire bid_mismatch;
  wire bid_mismatch_q;
  wire bid_q;
  wire bid_qq;
  wire bready_q;
  wire bready_qq;
  wire [1:0]bresp_q;
  wire [1:0]bresp_qq;
  wire buser_q;
  wire buser_qq;
  wire bvalid_q;
  wire bvalid_qq;
  wire \gen_cam.areset_leading ;
  wire \gen_cam.cam_overflow_i ;
  wire pc_asserted;
  wire [31:0]pc_axi_araddr;
  wire [1:0]pc_axi_arburst;
  wire [3:0]pc_axi_arcache;
  wire [0:0]pc_axi_arid;
  wire [7:0]pc_axi_arlen;
  wire [2:0]pc_axi_arprot;
  wire [3:0]pc_axi_arqos;
  wire pc_axi_arready;
  wire [3:0]pc_axi_arregion;
  wire [2:0]pc_axi_arsize;
  wire [0:0]pc_axi_aruser;
  wire pc_axi_arvalid;
  wire [31:0]pc_axi_awaddr;
  wire [1:0]pc_axi_awburst;
  wire [3:0]pc_axi_awcache;
  wire [0:0]pc_axi_awid;
  wire [7:0]pc_axi_awlen;
  wire [2:0]pc_axi_awprot;
  wire [3:0]pc_axi_awqos;
  wire pc_axi_awready;
  wire [3:0]pc_axi_awregion;
  wire [2:0]pc_axi_awsize;
  wire [0:0]pc_axi_awuser;
  wire pc_axi_awvalid;
  wire [0:0]pc_axi_bid;
  wire pc_axi_bready;
  wire [1:0]pc_axi_bresp;
  wire [0:0]pc_axi_buser;
  wire pc_axi_bvalid;
  wire [127:0]pc_axi_rdata;
  wire [0:0]pc_axi_rid;
  wire pc_axi_rlast;
  wire pc_axi_rready;
  wire [1:0]pc_axi_rresp;
  wire [0:0]pc_axi_ruser;
  wire pc_axi_rvalid;
  wire [127:0]pc_axi_wdata;
  wire pc_axi_wlast;
  wire pc_axi_wready;
  wire [15:0]pc_axi_wstrb;
  wire [0:0]pc_axi_wuser;
  wire pc_axi_wvalid;
  wire [81:0]\^pc_status ;
  wire rcam_overflow_q;
  wire [127:0]rdata_q;
  wire [127:0]rdata_qq;
  wire resetn_q;
  wire resetn_qq;
  wire rid_index;
  wire rid_index_q;
  wire rid_mismatch;
  wire rid_mismatch_q;
  wire rid_q;
  wire rid_qq;
  wire rlast_q;
  wire rlast_qq;
  wire rready_q;
  wire rready_qq;
  wire [1:0]rresp_q;
  wire [1:0]rresp_qq;
  wire ruser_q;
  wire ruser_qq;
  wire rvalid_q;
  wire rvalid_qq;
  wire thread_cam_reset;
  wire w_threadcam_n_0;
  wire wcam_overflow_q;
  wire [127:0]wdata_q;
  wire [127:0]wdata_qq;
  wire wlast_q;
  wire wlast_qq;
  wire wready_q;
  wire wready_qq;
  wire [15:0]wstrb_q;
  wire [15:0]wstrb_qq;
  wire wuser_q;
  wire wuser_qq;
  wire wvalid_q;
  wire wvalid_qq;

  assign pc_status[159] = \<const0> ;
  assign pc_status[158] = \<const0> ;
  assign pc_status[157] = \<const0> ;
  assign pc_status[156] = \<const0> ;
  assign pc_status[155] = \<const0> ;
  assign pc_status[154] = \<const0> ;
  assign pc_status[153] = \<const0> ;
  assign pc_status[152] = \<const0> ;
  assign pc_status[151] = \<const0> ;
  assign pc_status[150] = \<const0> ;
  assign pc_status[149] = \<const0> ;
  assign pc_status[148] = \<const0> ;
  assign pc_status[147] = \<const0> ;
  assign pc_status[146] = \<const0> ;
  assign pc_status[145] = \<const0> ;
  assign pc_status[144] = \<const0> ;
  assign pc_status[143] = \<const0> ;
  assign pc_status[142] = \<const0> ;
  assign pc_status[141] = \<const0> ;
  assign pc_status[140] = \<const0> ;
  assign pc_status[139] = \<const0> ;
  assign pc_status[138] = \<const0> ;
  assign pc_status[137] = \<const0> ;
  assign pc_status[136] = \<const0> ;
  assign pc_status[135] = \<const0> ;
  assign pc_status[134] = \<const0> ;
  assign pc_status[133] = \<const0> ;
  assign pc_status[132] = \<const0> ;
  assign pc_status[131] = \<const0> ;
  assign pc_status[130] = \<const0> ;
  assign pc_status[129] = \<const0> ;
  assign pc_status[128] = \<const0> ;
  assign pc_status[127] = \<const0> ;
  assign pc_status[126] = \<const0> ;
  assign pc_status[125] = \<const0> ;
  assign pc_status[124] = \<const0> ;
  assign pc_status[123] = \<const0> ;
  assign pc_status[122] = \<const0> ;
  assign pc_status[121] = \<const0> ;
  assign pc_status[120] = \<const0> ;
  assign pc_status[119] = \<const0> ;
  assign pc_status[118] = \<const0> ;
  assign pc_status[117] = \<const0> ;
  assign pc_status[116] = \<const0> ;
  assign pc_status[115] = \<const0> ;
  assign pc_status[114] = \<const0> ;
  assign pc_status[113] = \<const0> ;
  assign pc_status[112] = \<const0> ;
  assign pc_status[111] = \<const0> ;
  assign pc_status[110] = \<const0> ;
  assign pc_status[109] = \<const0> ;
  assign pc_status[108] = \<const0> ;
  assign pc_status[107] = \<const0> ;
  assign pc_status[106] = \<const0> ;
  assign pc_status[105] = \<const0> ;
  assign pc_status[104] = \<const0> ;
  assign pc_status[103] = \<const0> ;
  assign pc_status[102] = \<const0> ;
  assign pc_status[101] = \<const0> ;
  assign pc_status[100] = \<const0> ;
  assign pc_status[99] = \<const0> ;
  assign pc_status[98] = \<const0> ;
  assign pc_status[97] = \<const0> ;
  assign pc_status[96] = \<const0> ;
  assign pc_status[95] = \<const0> ;
  assign pc_status[94] = \<const0> ;
  assign pc_status[93] = \<const0> ;
  assign pc_status[92] = \<const0> ;
  assign pc_status[91] = \<const0> ;
  assign pc_status[90] = \<const0> ;
  assign pc_status[89] = \<const0> ;
  assign pc_status[88] = \<const0> ;
  assign pc_status[87] = \<const0> ;
  assign pc_status[86] = \<const0> ;
  assign pc_status[85] = \<const0> ;
  assign pc_status[84] = \<const0> ;
  assign pc_status[83] = \<const0> ;
  assign pc_status[82] = \<const0> ;
  assign pc_status[81:73] = \^pc_status [81:73];
  assign pc_status[72] = \<const0> ;
  assign pc_status[71] = \<const0> ;
  assign pc_status[70] = \<const0> ;
  assign pc_status[69] = \<const0> ;
  assign pc_status[68] = \<const0> ;
  assign pc_status[67] = \<const0> ;
  assign pc_status[66:62] = \^pc_status [66:62];
  assign pc_status[61] = \<const0> ;
  assign pc_status[60:58] = \^pc_status [60:58];
  assign pc_status[57] = \<const0> ;
  assign pc_status[56:52] = \^pc_status [56:52];
  assign pc_status[51] = \<const0> ;
  assign pc_status[50:46] = \^pc_status [50:46];
  assign pc_status[45] = \<const0> ;
  assign pc_status[44:41] = \^pc_status [44:41];
  assign pc_status[40] = \<const0> ;
  assign pc_status[39:37] = \^pc_status [39:37];
  assign pc_status[36] = \<const0> ;
  assign pc_status[35:32] = \^pc_status [35:32];
  assign pc_status[31] = \<const0> ;
  assign pc_status[30] = \<const0> ;
  assign pc_status[29] = \<const0> ;
  assign pc_status[28] = \<const0> ;
  assign pc_status[27:24] = \^pc_status [27:24];
  assign pc_status[23] = \<const0> ;
  assign pc_status[22:21] = \^pc_status [22:21];
  assign pc_status[20] = \<const0> ;
  assign pc_status[19:15] = \^pc_status [19:15];
  assign pc_status[14] = \<const0> ;
  assign pc_status[13:9] = \^pc_status [13:9];
  assign pc_status[8] = \<const0> ;
  assign pc_status[7:4] = \^pc_status [7:4];
  assign pc_status[3] = \<const0> ;
  assign pc_status[2:0] = \^pc_status [2:0];
  assign s_axi_arready = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_core CORE
       (.Q(awaddr_qq),
        .aclk(aclk),
        .\araddr_qq_reg[31] (araddr_qq),
        .\arburst_qq_reg[1] (arburst_qq),
        .\arcache_qq_reg[3] (arcache_qq),
        .arid_index_q(arid_index_q),
        .arid_qq(arid_qq),
        .\arlen_qq_reg[7] (arlen_qq),
        .\arprot_qq_reg[2] (arprot_qq),
        .\arqos_qq_reg[3] (arqos_qq),
        .arready_qq(arready_qq),
        .\arregion_qq_reg[3] (arregion_qq),
        .\arsize_qq_reg[2] (arsize_qq),
        .aruser_qq(aruser_qq),
        .arvalid_qq(arvalid_qq),
        .\awburst_qq_reg[1] (awburst_qq),
        .\awcache_qq_reg[3] (awcache_qq),
        .awid_qq(awid_qq),
        .\awlen_qq_reg[7] (awlen_qq),
        .\awprot_qq_reg[2] (awprot_qq),
        .\awqos_qq_reg[3] (awqos_qq),
        .awready_qq(awready_qq),
        .\awregion_qq_reg[3] (awregion_qq),
        .\awsize_qq_reg[2] (awsize_qq),
        .awuser_qq(awuser_qq),
        .awvalid_qq(awvalid_qq),
        .bid_index_q(bid_index_q),
        .bid_mismatch_q(bid_mismatch_q),
        .bid_qq(bid_qq),
        .bready_qq(bready_qq),
        .\bresp_qq_reg[1] (bresp_qq),
        .buser_qq(buser_qq),
        .bvalid_qq(bvalid_qq),
        .data_in(awid_index_q),
        .pc_asserted_i_reg(CORE_n_61),
        .pc_status({\^pc_status [81:73],\^pc_status [66:62],\^pc_status [60:58],\^pc_status [56:52],\^pc_status [50:46],\^pc_status [44:41],\^pc_status [39:37],\^pc_status [35:32],\^pc_status [27:24],\^pc_status [22:21],\^pc_status [19:15],\^pc_status [13:9],\^pc_status [7:4],\^pc_status [2:0]}),
        .rcam_overflow_q(rcam_overflow_q),
        .\rdata_qq_reg[127] (rdata_qq),
        .resetn_qq(resetn_qq),
        .rid_index_q(rid_index_q),
        .rid_mismatch_q(rid_mismatch_q),
        .rid_qq(rid_qq),
        .rlast_qq(rlast_qq),
        .rready_qq(rready_qq),
        .\rresp_qq_reg[1] (rresp_qq),
        .ruser_qq(ruser_qq),
        .rvalid_qq(rvalid_qq),
        .wcam_overflow_q(wcam_overflow_q),
        .\wdata_qq_reg[127] (wdata_qq),
        .wlast_qq(wlast_qq),
        .wready_qq(wready_qq),
        .\wstrb_qq_reg[15] (wstrb_qq),
        .wuser_qq(wuser_qq),
        .wvalid_qq(wvalid_qq));
  GND GND
       (.G(\<const0> ));
  FDRE \araddr_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[0]),
        .Q(araddr_q[0]),
        .R(1'b0));
  FDRE \araddr_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[10]),
        .Q(araddr_q[10]),
        .R(1'b0));
  FDRE \araddr_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[11]),
        .Q(araddr_q[11]),
        .R(1'b0));
  FDRE \araddr_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[12]),
        .Q(araddr_q[12]),
        .R(1'b0));
  FDRE \araddr_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[13]),
        .Q(araddr_q[13]),
        .R(1'b0));
  FDRE \araddr_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[14]),
        .Q(araddr_q[14]),
        .R(1'b0));
  FDRE \araddr_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[15]),
        .Q(araddr_q[15]),
        .R(1'b0));
  FDRE \araddr_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[16]),
        .Q(araddr_q[16]),
        .R(1'b0));
  FDRE \araddr_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[17]),
        .Q(araddr_q[17]),
        .R(1'b0));
  FDRE \araddr_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[18]),
        .Q(araddr_q[18]),
        .R(1'b0));
  FDRE \araddr_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[19]),
        .Q(araddr_q[19]),
        .R(1'b0));
  FDRE \araddr_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[1]),
        .Q(araddr_q[1]),
        .R(1'b0));
  FDRE \araddr_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[20]),
        .Q(araddr_q[20]),
        .R(1'b0));
  FDRE \araddr_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[21]),
        .Q(araddr_q[21]),
        .R(1'b0));
  FDRE \araddr_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[22]),
        .Q(araddr_q[22]),
        .R(1'b0));
  FDRE \araddr_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[23]),
        .Q(araddr_q[23]),
        .R(1'b0));
  FDRE \araddr_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[24]),
        .Q(araddr_q[24]),
        .R(1'b0));
  FDRE \araddr_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[25]),
        .Q(araddr_q[25]),
        .R(1'b0));
  FDRE \araddr_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[26]),
        .Q(araddr_q[26]),
        .R(1'b0));
  FDRE \araddr_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[27]),
        .Q(araddr_q[27]),
        .R(1'b0));
  FDRE \araddr_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[28]),
        .Q(araddr_q[28]),
        .R(1'b0));
  FDRE \araddr_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[29]),
        .Q(araddr_q[29]),
        .R(1'b0));
  FDRE \araddr_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[2]),
        .Q(araddr_q[2]),
        .R(1'b0));
  FDRE \araddr_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[30]),
        .Q(araddr_q[30]),
        .R(1'b0));
  FDRE \araddr_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[31]),
        .Q(araddr_q[31]),
        .R(1'b0));
  FDRE \araddr_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[3]),
        .Q(araddr_q[3]),
        .R(1'b0));
  FDRE \araddr_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[4]),
        .Q(araddr_q[4]),
        .R(1'b0));
  FDRE \araddr_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[5]),
        .Q(araddr_q[5]),
        .R(1'b0));
  FDRE \araddr_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[6]),
        .Q(araddr_q[6]),
        .R(1'b0));
  FDRE \araddr_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[7]),
        .Q(araddr_q[7]),
        .R(1'b0));
  FDRE \araddr_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[8]),
        .Q(araddr_q[8]),
        .R(1'b0));
  FDRE \araddr_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[9]),
        .Q(araddr_q[9]),
        .R(1'b0));
  FDRE \araddr_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[0]),
        .Q(araddr_qq[0]),
        .R(1'b0));
  FDRE \araddr_qq_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[10]),
        .Q(araddr_qq[10]),
        .R(1'b0));
  FDRE \araddr_qq_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[11]),
        .Q(araddr_qq[11]),
        .R(1'b0));
  FDRE \araddr_qq_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[12]),
        .Q(araddr_qq[12]),
        .R(1'b0));
  FDRE \araddr_qq_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[13]),
        .Q(araddr_qq[13]),
        .R(1'b0));
  FDRE \araddr_qq_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[14]),
        .Q(araddr_qq[14]),
        .R(1'b0));
  FDRE \araddr_qq_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[15]),
        .Q(araddr_qq[15]),
        .R(1'b0));
  FDRE \araddr_qq_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[16]),
        .Q(araddr_qq[16]),
        .R(1'b0));
  FDRE \araddr_qq_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[17]),
        .Q(araddr_qq[17]),
        .R(1'b0));
  FDRE \araddr_qq_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[18]),
        .Q(araddr_qq[18]),
        .R(1'b0));
  FDRE \araddr_qq_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[19]),
        .Q(araddr_qq[19]),
        .R(1'b0));
  FDRE \araddr_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[1]),
        .Q(araddr_qq[1]),
        .R(1'b0));
  FDRE \araddr_qq_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[20]),
        .Q(araddr_qq[20]),
        .R(1'b0));
  FDRE \araddr_qq_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[21]),
        .Q(araddr_qq[21]),
        .R(1'b0));
  FDRE \araddr_qq_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[22]),
        .Q(araddr_qq[22]),
        .R(1'b0));
  FDRE \araddr_qq_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[23]),
        .Q(araddr_qq[23]),
        .R(1'b0));
  FDRE \araddr_qq_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[24]),
        .Q(araddr_qq[24]),
        .R(1'b0));
  FDRE \araddr_qq_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[25]),
        .Q(araddr_qq[25]),
        .R(1'b0));
  FDRE \araddr_qq_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[26]),
        .Q(araddr_qq[26]),
        .R(1'b0));
  FDRE \araddr_qq_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[27]),
        .Q(araddr_qq[27]),
        .R(1'b0));
  FDRE \araddr_qq_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[28]),
        .Q(araddr_qq[28]),
        .R(1'b0));
  FDRE \araddr_qq_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[29]),
        .Q(araddr_qq[29]),
        .R(1'b0));
  FDRE \araddr_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[2]),
        .Q(araddr_qq[2]),
        .R(1'b0));
  FDRE \araddr_qq_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[30]),
        .Q(araddr_qq[30]),
        .R(1'b0));
  FDRE \araddr_qq_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[31]),
        .Q(araddr_qq[31]),
        .R(1'b0));
  FDRE \araddr_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[3]),
        .Q(araddr_qq[3]),
        .R(1'b0));
  FDRE \araddr_qq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[4]),
        .Q(araddr_qq[4]),
        .R(1'b0));
  FDRE \araddr_qq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[5]),
        .Q(araddr_qq[5]),
        .R(1'b0));
  FDRE \araddr_qq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[6]),
        .Q(araddr_qq[6]),
        .R(1'b0));
  FDRE \araddr_qq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[7]),
        .Q(araddr_qq[7]),
        .R(1'b0));
  FDRE \araddr_qq_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[8]),
        .Q(araddr_qq[8]),
        .R(1'b0));
  FDRE \araddr_qq_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(araddr_q[9]),
        .Q(araddr_qq[9]),
        .R(1'b0));
  FDRE \arburst_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arburst[0]),
        .Q(arburst_q[0]),
        .R(1'b0));
  FDRE \arburst_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arburst[1]),
        .Q(arburst_q[1]),
        .R(1'b0));
  FDRE \arburst_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(arburst_q[0]),
        .Q(arburst_qq[0]),
        .R(1'b0));
  FDRE \arburst_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(arburst_q[1]),
        .Q(arburst_qq[1]),
        .R(1'b0));
  FDRE \arcache_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arcache[0]),
        .Q(arcache_q[0]),
        .R(1'b0));
  FDRE \arcache_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arcache[1]),
        .Q(arcache_q[1]),
        .R(1'b0));
  FDRE \arcache_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arcache[2]),
        .Q(arcache_q[2]),
        .R(1'b0));
  FDRE \arcache_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arcache[3]),
        .Q(arcache_q[3]),
        .R(1'b0));
  FDRE \arcache_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(arcache_q[0]),
        .Q(arcache_qq[0]),
        .R(1'b0));
  FDRE \arcache_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(arcache_q[1]),
        .Q(arcache_qq[1]),
        .R(1'b0));
  FDRE \arcache_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(arcache_q[2]),
        .Q(arcache_qq[2]),
        .R(1'b0));
  FDRE \arcache_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(arcache_q[3]),
        .Q(arcache_qq[3]),
        .R(1'b0));
  FDRE \arid_index_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(arid_index),
        .Q(arid_index_q),
        .R(1'b0));
  FDRE \arid_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arid),
        .Q(arid_q),
        .R(1'b0));
  FDRE \arid_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(arid_q),
        .Q(arid_qq),
        .R(1'b0));
  FDRE \arlen_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[0]),
        .Q(arlen_q[0]),
        .R(1'b0));
  FDRE \arlen_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[1]),
        .Q(arlen_q[1]),
        .R(1'b0));
  FDRE \arlen_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[2]),
        .Q(arlen_q[2]),
        .R(1'b0));
  FDRE \arlen_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[3]),
        .Q(arlen_q[3]),
        .R(1'b0));
  FDRE \arlen_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[4]),
        .Q(arlen_q[4]),
        .R(1'b0));
  FDRE \arlen_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[5]),
        .Q(arlen_q[5]),
        .R(1'b0));
  FDRE \arlen_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[6]),
        .Q(arlen_q[6]),
        .R(1'b0));
  FDRE \arlen_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[7]),
        .Q(arlen_q[7]),
        .R(1'b0));
  FDRE \arlen_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(arlen_q[0]),
        .Q(arlen_qq[0]),
        .R(1'b0));
  FDRE \arlen_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(arlen_q[1]),
        .Q(arlen_qq[1]),
        .R(1'b0));
  FDRE \arlen_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(arlen_q[2]),
        .Q(arlen_qq[2]),
        .R(1'b0));
  FDRE \arlen_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(arlen_q[3]),
        .Q(arlen_qq[3]),
        .R(1'b0));
  FDRE \arlen_qq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(arlen_q[4]),
        .Q(arlen_qq[4]),
        .R(1'b0));
  FDRE \arlen_qq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(arlen_q[5]),
        .Q(arlen_qq[5]),
        .R(1'b0));
  FDRE \arlen_qq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(arlen_q[6]),
        .Q(arlen_qq[6]),
        .R(1'b0));
  FDRE \arlen_qq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(arlen_q[7]),
        .Q(arlen_qq[7]),
        .R(1'b0));
  FDRE \arprot_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arprot[0]),
        .Q(arprot_q[0]),
        .R(1'b0));
  FDRE \arprot_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arprot[1]),
        .Q(arprot_q[1]),
        .R(1'b0));
  FDRE \arprot_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arprot[2]),
        .Q(arprot_q[2]),
        .R(1'b0));
  FDRE \arprot_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(arprot_q[0]),
        .Q(arprot_qq[0]),
        .R(1'b0));
  FDRE \arprot_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(arprot_q[1]),
        .Q(arprot_qq[1]),
        .R(1'b0));
  FDRE \arprot_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(arprot_q[2]),
        .Q(arprot_qq[2]),
        .R(1'b0));
  FDRE \arqos_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arqos[0]),
        .Q(arqos_q[0]),
        .R(1'b0));
  FDRE \arqos_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arqos[1]),
        .Q(arqos_q[1]),
        .R(1'b0));
  FDRE \arqos_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arqos[2]),
        .Q(arqos_q[2]),
        .R(1'b0));
  FDRE \arqos_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arqos[3]),
        .Q(arqos_q[3]),
        .R(1'b0));
  FDRE \arqos_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(arqos_q[0]),
        .Q(arqos_qq[0]),
        .R(1'b0));
  FDRE \arqos_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(arqos_q[1]),
        .Q(arqos_qq[1]),
        .R(1'b0));
  FDRE \arqos_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(arqos_q[2]),
        .Q(arqos_qq[2]),
        .R(1'b0));
  FDRE \arqos_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(arqos_q[3]),
        .Q(arqos_qq[3]),
        .R(1'b0));
  FDRE arready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arready),
        .Q(arready_q),
        .R(1'b0));
  FDRE arready_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arready_q),
        .Q(arready_qq),
        .R(1'b0));
  FDRE \arregion_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arregion[0]),
        .Q(arregion_q[0]),
        .R(1'b0));
  FDRE \arregion_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arregion[1]),
        .Q(arregion_q[1]),
        .R(1'b0));
  FDRE \arregion_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arregion[2]),
        .Q(arregion_q[2]),
        .R(1'b0));
  FDRE \arregion_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arregion[3]),
        .Q(arregion_q[3]),
        .R(1'b0));
  FDRE \arregion_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(arregion_q[0]),
        .Q(arregion_qq[0]),
        .R(1'b0));
  FDRE \arregion_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(arregion_q[1]),
        .Q(arregion_qq[1]),
        .R(1'b0));
  FDRE \arregion_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(arregion_q[2]),
        .Q(arregion_qq[2]),
        .R(1'b0));
  FDRE \arregion_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(arregion_q[3]),
        .Q(arregion_qq[3]),
        .R(1'b0));
  FDRE \arsize_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arsize[0]),
        .Q(arsize_q[0]),
        .R(1'b0));
  FDRE \arsize_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arsize[1]),
        .Q(arsize_q[1]),
        .R(1'b0));
  FDRE \arsize_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arsize[2]),
        .Q(arsize_q[2]),
        .R(1'b0));
  FDRE \arsize_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(arsize_q[0]),
        .Q(arsize_qq[0]),
        .R(1'b0));
  FDRE \arsize_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(arsize_q[1]),
        .Q(arsize_qq[1]),
        .R(1'b0));
  FDRE \arsize_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(arsize_q[2]),
        .Q(arsize_qq[2]),
        .R(1'b0));
  FDRE \aruser_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_aruser),
        .Q(aruser_q),
        .R(1'b0));
  FDRE \aruser_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aruser_q),
        .Q(aruser_qq),
        .R(1'b0));
  FDRE arvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arvalid),
        .Q(arvalid_q),
        .R(1'b0));
  FDRE arvalid_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arvalid_q),
        .Q(arvalid_qq),
        .R(1'b0));
  FDRE \awaddr_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[0]),
        .Q(awaddr_q[0]),
        .R(1'b0));
  FDRE \awaddr_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[10]),
        .Q(awaddr_q[10]),
        .R(1'b0));
  FDRE \awaddr_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[11]),
        .Q(awaddr_q[11]),
        .R(1'b0));
  FDRE \awaddr_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[12]),
        .Q(awaddr_q[12]),
        .R(1'b0));
  FDRE \awaddr_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[13]),
        .Q(awaddr_q[13]),
        .R(1'b0));
  FDRE \awaddr_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[14]),
        .Q(awaddr_q[14]),
        .R(1'b0));
  FDRE \awaddr_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[15]),
        .Q(awaddr_q[15]),
        .R(1'b0));
  FDRE \awaddr_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[16]),
        .Q(awaddr_q[16]),
        .R(1'b0));
  FDRE \awaddr_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[17]),
        .Q(awaddr_q[17]),
        .R(1'b0));
  FDRE \awaddr_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[18]),
        .Q(awaddr_q[18]),
        .R(1'b0));
  FDRE \awaddr_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[19]),
        .Q(awaddr_q[19]),
        .R(1'b0));
  FDRE \awaddr_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[1]),
        .Q(awaddr_q[1]),
        .R(1'b0));
  FDRE \awaddr_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[20]),
        .Q(awaddr_q[20]),
        .R(1'b0));
  FDRE \awaddr_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[21]),
        .Q(awaddr_q[21]),
        .R(1'b0));
  FDRE \awaddr_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[22]),
        .Q(awaddr_q[22]),
        .R(1'b0));
  FDRE \awaddr_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[23]),
        .Q(awaddr_q[23]),
        .R(1'b0));
  FDRE \awaddr_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[24]),
        .Q(awaddr_q[24]),
        .R(1'b0));
  FDRE \awaddr_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[25]),
        .Q(awaddr_q[25]),
        .R(1'b0));
  FDRE \awaddr_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[26]),
        .Q(awaddr_q[26]),
        .R(1'b0));
  FDRE \awaddr_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[27]),
        .Q(awaddr_q[27]),
        .R(1'b0));
  FDRE \awaddr_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[28]),
        .Q(awaddr_q[28]),
        .R(1'b0));
  FDRE \awaddr_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[29]),
        .Q(awaddr_q[29]),
        .R(1'b0));
  FDRE \awaddr_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[2]),
        .Q(awaddr_q[2]),
        .R(1'b0));
  FDRE \awaddr_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[30]),
        .Q(awaddr_q[30]),
        .R(1'b0));
  FDRE \awaddr_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[31]),
        .Q(awaddr_q[31]),
        .R(1'b0));
  FDRE \awaddr_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[3]),
        .Q(awaddr_q[3]),
        .R(1'b0));
  FDRE \awaddr_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[4]),
        .Q(awaddr_q[4]),
        .R(1'b0));
  FDRE \awaddr_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[5]),
        .Q(awaddr_q[5]),
        .R(1'b0));
  FDRE \awaddr_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[6]),
        .Q(awaddr_q[6]),
        .R(1'b0));
  FDRE \awaddr_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[7]),
        .Q(awaddr_q[7]),
        .R(1'b0));
  FDRE \awaddr_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[8]),
        .Q(awaddr_q[8]),
        .R(1'b0));
  FDRE \awaddr_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[9]),
        .Q(awaddr_q[9]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[0]),
        .Q(awaddr_qq[0]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[10]),
        .Q(awaddr_qq[10]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[11]),
        .Q(awaddr_qq[11]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[12]),
        .Q(awaddr_qq[12]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[13]),
        .Q(awaddr_qq[13]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[14]),
        .Q(awaddr_qq[14]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[15]),
        .Q(awaddr_qq[15]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[16]),
        .Q(awaddr_qq[16]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[17]),
        .Q(awaddr_qq[17]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[18]),
        .Q(awaddr_qq[18]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[19]),
        .Q(awaddr_qq[19]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[1]),
        .Q(awaddr_qq[1]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[20]),
        .Q(awaddr_qq[20]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[21]),
        .Q(awaddr_qq[21]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[22]),
        .Q(awaddr_qq[22]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[23]),
        .Q(awaddr_qq[23]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[24]),
        .Q(awaddr_qq[24]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[25]),
        .Q(awaddr_qq[25]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[26]),
        .Q(awaddr_qq[26]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[27]),
        .Q(awaddr_qq[27]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[28]),
        .Q(awaddr_qq[28]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[29]),
        .Q(awaddr_qq[29]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[2]),
        .Q(awaddr_qq[2]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[30]),
        .Q(awaddr_qq[30]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[31]),
        .Q(awaddr_qq[31]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[3]),
        .Q(awaddr_qq[3]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[4]),
        .Q(awaddr_qq[4]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[5]),
        .Q(awaddr_qq[5]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[6]),
        .Q(awaddr_qq[6]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[7]),
        .Q(awaddr_qq[7]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[8]),
        .Q(awaddr_qq[8]),
        .R(1'b0));
  FDRE \awaddr_qq_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(awaddr_q[9]),
        .Q(awaddr_qq[9]),
        .R(1'b0));
  FDRE \awburst_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awburst[0]),
        .Q(awburst_q[0]),
        .R(1'b0));
  FDRE \awburst_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awburst[1]),
        .Q(awburst_q[1]),
        .R(1'b0));
  FDRE \awburst_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awburst_q[0]),
        .Q(awburst_qq[0]),
        .R(1'b0));
  FDRE \awburst_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(awburst_q[1]),
        .Q(awburst_qq[1]),
        .R(1'b0));
  FDRE \awcache_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awcache[0]),
        .Q(awcache_q[0]),
        .R(1'b0));
  FDRE \awcache_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awcache[1]),
        .Q(awcache_q[1]),
        .R(1'b0));
  FDRE \awcache_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awcache[2]),
        .Q(awcache_q[2]),
        .R(1'b0));
  FDRE \awcache_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awcache[3]),
        .Q(awcache_q[3]),
        .R(1'b0));
  FDRE \awcache_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awcache_q[0]),
        .Q(awcache_qq[0]),
        .R(1'b0));
  FDRE \awcache_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(awcache_q[1]),
        .Q(awcache_qq[1]),
        .R(1'b0));
  FDRE \awcache_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(awcache_q[2]),
        .Q(awcache_qq[2]),
        .R(1'b0));
  FDRE \awcache_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(awcache_q[3]),
        .Q(awcache_qq[3]),
        .R(1'b0));
  FDRE \awid_index_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awid_index),
        .Q(awid_index_q),
        .R(1'b0));
  FDRE \awid_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awid),
        .Q(awid_q),
        .R(1'b0));
  FDRE \awid_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awid_q),
        .Q(awid_qq),
        .R(1'b0));
  FDRE \awlen_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[0]),
        .Q(awlen_q[0]),
        .R(1'b0));
  FDRE \awlen_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[1]),
        .Q(awlen_q[1]),
        .R(1'b0));
  FDRE \awlen_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[2]),
        .Q(awlen_q[2]),
        .R(1'b0));
  FDRE \awlen_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[3]),
        .Q(awlen_q[3]),
        .R(1'b0));
  FDRE \awlen_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[4]),
        .Q(awlen_q[4]),
        .R(1'b0));
  FDRE \awlen_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[5]),
        .Q(awlen_q[5]),
        .R(1'b0));
  FDRE \awlen_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[6]),
        .Q(awlen_q[6]),
        .R(1'b0));
  FDRE \awlen_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[7]),
        .Q(awlen_q[7]),
        .R(1'b0));
  FDRE \awlen_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awlen_q[0]),
        .Q(awlen_qq[0]),
        .R(1'b0));
  FDRE \awlen_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(awlen_q[1]),
        .Q(awlen_qq[1]),
        .R(1'b0));
  FDRE \awlen_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(awlen_q[2]),
        .Q(awlen_qq[2]),
        .R(1'b0));
  FDRE \awlen_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(awlen_q[3]),
        .Q(awlen_qq[3]),
        .R(1'b0));
  FDRE \awlen_qq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(awlen_q[4]),
        .Q(awlen_qq[4]),
        .R(1'b0));
  FDRE \awlen_qq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(awlen_q[5]),
        .Q(awlen_qq[5]),
        .R(1'b0));
  FDRE \awlen_qq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(awlen_q[6]),
        .Q(awlen_qq[6]),
        .R(1'b0));
  FDRE \awlen_qq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(awlen_q[7]),
        .Q(awlen_qq[7]),
        .R(1'b0));
  FDRE \awprot_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awprot[0]),
        .Q(awprot_q[0]),
        .R(1'b0));
  FDRE \awprot_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awprot[1]),
        .Q(awprot_q[1]),
        .R(1'b0));
  FDRE \awprot_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awprot[2]),
        .Q(awprot_q[2]),
        .R(1'b0));
  FDRE \awprot_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awprot_q[0]),
        .Q(awprot_qq[0]),
        .R(1'b0));
  FDRE \awprot_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(awprot_q[1]),
        .Q(awprot_qq[1]),
        .R(1'b0));
  FDRE \awprot_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(awprot_q[2]),
        .Q(awprot_qq[2]),
        .R(1'b0));
  FDRE \awqos_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awqos[0]),
        .Q(awqos_q[0]),
        .R(1'b0));
  FDRE \awqos_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awqos[1]),
        .Q(awqos_q[1]),
        .R(1'b0));
  FDRE \awqos_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awqos[2]),
        .Q(awqos_q[2]),
        .R(1'b0));
  FDRE \awqos_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awqos[3]),
        .Q(awqos_q[3]),
        .R(1'b0));
  FDRE \awqos_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awqos_q[0]),
        .Q(awqos_qq[0]),
        .R(1'b0));
  FDRE \awqos_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(awqos_q[1]),
        .Q(awqos_qq[1]),
        .R(1'b0));
  FDRE \awqos_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(awqos_q[2]),
        .Q(awqos_qq[2]),
        .R(1'b0));
  FDRE \awqos_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(awqos_q[3]),
        .Q(awqos_qq[3]),
        .R(1'b0));
  FDRE awready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awready),
        .Q(awready_q),
        .R(1'b0));
  FDRE awready_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(awready_q),
        .Q(awready_qq),
        .R(1'b0));
  FDRE \awregion_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awregion[0]),
        .Q(awregion_q[0]),
        .R(1'b0));
  FDRE \awregion_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awregion[1]),
        .Q(awregion_q[1]),
        .R(1'b0));
  FDRE \awregion_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awregion[2]),
        .Q(awregion_q[2]),
        .R(1'b0));
  FDRE \awregion_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awregion[3]),
        .Q(awregion_q[3]),
        .R(1'b0));
  FDRE \awregion_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awregion_q[0]),
        .Q(awregion_qq[0]),
        .R(1'b0));
  FDRE \awregion_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(awregion_q[1]),
        .Q(awregion_qq[1]),
        .R(1'b0));
  FDRE \awregion_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(awregion_q[2]),
        .Q(awregion_qq[2]),
        .R(1'b0));
  FDRE \awregion_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(awregion_q[3]),
        .Q(awregion_qq[3]),
        .R(1'b0));
  FDRE \awsize_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awsize[0]),
        .Q(awsize_q[0]),
        .R(1'b0));
  FDRE \awsize_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awsize[1]),
        .Q(awsize_q[1]),
        .R(1'b0));
  FDRE \awsize_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awsize[2]),
        .Q(awsize_q[2]),
        .R(1'b0));
  FDRE \awsize_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awsize_q[0]),
        .Q(awsize_qq[0]),
        .R(1'b0));
  FDRE \awsize_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(awsize_q[1]),
        .Q(awsize_qq[1]),
        .R(1'b0));
  FDRE \awsize_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(awsize_q[2]),
        .Q(awsize_qq[2]),
        .R(1'b0));
  FDRE \awuser_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awuser),
        .Q(awuser_q),
        .R(1'b0));
  FDRE \awuser_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awuser_q),
        .Q(awuser_qq),
        .R(1'b0));
  FDRE awvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awvalid),
        .Q(awvalid_q),
        .R(1'b0));
  FDRE awvalid_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(awvalid_q),
        .Q(awvalid_qq),
        .R(1'b0));
  FDRE \bid_index_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(bid_index),
        .Q(bid_index_q),
        .R(1'b0));
  FDRE bid_mismatch_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bid_mismatch),
        .Q(bid_mismatch_q),
        .R(1'b0));
  FDRE \bid_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bid),
        .Q(bid_q),
        .R(1'b0));
  FDRE \bid_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(bid_q),
        .Q(bid_qq),
        .R(1'b0));
  FDRE bready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bready),
        .Q(bready_q),
        .R(1'b0));
  FDRE bready_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bready_q),
        .Q(bready_qq),
        .R(1'b0));
  FDRE \bresp_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bresp[0]),
        .Q(bresp_q[0]),
        .R(1'b0));
  FDRE \bresp_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bresp[1]),
        .Q(bresp_q[1]),
        .R(1'b0));
  FDRE \bresp_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(bresp_q[0]),
        .Q(bresp_qq[0]),
        .R(1'b0));
  FDRE \bresp_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(bresp_q[1]),
        .Q(bresp_qq[1]),
        .R(1'b0));
  FDRE \buser_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_buser),
        .Q(buser_q),
        .R(1'b0));
  FDRE \buser_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(buser_q),
        .Q(buser_qq),
        .R(1'b0));
  FDRE bvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bvalid),
        .Q(bvalid_q),
        .R(1'b0));
  FDRE bvalid_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bvalid_q),
        .Q(bvalid_qq),
        .R(1'b0));
  FDRE pc_asserted_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(CORE_n_61),
        .Q(pc_asserted),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_threadcam r_threadcam
       (.SR(thread_cam_reset),
        .SS(\gen_cam.areset_leading ),
        .aclk(aclk),
        .arid_index(arid_index),
        .arid_q(arid_q),
        .arready_q(arready_q),
        .arvalid_q(arvalid_q),
        .\gen_cam.cam_overflow_i (\gen_cam.cam_overflow_i ),
        .resetn_q(resetn_q),
        .rid_index(rid_index),
        .rid_mismatch(rid_mismatch),
        .rid_q(rid_q),
        .rlast_q(rlast_q),
        .rready_q(rready_q),
        .rvalid_q(rvalid_q));
  FDRE rcam_overflow_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_cam.cam_overflow_i ),
        .Q(rcam_overflow_q),
        .R(1'b0));
  FDRE \rdata_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[0]),
        .Q(rdata_q[0]),
        .R(1'b0));
  FDRE \rdata_q_reg[100] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[100]),
        .Q(rdata_q[100]),
        .R(1'b0));
  FDRE \rdata_q_reg[101] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[101]),
        .Q(rdata_q[101]),
        .R(1'b0));
  FDRE \rdata_q_reg[102] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[102]),
        .Q(rdata_q[102]),
        .R(1'b0));
  FDRE \rdata_q_reg[103] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[103]),
        .Q(rdata_q[103]),
        .R(1'b0));
  FDRE \rdata_q_reg[104] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[104]),
        .Q(rdata_q[104]),
        .R(1'b0));
  FDRE \rdata_q_reg[105] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[105]),
        .Q(rdata_q[105]),
        .R(1'b0));
  FDRE \rdata_q_reg[106] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[106]),
        .Q(rdata_q[106]),
        .R(1'b0));
  FDRE \rdata_q_reg[107] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[107]),
        .Q(rdata_q[107]),
        .R(1'b0));
  FDRE \rdata_q_reg[108] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[108]),
        .Q(rdata_q[108]),
        .R(1'b0));
  FDRE \rdata_q_reg[109] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[109]),
        .Q(rdata_q[109]),
        .R(1'b0));
  FDRE \rdata_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[10]),
        .Q(rdata_q[10]),
        .R(1'b0));
  FDRE \rdata_q_reg[110] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[110]),
        .Q(rdata_q[110]),
        .R(1'b0));
  FDRE \rdata_q_reg[111] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[111]),
        .Q(rdata_q[111]),
        .R(1'b0));
  FDRE \rdata_q_reg[112] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[112]),
        .Q(rdata_q[112]),
        .R(1'b0));
  FDRE \rdata_q_reg[113] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[113]),
        .Q(rdata_q[113]),
        .R(1'b0));
  FDRE \rdata_q_reg[114] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[114]),
        .Q(rdata_q[114]),
        .R(1'b0));
  FDRE \rdata_q_reg[115] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[115]),
        .Q(rdata_q[115]),
        .R(1'b0));
  FDRE \rdata_q_reg[116] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[116]),
        .Q(rdata_q[116]),
        .R(1'b0));
  FDRE \rdata_q_reg[117] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[117]),
        .Q(rdata_q[117]),
        .R(1'b0));
  FDRE \rdata_q_reg[118] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[118]),
        .Q(rdata_q[118]),
        .R(1'b0));
  FDRE \rdata_q_reg[119] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[119]),
        .Q(rdata_q[119]),
        .R(1'b0));
  FDRE \rdata_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[11]),
        .Q(rdata_q[11]),
        .R(1'b0));
  FDRE \rdata_q_reg[120] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[120]),
        .Q(rdata_q[120]),
        .R(1'b0));
  FDRE \rdata_q_reg[121] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[121]),
        .Q(rdata_q[121]),
        .R(1'b0));
  FDRE \rdata_q_reg[122] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[122]),
        .Q(rdata_q[122]),
        .R(1'b0));
  FDRE \rdata_q_reg[123] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[123]),
        .Q(rdata_q[123]),
        .R(1'b0));
  FDRE \rdata_q_reg[124] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[124]),
        .Q(rdata_q[124]),
        .R(1'b0));
  FDRE \rdata_q_reg[125] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[125]),
        .Q(rdata_q[125]),
        .R(1'b0));
  FDRE \rdata_q_reg[126] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[126]),
        .Q(rdata_q[126]),
        .R(1'b0));
  FDRE \rdata_q_reg[127] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[127]),
        .Q(rdata_q[127]),
        .R(1'b0));
  FDRE \rdata_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[12]),
        .Q(rdata_q[12]),
        .R(1'b0));
  FDRE \rdata_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[13]),
        .Q(rdata_q[13]),
        .R(1'b0));
  FDRE \rdata_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[14]),
        .Q(rdata_q[14]),
        .R(1'b0));
  FDRE \rdata_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[15]),
        .Q(rdata_q[15]),
        .R(1'b0));
  FDRE \rdata_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[16]),
        .Q(rdata_q[16]),
        .R(1'b0));
  FDRE \rdata_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[17]),
        .Q(rdata_q[17]),
        .R(1'b0));
  FDRE \rdata_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[18]),
        .Q(rdata_q[18]),
        .R(1'b0));
  FDRE \rdata_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[19]),
        .Q(rdata_q[19]),
        .R(1'b0));
  FDRE \rdata_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[1]),
        .Q(rdata_q[1]),
        .R(1'b0));
  FDRE \rdata_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[20]),
        .Q(rdata_q[20]),
        .R(1'b0));
  FDRE \rdata_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[21]),
        .Q(rdata_q[21]),
        .R(1'b0));
  FDRE \rdata_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[22]),
        .Q(rdata_q[22]),
        .R(1'b0));
  FDRE \rdata_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[23]),
        .Q(rdata_q[23]),
        .R(1'b0));
  FDRE \rdata_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[24]),
        .Q(rdata_q[24]),
        .R(1'b0));
  FDRE \rdata_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[25]),
        .Q(rdata_q[25]),
        .R(1'b0));
  FDRE \rdata_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[26]),
        .Q(rdata_q[26]),
        .R(1'b0));
  FDRE \rdata_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[27]),
        .Q(rdata_q[27]),
        .R(1'b0));
  FDRE \rdata_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[28]),
        .Q(rdata_q[28]),
        .R(1'b0));
  FDRE \rdata_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[29]),
        .Q(rdata_q[29]),
        .R(1'b0));
  FDRE \rdata_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[2]),
        .Q(rdata_q[2]),
        .R(1'b0));
  FDRE \rdata_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[30]),
        .Q(rdata_q[30]),
        .R(1'b0));
  FDRE \rdata_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[31]),
        .Q(rdata_q[31]),
        .R(1'b0));
  FDRE \rdata_q_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[32]),
        .Q(rdata_q[32]),
        .R(1'b0));
  FDRE \rdata_q_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[33]),
        .Q(rdata_q[33]),
        .R(1'b0));
  FDRE \rdata_q_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[34]),
        .Q(rdata_q[34]),
        .R(1'b0));
  FDRE \rdata_q_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[35]),
        .Q(rdata_q[35]),
        .R(1'b0));
  FDRE \rdata_q_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[36]),
        .Q(rdata_q[36]),
        .R(1'b0));
  FDRE \rdata_q_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[37]),
        .Q(rdata_q[37]),
        .R(1'b0));
  FDRE \rdata_q_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[38]),
        .Q(rdata_q[38]),
        .R(1'b0));
  FDRE \rdata_q_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[39]),
        .Q(rdata_q[39]),
        .R(1'b0));
  FDRE \rdata_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[3]),
        .Q(rdata_q[3]),
        .R(1'b0));
  FDRE \rdata_q_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[40]),
        .Q(rdata_q[40]),
        .R(1'b0));
  FDRE \rdata_q_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[41]),
        .Q(rdata_q[41]),
        .R(1'b0));
  FDRE \rdata_q_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[42]),
        .Q(rdata_q[42]),
        .R(1'b0));
  FDRE \rdata_q_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[43]),
        .Q(rdata_q[43]),
        .R(1'b0));
  FDRE \rdata_q_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[44]),
        .Q(rdata_q[44]),
        .R(1'b0));
  FDRE \rdata_q_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[45]),
        .Q(rdata_q[45]),
        .R(1'b0));
  FDRE \rdata_q_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[46]),
        .Q(rdata_q[46]),
        .R(1'b0));
  FDRE \rdata_q_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[47]),
        .Q(rdata_q[47]),
        .R(1'b0));
  FDRE \rdata_q_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[48]),
        .Q(rdata_q[48]),
        .R(1'b0));
  FDRE \rdata_q_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[49]),
        .Q(rdata_q[49]),
        .R(1'b0));
  FDRE \rdata_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[4]),
        .Q(rdata_q[4]),
        .R(1'b0));
  FDRE \rdata_q_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[50]),
        .Q(rdata_q[50]),
        .R(1'b0));
  FDRE \rdata_q_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[51]),
        .Q(rdata_q[51]),
        .R(1'b0));
  FDRE \rdata_q_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[52]),
        .Q(rdata_q[52]),
        .R(1'b0));
  FDRE \rdata_q_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[53]),
        .Q(rdata_q[53]),
        .R(1'b0));
  FDRE \rdata_q_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[54]),
        .Q(rdata_q[54]),
        .R(1'b0));
  FDRE \rdata_q_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[55]),
        .Q(rdata_q[55]),
        .R(1'b0));
  FDRE \rdata_q_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[56]),
        .Q(rdata_q[56]),
        .R(1'b0));
  FDRE \rdata_q_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[57]),
        .Q(rdata_q[57]),
        .R(1'b0));
  FDRE \rdata_q_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[58]),
        .Q(rdata_q[58]),
        .R(1'b0));
  FDRE \rdata_q_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[59]),
        .Q(rdata_q[59]),
        .R(1'b0));
  FDRE \rdata_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[5]),
        .Q(rdata_q[5]),
        .R(1'b0));
  FDRE \rdata_q_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[60]),
        .Q(rdata_q[60]),
        .R(1'b0));
  FDRE \rdata_q_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[61]),
        .Q(rdata_q[61]),
        .R(1'b0));
  FDRE \rdata_q_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[62]),
        .Q(rdata_q[62]),
        .R(1'b0));
  FDRE \rdata_q_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[63]),
        .Q(rdata_q[63]),
        .R(1'b0));
  FDRE \rdata_q_reg[64] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[64]),
        .Q(rdata_q[64]),
        .R(1'b0));
  FDRE \rdata_q_reg[65] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[65]),
        .Q(rdata_q[65]),
        .R(1'b0));
  FDRE \rdata_q_reg[66] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[66]),
        .Q(rdata_q[66]),
        .R(1'b0));
  FDRE \rdata_q_reg[67] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[67]),
        .Q(rdata_q[67]),
        .R(1'b0));
  FDRE \rdata_q_reg[68] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[68]),
        .Q(rdata_q[68]),
        .R(1'b0));
  FDRE \rdata_q_reg[69] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[69]),
        .Q(rdata_q[69]),
        .R(1'b0));
  FDRE \rdata_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[6]),
        .Q(rdata_q[6]),
        .R(1'b0));
  FDRE \rdata_q_reg[70] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[70]),
        .Q(rdata_q[70]),
        .R(1'b0));
  FDRE \rdata_q_reg[71] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[71]),
        .Q(rdata_q[71]),
        .R(1'b0));
  FDRE \rdata_q_reg[72] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[72]),
        .Q(rdata_q[72]),
        .R(1'b0));
  FDRE \rdata_q_reg[73] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[73]),
        .Q(rdata_q[73]),
        .R(1'b0));
  FDRE \rdata_q_reg[74] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[74]),
        .Q(rdata_q[74]),
        .R(1'b0));
  FDRE \rdata_q_reg[75] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[75]),
        .Q(rdata_q[75]),
        .R(1'b0));
  FDRE \rdata_q_reg[76] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[76]),
        .Q(rdata_q[76]),
        .R(1'b0));
  FDRE \rdata_q_reg[77] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[77]),
        .Q(rdata_q[77]),
        .R(1'b0));
  FDRE \rdata_q_reg[78] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[78]),
        .Q(rdata_q[78]),
        .R(1'b0));
  FDRE \rdata_q_reg[79] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[79]),
        .Q(rdata_q[79]),
        .R(1'b0));
  FDRE \rdata_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[7]),
        .Q(rdata_q[7]),
        .R(1'b0));
  FDRE \rdata_q_reg[80] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[80]),
        .Q(rdata_q[80]),
        .R(1'b0));
  FDRE \rdata_q_reg[81] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[81]),
        .Q(rdata_q[81]),
        .R(1'b0));
  FDRE \rdata_q_reg[82] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[82]),
        .Q(rdata_q[82]),
        .R(1'b0));
  FDRE \rdata_q_reg[83] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[83]),
        .Q(rdata_q[83]),
        .R(1'b0));
  FDRE \rdata_q_reg[84] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[84]),
        .Q(rdata_q[84]),
        .R(1'b0));
  FDRE \rdata_q_reg[85] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[85]),
        .Q(rdata_q[85]),
        .R(1'b0));
  FDRE \rdata_q_reg[86] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[86]),
        .Q(rdata_q[86]),
        .R(1'b0));
  FDRE \rdata_q_reg[87] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[87]),
        .Q(rdata_q[87]),
        .R(1'b0));
  FDRE \rdata_q_reg[88] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[88]),
        .Q(rdata_q[88]),
        .R(1'b0));
  FDRE \rdata_q_reg[89] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[89]),
        .Q(rdata_q[89]),
        .R(1'b0));
  FDRE \rdata_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[8]),
        .Q(rdata_q[8]),
        .R(1'b0));
  FDRE \rdata_q_reg[90] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[90]),
        .Q(rdata_q[90]),
        .R(1'b0));
  FDRE \rdata_q_reg[91] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[91]),
        .Q(rdata_q[91]),
        .R(1'b0));
  FDRE \rdata_q_reg[92] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[92]),
        .Q(rdata_q[92]),
        .R(1'b0));
  FDRE \rdata_q_reg[93] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[93]),
        .Q(rdata_q[93]),
        .R(1'b0));
  FDRE \rdata_q_reg[94] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[94]),
        .Q(rdata_q[94]),
        .R(1'b0));
  FDRE \rdata_q_reg[95] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[95]),
        .Q(rdata_q[95]),
        .R(1'b0));
  FDRE \rdata_q_reg[96] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[96]),
        .Q(rdata_q[96]),
        .R(1'b0));
  FDRE \rdata_q_reg[97] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[97]),
        .Q(rdata_q[97]),
        .R(1'b0));
  FDRE \rdata_q_reg[98] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[98]),
        .Q(rdata_q[98]),
        .R(1'b0));
  FDRE \rdata_q_reg[99] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[99]),
        .Q(rdata_q[99]),
        .R(1'b0));
  FDRE \rdata_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[9]),
        .Q(rdata_q[9]),
        .R(1'b0));
  FDRE \rdata_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[0]),
        .Q(rdata_qq[0]),
        .R(1'b0));
  FDRE \rdata_qq_reg[100] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[100]),
        .Q(rdata_qq[100]),
        .R(1'b0));
  FDRE \rdata_qq_reg[101] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[101]),
        .Q(rdata_qq[101]),
        .R(1'b0));
  FDRE \rdata_qq_reg[102] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[102]),
        .Q(rdata_qq[102]),
        .R(1'b0));
  FDRE \rdata_qq_reg[103] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[103]),
        .Q(rdata_qq[103]),
        .R(1'b0));
  FDRE \rdata_qq_reg[104] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[104]),
        .Q(rdata_qq[104]),
        .R(1'b0));
  FDRE \rdata_qq_reg[105] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[105]),
        .Q(rdata_qq[105]),
        .R(1'b0));
  FDRE \rdata_qq_reg[106] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[106]),
        .Q(rdata_qq[106]),
        .R(1'b0));
  FDRE \rdata_qq_reg[107] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[107]),
        .Q(rdata_qq[107]),
        .R(1'b0));
  FDRE \rdata_qq_reg[108] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[108]),
        .Q(rdata_qq[108]),
        .R(1'b0));
  FDRE \rdata_qq_reg[109] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[109]),
        .Q(rdata_qq[109]),
        .R(1'b0));
  FDRE \rdata_qq_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[10]),
        .Q(rdata_qq[10]),
        .R(1'b0));
  FDRE \rdata_qq_reg[110] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[110]),
        .Q(rdata_qq[110]),
        .R(1'b0));
  FDRE \rdata_qq_reg[111] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[111]),
        .Q(rdata_qq[111]),
        .R(1'b0));
  FDRE \rdata_qq_reg[112] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[112]),
        .Q(rdata_qq[112]),
        .R(1'b0));
  FDRE \rdata_qq_reg[113] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[113]),
        .Q(rdata_qq[113]),
        .R(1'b0));
  FDRE \rdata_qq_reg[114] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[114]),
        .Q(rdata_qq[114]),
        .R(1'b0));
  FDRE \rdata_qq_reg[115] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[115]),
        .Q(rdata_qq[115]),
        .R(1'b0));
  FDRE \rdata_qq_reg[116] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[116]),
        .Q(rdata_qq[116]),
        .R(1'b0));
  FDRE \rdata_qq_reg[117] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[117]),
        .Q(rdata_qq[117]),
        .R(1'b0));
  FDRE \rdata_qq_reg[118] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[118]),
        .Q(rdata_qq[118]),
        .R(1'b0));
  FDRE \rdata_qq_reg[119] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[119]),
        .Q(rdata_qq[119]),
        .R(1'b0));
  FDRE \rdata_qq_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[11]),
        .Q(rdata_qq[11]),
        .R(1'b0));
  FDRE \rdata_qq_reg[120] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[120]),
        .Q(rdata_qq[120]),
        .R(1'b0));
  FDRE \rdata_qq_reg[121] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[121]),
        .Q(rdata_qq[121]),
        .R(1'b0));
  FDRE \rdata_qq_reg[122] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[122]),
        .Q(rdata_qq[122]),
        .R(1'b0));
  FDRE \rdata_qq_reg[123] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[123]),
        .Q(rdata_qq[123]),
        .R(1'b0));
  FDRE \rdata_qq_reg[124] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[124]),
        .Q(rdata_qq[124]),
        .R(1'b0));
  FDRE \rdata_qq_reg[125] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[125]),
        .Q(rdata_qq[125]),
        .R(1'b0));
  FDRE \rdata_qq_reg[126] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[126]),
        .Q(rdata_qq[126]),
        .R(1'b0));
  FDRE \rdata_qq_reg[127] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[127]),
        .Q(rdata_qq[127]),
        .R(1'b0));
  FDRE \rdata_qq_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[12]),
        .Q(rdata_qq[12]),
        .R(1'b0));
  FDRE \rdata_qq_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[13]),
        .Q(rdata_qq[13]),
        .R(1'b0));
  FDRE \rdata_qq_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[14]),
        .Q(rdata_qq[14]),
        .R(1'b0));
  FDRE \rdata_qq_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[15]),
        .Q(rdata_qq[15]),
        .R(1'b0));
  FDRE \rdata_qq_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[16]),
        .Q(rdata_qq[16]),
        .R(1'b0));
  FDRE \rdata_qq_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[17]),
        .Q(rdata_qq[17]),
        .R(1'b0));
  FDRE \rdata_qq_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[18]),
        .Q(rdata_qq[18]),
        .R(1'b0));
  FDRE \rdata_qq_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[19]),
        .Q(rdata_qq[19]),
        .R(1'b0));
  FDRE \rdata_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[1]),
        .Q(rdata_qq[1]),
        .R(1'b0));
  FDRE \rdata_qq_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[20]),
        .Q(rdata_qq[20]),
        .R(1'b0));
  FDRE \rdata_qq_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[21]),
        .Q(rdata_qq[21]),
        .R(1'b0));
  FDRE \rdata_qq_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[22]),
        .Q(rdata_qq[22]),
        .R(1'b0));
  FDRE \rdata_qq_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[23]),
        .Q(rdata_qq[23]),
        .R(1'b0));
  FDRE \rdata_qq_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[24]),
        .Q(rdata_qq[24]),
        .R(1'b0));
  FDRE \rdata_qq_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[25]),
        .Q(rdata_qq[25]),
        .R(1'b0));
  FDRE \rdata_qq_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[26]),
        .Q(rdata_qq[26]),
        .R(1'b0));
  FDRE \rdata_qq_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[27]),
        .Q(rdata_qq[27]),
        .R(1'b0));
  FDRE \rdata_qq_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[28]),
        .Q(rdata_qq[28]),
        .R(1'b0));
  FDRE \rdata_qq_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[29]),
        .Q(rdata_qq[29]),
        .R(1'b0));
  FDRE \rdata_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[2]),
        .Q(rdata_qq[2]),
        .R(1'b0));
  FDRE \rdata_qq_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[30]),
        .Q(rdata_qq[30]),
        .R(1'b0));
  FDRE \rdata_qq_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[31]),
        .Q(rdata_qq[31]),
        .R(1'b0));
  FDRE \rdata_qq_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[32]),
        .Q(rdata_qq[32]),
        .R(1'b0));
  FDRE \rdata_qq_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[33]),
        .Q(rdata_qq[33]),
        .R(1'b0));
  FDRE \rdata_qq_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[34]),
        .Q(rdata_qq[34]),
        .R(1'b0));
  FDRE \rdata_qq_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[35]),
        .Q(rdata_qq[35]),
        .R(1'b0));
  FDRE \rdata_qq_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[36]),
        .Q(rdata_qq[36]),
        .R(1'b0));
  FDRE \rdata_qq_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[37]),
        .Q(rdata_qq[37]),
        .R(1'b0));
  FDRE \rdata_qq_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[38]),
        .Q(rdata_qq[38]),
        .R(1'b0));
  FDRE \rdata_qq_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[39]),
        .Q(rdata_qq[39]),
        .R(1'b0));
  FDRE \rdata_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[3]),
        .Q(rdata_qq[3]),
        .R(1'b0));
  FDRE \rdata_qq_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[40]),
        .Q(rdata_qq[40]),
        .R(1'b0));
  FDRE \rdata_qq_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[41]),
        .Q(rdata_qq[41]),
        .R(1'b0));
  FDRE \rdata_qq_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[42]),
        .Q(rdata_qq[42]),
        .R(1'b0));
  FDRE \rdata_qq_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[43]),
        .Q(rdata_qq[43]),
        .R(1'b0));
  FDRE \rdata_qq_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[44]),
        .Q(rdata_qq[44]),
        .R(1'b0));
  FDRE \rdata_qq_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[45]),
        .Q(rdata_qq[45]),
        .R(1'b0));
  FDRE \rdata_qq_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[46]),
        .Q(rdata_qq[46]),
        .R(1'b0));
  FDRE \rdata_qq_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[47]),
        .Q(rdata_qq[47]),
        .R(1'b0));
  FDRE \rdata_qq_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[48]),
        .Q(rdata_qq[48]),
        .R(1'b0));
  FDRE \rdata_qq_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[49]),
        .Q(rdata_qq[49]),
        .R(1'b0));
  FDRE \rdata_qq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[4]),
        .Q(rdata_qq[4]),
        .R(1'b0));
  FDRE \rdata_qq_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[50]),
        .Q(rdata_qq[50]),
        .R(1'b0));
  FDRE \rdata_qq_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[51]),
        .Q(rdata_qq[51]),
        .R(1'b0));
  FDRE \rdata_qq_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[52]),
        .Q(rdata_qq[52]),
        .R(1'b0));
  FDRE \rdata_qq_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[53]),
        .Q(rdata_qq[53]),
        .R(1'b0));
  FDRE \rdata_qq_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[54]),
        .Q(rdata_qq[54]),
        .R(1'b0));
  FDRE \rdata_qq_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[55]),
        .Q(rdata_qq[55]),
        .R(1'b0));
  FDRE \rdata_qq_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[56]),
        .Q(rdata_qq[56]),
        .R(1'b0));
  FDRE \rdata_qq_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[57]),
        .Q(rdata_qq[57]),
        .R(1'b0));
  FDRE \rdata_qq_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[58]),
        .Q(rdata_qq[58]),
        .R(1'b0));
  FDRE \rdata_qq_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[59]),
        .Q(rdata_qq[59]),
        .R(1'b0));
  FDRE \rdata_qq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[5]),
        .Q(rdata_qq[5]),
        .R(1'b0));
  FDRE \rdata_qq_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[60]),
        .Q(rdata_qq[60]),
        .R(1'b0));
  FDRE \rdata_qq_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[61]),
        .Q(rdata_qq[61]),
        .R(1'b0));
  FDRE \rdata_qq_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[62]),
        .Q(rdata_qq[62]),
        .R(1'b0));
  FDRE \rdata_qq_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[63]),
        .Q(rdata_qq[63]),
        .R(1'b0));
  FDRE \rdata_qq_reg[64] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[64]),
        .Q(rdata_qq[64]),
        .R(1'b0));
  FDRE \rdata_qq_reg[65] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[65]),
        .Q(rdata_qq[65]),
        .R(1'b0));
  FDRE \rdata_qq_reg[66] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[66]),
        .Q(rdata_qq[66]),
        .R(1'b0));
  FDRE \rdata_qq_reg[67] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[67]),
        .Q(rdata_qq[67]),
        .R(1'b0));
  FDRE \rdata_qq_reg[68] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[68]),
        .Q(rdata_qq[68]),
        .R(1'b0));
  FDRE \rdata_qq_reg[69] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[69]),
        .Q(rdata_qq[69]),
        .R(1'b0));
  FDRE \rdata_qq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[6]),
        .Q(rdata_qq[6]),
        .R(1'b0));
  FDRE \rdata_qq_reg[70] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[70]),
        .Q(rdata_qq[70]),
        .R(1'b0));
  FDRE \rdata_qq_reg[71] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[71]),
        .Q(rdata_qq[71]),
        .R(1'b0));
  FDRE \rdata_qq_reg[72] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[72]),
        .Q(rdata_qq[72]),
        .R(1'b0));
  FDRE \rdata_qq_reg[73] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[73]),
        .Q(rdata_qq[73]),
        .R(1'b0));
  FDRE \rdata_qq_reg[74] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[74]),
        .Q(rdata_qq[74]),
        .R(1'b0));
  FDRE \rdata_qq_reg[75] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[75]),
        .Q(rdata_qq[75]),
        .R(1'b0));
  FDRE \rdata_qq_reg[76] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[76]),
        .Q(rdata_qq[76]),
        .R(1'b0));
  FDRE \rdata_qq_reg[77] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[77]),
        .Q(rdata_qq[77]),
        .R(1'b0));
  FDRE \rdata_qq_reg[78] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[78]),
        .Q(rdata_qq[78]),
        .R(1'b0));
  FDRE \rdata_qq_reg[79] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[79]),
        .Q(rdata_qq[79]),
        .R(1'b0));
  FDRE \rdata_qq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[7]),
        .Q(rdata_qq[7]),
        .R(1'b0));
  FDRE \rdata_qq_reg[80] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[80]),
        .Q(rdata_qq[80]),
        .R(1'b0));
  FDRE \rdata_qq_reg[81] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[81]),
        .Q(rdata_qq[81]),
        .R(1'b0));
  FDRE \rdata_qq_reg[82] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[82]),
        .Q(rdata_qq[82]),
        .R(1'b0));
  FDRE \rdata_qq_reg[83] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[83]),
        .Q(rdata_qq[83]),
        .R(1'b0));
  FDRE \rdata_qq_reg[84] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[84]),
        .Q(rdata_qq[84]),
        .R(1'b0));
  FDRE \rdata_qq_reg[85] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[85]),
        .Q(rdata_qq[85]),
        .R(1'b0));
  FDRE \rdata_qq_reg[86] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[86]),
        .Q(rdata_qq[86]),
        .R(1'b0));
  FDRE \rdata_qq_reg[87] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[87]),
        .Q(rdata_qq[87]),
        .R(1'b0));
  FDRE \rdata_qq_reg[88] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[88]),
        .Q(rdata_qq[88]),
        .R(1'b0));
  FDRE \rdata_qq_reg[89] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[89]),
        .Q(rdata_qq[89]),
        .R(1'b0));
  FDRE \rdata_qq_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[8]),
        .Q(rdata_qq[8]),
        .R(1'b0));
  FDRE \rdata_qq_reg[90] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[90]),
        .Q(rdata_qq[90]),
        .R(1'b0));
  FDRE \rdata_qq_reg[91] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[91]),
        .Q(rdata_qq[91]),
        .R(1'b0));
  FDRE \rdata_qq_reg[92] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[92]),
        .Q(rdata_qq[92]),
        .R(1'b0));
  FDRE \rdata_qq_reg[93] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[93]),
        .Q(rdata_qq[93]),
        .R(1'b0));
  FDRE \rdata_qq_reg[94] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[94]),
        .Q(rdata_qq[94]),
        .R(1'b0));
  FDRE \rdata_qq_reg[95] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[95]),
        .Q(rdata_qq[95]),
        .R(1'b0));
  FDRE \rdata_qq_reg[96] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[96]),
        .Q(rdata_qq[96]),
        .R(1'b0));
  FDRE \rdata_qq_reg[97] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[97]),
        .Q(rdata_qq[97]),
        .R(1'b0));
  FDRE \rdata_qq_reg[98] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[98]),
        .Q(rdata_qq[98]),
        .R(1'b0));
  FDRE \rdata_qq_reg[99] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[99]),
        .Q(rdata_qq[99]),
        .R(1'b0));
  FDRE \rdata_qq_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(rdata_q[9]),
        .Q(rdata_qq[9]),
        .R(1'b0));
  FDRE resetn_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(resetn_q),
        .R(1'b0));
  FDRE resetn_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(resetn_q),
        .Q(resetn_qq),
        .R(1'b0));
  FDRE \rid_index_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(rid_index),
        .Q(rid_index_q),
        .R(1'b0));
  FDRE rid_mismatch_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rid_mismatch),
        .Q(rid_mismatch_q),
        .R(1'b0));
  FDRE \rid_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rid),
        .Q(rid_q),
        .R(1'b0));
  FDRE \rid_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(rid_q),
        .Q(rid_qq),
        .R(1'b0));
  FDRE rlast_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rlast),
        .Q(rlast_q),
        .R(1'b0));
  FDRE rlast_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rlast_q),
        .Q(rlast_qq),
        .R(1'b0));
  FDRE rready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rready),
        .Q(rready_q),
        .R(1'b0));
  FDRE rready_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rready_q),
        .Q(rready_qq),
        .R(1'b0));
  FDRE \rresp_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rresp[0]),
        .Q(rresp_q[0]),
        .R(1'b0));
  FDRE \rresp_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rresp[1]),
        .Q(rresp_q[1]),
        .R(1'b0));
  FDRE \rresp_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(rresp_q[0]),
        .Q(rresp_qq[0]),
        .R(1'b0));
  FDRE \rresp_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(rresp_q[1]),
        .Q(rresp_qq[1]),
        .R(1'b0));
  FDRE \ruser_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_ruser),
        .Q(ruser_q),
        .R(1'b0));
  FDRE \ruser_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(ruser_q),
        .Q(ruser_qq),
        .R(1'b0));
  FDRE rvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rvalid),
        .Q(rvalid_q),
        .R(1'b0));
  FDRE rvalid_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rvalid_q),
        .Q(rvalid_qq),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_threadcam_0 w_threadcam
       (.SR(thread_cam_reset),
        .SS(\gen_cam.areset_leading ),
        .aclk(aclk),
        .awid_index(awid_index),
        .awid_q(awid_q),
        .awready_q(awready_q),
        .awvalid_q(awvalid_q),
        .bid_index(bid_index),
        .bid_mismatch(bid_mismatch),
        .bid_q(bid_q),
        .bready_q(bready_q),
        .bvalid_q(bvalid_q),
        .resetn_q(resetn_q),
        .wcam_overflow_q_reg(w_threadcam_n_0));
  FDRE wcam_overflow_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(w_threadcam_n_0),
        .Q(wcam_overflow_q),
        .R(1'b0));
  FDRE \wdata_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[0]),
        .Q(wdata_q[0]),
        .R(1'b0));
  FDRE \wdata_q_reg[100] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[100]),
        .Q(wdata_q[100]),
        .R(1'b0));
  FDRE \wdata_q_reg[101] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[101]),
        .Q(wdata_q[101]),
        .R(1'b0));
  FDRE \wdata_q_reg[102] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[102]),
        .Q(wdata_q[102]),
        .R(1'b0));
  FDRE \wdata_q_reg[103] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[103]),
        .Q(wdata_q[103]),
        .R(1'b0));
  FDRE \wdata_q_reg[104] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[104]),
        .Q(wdata_q[104]),
        .R(1'b0));
  FDRE \wdata_q_reg[105] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[105]),
        .Q(wdata_q[105]),
        .R(1'b0));
  FDRE \wdata_q_reg[106] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[106]),
        .Q(wdata_q[106]),
        .R(1'b0));
  FDRE \wdata_q_reg[107] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[107]),
        .Q(wdata_q[107]),
        .R(1'b0));
  FDRE \wdata_q_reg[108] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[108]),
        .Q(wdata_q[108]),
        .R(1'b0));
  FDRE \wdata_q_reg[109] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[109]),
        .Q(wdata_q[109]),
        .R(1'b0));
  FDRE \wdata_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[10]),
        .Q(wdata_q[10]),
        .R(1'b0));
  FDRE \wdata_q_reg[110] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[110]),
        .Q(wdata_q[110]),
        .R(1'b0));
  FDRE \wdata_q_reg[111] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[111]),
        .Q(wdata_q[111]),
        .R(1'b0));
  FDRE \wdata_q_reg[112] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[112]),
        .Q(wdata_q[112]),
        .R(1'b0));
  FDRE \wdata_q_reg[113] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[113]),
        .Q(wdata_q[113]),
        .R(1'b0));
  FDRE \wdata_q_reg[114] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[114]),
        .Q(wdata_q[114]),
        .R(1'b0));
  FDRE \wdata_q_reg[115] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[115]),
        .Q(wdata_q[115]),
        .R(1'b0));
  FDRE \wdata_q_reg[116] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[116]),
        .Q(wdata_q[116]),
        .R(1'b0));
  FDRE \wdata_q_reg[117] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[117]),
        .Q(wdata_q[117]),
        .R(1'b0));
  FDRE \wdata_q_reg[118] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[118]),
        .Q(wdata_q[118]),
        .R(1'b0));
  FDRE \wdata_q_reg[119] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[119]),
        .Q(wdata_q[119]),
        .R(1'b0));
  FDRE \wdata_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[11]),
        .Q(wdata_q[11]),
        .R(1'b0));
  FDRE \wdata_q_reg[120] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[120]),
        .Q(wdata_q[120]),
        .R(1'b0));
  FDRE \wdata_q_reg[121] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[121]),
        .Q(wdata_q[121]),
        .R(1'b0));
  FDRE \wdata_q_reg[122] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[122]),
        .Q(wdata_q[122]),
        .R(1'b0));
  FDRE \wdata_q_reg[123] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[123]),
        .Q(wdata_q[123]),
        .R(1'b0));
  FDRE \wdata_q_reg[124] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[124]),
        .Q(wdata_q[124]),
        .R(1'b0));
  FDRE \wdata_q_reg[125] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[125]),
        .Q(wdata_q[125]),
        .R(1'b0));
  FDRE \wdata_q_reg[126] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[126]),
        .Q(wdata_q[126]),
        .R(1'b0));
  FDRE \wdata_q_reg[127] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[127]),
        .Q(wdata_q[127]),
        .R(1'b0));
  FDRE \wdata_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[12]),
        .Q(wdata_q[12]),
        .R(1'b0));
  FDRE \wdata_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[13]),
        .Q(wdata_q[13]),
        .R(1'b0));
  FDRE \wdata_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[14]),
        .Q(wdata_q[14]),
        .R(1'b0));
  FDRE \wdata_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[15]),
        .Q(wdata_q[15]),
        .R(1'b0));
  FDRE \wdata_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[16]),
        .Q(wdata_q[16]),
        .R(1'b0));
  FDRE \wdata_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[17]),
        .Q(wdata_q[17]),
        .R(1'b0));
  FDRE \wdata_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[18]),
        .Q(wdata_q[18]),
        .R(1'b0));
  FDRE \wdata_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[19]),
        .Q(wdata_q[19]),
        .R(1'b0));
  FDRE \wdata_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[1]),
        .Q(wdata_q[1]),
        .R(1'b0));
  FDRE \wdata_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[20]),
        .Q(wdata_q[20]),
        .R(1'b0));
  FDRE \wdata_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[21]),
        .Q(wdata_q[21]),
        .R(1'b0));
  FDRE \wdata_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[22]),
        .Q(wdata_q[22]),
        .R(1'b0));
  FDRE \wdata_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[23]),
        .Q(wdata_q[23]),
        .R(1'b0));
  FDRE \wdata_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[24]),
        .Q(wdata_q[24]),
        .R(1'b0));
  FDRE \wdata_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[25]),
        .Q(wdata_q[25]),
        .R(1'b0));
  FDRE \wdata_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[26]),
        .Q(wdata_q[26]),
        .R(1'b0));
  FDRE \wdata_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[27]),
        .Q(wdata_q[27]),
        .R(1'b0));
  FDRE \wdata_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[28]),
        .Q(wdata_q[28]),
        .R(1'b0));
  FDRE \wdata_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[29]),
        .Q(wdata_q[29]),
        .R(1'b0));
  FDRE \wdata_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[2]),
        .Q(wdata_q[2]),
        .R(1'b0));
  FDRE \wdata_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[30]),
        .Q(wdata_q[30]),
        .R(1'b0));
  FDRE \wdata_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[31]),
        .Q(wdata_q[31]),
        .R(1'b0));
  FDRE \wdata_q_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[32]),
        .Q(wdata_q[32]),
        .R(1'b0));
  FDRE \wdata_q_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[33]),
        .Q(wdata_q[33]),
        .R(1'b0));
  FDRE \wdata_q_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[34]),
        .Q(wdata_q[34]),
        .R(1'b0));
  FDRE \wdata_q_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[35]),
        .Q(wdata_q[35]),
        .R(1'b0));
  FDRE \wdata_q_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[36]),
        .Q(wdata_q[36]),
        .R(1'b0));
  FDRE \wdata_q_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[37]),
        .Q(wdata_q[37]),
        .R(1'b0));
  FDRE \wdata_q_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[38]),
        .Q(wdata_q[38]),
        .R(1'b0));
  FDRE \wdata_q_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[39]),
        .Q(wdata_q[39]),
        .R(1'b0));
  FDRE \wdata_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[3]),
        .Q(wdata_q[3]),
        .R(1'b0));
  FDRE \wdata_q_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[40]),
        .Q(wdata_q[40]),
        .R(1'b0));
  FDRE \wdata_q_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[41]),
        .Q(wdata_q[41]),
        .R(1'b0));
  FDRE \wdata_q_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[42]),
        .Q(wdata_q[42]),
        .R(1'b0));
  FDRE \wdata_q_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[43]),
        .Q(wdata_q[43]),
        .R(1'b0));
  FDRE \wdata_q_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[44]),
        .Q(wdata_q[44]),
        .R(1'b0));
  FDRE \wdata_q_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[45]),
        .Q(wdata_q[45]),
        .R(1'b0));
  FDRE \wdata_q_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[46]),
        .Q(wdata_q[46]),
        .R(1'b0));
  FDRE \wdata_q_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[47]),
        .Q(wdata_q[47]),
        .R(1'b0));
  FDRE \wdata_q_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[48]),
        .Q(wdata_q[48]),
        .R(1'b0));
  FDRE \wdata_q_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[49]),
        .Q(wdata_q[49]),
        .R(1'b0));
  FDRE \wdata_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[4]),
        .Q(wdata_q[4]),
        .R(1'b0));
  FDRE \wdata_q_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[50]),
        .Q(wdata_q[50]),
        .R(1'b0));
  FDRE \wdata_q_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[51]),
        .Q(wdata_q[51]),
        .R(1'b0));
  FDRE \wdata_q_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[52]),
        .Q(wdata_q[52]),
        .R(1'b0));
  FDRE \wdata_q_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[53]),
        .Q(wdata_q[53]),
        .R(1'b0));
  FDRE \wdata_q_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[54]),
        .Q(wdata_q[54]),
        .R(1'b0));
  FDRE \wdata_q_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[55]),
        .Q(wdata_q[55]),
        .R(1'b0));
  FDRE \wdata_q_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[56]),
        .Q(wdata_q[56]),
        .R(1'b0));
  FDRE \wdata_q_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[57]),
        .Q(wdata_q[57]),
        .R(1'b0));
  FDRE \wdata_q_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[58]),
        .Q(wdata_q[58]),
        .R(1'b0));
  FDRE \wdata_q_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[59]),
        .Q(wdata_q[59]),
        .R(1'b0));
  FDRE \wdata_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[5]),
        .Q(wdata_q[5]),
        .R(1'b0));
  FDRE \wdata_q_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[60]),
        .Q(wdata_q[60]),
        .R(1'b0));
  FDRE \wdata_q_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[61]),
        .Q(wdata_q[61]),
        .R(1'b0));
  FDRE \wdata_q_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[62]),
        .Q(wdata_q[62]),
        .R(1'b0));
  FDRE \wdata_q_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[63]),
        .Q(wdata_q[63]),
        .R(1'b0));
  FDRE \wdata_q_reg[64] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[64]),
        .Q(wdata_q[64]),
        .R(1'b0));
  FDRE \wdata_q_reg[65] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[65]),
        .Q(wdata_q[65]),
        .R(1'b0));
  FDRE \wdata_q_reg[66] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[66]),
        .Q(wdata_q[66]),
        .R(1'b0));
  FDRE \wdata_q_reg[67] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[67]),
        .Q(wdata_q[67]),
        .R(1'b0));
  FDRE \wdata_q_reg[68] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[68]),
        .Q(wdata_q[68]),
        .R(1'b0));
  FDRE \wdata_q_reg[69] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[69]),
        .Q(wdata_q[69]),
        .R(1'b0));
  FDRE \wdata_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[6]),
        .Q(wdata_q[6]),
        .R(1'b0));
  FDRE \wdata_q_reg[70] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[70]),
        .Q(wdata_q[70]),
        .R(1'b0));
  FDRE \wdata_q_reg[71] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[71]),
        .Q(wdata_q[71]),
        .R(1'b0));
  FDRE \wdata_q_reg[72] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[72]),
        .Q(wdata_q[72]),
        .R(1'b0));
  FDRE \wdata_q_reg[73] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[73]),
        .Q(wdata_q[73]),
        .R(1'b0));
  FDRE \wdata_q_reg[74] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[74]),
        .Q(wdata_q[74]),
        .R(1'b0));
  FDRE \wdata_q_reg[75] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[75]),
        .Q(wdata_q[75]),
        .R(1'b0));
  FDRE \wdata_q_reg[76] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[76]),
        .Q(wdata_q[76]),
        .R(1'b0));
  FDRE \wdata_q_reg[77] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[77]),
        .Q(wdata_q[77]),
        .R(1'b0));
  FDRE \wdata_q_reg[78] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[78]),
        .Q(wdata_q[78]),
        .R(1'b0));
  FDRE \wdata_q_reg[79] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[79]),
        .Q(wdata_q[79]),
        .R(1'b0));
  FDRE \wdata_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[7]),
        .Q(wdata_q[7]),
        .R(1'b0));
  FDRE \wdata_q_reg[80] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[80]),
        .Q(wdata_q[80]),
        .R(1'b0));
  FDRE \wdata_q_reg[81] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[81]),
        .Q(wdata_q[81]),
        .R(1'b0));
  FDRE \wdata_q_reg[82] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[82]),
        .Q(wdata_q[82]),
        .R(1'b0));
  FDRE \wdata_q_reg[83] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[83]),
        .Q(wdata_q[83]),
        .R(1'b0));
  FDRE \wdata_q_reg[84] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[84]),
        .Q(wdata_q[84]),
        .R(1'b0));
  FDRE \wdata_q_reg[85] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[85]),
        .Q(wdata_q[85]),
        .R(1'b0));
  FDRE \wdata_q_reg[86] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[86]),
        .Q(wdata_q[86]),
        .R(1'b0));
  FDRE \wdata_q_reg[87] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[87]),
        .Q(wdata_q[87]),
        .R(1'b0));
  FDRE \wdata_q_reg[88] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[88]),
        .Q(wdata_q[88]),
        .R(1'b0));
  FDRE \wdata_q_reg[89] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[89]),
        .Q(wdata_q[89]),
        .R(1'b0));
  FDRE \wdata_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[8]),
        .Q(wdata_q[8]),
        .R(1'b0));
  FDRE \wdata_q_reg[90] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[90]),
        .Q(wdata_q[90]),
        .R(1'b0));
  FDRE \wdata_q_reg[91] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[91]),
        .Q(wdata_q[91]),
        .R(1'b0));
  FDRE \wdata_q_reg[92] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[92]),
        .Q(wdata_q[92]),
        .R(1'b0));
  FDRE \wdata_q_reg[93] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[93]),
        .Q(wdata_q[93]),
        .R(1'b0));
  FDRE \wdata_q_reg[94] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[94]),
        .Q(wdata_q[94]),
        .R(1'b0));
  FDRE \wdata_q_reg[95] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[95]),
        .Q(wdata_q[95]),
        .R(1'b0));
  FDRE \wdata_q_reg[96] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[96]),
        .Q(wdata_q[96]),
        .R(1'b0));
  FDRE \wdata_q_reg[97] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[97]),
        .Q(wdata_q[97]),
        .R(1'b0));
  FDRE \wdata_q_reg[98] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[98]),
        .Q(wdata_q[98]),
        .R(1'b0));
  FDRE \wdata_q_reg[99] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[99]),
        .Q(wdata_q[99]),
        .R(1'b0));
  FDRE \wdata_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[9]),
        .Q(wdata_q[9]),
        .R(1'b0));
  FDRE \wdata_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[0]),
        .Q(wdata_qq[0]),
        .R(1'b0));
  FDRE \wdata_qq_reg[100] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[100]),
        .Q(wdata_qq[100]),
        .R(1'b0));
  FDRE \wdata_qq_reg[101] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[101]),
        .Q(wdata_qq[101]),
        .R(1'b0));
  FDRE \wdata_qq_reg[102] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[102]),
        .Q(wdata_qq[102]),
        .R(1'b0));
  FDRE \wdata_qq_reg[103] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[103]),
        .Q(wdata_qq[103]),
        .R(1'b0));
  FDRE \wdata_qq_reg[104] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[104]),
        .Q(wdata_qq[104]),
        .R(1'b0));
  FDRE \wdata_qq_reg[105] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[105]),
        .Q(wdata_qq[105]),
        .R(1'b0));
  FDRE \wdata_qq_reg[106] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[106]),
        .Q(wdata_qq[106]),
        .R(1'b0));
  FDRE \wdata_qq_reg[107] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[107]),
        .Q(wdata_qq[107]),
        .R(1'b0));
  FDRE \wdata_qq_reg[108] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[108]),
        .Q(wdata_qq[108]),
        .R(1'b0));
  FDRE \wdata_qq_reg[109] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[109]),
        .Q(wdata_qq[109]),
        .R(1'b0));
  FDRE \wdata_qq_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[10]),
        .Q(wdata_qq[10]),
        .R(1'b0));
  FDRE \wdata_qq_reg[110] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[110]),
        .Q(wdata_qq[110]),
        .R(1'b0));
  FDRE \wdata_qq_reg[111] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[111]),
        .Q(wdata_qq[111]),
        .R(1'b0));
  FDRE \wdata_qq_reg[112] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[112]),
        .Q(wdata_qq[112]),
        .R(1'b0));
  FDRE \wdata_qq_reg[113] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[113]),
        .Q(wdata_qq[113]),
        .R(1'b0));
  FDRE \wdata_qq_reg[114] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[114]),
        .Q(wdata_qq[114]),
        .R(1'b0));
  FDRE \wdata_qq_reg[115] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[115]),
        .Q(wdata_qq[115]),
        .R(1'b0));
  FDRE \wdata_qq_reg[116] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[116]),
        .Q(wdata_qq[116]),
        .R(1'b0));
  FDRE \wdata_qq_reg[117] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[117]),
        .Q(wdata_qq[117]),
        .R(1'b0));
  FDRE \wdata_qq_reg[118] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[118]),
        .Q(wdata_qq[118]),
        .R(1'b0));
  FDRE \wdata_qq_reg[119] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[119]),
        .Q(wdata_qq[119]),
        .R(1'b0));
  FDRE \wdata_qq_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[11]),
        .Q(wdata_qq[11]),
        .R(1'b0));
  FDRE \wdata_qq_reg[120] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[120]),
        .Q(wdata_qq[120]),
        .R(1'b0));
  FDRE \wdata_qq_reg[121] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[121]),
        .Q(wdata_qq[121]),
        .R(1'b0));
  FDRE \wdata_qq_reg[122] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[122]),
        .Q(wdata_qq[122]),
        .R(1'b0));
  FDRE \wdata_qq_reg[123] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[123]),
        .Q(wdata_qq[123]),
        .R(1'b0));
  FDRE \wdata_qq_reg[124] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[124]),
        .Q(wdata_qq[124]),
        .R(1'b0));
  FDRE \wdata_qq_reg[125] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[125]),
        .Q(wdata_qq[125]),
        .R(1'b0));
  FDRE \wdata_qq_reg[126] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[126]),
        .Q(wdata_qq[126]),
        .R(1'b0));
  FDRE \wdata_qq_reg[127] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[127]),
        .Q(wdata_qq[127]),
        .R(1'b0));
  FDRE \wdata_qq_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[12]),
        .Q(wdata_qq[12]),
        .R(1'b0));
  FDRE \wdata_qq_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[13]),
        .Q(wdata_qq[13]),
        .R(1'b0));
  FDRE \wdata_qq_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[14]),
        .Q(wdata_qq[14]),
        .R(1'b0));
  FDRE \wdata_qq_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[15]),
        .Q(wdata_qq[15]),
        .R(1'b0));
  FDRE \wdata_qq_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[16]),
        .Q(wdata_qq[16]),
        .R(1'b0));
  FDRE \wdata_qq_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[17]),
        .Q(wdata_qq[17]),
        .R(1'b0));
  FDRE \wdata_qq_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[18]),
        .Q(wdata_qq[18]),
        .R(1'b0));
  FDRE \wdata_qq_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[19]),
        .Q(wdata_qq[19]),
        .R(1'b0));
  FDRE \wdata_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[1]),
        .Q(wdata_qq[1]),
        .R(1'b0));
  FDRE \wdata_qq_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[20]),
        .Q(wdata_qq[20]),
        .R(1'b0));
  FDRE \wdata_qq_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[21]),
        .Q(wdata_qq[21]),
        .R(1'b0));
  FDRE \wdata_qq_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[22]),
        .Q(wdata_qq[22]),
        .R(1'b0));
  FDRE \wdata_qq_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[23]),
        .Q(wdata_qq[23]),
        .R(1'b0));
  FDRE \wdata_qq_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[24]),
        .Q(wdata_qq[24]),
        .R(1'b0));
  FDRE \wdata_qq_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[25]),
        .Q(wdata_qq[25]),
        .R(1'b0));
  FDRE \wdata_qq_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[26]),
        .Q(wdata_qq[26]),
        .R(1'b0));
  FDRE \wdata_qq_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[27]),
        .Q(wdata_qq[27]),
        .R(1'b0));
  FDRE \wdata_qq_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[28]),
        .Q(wdata_qq[28]),
        .R(1'b0));
  FDRE \wdata_qq_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[29]),
        .Q(wdata_qq[29]),
        .R(1'b0));
  FDRE \wdata_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[2]),
        .Q(wdata_qq[2]),
        .R(1'b0));
  FDRE \wdata_qq_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[30]),
        .Q(wdata_qq[30]),
        .R(1'b0));
  FDRE \wdata_qq_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[31]),
        .Q(wdata_qq[31]),
        .R(1'b0));
  FDRE \wdata_qq_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[32]),
        .Q(wdata_qq[32]),
        .R(1'b0));
  FDRE \wdata_qq_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[33]),
        .Q(wdata_qq[33]),
        .R(1'b0));
  FDRE \wdata_qq_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[34]),
        .Q(wdata_qq[34]),
        .R(1'b0));
  FDRE \wdata_qq_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[35]),
        .Q(wdata_qq[35]),
        .R(1'b0));
  FDRE \wdata_qq_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[36]),
        .Q(wdata_qq[36]),
        .R(1'b0));
  FDRE \wdata_qq_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[37]),
        .Q(wdata_qq[37]),
        .R(1'b0));
  FDRE \wdata_qq_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[38]),
        .Q(wdata_qq[38]),
        .R(1'b0));
  FDRE \wdata_qq_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[39]),
        .Q(wdata_qq[39]),
        .R(1'b0));
  FDRE \wdata_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[3]),
        .Q(wdata_qq[3]),
        .R(1'b0));
  FDRE \wdata_qq_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[40]),
        .Q(wdata_qq[40]),
        .R(1'b0));
  FDRE \wdata_qq_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[41]),
        .Q(wdata_qq[41]),
        .R(1'b0));
  FDRE \wdata_qq_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[42]),
        .Q(wdata_qq[42]),
        .R(1'b0));
  FDRE \wdata_qq_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[43]),
        .Q(wdata_qq[43]),
        .R(1'b0));
  FDRE \wdata_qq_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[44]),
        .Q(wdata_qq[44]),
        .R(1'b0));
  FDRE \wdata_qq_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[45]),
        .Q(wdata_qq[45]),
        .R(1'b0));
  FDRE \wdata_qq_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[46]),
        .Q(wdata_qq[46]),
        .R(1'b0));
  FDRE \wdata_qq_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[47]),
        .Q(wdata_qq[47]),
        .R(1'b0));
  FDRE \wdata_qq_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[48]),
        .Q(wdata_qq[48]),
        .R(1'b0));
  FDRE \wdata_qq_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[49]),
        .Q(wdata_qq[49]),
        .R(1'b0));
  FDRE \wdata_qq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[4]),
        .Q(wdata_qq[4]),
        .R(1'b0));
  FDRE \wdata_qq_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[50]),
        .Q(wdata_qq[50]),
        .R(1'b0));
  FDRE \wdata_qq_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[51]),
        .Q(wdata_qq[51]),
        .R(1'b0));
  FDRE \wdata_qq_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[52]),
        .Q(wdata_qq[52]),
        .R(1'b0));
  FDRE \wdata_qq_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[53]),
        .Q(wdata_qq[53]),
        .R(1'b0));
  FDRE \wdata_qq_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[54]),
        .Q(wdata_qq[54]),
        .R(1'b0));
  FDRE \wdata_qq_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[55]),
        .Q(wdata_qq[55]),
        .R(1'b0));
  FDRE \wdata_qq_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[56]),
        .Q(wdata_qq[56]),
        .R(1'b0));
  FDRE \wdata_qq_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[57]),
        .Q(wdata_qq[57]),
        .R(1'b0));
  FDRE \wdata_qq_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[58]),
        .Q(wdata_qq[58]),
        .R(1'b0));
  FDRE \wdata_qq_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[59]),
        .Q(wdata_qq[59]),
        .R(1'b0));
  FDRE \wdata_qq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[5]),
        .Q(wdata_qq[5]),
        .R(1'b0));
  FDRE \wdata_qq_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[60]),
        .Q(wdata_qq[60]),
        .R(1'b0));
  FDRE \wdata_qq_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[61]),
        .Q(wdata_qq[61]),
        .R(1'b0));
  FDRE \wdata_qq_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[62]),
        .Q(wdata_qq[62]),
        .R(1'b0));
  FDRE \wdata_qq_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[63]),
        .Q(wdata_qq[63]),
        .R(1'b0));
  FDRE \wdata_qq_reg[64] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[64]),
        .Q(wdata_qq[64]),
        .R(1'b0));
  FDRE \wdata_qq_reg[65] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[65]),
        .Q(wdata_qq[65]),
        .R(1'b0));
  FDRE \wdata_qq_reg[66] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[66]),
        .Q(wdata_qq[66]),
        .R(1'b0));
  FDRE \wdata_qq_reg[67] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[67]),
        .Q(wdata_qq[67]),
        .R(1'b0));
  FDRE \wdata_qq_reg[68] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[68]),
        .Q(wdata_qq[68]),
        .R(1'b0));
  FDRE \wdata_qq_reg[69] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[69]),
        .Q(wdata_qq[69]),
        .R(1'b0));
  FDRE \wdata_qq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[6]),
        .Q(wdata_qq[6]),
        .R(1'b0));
  FDRE \wdata_qq_reg[70] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[70]),
        .Q(wdata_qq[70]),
        .R(1'b0));
  FDRE \wdata_qq_reg[71] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[71]),
        .Q(wdata_qq[71]),
        .R(1'b0));
  FDRE \wdata_qq_reg[72] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[72]),
        .Q(wdata_qq[72]),
        .R(1'b0));
  FDRE \wdata_qq_reg[73] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[73]),
        .Q(wdata_qq[73]),
        .R(1'b0));
  FDRE \wdata_qq_reg[74] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[74]),
        .Q(wdata_qq[74]),
        .R(1'b0));
  FDRE \wdata_qq_reg[75] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[75]),
        .Q(wdata_qq[75]),
        .R(1'b0));
  FDRE \wdata_qq_reg[76] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[76]),
        .Q(wdata_qq[76]),
        .R(1'b0));
  FDRE \wdata_qq_reg[77] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[77]),
        .Q(wdata_qq[77]),
        .R(1'b0));
  FDRE \wdata_qq_reg[78] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[78]),
        .Q(wdata_qq[78]),
        .R(1'b0));
  FDRE \wdata_qq_reg[79] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[79]),
        .Q(wdata_qq[79]),
        .R(1'b0));
  FDRE \wdata_qq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[7]),
        .Q(wdata_qq[7]),
        .R(1'b0));
  FDRE \wdata_qq_reg[80] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[80]),
        .Q(wdata_qq[80]),
        .R(1'b0));
  FDRE \wdata_qq_reg[81] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[81]),
        .Q(wdata_qq[81]),
        .R(1'b0));
  FDRE \wdata_qq_reg[82] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[82]),
        .Q(wdata_qq[82]),
        .R(1'b0));
  FDRE \wdata_qq_reg[83] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[83]),
        .Q(wdata_qq[83]),
        .R(1'b0));
  FDRE \wdata_qq_reg[84] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[84]),
        .Q(wdata_qq[84]),
        .R(1'b0));
  FDRE \wdata_qq_reg[85] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[85]),
        .Q(wdata_qq[85]),
        .R(1'b0));
  FDRE \wdata_qq_reg[86] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[86]),
        .Q(wdata_qq[86]),
        .R(1'b0));
  FDRE \wdata_qq_reg[87] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[87]),
        .Q(wdata_qq[87]),
        .R(1'b0));
  FDRE \wdata_qq_reg[88] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[88]),
        .Q(wdata_qq[88]),
        .R(1'b0));
  FDRE \wdata_qq_reg[89] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[89]),
        .Q(wdata_qq[89]),
        .R(1'b0));
  FDRE \wdata_qq_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[8]),
        .Q(wdata_qq[8]),
        .R(1'b0));
  FDRE \wdata_qq_reg[90] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[90]),
        .Q(wdata_qq[90]),
        .R(1'b0));
  FDRE \wdata_qq_reg[91] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[91]),
        .Q(wdata_qq[91]),
        .R(1'b0));
  FDRE \wdata_qq_reg[92] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[92]),
        .Q(wdata_qq[92]),
        .R(1'b0));
  FDRE \wdata_qq_reg[93] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[93]),
        .Q(wdata_qq[93]),
        .R(1'b0));
  FDRE \wdata_qq_reg[94] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[94]),
        .Q(wdata_qq[94]),
        .R(1'b0));
  FDRE \wdata_qq_reg[95] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[95]),
        .Q(wdata_qq[95]),
        .R(1'b0));
  FDRE \wdata_qq_reg[96] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[96]),
        .Q(wdata_qq[96]),
        .R(1'b0));
  FDRE \wdata_qq_reg[97] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[97]),
        .Q(wdata_qq[97]),
        .R(1'b0));
  FDRE \wdata_qq_reg[98] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[98]),
        .Q(wdata_qq[98]),
        .R(1'b0));
  FDRE \wdata_qq_reg[99] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[99]),
        .Q(wdata_qq[99]),
        .R(1'b0));
  FDRE \wdata_qq_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(wdata_q[9]),
        .Q(wdata_qq[9]),
        .R(1'b0));
  FDRE wlast_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wlast),
        .Q(wlast_q),
        .R(1'b0));
  FDRE wlast_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wlast_q),
        .Q(wlast_qq),
        .R(1'b0));
  FDRE wready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wready),
        .Q(wready_q),
        .R(1'b0));
  FDRE wready_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wready_q),
        .Q(wready_qq),
        .R(1'b0));
  FDRE \wstrb_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[0]),
        .Q(wstrb_q[0]),
        .R(1'b0));
  FDRE \wstrb_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[10]),
        .Q(wstrb_q[10]),
        .R(1'b0));
  FDRE \wstrb_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[11]),
        .Q(wstrb_q[11]),
        .R(1'b0));
  FDRE \wstrb_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[12]),
        .Q(wstrb_q[12]),
        .R(1'b0));
  FDRE \wstrb_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[13]),
        .Q(wstrb_q[13]),
        .R(1'b0));
  FDRE \wstrb_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[14]),
        .Q(wstrb_q[14]),
        .R(1'b0));
  FDRE \wstrb_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[15]),
        .Q(wstrb_q[15]),
        .R(1'b0));
  FDRE \wstrb_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[1]),
        .Q(wstrb_q[1]),
        .R(1'b0));
  FDRE \wstrb_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[2]),
        .Q(wstrb_q[2]),
        .R(1'b0));
  FDRE \wstrb_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[3]),
        .Q(wstrb_q[3]),
        .R(1'b0));
  FDRE \wstrb_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[4]),
        .Q(wstrb_q[4]),
        .R(1'b0));
  FDRE \wstrb_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[5]),
        .Q(wstrb_q[5]),
        .R(1'b0));
  FDRE \wstrb_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[6]),
        .Q(wstrb_q[6]),
        .R(1'b0));
  FDRE \wstrb_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[7]),
        .Q(wstrb_q[7]),
        .R(1'b0));
  FDRE \wstrb_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[8]),
        .Q(wstrb_q[8]),
        .R(1'b0));
  FDRE \wstrb_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[9]),
        .Q(wstrb_q[9]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[0]),
        .Q(wstrb_qq[0]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[10]),
        .Q(wstrb_qq[10]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[11]),
        .Q(wstrb_qq[11]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[12]),
        .Q(wstrb_qq[12]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[13]),
        .Q(wstrb_qq[13]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[14]),
        .Q(wstrb_qq[14]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[15]),
        .Q(wstrb_qq[15]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[1]),
        .Q(wstrb_qq[1]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[2]),
        .Q(wstrb_qq[2]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[3]),
        .Q(wstrb_qq[3]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[4]),
        .Q(wstrb_qq[4]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[5]),
        .Q(wstrb_qq[5]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[6]),
        .Q(wstrb_qq[6]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[7]),
        .Q(wstrb_qq[7]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[8]),
        .Q(wstrb_qq[8]),
        .R(1'b0));
  FDRE \wstrb_qq_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(wstrb_q[9]),
        .Q(wstrb_qq[9]),
        .R(1'b0));
  FDRE \wuser_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wuser),
        .Q(wuser_q),
        .R(1'b0));
  FDRE \wuser_qq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(wuser_q),
        .Q(wuser_qq),
        .R(1'b0));
  FDRE wvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wvalid),
        .Q(wvalid_q),
        .R(1'b0));
  FDRE wvalid_qq_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wvalid_q),
        .Q(wvalid_qq),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_m01_pchk_0,axi_protocol_checker_v2_0_1_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_checker_v2_0_1_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pc_status,
    pc_asserted,
    aclk,
    aresetn,
    pc_axi_awid,
    pc_axi_awaddr,
    pc_axi_awlen,
    pc_axi_awsize,
    pc_axi_awburst,
    pc_axi_awlock,
    pc_axi_awcache,
    pc_axi_awprot,
    pc_axi_awqos,
    pc_axi_awregion,
    pc_axi_awvalid,
    pc_axi_awready,
    pc_axi_wlast,
    pc_axi_wdata,
    pc_axi_wstrb,
    pc_axi_wvalid,
    pc_axi_wready,
    pc_axi_bid,
    pc_axi_bresp,
    pc_axi_bvalid,
    pc_axi_bready,
    pc_axi_arid,
    pc_axi_araddr,
    pc_axi_arlen,
    pc_axi_arsize,
    pc_axi_arburst,
    pc_axi_arlock,
    pc_axi_arcache,
    pc_axi_arprot,
    pc_axi_arqos,
    pc_axi_arregion,
    pc_axi_arvalid,
    pc_axi_arready,
    pc_axi_rid,
    pc_axi_rlast,
    pc_axi_rdata,
    pc_axi_rresp,
    pc_axi_rvalid,
    pc_axi_rready);
  output [159:0]pc_status;
  output pc_asserted;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXI:PC_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWID" *) input [0:0]pc_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWADDR" *) input [31:0]pc_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWLEN" *) input [7:0]pc_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWSIZE" *) input [2:0]pc_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWBURST" *) input [1:0]pc_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWLOCK" *) input [0:0]pc_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWCACHE" *) input [3:0]pc_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWPROT" *) input [2:0]pc_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWQOS" *) input [3:0]pc_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWREGION" *) input [3:0]pc_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWVALID" *) input pc_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWREADY" *) input pc_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WLAST" *) input pc_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WDATA" *) input [127:0]pc_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WSTRB" *) input [15:0]pc_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WVALID" *) input pc_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WREADY" *) input pc_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI BID" *) input [0:0]pc_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI BRESP" *) input [1:0]pc_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI BVALID" *) input pc_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI BREADY" *) input pc_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARID" *) input [0:0]pc_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARADDR" *) input [31:0]pc_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARLEN" *) input [7:0]pc_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARSIZE" *) input [2:0]pc_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARBURST" *) input [1:0]pc_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARLOCK" *) input [0:0]pc_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARCACHE" *) input [3:0]pc_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARPROT" *) input [2:0]pc_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARQOS" *) input [3:0]pc_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARREGION" *) input [3:0]pc_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARVALID" *) input pc_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARREADY" *) input pc_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RID" *) input [0:0]pc_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RLAST" *) input pc_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RDATA" *) input [127:0]pc_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RRESP" *) input [1:0]pc_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RVALID" *) input pc_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PC_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input pc_axi_rready;

  wire aclk;
  wire aresetn;
  wire pc_asserted;
  wire [31:0]pc_axi_araddr;
  wire [1:0]pc_axi_arburst;
  wire [3:0]pc_axi_arcache;
  wire [0:0]pc_axi_arid;
  wire [7:0]pc_axi_arlen;
  wire [0:0]pc_axi_arlock;
  wire [2:0]pc_axi_arprot;
  wire [3:0]pc_axi_arqos;
  wire pc_axi_arready;
  wire [3:0]pc_axi_arregion;
  wire [2:0]pc_axi_arsize;
  wire pc_axi_arvalid;
  wire [31:0]pc_axi_awaddr;
  wire [1:0]pc_axi_awburst;
  wire [3:0]pc_axi_awcache;
  wire [0:0]pc_axi_awid;
  wire [7:0]pc_axi_awlen;
  wire [0:0]pc_axi_awlock;
  wire [2:0]pc_axi_awprot;
  wire [3:0]pc_axi_awqos;
  wire pc_axi_awready;
  wire [3:0]pc_axi_awregion;
  wire [2:0]pc_axi_awsize;
  wire pc_axi_awvalid;
  wire [0:0]pc_axi_bid;
  wire pc_axi_bready;
  wire [1:0]pc_axi_bresp;
  wire pc_axi_bvalid;
  wire [127:0]pc_axi_rdata;
  wire [0:0]pc_axi_rid;
  wire pc_axi_rlast;
  wire pc_axi_rready;
  wire [1:0]pc_axi_rresp;
  wire pc_axi_rvalid;
  wire [127:0]pc_axi_wdata;
  wire pc_axi_wlast;
  wire pc_axi_wready;
  wire [15:0]pc_axi_wstrb;
  wire pc_axi_wvalid;
  (* MARK_DEBUG *) wire [159:0]pc_status;
  wire NLW_inst_s_axi_arready_UNCONNECTED;
  wire NLW_inst_s_axi_rvalid_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "128" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_ENABLE_CONTROL = "0" *) 
  (* C_ENABLE_MARK_DEBUG = "1" *) 
  (* C_HAS_WSTRB = "1" *) 
  (* C_PC_AR_MAXWAITS = "0" *) 
  (* C_PC_AW_MAXWAITS = "0" *) 
  (* C_PC_B_MAXWAITS = "0" *) 
  (* C_PC_EXMON_WIDTH = "0" *) 
  (* C_PC_HAS_SYSTEM_RESET = "0" *) 
  (* C_PC_LIGHT_WEIGHT = "0" *) 
  (* C_PC_MAXRBURSTS = "2" *) 
  (* C_PC_MAXWBURSTS = "2" *) 
  (* C_PC_MAX_BURST_LENGTH = "256" *) 
  (* C_PC_MAX_CONTINUOUS_RTRANSFERS_WAITS = "0" *) 
  (* C_PC_MAX_CONTINUOUS_WTRANSFERS_WAITS = "0" *) 
  (* C_PC_MAX_WLAST_TO_AWVALID_WAITS = "0" *) 
  (* C_PC_MAX_WRITE_TO_BVALID_WAITS = "0" *) 
  (* C_PC_MESSAGE_LEVEL = "2" *) 
  (* C_PC_R_MAXWAITS = "0" *) 
  (* C_PC_STATUS_WIDTH = "160" *) 
  (* C_PC_SUPPORTS_NARROW_BURST = "1" *) 
  (* C_PC_W_MAXWAITS = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* LP_AXI_SIZE = "3'b011" *) 
  (* P_INDEX_WIDTH = "1" *) 
  (* P_NUM_REPORTED_CHECKS = "104" *) 
  (* P_NUM_RTHREADS = "2" *) 
  (* P_NUM_WTHREADS = "2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v2_0_1_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .pc_asserted(pc_asserted),
        .pc_axi_araddr(pc_axi_araddr),
        .pc_axi_arburst(pc_axi_arburst),
        .pc_axi_arcache(pc_axi_arcache),
        .pc_axi_arid(pc_axi_arid),
        .pc_axi_arlen(pc_axi_arlen),
        .pc_axi_arlock(pc_axi_arlock),
        .pc_axi_arprot(pc_axi_arprot),
        .pc_axi_arqos(pc_axi_arqos),
        .pc_axi_arready(pc_axi_arready),
        .pc_axi_arregion(pc_axi_arregion),
        .pc_axi_arsize(pc_axi_arsize),
        .pc_axi_aruser(1'b0),
        .pc_axi_arvalid(pc_axi_arvalid),
        .pc_axi_awaddr(pc_axi_awaddr),
        .pc_axi_awburst(pc_axi_awburst),
        .pc_axi_awcache(pc_axi_awcache),
        .pc_axi_awid(pc_axi_awid),
        .pc_axi_awlen(pc_axi_awlen),
        .pc_axi_awlock(pc_axi_awlock),
        .pc_axi_awprot(pc_axi_awprot),
        .pc_axi_awqos(pc_axi_awqos),
        .pc_axi_awready(pc_axi_awready),
        .pc_axi_awregion(pc_axi_awregion),
        .pc_axi_awsize(pc_axi_awsize),
        .pc_axi_awuser(1'b0),
        .pc_axi_awvalid(pc_axi_awvalid),
        .pc_axi_bid(pc_axi_bid),
        .pc_axi_bready(pc_axi_bready),
        .pc_axi_bresp(pc_axi_bresp),
        .pc_axi_buser(1'b0),
        .pc_axi_bvalid(pc_axi_bvalid),
        .pc_axi_rdata(pc_axi_rdata),
        .pc_axi_rid(pc_axi_rid),
        .pc_axi_rlast(pc_axi_rlast),
        .pc_axi_rready(pc_axi_rready),
        .pc_axi_rresp(pc_axi_rresp),
        .pc_axi_ruser(1'b0),
        .pc_axi_rvalid(pc_axi_rvalid),
        .pc_axi_wdata(pc_axi_wdata),
        .pc_axi_wid(1'b0),
        .pc_axi_wlast(pc_axi_wlast),
        .pc_axi_wready(pc_axi_wready),
        .pc_axi_wstrb(pc_axi_wstrb),
        .pc_axi_wuser(1'b0),
        .pc_axi_wvalid(pc_axi_wvalid),
        .pc_status(pc_status),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arvalid(1'b0),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED),
        .system_resetn(1'b1));
endmodule

(* C_FIFO_SIZE = "2" *) (* C_FIFO_WIDTH = "2" *) (* C_REG_CONFIG = "2" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_2_axic_reg_srl_fifo
   (aclk,
    aclken,
    areset,
    s_mesg,
    s_valid,
    s_ready,
    s_afull,
    m_mesg,
    m_valid,
    m_ready);
  input aclk;
  input aclken;
  input areset;
  input [1:0]s_mesg;
  input s_valid;
  output s_ready;
  output s_afull;
  output [1:0]m_mesg;
  output m_valid;
  input m_ready;

  wire \<const0> ;
  wire aclk;
  wire areset;
  (* MAX_FANOUT = "200" *) (* RTL_MAX_FANOUT = "found" *) wire [1:0]fifoaddr;
  wire \fifoaddr[0]_i_1_n_0 ;
  wire \fifoaddr[1]_i_1_n_0 ;
  wire \fifoaddr[1]_i_2_n_0 ;
  wire fifoaddr_afull_i_1_n_0;
  wire fifoaddr_afull_i_2_n_0;
  wire fifoaddr_afull_i_3_n_0;
  wire fifoaddr_afull_reg_n_0;
  wire \gen_pipelined.load_mesg ;
  wire \gen_pipelined.state[0]_i_1_n_0 ;
  wire \gen_pipelined.state[0]_i_2_n_0 ;
  wire \gen_pipelined.state[1]_i_1_n_0 ;
  wire \gen_pipelined.state[2]_i_1_n_0 ;
  wire \gen_pipelined.state[2]_i_2_n_0 ;
  wire \gen_pipelined.state_reg_n_0_[0] ;
  wire \gen_srls[0].srl_nx1_n_0 ;
  wire \gen_srls[1].srl_nx1_n_1 ;
  wire [1:0]m_mesg;
  wire m_ready;
  wire m_valid;
  wire [1:0]s_mesg;
  wire s_ready;
  wire s_valid;
  wire shift;

  assign s_afull = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h87F7FFFF78080000)) 
    \fifoaddr[0]_i_1 
       (.I0(s_valid),
        .I1(s_ready),
        .I2(m_ready),
        .I3(\gen_pipelined.state_reg_n_0_[0] ),
        .I4(m_valid),
        .I5(fifoaddr[0]),
        .O(\fifoaddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD555BFFF2AAA4000)) 
    \fifoaddr[1]_i_1 
       (.I0(\fifoaddr[1]_i_2_n_0 ),
        .I1(m_ready),
        .I2(\gen_pipelined.state_reg_n_0_[0] ),
        .I3(m_valid),
        .I4(fifoaddr[0]),
        .I5(fifoaddr[1]),
        .O(\fifoaddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h80880000)) 
    \fifoaddr[1]_i_2 
       (.I0(m_valid),
        .I1(s_ready),
        .I2(\gen_pipelined.state_reg_n_0_[0] ),
        .I3(m_ready),
        .I4(s_valid),
        .O(\fifoaddr[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF3F2200)) 
    fifoaddr_afull_i_1
       (.I0(fifoaddr_afull_i_2_n_0),
        .I1(fifoaddr[1]),
        .I2(fifoaddr_afull_i_3_n_0),
        .I3(fifoaddr[0]),
        .I4(fifoaddr_afull_reg_n_0),
        .O(fifoaddr_afull_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    fifoaddr_afull_i_2
       (.I0(s_valid),
        .I1(s_ready),
        .I2(m_ready),
        .I3(m_valid),
        .O(fifoaddr_afull_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h40C00000)) 
    fifoaddr_afull_i_3
       (.I0(s_valid),
        .I1(m_ready),
        .I2(\gen_pipelined.state_reg_n_0_[0] ),
        .I3(s_ready),
        .I4(m_valid),
        .O(fifoaddr_afull_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifoaddr_afull_reg
       (.C(aclk),
        .CE(1'b1),
        .D(fifoaddr_afull_i_1_n_0),
        .Q(fifoaddr_afull_reg_n_0),
        .R(areset));
  (* MAX_FANOUT = "200" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr[0]),
        .S(areset));
  (* MAX_FANOUT = "200" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr[1]),
        .S(areset));
  LUT4 #(
    .INIT(16'hCFDF)) 
    \gen_pipelined.mesg_reg[1]_i_1 
       (.I0(s_ready),
        .I1(m_ready),
        .I2(m_valid),
        .I3(\gen_pipelined.state_reg_n_0_[0] ),
        .O(\gen_pipelined.load_mesg ));
  FDRE \gen_pipelined.mesg_reg_reg[0] 
       (.C(aclk),
        .CE(\gen_pipelined.load_mesg ),
        .D(\gen_srls[0].srl_nx1_n_0 ),
        .Q(m_mesg[0]),
        .R(1'b0));
  FDRE \gen_pipelined.mesg_reg_reg[1] 
       (.C(aclk),
        .CE(\gen_pipelined.load_mesg ),
        .D(\gen_srls[1].srl_nx1_n_1 ),
        .Q(m_mesg[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_pipelined.state[0]_i_1 
       (.I0(m_valid),
        .I1(\gen_pipelined.state[0]_i_2_n_0 ),
        .O(\gen_pipelined.state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F0E0F0F0F0)) 
    \gen_pipelined.state[0]_i_2 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(\gen_pipelined.state_reg_n_0_[0] ),
        .I3(m_ready),
        .I4(s_ready),
        .I5(s_valid),
        .O(\gen_pipelined.state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hFFB000F0)) 
    \gen_pipelined.state[1]_i_1 
       (.I0(s_valid),
        .I1(m_ready),
        .I2(s_ready),
        .I3(\gen_pipelined.state_reg_n_0_[0] ),
        .I4(m_valid),
        .O(\gen_pipelined.state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gen_pipelined.state[2]_i_1 
       (.I0(s_ready),
        .I1(s_valid),
        .I2(\gen_pipelined.state_reg_n_0_[0] ),
        .I3(m_valid),
        .O(\gen_pipelined.state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEFFFFFFFFFFFF)) 
    \gen_pipelined.state[2]_i_2 
       (.I0(m_ready),
        .I1(s_ready),
        .I2(fifoaddr_afull_reg_n_0),
        .I3(s_valid),
        .I4(m_valid),
        .I5(\gen_pipelined.state_reg_n_0_[0] ),
        .O(\gen_pipelined.state[2]_i_2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_pipelined.state_reg[0] 
       (.C(aclk),
        .CE(\gen_pipelined.state[2]_i_1_n_0 ),
        .D(\gen_pipelined.state[0]_i_1_n_0 ),
        .Q(\gen_pipelined.state_reg_n_0_[0] ),
        .R(areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_pipelined.state_reg[1] 
       (.C(aclk),
        .CE(\gen_pipelined.state[2]_i_1_n_0 ),
        .D(\gen_pipelined.state[1]_i_1_n_0 ),
        .Q(m_valid),
        .R(areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_pipelined.state_reg[2] 
       (.C(aclk),
        .CE(\gen_pipelined.state[2]_i_1_n_0 ),
        .D(\gen_pipelined.state[2]_i_2_n_0 ),
        .Q(s_ready),
        .R(areset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_2_srl_rtl \gen_srls[0].srl_nx1 
       (.D(\gen_srls[0].srl_nx1_n_0 ),
        .Q({m_valid,\gen_pipelined.state_reg_n_0_[0] }),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .s_mesg(s_mesg[0]),
        .shift(shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_2_srl_rtl_1 \gen_srls[1].srl_nx1 
       (.D(\gen_srls[1].srl_nx1_n_1 ),
        .Q({s_ready,m_valid,\gen_pipelined.state_reg_n_0_[0] }),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .s_mesg(s_mesg[1]),
        .s_valid(s_valid),
        .shift(shift));
endmodule

(* C_FIFO_SIZE = "2" *) (* C_FIFO_WIDTH = "2" *) (* C_REG_CONFIG = "2" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "sc_util_v1_0_2_axic_reg_srl_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_2_axic_reg_srl_fifo__1
   (aclk,
    aclken,
    areset,
    s_mesg,
    s_valid,
    s_ready,
    s_afull,
    m_mesg,
    m_valid,
    m_ready);
  input aclk;
  input aclken;
  input areset;
  input [1:0]s_mesg;
  input s_valid;
  output s_ready;
  output s_afull;
  output [1:0]m_mesg;
  output m_valid;
  input m_ready;

  wire \<const0> ;
  wire aclk;
  wire areset;
  (* MAX_FANOUT = "200" *) (* RTL_MAX_FANOUT = "found" *) wire [1:0]fifoaddr;
  wire \fifoaddr[0]_i_1_n_0 ;
  wire \fifoaddr[1]_i_1_n_0 ;
  wire \fifoaddr[1]_i_2_n_0 ;
  wire fifoaddr_afull_i_1_n_0;
  wire fifoaddr_afull_i_2_n_0;
  wire fifoaddr_afull_i_3_n_0;
  wire fifoaddr_afull_reg_n_0;
  wire \gen_pipelined.load_mesg ;
  wire \gen_pipelined.state[0]_i_1_n_0 ;
  wire \gen_pipelined.state[0]_i_2_n_0 ;
  wire \gen_pipelined.state[1]_i_1_n_0 ;
  wire \gen_pipelined.state[2]_i_1_n_0 ;
  wire \gen_pipelined.state[2]_i_2_n_0 ;
  wire \gen_pipelined.state_reg_n_0_[0] ;
  wire \gen_srls[0].srl_nx1_n_0 ;
  wire \gen_srls[1].srl_nx1_n_1 ;
  wire [1:0]m_mesg;
  wire m_ready;
  wire m_valid;
  wire [1:0]s_mesg;
  wire s_ready;
  wire s_valid;
  wire shift;

  assign s_afull = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h87F7FFFF78080000)) 
    \fifoaddr[0]_i_1 
       (.I0(s_valid),
        .I1(s_ready),
        .I2(m_ready),
        .I3(\gen_pipelined.state_reg_n_0_[0] ),
        .I4(m_valid),
        .I5(fifoaddr[0]),
        .O(\fifoaddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD555BFFF2AAA4000)) 
    \fifoaddr[1]_i_1 
       (.I0(\fifoaddr[1]_i_2_n_0 ),
        .I1(m_ready),
        .I2(\gen_pipelined.state_reg_n_0_[0] ),
        .I3(m_valid),
        .I4(fifoaddr[0]),
        .I5(fifoaddr[1]),
        .O(\fifoaddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h80880000)) 
    \fifoaddr[1]_i_2 
       (.I0(m_valid),
        .I1(s_ready),
        .I2(\gen_pipelined.state_reg_n_0_[0] ),
        .I3(m_ready),
        .I4(s_valid),
        .O(\fifoaddr[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF3F2200)) 
    fifoaddr_afull_i_1
       (.I0(fifoaddr_afull_i_2_n_0),
        .I1(fifoaddr[1]),
        .I2(fifoaddr_afull_i_3_n_0),
        .I3(fifoaddr[0]),
        .I4(fifoaddr_afull_reg_n_0),
        .O(fifoaddr_afull_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    fifoaddr_afull_i_2
       (.I0(s_valid),
        .I1(s_ready),
        .I2(m_ready),
        .I3(m_valid),
        .O(fifoaddr_afull_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h40C00000)) 
    fifoaddr_afull_i_3
       (.I0(s_valid),
        .I1(m_ready),
        .I2(\gen_pipelined.state_reg_n_0_[0] ),
        .I3(s_ready),
        .I4(m_valid),
        .O(fifoaddr_afull_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifoaddr_afull_reg
       (.C(aclk),
        .CE(1'b1),
        .D(fifoaddr_afull_i_1_n_0),
        .Q(fifoaddr_afull_reg_n_0),
        .R(areset));
  (* MAX_FANOUT = "200" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr[0]),
        .S(areset));
  (* MAX_FANOUT = "200" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDSE #(
    .INIT(1'b1)) 
    \fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr[1]),
        .S(areset));
  LUT4 #(
    .INIT(16'hCFDF)) 
    \gen_pipelined.mesg_reg[1]_i_1 
       (.I0(s_ready),
        .I1(m_ready),
        .I2(m_valid),
        .I3(\gen_pipelined.state_reg_n_0_[0] ),
        .O(\gen_pipelined.load_mesg ));
  FDRE \gen_pipelined.mesg_reg_reg[0] 
       (.C(aclk),
        .CE(\gen_pipelined.load_mesg ),
        .D(\gen_srls[0].srl_nx1_n_0 ),
        .Q(m_mesg[0]),
        .R(1'b0));
  FDRE \gen_pipelined.mesg_reg_reg[1] 
       (.C(aclk),
        .CE(\gen_pipelined.load_mesg ),
        .D(\gen_srls[1].srl_nx1_n_1 ),
        .Q(m_mesg[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_pipelined.state[0]_i_1 
       (.I0(m_valid),
        .I1(\gen_pipelined.state[0]_i_2_n_0 ),
        .O(\gen_pipelined.state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F0E0F0F0F0)) 
    \gen_pipelined.state[0]_i_2 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(\gen_pipelined.state_reg_n_0_[0] ),
        .I3(m_ready),
        .I4(s_ready),
        .I5(s_valid),
        .O(\gen_pipelined.state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hFFB000F0)) 
    \gen_pipelined.state[1]_i_1 
       (.I0(s_valid),
        .I1(m_ready),
        .I2(s_ready),
        .I3(\gen_pipelined.state_reg_n_0_[0] ),
        .I4(m_valid),
        .O(\gen_pipelined.state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gen_pipelined.state[2]_i_1 
       (.I0(s_ready),
        .I1(s_valid),
        .I2(\gen_pipelined.state_reg_n_0_[0] ),
        .I3(m_valid),
        .O(\gen_pipelined.state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEFFFFFFFFFFFF)) 
    \gen_pipelined.state[2]_i_2 
       (.I0(m_ready),
        .I1(s_ready),
        .I2(fifoaddr_afull_reg_n_0),
        .I3(s_valid),
        .I4(m_valid),
        .I5(\gen_pipelined.state_reg_n_0_[0] ),
        .O(\gen_pipelined.state[2]_i_2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_pipelined.state_reg[0] 
       (.C(aclk),
        .CE(\gen_pipelined.state[2]_i_1_n_0 ),
        .D(\gen_pipelined.state[0]_i_1_n_0 ),
        .Q(\gen_pipelined.state_reg_n_0_[0] ),
        .R(areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_pipelined.state_reg[1] 
       (.C(aclk),
        .CE(\gen_pipelined.state[2]_i_1_n_0 ),
        .D(\gen_pipelined.state[1]_i_1_n_0 ),
        .Q(m_valid),
        .R(areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_pipelined.state_reg[2] 
       (.C(aclk),
        .CE(\gen_pipelined.state[2]_i_1_n_0 ),
        .D(\gen_pipelined.state[2]_i_2_n_0 ),
        .Q(s_ready),
        .R(areset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_2_srl_rtl_2 \gen_srls[0].srl_nx1 
       (.D(\gen_srls[0].srl_nx1_n_0 ),
        .Q({m_valid,\gen_pipelined.state_reg_n_0_[0] }),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .s_mesg(s_mesg[0]),
        .shift(shift));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_2_srl_rtl_3 \gen_srls[1].srl_nx1 
       (.D(\gen_srls[1].srl_nx1_n_1 ),
        .Q({s_ready,m_valid,\gen_pipelined.state_reg_n_0_[0] }),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .s_mesg(s_mesg[1]),
        .s_valid(s_valid),
        .shift(shift));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_2_srl_rtl
   (D,
    shift,
    s_mesg,
    fifoaddr,
    aclk,
    Q);
  output [0:0]D;
  input shift;
  input [0:0]s_mesg;
  input [1:0]fifoaddr;
  input aclk;
  input [1:0]Q;

  wire [0:0]D;
  wire [1:0]Q;
  wire aclk;
  wire [1:0]fifoaddr;
  wire p_2_out;
  wire [0:0]s_mesg;
  wire shift;

  LUT4 #(
    .INIT(16'hBF80)) 
    \gen_pipelined.mesg_reg[0]_i_1 
       (.I0(p_2_out),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_mesg),
        .O(D));
  (* srl_bus_name = "inst/\w_threadcam/gen_cam.allocate_queue /\gen_srls[0].srl_nx1/shift_reg_reg " *) 
  (* srl_name = "inst/\w_threadcam/gen_cam.allocate_queue /\gen_srls[0].srl_nx1/shift_reg_reg[0]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl1 
       (.A0(fifoaddr[0]),
        .A1(fifoaddr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift),
        .CLK(aclk),
        .D(s_mesg),
        .Q(p_2_out));
endmodule

(* ORIG_REF_NAME = "sc_util_v1_0_2_srl_rtl" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_2_srl_rtl_1
   (shift,
    D,
    s_mesg,
    fifoaddr,
    aclk,
    Q,
    s_valid);
  output shift;
  output [0:0]D;
  input [0:0]s_mesg;
  input [1:0]fifoaddr;
  input aclk;
  input [2:0]Q;
  input s_valid;

  wire [0:0]D;
  wire [2:0]Q;
  wire aclk;
  wire [1:0]fifoaddr;
  wire p_0_out;
  wire [0:0]s_mesg;
  wire s_valid;
  wire shift;

  LUT4 #(
    .INIT(16'hBF80)) 
    \gen_pipelined.mesg_reg[1]_i_2 
       (.I0(p_0_out),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_mesg),
        .O(D));
  (* srl_bus_name = "inst/\w_threadcam/gen_cam.allocate_queue /\gen_srls[1].srl_nx1/shift_reg_reg " *) 
  (* srl_name = "inst/\w_threadcam/gen_cam.allocate_queue /\gen_srls[1].srl_nx1/shift_reg_reg[0]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl1 
       (.A0(fifoaddr[0]),
        .A1(fifoaddr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift),
        .CLK(aclk),
        .D(s_mesg),
        .Q(p_0_out));
  LUT4 #(
    .INIT(16'h8A00)) 
    \shift_reg_reg[0]_srl1_i_1 
       (.I0(Q[2]),
        .I1(s_valid),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(shift));
endmodule

(* ORIG_REF_NAME = "sc_util_v1_0_2_srl_rtl" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_2_srl_rtl_2
   (D,
    shift,
    s_mesg,
    fifoaddr,
    aclk,
    Q);
  output [0:0]D;
  input shift;
  input [0:0]s_mesg;
  input [1:0]fifoaddr;
  input aclk;
  input [1:0]Q;

  wire [0:0]D;
  wire [1:0]Q;
  wire aclk;
  wire [1:0]fifoaddr;
  wire p_2_out;
  wire [0:0]s_mesg;
  wire shift;

  LUT4 #(
    .INIT(16'hBF80)) 
    \gen_pipelined.mesg_reg[0]_i_1 
       (.I0(p_2_out),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_mesg),
        .O(D));
  (* srl_bus_name = "inst/\r_threadcam/gen_cam.allocate_queue /\gen_srls[0].srl_nx1/shift_reg_reg " *) 
  (* srl_name = "inst/\r_threadcam/gen_cam.allocate_queue /\gen_srls[0].srl_nx1/shift_reg_reg[0]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl1 
       (.A0(fifoaddr[0]),
        .A1(fifoaddr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift),
        .CLK(aclk),
        .D(s_mesg),
        .Q(p_2_out));
endmodule

(* ORIG_REF_NAME = "sc_util_v1_0_2_srl_rtl" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sc_util_v1_0_2_srl_rtl_3
   (shift,
    D,
    s_mesg,
    fifoaddr,
    aclk,
    Q,
    s_valid);
  output shift;
  output [0:0]D;
  input [0:0]s_mesg;
  input [1:0]fifoaddr;
  input aclk;
  input [2:0]Q;
  input s_valid;

  wire [0:0]D;
  wire [2:0]Q;
  wire aclk;
  wire [1:0]fifoaddr;
  wire p_0_out;
  wire [0:0]s_mesg;
  wire s_valid;
  wire shift;

  LUT4 #(
    .INIT(16'hBF80)) 
    \gen_pipelined.mesg_reg[1]_i_2 
       (.I0(p_0_out),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_mesg),
        .O(D));
  (* srl_bus_name = "inst/\r_threadcam/gen_cam.allocate_queue /\gen_srls[1].srl_nx1/shift_reg_reg " *) 
  (* srl_name = "inst/\r_threadcam/gen_cam.allocate_queue /\gen_srls[1].srl_nx1/shift_reg_reg[0]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_reg_reg[0]_srl1 
       (.A0(fifoaddr[0]),
        .A1(fifoaddr[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift),
        .CLK(aclk),
        .D(s_mesg),
        .Q(p_0_out));
  LUT4 #(
    .INIT(16'h8A00)) 
    \shift_reg_reg[0]_srl1_i_1 
       (.I0(Q[2]),
        .I1(s_valid),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(shift));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
