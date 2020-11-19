// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon May 11 18:15:45 2020
// Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_s00_mmu_0_sim_netlist.v
// Design      : design_1_s00_mmu_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave
   (err_awready,
    E,
    s_axi_bvalid,
    s_axi_bid,
    s_axi_wready,
    m_valid_i_reg,
    SR,
    aclk,
    \gen_write.w_state_reg[0] ,
    s_axi_bready,
    \gen_write.w_state_reg[0]_0 ,
    Q,
    m_valid_i_reg_0,
    m_axi_bvalid,
    m_axi_bid,
    m_axi_wready,
    \gen_write.w_cnt_reg[1] ,
    s_axi_wlast,
    s_axi_wvalid,
    \m_payload_i_reg[54] ,
    m_axi_awready);
  output err_awready;
  output [0:0]E;
  output s_axi_bvalid;
  output [0:0]s_axi_bid;
  output s_axi_wready;
  output m_valid_i_reg;
  input [0:0]SR;
  input aclk;
  input \gen_write.w_state_reg[0] ;
  input s_axi_bready;
  input \gen_write.w_state_reg[0]_0 ;
  input [1:0]Q;
  input m_valid_i_reg_0;
  input m_axi_bvalid;
  input [0:0]m_axi_bid;
  input m_axi_wready;
  input \gen_write.w_cnt_reg[1] ;
  input s_axi_wlast;
  input s_axi_wvalid;
  input [1:0]\m_payload_i_reg[54] ;
  input m_axi_awready;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire err_awready;
  wire err_bid;
  wire err_bvalid;
  wire err_wready;
  wire \gen_axi.gen_write.s_axi_awready_i_i_1_n_0 ;
  wire \gen_axi.gen_write.s_axi_bid_i[0]_i_1_n_0 ;
  wire \gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_axi.gen_write.s_axi_wready_i_i_1_n_0 ;
  wire [1:0]\gen_axi.gen_write.write_cs ;
  wire \gen_axi.gen_write.write_cs[0]_i_1_n_0 ;
  wire \gen_axi.gen_write.write_cs[1]_i_2_n_0 ;
  wire \gen_axi.gen_write.write_cs[1]_i_4_n_0 ;
  wire \gen_write.w_cnt_reg[1] ;
  wire \gen_write.w_state_reg[0] ;
  wire \gen_write.w_state_reg[0]_0 ;
  wire m_axi_awready;
  wire [0:0]m_axi_bid;
  wire m_axi_bvalid;
  wire m_axi_wready;
  wire [1:0]\m_payload_i_reg[54] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wvalid;

  LUT5 #(
    .INIT(32'hFFEE3022)) 
    \gen_axi.gen_write.s_axi_awready_i_i_1 
       (.I0(\gen_write.w_state_reg[0] ),
        .I1(\gen_axi.gen_write.write_cs [0]),
        .I2(s_axi_bready),
        .I3(\gen_axi.gen_write.write_cs [1]),
        .I4(err_awready),
        .O(\gen_axi.gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_awready_i_i_1_n_0 ),
        .Q(err_awready),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \gen_axi.gen_write.s_axi_bid_i[0]_i_1 
       (.I0(\m_payload_i_reg[54] [1]),
        .I1(\gen_axi.gen_write.write_cs [1]),
        .I2(\gen_axi.gen_write.write_cs [0]),
        .I3(\gen_write.w_state_reg[0] ),
        .I4(err_bid),
        .O(\gen_axi.gen_write.s_axi_bid_i[0]_i_1_n_0 ));
  FDRE \gen_axi.gen_write.s_axi_bid_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_bid_i[0]_i_1_n_0 ),
        .Q(err_bid),
        .R(SR));
  LUT5 #(
    .INIT(32'hEFFFA888)) 
    \gen_axi.gen_write.s_axi_bvalid_i_i_1 
       (.I0(\gen_axi.gen_write.write_cs[1]_i_4_n_0 ),
        .I1(\gen_axi.gen_write.write_cs [0]),
        .I2(\gen_axi.gen_write.write_cs [1]),
        .I3(s_axi_bready),
        .I4(err_bvalid),
        .O(\gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ),
        .Q(err_bvalid),
        .R(SR));
  LUT5 #(
    .INIT(32'h0FFF0101)) 
    \gen_axi.gen_write.s_axi_wready_i_i_1 
       (.I0(\gen_write.w_state_reg[0] ),
        .I1(\gen_axi.gen_write.write_cs [1]),
        .I2(\gen_axi.gen_write.write_cs [0]),
        .I3(\gen_axi.gen_write.write_cs[1]_i_4_n_0 ),
        .I4(err_wready),
        .O(\gen_axi.gen_write.s_axi_wready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_wready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_wready_i_i_1_n_0 ),
        .Q(err_wready),
        .R(SR));
  LUT2 #(
    .INIT(4'h1)) 
    \gen_axi.gen_write.write_cs[0]_i_1 
       (.I0(\gen_axi.gen_write.write_cs [0]),
        .I1(\gen_axi.gen_write.write_cs [1]),
        .O(\gen_axi.gen_write.write_cs[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFC500C5)) 
    \gen_axi.gen_write.write_cs[1]_i_2 
       (.I0(\gen_write.w_state_reg[0] ),
        .I1(s_axi_bready),
        .I2(\gen_axi.gen_write.write_cs [1]),
        .I3(\gen_axi.gen_write.write_cs [0]),
        .I4(\gen_axi.gen_write.write_cs[1]_i_4_n_0 ),
        .O(\gen_axi.gen_write.write_cs[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \gen_axi.gen_write.write_cs[1]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(s_axi_wlast),
        .I3(\gen_axi.gen_write.write_cs [1]),
        .I4(s_axi_wvalid),
        .O(\gen_axi.gen_write.write_cs[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.write_cs_reg[0] 
       (.C(aclk),
        .CE(\gen_axi.gen_write.write_cs[1]_i_2_n_0 ),
        .D(\gen_axi.gen_write.write_cs[0]_i_1_n_0 ),
        .Q(\gen_axi.gen_write.write_cs [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.write_cs_reg[1] 
       (.C(aclk),
        .CE(\gen_axi.gen_write.write_cs[1]_i_2_n_0 ),
        .D(\gen_axi.gen_write.write_cs [0]),
        .Q(\gen_axi.gen_write.write_cs [1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hEFAFAFAFEAAAAAAA)) 
    \gen_write.w_state[1]_i_1 
       (.I0(\gen_write.w_state_reg[0]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(err_bvalid),
        .I4(s_axi_bready),
        .I5(m_valid_i_reg_0),
        .O(E));
  LUT5 #(
    .INIT(32'hF07FFF7F)) 
    m_valid_i_i_2
       (.I0(err_awready),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\m_payload_i_reg[54] [0]),
        .I4(m_axi_awready),
        .O(m_valid_i_reg));
  LUT4 #(
    .INIT(16'hBF80)) 
    \s_axi_bid[0]_INST_0 
       (.I0(err_bid),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(m_axi_bid),
        .O(s_axi_bid));
  LUT4 #(
    .INIT(16'hBF80)) 
    s_axi_bvalid_INST_0
       (.I0(err_bvalid),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(m_axi_bvalid),
        .O(s_axi_bvalid));
  LUT5 #(
    .INIT(32'h8080BF80)) 
    s_axi_wready_INST_0
       (.I0(err_wready),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(m_axi_wready),
        .I4(\gen_write.w_cnt_reg[1] ),
        .O(s_axi_wready));
endmodule

(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "128" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_BASE_ADDR = "64'b0000000000000000000000000000000001110000000000000000000000000000" *) (* C_DEST = "1'b0" *) (* C_DEST_WIDTH = "1" *) 
(* C_FAMILY = "zynquplus" *) (* C_M_AXI_ADDR_WIDTH = "32" *) (* C_M_AXI_SUPPORTS_READ = "1'b1" *) 
(* C_M_AXI_SUPPORTS_WRITE = "1'b1" *) (* C_NUM_RANGES = "1" *) (* C_PREFIX = "1'b0" *) 
(* C_PREFIX_WIDTH = "1" *) (* C_RANGE_SIZE = "32'b00000000000000000000000000011000" *) (* C_S_AXI_ADDR_WIDTH = "32" *) 
(* C_S_AXI_SUPPORTS_READ = "0" *) (* C_S_AXI_SUPPORTS_WRITE = "1" *) (* C_USES_DEST = "0" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_DECERR = "2'b11" *) (* P_NUM_RANGES_LOG = "1" *) 
(* R_DECERR = "2'b11" *) (* R_IDLE = "2'b00" *) (* R_PENDING = "2'b01" *) 
(* W_DECERR = "2'b11" *) (* W_IDLE = "2'b00" *) (* W_PENDING = "2'b01" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire decerr_slave_inst_n_1;
  wire decerr_slave_inst_n_5;
  wire err_awready;
  wire \gen_write.aw_cnt[0]_i_1_n_0 ;
  wire \gen_write.aw_cnt[5]_i_3_n_0 ;
  wire \gen_write.aw_cnt[5]_i_4_n_0 ;
  wire \gen_write.aw_cnt[5]_i_7_n_0 ;
  wire [5:0]\gen_write.aw_cnt_reg__0 ;
  wire \gen_write.w_cnt[0]_i_1_n_0 ;
  wire \gen_write.w_cnt[1]_i_1_n_0 ;
  wire \gen_write.w_cnt[2]_i_1_n_0 ;
  wire \gen_write.w_cnt[3]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_1_n_0 ;
  wire \gen_write.w_cnt[5]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_3_n_0 ;
  wire \gen_write.w_cnt[5]_i_4_n_0 ;
  wire \gen_write.w_cnt[5]_i_5_n_0 ;
  wire [5:0]\gen_write.w_cnt_reg__0 ;
  wire \gen_write.w_state[1]_i_2_n_0 ;
  wire \gen_write.w_state[1]_i_3_n_0 ;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [0:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [32:32]mr_axi_awaddr;
  wire register_slice_inst_n_0;
  wire register_slice_inst_n_1;
  wire register_slice_inst_n_61;
  wire register_slice_inst_n_62;
  wire register_slice_inst_n_64;
  wire register_slice_inst_n_65;
  wire register_slice_inst_n_67;
  wire register_slice_inst_n_68;
  wire register_slice_inst_n_69;
  wire register_slice_inst_n_70;
  wire register_slice_inst_n_71;
  wire register_slice_inst_n_72;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire w_mask;
  wire [1:0]w_state;

  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[127:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = s_axi_wlast;
  assign m_axi_wstrb[15:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rdata[127] = \<const0> ;
  assign s_axi_rdata[126] = \<const0> ;
  assign s_axi_rdata[125] = \<const0> ;
  assign s_axi_rdata[124] = \<const0> ;
  assign s_axi_rdata[123] = \<const0> ;
  assign s_axi_rdata[122] = \<const0> ;
  assign s_axi_rdata[121] = \<const0> ;
  assign s_axi_rdata[120] = \<const0> ;
  assign s_axi_rdata[119] = \<const0> ;
  assign s_axi_rdata[118] = \<const0> ;
  assign s_axi_rdata[117] = \<const0> ;
  assign s_axi_rdata[116] = \<const0> ;
  assign s_axi_rdata[115] = \<const0> ;
  assign s_axi_rdata[114] = \<const0> ;
  assign s_axi_rdata[113] = \<const0> ;
  assign s_axi_rdata[112] = \<const0> ;
  assign s_axi_rdata[111] = \<const0> ;
  assign s_axi_rdata[110] = \<const0> ;
  assign s_axi_rdata[109] = \<const0> ;
  assign s_axi_rdata[108] = \<const0> ;
  assign s_axi_rdata[107] = \<const0> ;
  assign s_axi_rdata[106] = \<const0> ;
  assign s_axi_rdata[105] = \<const0> ;
  assign s_axi_rdata[104] = \<const0> ;
  assign s_axi_rdata[103] = \<const0> ;
  assign s_axi_rdata[102] = \<const0> ;
  assign s_axi_rdata[101] = \<const0> ;
  assign s_axi_rdata[100] = \<const0> ;
  assign s_axi_rdata[99] = \<const0> ;
  assign s_axi_rdata[98] = \<const0> ;
  assign s_axi_rdata[97] = \<const0> ;
  assign s_axi_rdata[96] = \<const0> ;
  assign s_axi_rdata[95] = \<const0> ;
  assign s_axi_rdata[94] = \<const0> ;
  assign s_axi_rdata[93] = \<const0> ;
  assign s_axi_rdata[92] = \<const0> ;
  assign s_axi_rdata[91] = \<const0> ;
  assign s_axi_rdata[90] = \<const0> ;
  assign s_axi_rdata[89] = \<const0> ;
  assign s_axi_rdata[88] = \<const0> ;
  assign s_axi_rdata[87] = \<const0> ;
  assign s_axi_rdata[86] = \<const0> ;
  assign s_axi_rdata[85] = \<const0> ;
  assign s_axi_rdata[84] = \<const0> ;
  assign s_axi_rdata[83] = \<const0> ;
  assign s_axi_rdata[82] = \<const0> ;
  assign s_axi_rdata[81] = \<const0> ;
  assign s_axi_rdata[80] = \<const0> ;
  assign s_axi_rdata[79] = \<const0> ;
  assign s_axi_rdata[78] = \<const0> ;
  assign s_axi_rdata[77] = \<const0> ;
  assign s_axi_rdata[76] = \<const0> ;
  assign s_axi_rdata[75] = \<const0> ;
  assign s_axi_rdata[74] = \<const0> ;
  assign s_axi_rdata[73] = \<const0> ;
  assign s_axi_rdata[72] = \<const0> ;
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
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
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave decerr_slave_inst
       (.E(decerr_slave_inst_n_1),
        .Q(w_state),
        .SR(register_slice_inst_n_0),
        .aclk(aclk),
        .err_awready(err_awready),
        .\gen_write.w_cnt_reg[1] (s_axi_wready_INST_0_i_1_n_0),
        .\gen_write.w_state_reg[0] (register_slice_inst_n_61),
        .\gen_write.w_state_reg[0]_0 (\gen_write.w_state[1]_i_3_n_0 ),
        .m_axi_awready(m_axi_awready),
        .m_axi_bid(m_axi_bid),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wready(m_axi_wready),
        .\m_payload_i_reg[54] ({m_axi_awid,mr_axi_awaddr}),
        .m_valid_i_reg(decerr_slave_inst_n_5),
        .m_valid_i_reg_0(register_slice_inst_n_62),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.aw_cnt[0]_i_1 
       (.I0(\gen_write.aw_cnt_reg__0 [0]),
        .O(\gen_write.aw_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_write.aw_cnt[5]_i_3 
       (.I0(\gen_write.aw_cnt_reg__0 [5]),
        .I1(s_axi_awvalid),
        .O(\gen_write.aw_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_write.aw_cnt[5]_i_4 
       (.I0(\gen_write.aw_cnt_reg__0 [1]),
        .I1(\gen_write.aw_cnt_reg__0 [0]),
        .I2(\gen_write.aw_cnt_reg__0 [5]),
        .I3(\gen_write.aw_cnt_reg__0 [4]),
        .I4(\gen_write.aw_cnt_reg__0 [3]),
        .I5(\gen_write.aw_cnt_reg__0 [2]),
        .O(\gen_write.aw_cnt[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_write.aw_cnt[5]_i_7 
       (.I0(\gen_write.aw_cnt[5]_i_4_n_0 ),
        .I1(m_axi_bvalid),
        .I2(s_axi_bready),
        .O(\gen_write.aw_cnt[5]_i_7_n_0 ));
  FDRE \gen_write.aw_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_72),
        .D(\gen_write.aw_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.aw_cnt_reg__0 [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_72),
        .D(register_slice_inst_n_71),
        .Q(\gen_write.aw_cnt_reg__0 [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_72),
        .D(register_slice_inst_n_70),
        .Q(\gen_write.aw_cnt_reg__0 [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_72),
        .D(register_slice_inst_n_69),
        .Q(\gen_write.aw_cnt_reg__0 [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_72),
        .D(register_slice_inst_n_68),
        .Q(\gen_write.aw_cnt_reg__0 [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_72),
        .D(register_slice_inst_n_67),
        .Q(\gen_write.aw_cnt_reg__0 [5]),
        .R(register_slice_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.w_cnt[0]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gen_write.w_cnt[1]_i_1 
       (.I0(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I1(\gen_write.w_cnt_reg__0 [1]),
        .I2(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h9AA6)) 
    \gen_write.w_cnt[2]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [2]),
        .I1(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I2(\gen_write.w_cnt_reg__0 [1]),
        .I3(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h9AAAAAA6)) 
    \gen_write.w_cnt[3]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [3]),
        .I1(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I2(\gen_write.w_cnt_reg__0 [0]),
        .I3(\gen_write.w_cnt_reg__0 [1]),
        .I4(\gen_write.w_cnt_reg__0 [2]),
        .O(\gen_write.w_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAA6)) 
    \gen_write.w_cnt[4]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [4]),
        .I1(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I2(\gen_write.w_cnt_reg__0 [1]),
        .I3(\gen_write.w_cnt_reg__0 [0]),
        .I4(\gen_write.w_cnt_reg__0 [2]),
        .I5(\gen_write.w_cnt_reg__0 [3]),
        .O(\gen_write.w_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \gen_write.w_cnt[4]_i_2 
       (.I0(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I1(w_mask),
        .I2(s_axi_awvalid),
        .I3(\gen_write.aw_cnt_reg__0 [5]),
        .I4(register_slice_inst_n_65),
        .O(\gen_write.w_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA9A)) 
    \gen_write.w_cnt[5]_i_1 
       (.I0(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I1(w_mask),
        .I2(s_axi_awvalid),
        .I3(\gen_write.aw_cnt_reg__0 [5]),
        .I4(register_slice_inst_n_65),
        .O(\gen_write.w_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA95AAAAAA9)) 
    \gen_write.w_cnt[5]_i_2 
       (.I0(\gen_write.w_cnt_reg__0 [5]),
        .I1(\gen_write.w_cnt[5]_i_4_n_0 ),
        .I2(\gen_write.w_cnt_reg__0 [3]),
        .I3(\gen_write.w_cnt_reg__0 [2]),
        .I4(\gen_write.w_cnt_reg__0 [4]),
        .I5(\gen_write.w_cnt[5]_i_5_n_0 ),
        .O(\gen_write.w_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040404000000000)) 
    \gen_write.w_cnt[5]_i_3 
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(m_axi_wready),
        .I2(s_axi_wlast),
        .I3(w_state[1]),
        .I4(w_state[0]),
        .I5(s_axi_wvalid),
        .O(\gen_write.w_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEF)) 
    \gen_write.w_cnt[5]_i_4 
       (.I0(\gen_write.w_cnt_reg__0 [1]),
        .I1(\gen_write.w_cnt_reg__0 [0]),
        .I2(register_slice_inst_n_65),
        .I3(\gen_write.aw_cnt[5]_i_3_n_0 ),
        .I4(w_mask),
        .I5(\gen_write.w_cnt[5]_i_3_n_0 ),
        .O(\gen_write.w_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \gen_write.w_cnt[5]_i_5 
       (.I0(register_slice_inst_n_65),
        .I1(\gen_write.aw_cnt[5]_i_3_n_0 ),
        .I2(w_mask),
        .I3(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I4(\gen_write.w_cnt_reg__0 [1]),
        .I5(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[5]_i_5_n_0 ));
  FDRE \gen_write.w_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[1]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[2]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[3]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[4]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[5]_i_2_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [5]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_mask_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_64),
        .Q(w_mask),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_write.w_state[1]_i_2 
       (.I0(w_state[0]),
        .I1(w_state[1]),
        .O(\gen_write.w_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_write.w_state[1]_i_3 
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(w_state[0]),
        .I2(w_state[1]),
        .I3(\gen_write.aw_cnt[5]_i_4_n_0 ),
        .O(\gen_write.w_state[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.w_state_reg[0] 
       (.C(aclk),
        .CE(decerr_slave_inst_n_1),
        .D(register_slice_inst_n_1),
        .Q(w_state[0]),
        .R(register_slice_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.w_state_reg[1] 
       (.C(aclk),
        .CE(decerr_slave_inst_n_1),
        .D(\gen_write.w_state[1]_i_2_n_0 ),
        .Q(w_state[1]),
        .R(register_slice_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(s_axi_wvalid),
        .I2(w_state[0]),
        .I3(w_state[1]),
        .O(m_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice register_slice_inst
       (.D(register_slice_inst_n_1),
        .E(register_slice_inst_n_72),
        .Q({m_axi_awqos,m_axi_awid,m_axi_awlock,m_axi_awlen,m_axi_awcache,m_axi_awburst,m_axi_awsize,m_axi_awprot,mr_axi_awaddr,m_axi_awaddr}),
        .SR(register_slice_inst_n_0),
        .aclk(aclk),
        .aresetn(aresetn),
        .err_awready(err_awready),
        .\gen_axi.gen_write.s_axi_awready_i_reg (register_slice_inst_n_61),
        .\gen_axi.gen_write.s_axi_awready_i_reg_0 (decerr_slave_inst_n_5),
        .\gen_write.aw_cnt_reg[1] (\gen_write.aw_cnt[5]_i_7_n_0 ),
        .\gen_write.aw_cnt_reg[1]_0 (\gen_write.aw_cnt[5]_i_4_n_0 ),
        .\gen_write.aw_cnt_reg[5] ({register_slice_inst_n_67,register_slice_inst_n_68,register_slice_inst_n_69,register_slice_inst_n_70,register_slice_inst_n_71}),
        .\gen_write.aw_cnt_reg[5]_0 (\gen_write.aw_cnt_reg__0 ),
        .\gen_write.aw_cnt_reg[5]_1 (\gen_write.aw_cnt[5]_i_3_n_0 ),
        .\gen_write.w_mask_reg (register_slice_inst_n_64),
        .\gen_write.w_state_reg[0] (\gen_write.w_state[1]_i_3_n_0 ),
        .\gen_write.w_state_reg[1] (register_slice_inst_n_62),
        .\gen_write.w_state_reg[1]_0 (w_state),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[32] (register_slice_inst_n_65),
        .\s_axi_awqos[3] ({s_axi_awqos,s_axi_awid,s_axi_awlock,s_axi_awlen,s_axi_awcache,s_axi_awburst,s_axi_awsize,s_axi_awprot,s_axi_awaddr}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .w_mask(w_mask));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(m_axi_bresp[0]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .O(s_axi_bresp[0]));
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(m_axi_bresp[1]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .O(s_axi_bresp[1]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_wready_INST_0_i_1
       (.I0(\gen_write.w_cnt_reg__0 [1]),
        .I1(\gen_write.w_cnt_reg__0 [0]),
        .I2(\gen_write.w_cnt_reg__0 [3]),
        .I3(\gen_write.w_cnt_reg__0 [2]),
        .I4(\gen_write.w_cnt_reg__0 [5]),
        .I5(\gen_write.w_cnt_reg__0 [4]),
        .O(s_axi_wready_INST_0_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice
   (SR,
    D,
    Q,
    \gen_axi.gen_write.s_axi_awready_i_reg ,
    \gen_write.w_state_reg[1] ,
    m_axi_awvalid,
    \gen_write.w_mask_reg ,
    \m_payload_i_reg[32] ,
    s_axi_awready,
    \gen_write.aw_cnt_reg[5] ,
    E,
    aclk,
    \gen_write.w_state_reg[1]_0 ,
    err_awready,
    s_axi_awvalid,
    \gen_write.aw_cnt_reg[5]_0 ,
    \gen_axi.gen_write.s_axi_awready_i_reg_0 ,
    \gen_write.aw_cnt_reg[5]_1 ,
    w_mask,
    \gen_write.w_state_reg[0] ,
    \gen_write.aw_cnt_reg[1] ,
    s_axi_bready,
    m_axi_bvalid,
    \gen_write.aw_cnt_reg[1]_0 ,
    \s_axi_awqos[3] ,
    aresetn);
  output [0:0]SR;
  output [0:0]D;
  output [58:0]Q;
  output \gen_axi.gen_write.s_axi_awready_i_reg ;
  output \gen_write.w_state_reg[1] ;
  output m_axi_awvalid;
  output \gen_write.w_mask_reg ;
  output \m_payload_i_reg[32] ;
  output s_axi_awready;
  output [4:0]\gen_write.aw_cnt_reg[5] ;
  output [0:0]E;
  input aclk;
  input [1:0]\gen_write.w_state_reg[1]_0 ;
  input err_awready;
  input s_axi_awvalid;
  input [5:0]\gen_write.aw_cnt_reg[5]_0 ;
  input \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  input \gen_write.aw_cnt_reg[5]_1 ;
  input w_mask;
  input \gen_write.w_state_reg[0] ;
  input \gen_write.aw_cnt_reg[1] ;
  input s_axi_bready;
  input m_axi_bvalid;
  input \gen_write.aw_cnt_reg[1]_0 ;
  input [57:0]\s_axi_awqos[3] ;
  input aresetn;

  wire [0:0]D;
  wire [0:0]E;
  wire [58:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire err_awready;
  wire \gen_axi.gen_write.s_axi_awready_i_reg ;
  wire \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  wire \gen_write.aw_cnt_reg[1] ;
  wire \gen_write.aw_cnt_reg[1]_0 ;
  wire [4:0]\gen_write.aw_cnt_reg[5] ;
  wire [5:0]\gen_write.aw_cnt_reg[5]_0 ;
  wire \gen_write.aw_cnt_reg[5]_1 ;
  wire \gen_write.w_mask_reg ;
  wire \gen_write.w_state_reg[0] ;
  wire \gen_write.w_state_reg[1] ;
  wire [1:0]\gen_write.w_state_reg[1]_0 ;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire \m_payload_i_reg[32] ;
  wire [57:0]\s_axi_awqos[3] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire w_mask;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice \aw.aw_pipe 
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .aresetn(aresetn),
        .err_awready(err_awready),
        .\gen_axi.gen_write.s_axi_awready_i_reg (\gen_axi.gen_write.s_axi_awready_i_reg ),
        .\gen_axi.gen_write.s_axi_awready_i_reg_0 (\gen_axi.gen_write.s_axi_awready_i_reg_0 ),
        .\gen_write.aw_cnt_reg[1] (\gen_write.aw_cnt_reg[1] ),
        .\gen_write.aw_cnt_reg[1]_0 (\gen_write.aw_cnt_reg[1]_0 ),
        .\gen_write.aw_cnt_reg[5] (\gen_write.aw_cnt_reg[5] ),
        .\gen_write.aw_cnt_reg[5]_0 (\gen_write.aw_cnt_reg[5]_0 ),
        .\gen_write.aw_cnt_reg[5]_1 (\gen_write.aw_cnt_reg[5]_1 ),
        .\gen_write.w_mask_reg (\gen_write.w_mask_reg ),
        .\gen_write.w_state_reg[0] (\gen_write.w_state_reg[0] ),
        .\gen_write.w_state_reg[1] (\gen_write.w_state_reg[1] ),
        .\gen_write.w_state_reg[1]_0 (\gen_write.w_state_reg[1]_0 ),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[32]_0 (\m_payload_i_reg[32] ),
        .\s_axi_awqos[3] (\s_axi_awqos[3] ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .w_mask(w_mask));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice
   (SR,
    D,
    Q,
    \gen_axi.gen_write.s_axi_awready_i_reg ,
    \gen_write.w_state_reg[1] ,
    m_axi_awvalid,
    \gen_write.w_mask_reg ,
    \m_payload_i_reg[32]_0 ,
    s_axi_awready,
    \gen_write.aw_cnt_reg[5] ,
    E,
    aclk,
    \gen_write.w_state_reg[1]_0 ,
    err_awready,
    s_axi_awvalid,
    \gen_write.aw_cnt_reg[5]_0 ,
    \gen_axi.gen_write.s_axi_awready_i_reg_0 ,
    \gen_write.aw_cnt_reg[5]_1 ,
    w_mask,
    \gen_write.w_state_reg[0] ,
    \gen_write.aw_cnt_reg[1] ,
    s_axi_bready,
    m_axi_bvalid,
    \gen_write.aw_cnt_reg[1]_0 ,
    \s_axi_awqos[3] ,
    aresetn);
  output [0:0]SR;
  output [0:0]D;
  output [58:0]Q;
  output \gen_axi.gen_write.s_axi_awready_i_reg ;
  output \gen_write.w_state_reg[1] ;
  output m_axi_awvalid;
  output \gen_write.w_mask_reg ;
  output \m_payload_i_reg[32]_0 ;
  output s_axi_awready;
  output [4:0]\gen_write.aw_cnt_reg[5] ;
  output [0:0]E;
  input aclk;
  input [1:0]\gen_write.w_state_reg[1]_0 ;
  input err_awready;
  input s_axi_awvalid;
  input [5:0]\gen_write.aw_cnt_reg[5]_0 ;
  input \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  input \gen_write.aw_cnt_reg[5]_1 ;
  input w_mask;
  input \gen_write.w_state_reg[0] ;
  input \gen_write.aw_cnt_reg[1] ;
  input s_axi_bready;
  input m_axi_bvalid;
  input \gen_write.aw_cnt_reg[1]_0 ;
  input [57:0]\s_axi_awqos[3] ;
  input aresetn;

  wire [0:0]D;
  wire [0:0]E;
  wire [58:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire \aresetn_d[0]_i_1_n_0 ;
  wire \aresetn_d_reg_n_0_[1] ;
  wire err_awready;
  wire \gen_axi.gen_write.s_axi_awready_i_reg ;
  wire \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  wire \gen_write.aw_cnt[4]_i_2_n_0 ;
  wire \gen_write.aw_cnt[5]_i_5_n_0 ;
  wire \gen_write.aw_cnt[5]_i_6_n_0 ;
  wire \gen_write.aw_cnt_reg[1] ;
  wire \gen_write.aw_cnt_reg[1]_0 ;
  wire [4:0]\gen_write.aw_cnt_reg[5] ;
  wire [5:0]\gen_write.aw_cnt_reg[5]_0 ;
  wire \gen_write.aw_cnt_reg[5]_1 ;
  wire \gen_write.w_mask_reg ;
  wire \gen_write.w_state_reg[0] ;
  wire \gen_write.w_state_reg[1] ;
  wire [1:0]\gen_write.w_state_reg[1]_0 ;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire \m_payload_i[32]_i_3_n_0 ;
  wire \m_payload_i[54]_i_1_n_0 ;
  wire \m_payload_i_reg[32]_0 ;
  wire m_valid_i_i_1_n_0;
  wire mr_axi_awvalid;
  wire [1:1]p_0_in;
  wire [57:0]\s_axi_awqos[3] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_ready_i_i_1_n_0;
  wire sr_axi_awready;
  wire w_mask;
  wire w_match;

  LUT1 #(
    .INIT(2'h1)) 
    \aresetn_d[0]_i_1 
       (.I0(aresetn),
        .O(\aresetn_d[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(p_0_in),
        .R(\aresetn_d[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\aresetn_d_reg_n_0_[1] ),
        .R(\aresetn_d[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_axi.gen_write.write_cs[1]_i_1 
       (.I0(\aresetn_d_reg_n_0_[1] ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \gen_axi.gen_write.write_cs[1]_i_3 
       (.I0(\gen_write.w_state_reg[1]_0 [0]),
        .I1(\gen_write.w_state_reg[1]_0 [1]),
        .I2(err_awready),
        .I3(Q[32]),
        .I4(mr_axi_awvalid),
        .O(\gen_axi.gen_write.s_axi_awready_i_reg ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_write.aw_cnt[1]_i_1 
       (.I0(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I1(\gen_write.aw_cnt_reg[5]_0 [1]),
        .I2(\gen_write.aw_cnt_reg[5]_0 [0]),
        .O(\gen_write.aw_cnt_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_write.aw_cnt[2]_i_1 
       (.I0(\gen_write.aw_cnt_reg[5]_0 [2]),
        .I1(\gen_write.aw_cnt_reg[5]_0 [1]),
        .I2(\gen_write.aw_cnt_reg[5]_0 [0]),
        .I3(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .O(\gen_write.aw_cnt_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \gen_write.aw_cnt[3]_i_1 
       (.I0(\gen_write.aw_cnt_reg[5]_0 [1]),
        .I1(\gen_write.aw_cnt_reg[5]_0 [0]),
        .I2(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I3(\gen_write.aw_cnt_reg[5]_0 [2]),
        .I4(\gen_write.aw_cnt_reg[5]_0 [3]),
        .O(\gen_write.aw_cnt_reg[5] [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_write.aw_cnt[4]_i_1 
       (.I0(\gen_write.aw_cnt_reg[5]_0 [4]),
        .I1(\gen_write.aw_cnt_reg[5]_0 [1]),
        .I2(\gen_write.aw_cnt_reg[5]_0 [0]),
        .I3(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I4(\gen_write.aw_cnt_reg[5]_0 [2]),
        .I5(\gen_write.aw_cnt_reg[5]_0 [3]),
        .O(\gen_write.aw_cnt_reg[5] [3]));
  LUT6 #(
    .INIT(64'h0004040404040404)) 
    \gen_write.aw_cnt[4]_i_2 
       (.I0(\m_payload_i_reg[32]_0 ),
        .I1(sr_axi_awready),
        .I2(\gen_write.aw_cnt_reg[5]_1 ),
        .I3(s_axi_bready),
        .I4(m_axi_bvalid),
        .I5(\gen_write.aw_cnt_reg[1]_0 ),
        .O(\gen_write.aw_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFB04040404040404)) 
    \gen_write.aw_cnt[5]_i_1 
       (.I0(\m_payload_i_reg[32]_0 ),
        .I1(sr_axi_awready),
        .I2(\gen_write.aw_cnt_reg[5]_1 ),
        .I3(s_axi_bready),
        .I4(m_axi_bvalid),
        .I5(\gen_write.aw_cnt_reg[1]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAA9AAA9)) 
    \gen_write.aw_cnt[5]_i_2 
       (.I0(\gen_write.aw_cnt_reg[5]_0 [5]),
        .I1(\gen_write.aw_cnt_reg[5]_0 [4]),
        .I2(\gen_write.aw_cnt_reg[5]_0 [3]),
        .I3(\gen_write.aw_cnt_reg[5]_0 [2]),
        .I4(\gen_write.aw_cnt[5]_i_5_n_0 ),
        .I5(\gen_write.aw_cnt[5]_i_6_n_0 ),
        .O(\gen_write.aw_cnt_reg[5] [4]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \gen_write.aw_cnt[5]_i_5 
       (.I0(\gen_write.aw_cnt_reg[1] ),
        .I1(\gen_write.aw_cnt_reg[5]_1 ),
        .I2(sr_axi_awready),
        .I3(\m_payload_i_reg[32]_0 ),
        .I4(\gen_write.aw_cnt_reg[5]_0 [1]),
        .I5(\gen_write.aw_cnt_reg[5]_0 [0]),
        .O(\gen_write.aw_cnt[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEFEEEE)) 
    \gen_write.aw_cnt[5]_i_6 
       (.I0(\gen_write.aw_cnt_reg[5]_0 [1]),
        .I1(\gen_write.aw_cnt_reg[5]_0 [0]),
        .I2(\gen_write.aw_cnt_reg[1] ),
        .I3(\gen_write.aw_cnt_reg[5]_1 ),
        .I4(sr_axi_awready),
        .I5(\m_payload_i_reg[32]_0 ),
        .O(\gen_write.aw_cnt[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A200A2A2)) 
    \gen_write.w_mask_i_1 
       (.I0(\aresetn_d_reg_n_0_[1] ),
        .I1(\gen_write.aw_cnt_reg[5]_1 ),
        .I2(w_mask),
        .I3(\m_payload_i_reg[32]_0 ),
        .I4(s_axi_awready),
        .I5(\gen_write.w_state_reg[0] ),
        .O(\gen_write.w_mask_reg ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4FFF)) 
    \gen_write.w_state[0]_i_1 
       (.I0(Q[32]),
        .I1(mr_axi_awvalid),
        .I2(\gen_write.w_state_reg[1]_0 [1]),
        .I3(\gen_write.w_state_reg[1]_0 [0]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_write.w_state[1]_i_4 
       (.I0(mr_axi_awvalid),
        .I1(Q[32]),
        .O(\gen_write.w_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    m_axi_awvalid_INST_0
       (.I0(mr_axi_awvalid),
        .I1(Q[32]),
        .I2(\gen_write.w_state_reg[1]_0 [0]),
        .O(m_axi_awvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[32]_i_1 
       (.I0(\m_payload_i_reg[32]_0 ),
        .O(w_match));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \m_payload_i[32]_i_2 
       (.I0(\s_axi_awqos[3] [24]),
        .I1(\s_axi_awqos[3] [28]),
        .I2(\s_axi_awqos[3] [25]),
        .I3(\s_axi_awqos[3] [30]),
        .I4(\m_payload_i[32]_i_3_n_0 ),
        .O(\m_payload_i_reg[32]_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \m_payload_i[32]_i_3 
       (.I0(\s_axi_awqos[3] [29]),
        .I1(\s_axi_awqos[3] [31]),
        .I2(\s_axi_awqos[3] [26]),
        .I3(\s_axi_awqos[3] [27]),
        .O(\m_payload_i[32]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[54]_i_1 
       (.I0(mr_axi_awvalid),
        .O(\m_payload_i[54]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(w_match),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [32]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [33]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [34]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [35]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [36]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [37]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [38]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [39]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [40]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [41]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [42]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [43]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [44]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [45]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [46]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [47]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [48]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [49]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [50]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [51]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [52]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [53]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [54]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [55]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [56]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [57]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(\s_axi_awqos[3] [9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    m_valid_i_i_1
       (.I0(s_axi_awvalid),
        .I1(\gen_write.aw_cnt_reg[5]_0 [5]),
        .I2(sr_axi_awready),
        .I3(\gen_axi.gen_write.s_axi_awready_i_reg_0 ),
        .O(m_valid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(mr_axi_awvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_awready_INST_0
       (.I0(sr_axi_awready),
        .I1(\gen_write.aw_cnt_reg[5]_0 [5]),
        .O(s_axi_awready));
  LUT6 #(
    .INIT(64'h2AAA2A222AAA2AAA)) 
    s_ready_i_i_1
       (.I0(p_0_in),
        .I1(\aresetn_d_reg_n_0_[1] ),
        .I2(\gen_axi.gen_write.s_axi_awready_i_reg_0 ),
        .I3(mr_axi_awvalid),
        .I4(\gen_write.aw_cnt_reg[5]_0 [5]),
        .I5(s_axi_awvalid),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(sr_axi_awready),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_s00_mmu_0,axi_mmu_v2_1_13_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_mmu_v2_1_13_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [127:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [15:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 64, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [127:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [15:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 64, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m_axi_bready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [127:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_rready_UNCONNECTED;
  wire NLW_inst_s_axi_arready_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_inst_s_axi_rvalid_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [127:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "128" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_BASE_ADDR = "64'b0000000000000000000000000000000001110000000000000000000000000000" *) 
  (* C_DEST = "1'b0" *) 
  (* C_DEST_WIDTH = "1" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_M_AXI_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_SUPPORTS_READ = "1'b1" *) 
  (* C_M_AXI_SUPPORTS_WRITE = "1'b1" *) 
  (* C_NUM_RANGES = "1" *) 
  (* C_PREFIX = "1'b0" *) 
  (* C_PREFIX_WIDTH = "1" *) 
  (* C_RANGE_SIZE = "32'b00000000000000000000000000011000" *) 
  (* C_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_SUPPORTS_READ = "0" *) 
  (* C_S_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_USES_DEST = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_NUM_RANGES_LOG = "1" *) 
  (* R_DECERR = "2'b11" *) 
  (* R_IDLE = "2'b00" *) 
  (* R_PENDING = "2'b01" *) 
  (* W_DECERR = "2'b11" *) 
  (* W_IDLE = "2'b00" *) 
  (* W_PENDING = "2'b01" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(NLW_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b1),
        .m_axi_rready(NLW_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
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
