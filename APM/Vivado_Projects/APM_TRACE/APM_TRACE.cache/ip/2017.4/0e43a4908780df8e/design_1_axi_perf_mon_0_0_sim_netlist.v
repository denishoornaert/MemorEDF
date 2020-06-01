// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri May  1 11:49:37 2020
// Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_perf_mon_0_0_sim_netlist.v
// Design      : design_1_axi_perf_mon_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_async_fifo
   (m_axis_tdata,
    empty,
    m_axis_tvalid_int_reg,
    \Fifo_Wr_Data_reg[1] ,
    \GEN_ISR_REG[1].ISR_reg[1] ,
    Streaming_Fifo_Full,
    Fifo_Wr_En1_out,
    D,
    rst,
    core_aclk,
    wr_en,
    din,
    fifo_empty_reg,
    m_axis_tready,
    m_axis_tvalid_int_reg_0,
    Mon_Wr_En,
    Event_Log_En_sync,
    core_aresetn,
    Streaming_Fifo_Full_D1,
    s_axi_aresetn,
    \buf_valid_reg[0] ,
    p_0_in8_in);
  output [55:0]m_axis_tdata;
  output empty;
  output m_axis_tvalid_int_reg;
  output \Fifo_Wr_Data_reg[1] ;
  output \GEN_ISR_REG[1].ISR_reg[1] ;
  output Streaming_Fifo_Full;
  output Fifo_Wr_En1_out;
  output [5:0]D;
  input rst;
  input core_aclk;
  input wr_en;
  input [23:0]din;
  input fifo_empty_reg;
  input m_axis_tready;
  input m_axis_tvalid_int_reg_0;
  input Mon_Wr_En;
  input Event_Log_En_sync;
  input core_aresetn;
  input Streaming_Fifo_Full_D1;
  input s_axi_aresetn;
  input \buf_valid_reg[0] ;
  input p_0_in8_in;

  wire [5:0]D;
  wire Event_Log_En_sync;
  wire \Fifo_Wr_Data_reg[1] ;
  wire Fifo_Wr_En1_out;
  wire \GEN_ISR_REG[1].ISR_reg[1] ;
  wire Mon_Wr_En;
  wire Streaming_Fifo_Full;
  wire Streaming_Fifo_Full_D1;
  wire \buf_valid_reg[0] ;
  wire core_aclk;
  wire core_aresetn;
  wire [23:0]din;
  wire empty;
  wire fifo_empty_reg;
  wire [55:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid_int_reg;
  wire m_axis_tvalid_int_reg_0;
  wire p_0_in8_in;
  wire rst;
  wire s_axi_aresetn;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync \XPM_SYNC.inst 
       (.D(D),
        .Event_Log_En_sync(Event_Log_En_sync),
        .\Fifo_Wr_Data_reg[1] (\Fifo_Wr_Data_reg[1] ),
        .Fifo_Wr_En1_out(Fifo_Wr_En1_out),
        .\GEN_ISR_REG[1].ISR_reg[1] (\GEN_ISR_REG[1].ISR_reg[1] ),
        .Mon_Wr_En(Mon_Wr_En),
        .Streaming_Fifo_Full(Streaming_Fifo_Full),
        .Streaming_Fifo_Full_D1(Streaming_Fifo_Full_D1),
        .\buf_valid_reg[0] (\buf_valid_reg[0] ),
        .core_aclk(core_aclk),
        .core_aresetn(core_aresetn),
        .din(din),
        .empty(empty),
        .fifo_empty_reg(fifo_empty_reg),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid_int_reg(m_axis_tvalid_int_reg),
        .m_axis_tvalid_int_reg_0(m_axis_tvalid_int_reg_0),
        .p_0_in8_in(p_0_in8_in),
        .rst(rst),
        .s_axi_aresetn(s_axi_aresetn),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_async_stream_fifo
   (m_axis_tdata,
    m_axis_tvalid,
    \Fifo_Wr_Data_reg[1] ,
    \GEN_ISR_REG[1].ISR_reg[1] ,
    Streaming_Fifo_Full,
    Fifo_Wr_En1_out,
    Q,
    rst,
    core_aclk,
    wr_en,
    din,
    m_axis_aclk,
    m_axis_tready,
    Mon_Wr_En,
    Event_Log_En_sync,
    core_aresetn,
    Streaming_Fifo_Full_D1,
    s_axi_aresetn,
    m_axis_aresetn);
  output [55:0]m_axis_tdata;
  output m_axis_tvalid;
  output \Fifo_Wr_Data_reg[1] ;
  output \GEN_ISR_REG[1].ISR_reg[1] ;
  output Streaming_Fifo_Full;
  output Fifo_Wr_En1_out;
  output [5:0]Q;
  input rst;
  input core_aclk;
  input wr_en;
  input [23:0]din;
  input m_axis_aclk;
  input m_axis_tready;
  input Mon_Wr_En;
  input Event_Log_En_sync;
  input core_aresetn;
  input Streaming_Fifo_Full_D1;
  input s_axi_aresetn;
  input m_axis_aresetn;

  wire Event_Log_En_sync;
  wire \Fifo_Wr_Data_reg[1] ;
  wire Fifo_Wr_En1_out;
  wire \GEN_ISR_REG[1].ISR_reg[1] ;
  wire Mon_Wr_En;
  wire [5:0]Q;
  wire Streaming_Fifo_Empty;
  wire Streaming_Fifo_Full;
  wire Streaming_Fifo_Full_D1;
  wire async_fifo_inst_n_57;
  wire \buf_valid[0]_i_1_n_0 ;
  wire \buf_valid[1]_i_1_n_0 ;
  wire \buf_valid_reg_n_0_[0] ;
  wire core_aclk;
  wire core_aresetn;
  wire [23:0]din;
  wire [5:0]eventlog_cur_cnt_wire;
  wire fifo_empty_reg;
  wire fifo_rst0;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [55:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire p_0_in8_in;
  wire rst;
  wire s_axi_aresetn;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_async_fifo async_fifo_inst
       (.D(eventlog_cur_cnt_wire),
        .Event_Log_En_sync(Event_Log_En_sync),
        .\Fifo_Wr_Data_reg[1] (\Fifo_Wr_Data_reg[1] ),
        .Fifo_Wr_En1_out(Fifo_Wr_En1_out),
        .\GEN_ISR_REG[1].ISR_reg[1] (\GEN_ISR_REG[1].ISR_reg[1] ),
        .Mon_Wr_En(Mon_Wr_En),
        .Streaming_Fifo_Full(Streaming_Fifo_Full),
        .Streaming_Fifo_Full_D1(Streaming_Fifo_Full_D1),
        .\buf_valid_reg[0] (\buf_valid_reg_n_0_[0] ),
        .core_aclk(core_aclk),
        .core_aresetn(core_aresetn),
        .din(din),
        .empty(Streaming_Fifo_Empty),
        .fifo_empty_reg(fifo_empty_reg),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid_int_reg(async_fifo_inst_n_57),
        .m_axis_tvalid_int_reg_0(m_axis_tvalid),
        .p_0_in8_in(p_0_in8_in),
        .rst(rst),
        .s_axi_aresetn(s_axi_aresetn),
        .wr_en(wr_en));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \buf_valid[0]_i_1 
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .I2(\buf_valid_reg_n_0_[0] ),
        .O(\buf_valid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \buf_valid[1]_i_1 
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .I2(\buf_valid_reg_n_0_[0] ),
        .I3(p_0_in8_in),
        .O(\buf_valid[1]_i_1_n_0 ));
  FDRE \buf_valid_reg[0] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\buf_valid[0]_i_1_n_0 ),
        .Q(\buf_valid_reg_n_0_[0] ),
        .R(fifo_rst0));
  FDRE \buf_valid_reg[1] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\buf_valid[1]_i_1_n_0 ),
        .Q(p_0_in8_in),
        .R(fifo_rst0));
  FDRE \eventlog_cur_cnt_reg[0] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(eventlog_cur_cnt_wire[0]),
        .Q(Q[0]),
        .R(fifo_rst0));
  FDRE \eventlog_cur_cnt_reg[1] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(eventlog_cur_cnt_wire[1]),
        .Q(Q[1]),
        .R(fifo_rst0));
  FDRE \eventlog_cur_cnt_reg[2] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(eventlog_cur_cnt_wire[2]),
        .Q(Q[2]),
        .R(fifo_rst0));
  FDRE \eventlog_cur_cnt_reg[3] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(eventlog_cur_cnt_wire[3]),
        .Q(Q[3]),
        .R(fifo_rst0));
  FDRE \eventlog_cur_cnt_reg[4] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(eventlog_cur_cnt_wire[4]),
        .Q(Q[4]),
        .R(fifo_rst0));
  FDRE \eventlog_cur_cnt_reg[5] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(eventlog_cur_cnt_wire[5]),
        .Q(Q[5]),
        .R(fifo_rst0));
  FDRE fifo_empty_reg_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(Streaming_Fifo_Empty),
        .Q(fifo_empty_reg),
        .R(fifo_rst0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_int_i_1
       (.I0(m_axis_aresetn),
        .O(fifo_rst0));
  FDRE m_axis_tvalid_int_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(async_fifo_inst_n_57),
        .Q(m_axis_tvalid),
        .R(fifo_rst0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_axi_interface
   (Bus2IP_RdCE,
    s_axi_rvalid,
    s_axi_arready,
    s_axi_awready,
    s_axi_bvalid,
    Global_Intr_En_reg,
    \IER_reg[1] ,
    Samp_Metric_Cnt_Reg_Set_Rd_En,
    p_0_out,
    Control_Set_Wr_En,
    E,
    \Trace_ctrl_reg_reg[30] ,
    s_axi_wready,
    p_in_d1_cdc_from_reg0,
    Control_Set_Rd_En,
    Intr_Reg_GIE_Rd_En,
    Intr_Reg_IER_Rd_En,
    Intr_Reg_ISR_Rd_En,
    Addr_3downto0_is_0x8,
    Addr_3downto0_is_0x4,
    Trace_Filter_Rd_En,
    Event_Log_Set_Rd_En,
    Status_Reg_WIF_Rd_En,
    Status_Reg_FOC_Rd_En,
    Status_Reg_Set_Rd_En,
    Intr_Reg_Set_Rd_En,
    Sample_Interval_Rd_En,
    Metric_Cnt_Reg_Set_Rd_En,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    IP2Bus_DataValid_reg,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_wdata,
    Global_Intr_En,
    s_axi_arvalid,
    Intr_Reg_IER,
    \GEN_TRACE_LOG.Streaming_Fifo_Full_D1_reg ,
    s_axi_aresetn,
    Intr_Reg_ISR,
    s_axi_awaddr,
    s_axi_araddr,
    out,
    IP2Bus_DataValid_reg_0,
    Q);
  output Bus2IP_RdCE;
  output s_axi_rvalid;
  output s_axi_arready;
  output s_axi_awready;
  output s_axi_bvalid;
  output Global_Intr_En_reg;
  output \IER_reg[1] ;
  output Samp_Metric_Cnt_Reg_Set_Rd_En;
  output p_0_out;
  output Control_Set_Wr_En;
  output [0:0]E;
  output [0:0]\Trace_ctrl_reg_reg[30] ;
  output s_axi_wready;
  output p_in_d1_cdc_from_reg0;
  output Control_Set_Rd_En;
  output Intr_Reg_GIE_Rd_En;
  output Intr_Reg_IER_Rd_En;
  output Intr_Reg_ISR_Rd_En;
  output Addr_3downto0_is_0x8;
  output Addr_3downto0_is_0x4;
  output Trace_Filter_Rd_En;
  output Event_Log_Set_Rd_En;
  output Status_Reg_WIF_Rd_En;
  output Status_Reg_FOC_Rd_En;
  output Status_Reg_Set_Rd_En;
  output Intr_Reg_Set_Rd_En;
  output Sample_Interval_Rd_En;
  output Metric_Cnt_Reg_Set_Rd_En;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input IP2Bus_DataValid_reg;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_rready;
  input s_axi_bready;
  input [1:0]s_axi_wdata;
  input Global_Intr_En;
  input s_axi_arvalid;
  input [0:0]Intr_Reg_IER;
  input \GEN_TRACE_LOG.Streaming_Fifo_Full_D1_reg ;
  input s_axi_aresetn;
  input [0:0]Intr_Reg_ISR;
  input [15:0]s_axi_awaddr;
  input [15:0]s_axi_araddr;
  input out;
  input [0:0]IP2Bus_DataValid_reg_0;
  input [31:0]Q;

  wire Addr_3downto0_is_0x4;
  wire Addr_3downto0_is_0x8;
  wire [7:0]Bus2IP_Addr;
  wire Bus2IP_RdCE;
  wire Control_Set_Rd_En;
  wire Control_Set_Wr_En;
  wire [0:0]E;
  wire Event_Log_En_i_2_n_0;
  wire Event_Log_En_i_3_n_0;
  wire Event_Log_En_i_4_n_0;
  wire Event_Log_Set_Rd_En;
  wire \GEN_ISR_REG[1].ISR[1]_i_3_n_0 ;
  wire \GEN_ISR_REG[1].ISR[1]_i_4_n_0 ;
  wire \GEN_PROFILE_MODE.SW_Data_reg[31]_i_2_n_0 ;
  wire \GEN_PROFILE_MODE.SW_Data_reg[31]_i_3_n_0 ;
  wire \GEN_TRACE_LOG.Streaming_Fifo_Full_D1_reg ;
  wire Global_Intr_En;
  wire Global_Intr_En_reg;
  wire \IER[1]_i_2_n_0 ;
  wire \IER_reg[1] ;
  wire IP2Bus_DataValid_reg;
  wire [0:0]IP2Bus_DataValid_reg_0;
  wire Intr_Reg_GIE_Rd_En;
  wire [0:0]Intr_Reg_IER;
  wire Intr_Reg_IER_Rd_En;
  wire [0:0]Intr_Reg_ISR;
  wire Intr_Reg_ISR_Rd_En;
  wire Intr_Reg_Set_Rd_En;
  wire Lat_Control_Set_Rd_En_i_2_n_0;
  wire Lat_Intr_Reg_ISR_Rd_En_i_2_n_0;
  wire Lat_Metric_Cnt_Reg_Set_Rd_En_i_2_n_0;
  wire Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_2_n_0;
  wire Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_3_n_0;
  wire Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_4_n_0;
  wire Lat_Status_Reg_WIF_Rd_En_i_2_n_0;
  wire Lat_Status_Reg_WIF_Rd_En_i_3_n_0;
  wire Lat_Status_Reg_WIF_Rd_En_i_4_n_0;
  wire Metric_Cnt_Reg_Set_Rd_En;
  wire [31:0]Q;
  wire [0:0]SR;
  wire Samp_Metric_Cnt_Reg_Set_Rd_En;
  wire Sample_Interval_Rd_En;
  wire Status_Reg_FOC_Rd_En;
  wire Status_Reg_Set_Rd_En;
  wire Status_Reg_WIF_Rd_En;
  wire Trace_Filter_Rd_En;
  wire \Trace_ctrl_reg[30]_i_2_n_0 ;
  wire [0:0]\Trace_ctrl_reg_reg[30] ;
  wire arready_i0;
  wire arready_i_i_1_n_0;
  wire awready_i_i_1_n_0;
  wire \bus2ip_addr_i[0]_i_1_n_0 ;
  wire \bus2ip_addr_i[10]_i_1_n_0 ;
  wire \bus2ip_addr_i[11]_i_1_n_0 ;
  wire \bus2ip_addr_i[12]_i_1_n_0 ;
  wire \bus2ip_addr_i[13]_i_1_n_0 ;
  wire \bus2ip_addr_i[14]_i_1_n_0 ;
  wire \bus2ip_addr_i[15]_i_1_n_0 ;
  wire \bus2ip_addr_i[15]_i_2_n_0 ;
  wire \bus2ip_addr_i[1]_i_1_n_0 ;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[7]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i[9]_i_1_n_0 ;
  wire bvalid_i_2_n_0;
  wire out;
  wire p_0_out;
  wire p_4_in;
  wire p_in_d1_cdc_from_reg0;
  wire rd_in_progress;
  wire rd_in_progress_i_1_n_0;
  wire \register_module_inst/Addr_15downto8_is_0x00__2 ;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [1:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [7:0]sel0;
  wire wr_req_pend;
  wire [15:0]wr_req_pend_addr;
  wire wr_req_pend_i_1_n_0;
  wire wr_req_pend_pulse;
  wire write_req;
  wire write_req_i_1_n_0;

  LUT6 #(
    .INIT(64'h0000800000000000)) 
    Event_Log_En_i_1
       (.I0(Event_Log_En_i_2_n_0),
        .I1(Event_Log_En_i_3_n_0),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(Event_Log_En_i_4_n_0),
        .O(Control_Set_Wr_En));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    Event_Log_En_i_2
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .O(Event_Log_En_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    Event_Log_En_i_3
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[5]),
        .I2(write_req),
        .I3(s_axi_wvalid),
        .O(Event_Log_En_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    Event_Log_En_i_4
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[7]),
        .I2(Bus2IP_Addr[6]),
        .I3(Bus2IP_Addr[0]),
        .I4(Bus2IP_Addr[1]),
        .I5(Bus2IP_Addr[3]),
        .O(Event_Log_En_i_4_n_0));
  LUT6 #(
    .INIT(64'hFCFFA8AAA8AAA8AA)) 
    \GEN_ISR_REG[1].ISR[1]_i_1 
       (.I0(\GEN_TRACE_LOG.Streaming_Fifo_Full_D1_reg ),
        .I1(\GEN_ISR_REG[1].ISR[1]_i_3_n_0 ),
        .I2(\Trace_ctrl_reg[30]_i_2_n_0 ),
        .I3(s_axi_wdata[1]),
        .I4(s_axi_aresetn),
        .I5(Intr_Reg_ISR),
        .O(p_0_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFFFFF)) 
    \GEN_ISR_REG[1].ISR[1]_i_3 
       (.I0(Bus2IP_Addr[5]),
        .I1(sel0[2]),
        .I2(\GEN_ISR_REG[1].ISR[1]_i_4_n_0 ),
        .I3(sel0[1]),
        .I4(Bus2IP_Addr[4]),
        .I5(\IER[1]_i_2_n_0 ),
        .O(\GEN_ISR_REG[1].ISR[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_ISR_REG[1].ISR[1]_i_4 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[6]),
        .I5(sel0[0]),
        .O(\GEN_ISR_REG[1].ISR[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_PROFILE_MODE.SW_Data_reg[31]_i_1 
       (.I0(s_axi_wvalid),
        .I1(write_req),
        .I2(\GEN_PROFILE_MODE.SW_Data_reg[31]_i_2_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg[31]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \GEN_PROFILE_MODE.SW_Data_reg[31]_i_2 
       (.I0(Bus2IP_Addr[3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[1]),
        .I3(Bus2IP_Addr[0]),
        .I4(Bus2IP_Addr[6]),
        .I5(Bus2IP_Addr[7]),
        .O(\GEN_PROFILE_MODE.SW_Data_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \GEN_PROFILE_MODE.SW_Data_reg[31]_i_3 
       (.I0(sel0[2]),
        .I1(Bus2IP_Addr[5]),
        .I2(Bus2IP_Addr[4]),
        .I3(sel0[1]),
        .I4(Event_Log_En_i_2_n_0),
        .I5(sel0[0]),
        .O(\GEN_PROFILE_MODE.SW_Data_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    Global_Intr_En_i_1
       (.I0(s_axi_wdata[0]),
        .I1(Event_Log_En_i_4_n_0),
        .I2(\IER[1]_i_2_n_0 ),
        .I3(Lat_Status_Reg_WIF_Rd_En_i_4_n_0),
        .I4(Bus2IP_Addr[5]),
        .I5(Global_Intr_En),
        .O(Global_Intr_En_reg));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \IER[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\GEN_PROFILE_MODE.SW_Data_reg[31]_i_2_n_0 ),
        .I2(\IER[1]_i_2_n_0 ),
        .I3(Lat_Status_Reg_WIF_Rd_En_i_4_n_0),
        .I4(Bus2IP_Addr[5]),
        .I5(Intr_Reg_IER),
        .O(\IER_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \IER[1]_i_2 
       (.I0(s_axi_wvalid),
        .I1(write_req),
        .O(\IER[1]_i_2_n_0 ));
  FDRE \IP2Bus_Data_sampled_reg[0] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[10] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[11] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[12] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[13] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[14] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[15] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[16] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[17] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[18] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[19] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[19]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[1] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[20] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[20]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[21] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[21]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[22] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[22]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[23] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[23]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[24] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[24]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[25] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[25]),
        .Q(s_axi_rdata[25]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[26] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[26]),
        .Q(s_axi_rdata[26]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[27] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[27]),
        .Q(s_axi_rdata[27]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[28] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[28]),
        .Q(s_axi_rdata[28]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[29] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[29]),
        .Q(s_axi_rdata[29]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[2] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[30] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[30]),
        .Q(s_axi_rdata[30]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[31] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[31]),
        .Q(s_axi_rdata[31]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[3] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[4] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[5] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[6] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[7] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[8] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE \IP2Bus_Data_sampled_reg[9] 
       (.C(s_axi_aclk),
        .CE(IP2Bus_DataValid_reg_0),
        .D(Q[9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    Lat_Addr_3downto0_is_0x4_i_1
       (.I0(Bus2IP_Addr[3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[0]),
        .I3(Bus2IP_Addr[1]),
        .O(Addr_3downto0_is_0x4));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    Lat_Addr_3downto0_is_0x8_i_1
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[3]),
        .I2(Bus2IP_Addr[0]),
        .I3(Bus2IP_Addr[1]),
        .O(Addr_3downto0_is_0x8));
  LUT3 #(
    .INIT(8'h80)) 
    Lat_Control_Set_Rd_En_i_1
       (.I0(Event_Log_En_i_2_n_0),
        .I1(Lat_Control_Set_Rd_En_i_2_n_0),
        .I2(Event_Log_En_i_4_n_0),
        .O(Control_Set_Rd_En));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    Lat_Control_Set_Rd_En_i_2
       (.I0(Bus2IP_RdCE),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(Bus2IP_Addr[4]),
        .I5(Bus2IP_Addr[5]),
        .O(Lat_Control_Set_Rd_En_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Lat_Event_Log_Set_Rd_En_i_1
       (.I0(\GEN_PROFILE_MODE.SW_Data_reg[31]_i_2_n_0 ),
        .I1(\GEN_PROFILE_MODE.SW_Data_reg[31]_i_3_n_0 ),
        .O(Event_Log_Set_Rd_En));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    Lat_Intr_Reg_GIE_Rd_En_i_1
       (.I0(Bus2IP_Addr[3]),
        .I1(Lat_Status_Reg_WIF_Rd_En_i_3_n_0),
        .I2(Bus2IP_Addr[6]),
        .I3(Bus2IP_Addr[7]),
        .I4(Bus2IP_Addr[2]),
        .I5(Lat_Intr_Reg_ISR_Rd_En_i_2_n_0),
        .O(Intr_Reg_GIE_Rd_En));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    Lat_Intr_Reg_IER_Rd_En_i_1
       (.I0(Lat_Intr_Reg_ISR_Rd_En_i_2_n_0),
        .I1(Bus2IP_Addr[7]),
        .I2(Bus2IP_Addr[6]),
        .I3(Lat_Status_Reg_WIF_Rd_En_i_3_n_0),
        .I4(Bus2IP_Addr[2]),
        .I5(Bus2IP_Addr[3]),
        .O(Intr_Reg_IER_Rd_En));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    Lat_Intr_Reg_ISR_Rd_En_i_1
       (.I0(Lat_Intr_Reg_ISR_Rd_En_i_2_n_0),
        .I1(Bus2IP_Addr[3]),
        .I2(Lat_Status_Reg_WIF_Rd_En_i_3_n_0),
        .I3(Bus2IP_Addr[6]),
        .I4(Bus2IP_Addr[7]),
        .I5(Bus2IP_Addr[2]),
        .O(Intr_Reg_ISR_Rd_En));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    Lat_Intr_Reg_ISR_Rd_En_i_2
       (.I0(Bus2IP_RdCE),
        .I1(Bus2IP_Addr[5]),
        .I2(sel0[2]),
        .I3(\GEN_ISR_REG[1].ISR[1]_i_4_n_0 ),
        .I4(sel0[1]),
        .I5(Bus2IP_Addr[4]),
        .O(Lat_Intr_Reg_ISR_Rd_En_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    Lat_Intr_Reg_Set_Rd_En_i_1
       (.I0(Lat_Status_Reg_WIF_Rd_En_i_4_n_0),
        .I1(Bus2IP_Addr[5]),
        .I2(Bus2IP_Addr[7]),
        .I3(Bus2IP_Addr[6]),
        .O(Intr_Reg_Set_Rd_En));
  LUT5 #(
    .INIT(32'hEA000000)) 
    Lat_Metric_Cnt_Reg_Set_Rd_En_i_1
       (.I0(Lat_Metric_Cnt_Reg_Set_Rd_En_i_2_n_0),
        .I1(sel0[2]),
        .I2(Event_Log_En_i_2_n_0),
        .I3(sel0[0]),
        .I4(Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_3_n_0),
        .O(Metric_Cnt_Reg_Set_Rd_En));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    Lat_Metric_Cnt_Reg_Set_Rd_En_i_2
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(Lat_Metric_Cnt_Reg_Set_Rd_En_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000005C00000000)) 
    Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_1
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_2_n_0),
        .I4(sel0[0]),
        .I5(Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_3_n_0),
        .O(Samp_Metric_Cnt_Reg_Set_Rd_En));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_2
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .I3(sel0[6]),
        .O(Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_2_n_0));
  LUT5 #(
    .INIT(32'hAEAABAAA)) 
    Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_3
       (.I0(Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_4_n_0),
        .I1(Bus2IP_Addr[7]),
        .I2(Bus2IP_Addr[6]),
        .I3(Bus2IP_Addr[4]),
        .I4(Bus2IP_Addr[5]),
        .O(Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_4
       (.I0(Bus2IP_Addr[3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[0]),
        .I3(Bus2IP_Addr[1]),
        .O(Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    Lat_Sample_Interval_Rd_En_i_1
       (.I0(Bus2IP_Addr[6]),
        .I1(Bus2IP_Addr[7]),
        .I2(Bus2IP_Addr[5]),
        .I3(Bus2IP_Addr[4]),
        .I4(\register_module_inst/Addr_15downto8_is_0x00__2 ),
        .O(Sample_Interval_Rd_En));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    Lat_Sample_Interval_Rd_En_i_2
       (.I0(sel0[1]),
        .I1(Event_Log_En_i_2_n_0),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(\register_module_inst/Addr_15downto8_is_0x00__2 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    Lat_Status_Reg_FOC_Rd_En_i_1
       (.I0(Lat_Status_Reg_WIF_Rd_En_i_2_n_0),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Lat_Status_Reg_WIF_Rd_En_i_3_n_0),
        .I4(Lat_Status_Reg_WIF_Rd_En_i_4_n_0),
        .O(Status_Reg_FOC_Rd_En));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    Lat_Status_Reg_Set_Rd_En_i_1
       (.I0(Bus2IP_Addr[5]),
        .I1(Bus2IP_Addr[6]),
        .I2(Bus2IP_Addr[7]),
        .I3(Lat_Status_Reg_WIF_Rd_En_i_4_n_0),
        .O(Status_Reg_Set_Rd_En));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    Lat_Status_Reg_WIF_Rd_En_i_1
       (.I0(Lat_Status_Reg_WIF_Rd_En_i_2_n_0),
        .I1(Lat_Status_Reg_WIF_Rd_En_i_3_n_0),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[2]),
        .I4(Lat_Status_Reg_WIF_Rd_En_i_4_n_0),
        .O(Status_Reg_WIF_Rd_En));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    Lat_Status_Reg_WIF_Rd_En_i_2
       (.I0(Bus2IP_Addr[5]),
        .I1(Bus2IP_Addr[6]),
        .I2(Bus2IP_Addr[7]),
        .O(Lat_Status_Reg_WIF_Rd_En_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Lat_Status_Reg_WIF_Rd_En_i_3
       (.I0(Bus2IP_Addr[1]),
        .I1(Bus2IP_Addr[0]),
        .O(Lat_Status_Reg_WIF_Rd_En_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    Lat_Status_Reg_WIF_Rd_En_i_4
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(Event_Log_En_i_2_n_0),
        .I3(sel0[1]),
        .I4(Bus2IP_Addr[4]),
        .O(Lat_Status_Reg_WIF_Rd_En_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h4)) 
    Lat_Trace_Filter_Rd_En_i_1
       (.I0(\Trace_ctrl_reg[30]_i_2_n_0 ),
        .I1(\GEN_PROFILE_MODE.SW_Data_reg[31]_i_3_n_0 ),
        .O(Trace_Filter_Rd_En));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \Trace_ctrl_reg[30]_i_1 
       (.I0(s_axi_wvalid),
        .I1(write_req),
        .I2(\Trace_ctrl_reg[30]_i_2_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg[31]_i_3_n_0 ),
        .O(\Trace_ctrl_reg_reg[30] ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \Trace_ctrl_reg[30]_i_2 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[7]),
        .I2(Bus2IP_Addr[6]),
        .I3(Bus2IP_Addr[0]),
        .I4(Bus2IP_Addr[1]),
        .I5(Bus2IP_Addr[3]),
        .O(\Trace_ctrl_reg[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    arready_i_i_1
       (.I0(arready_i0),
        .I1(write_req),
        .I2(s_axi_awvalid),
        .I3(rd_in_progress),
        .I4(s_axi_aresetn),
        .I5(Bus2IP_RdCE),
        .O(arready_i_i_1_n_0));
  FDRE arready_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arready_i_i_1_n_0),
        .Q(s_axi_arready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    awready_i_i_1
       (.I0(p_4_in),
        .I1(s_axi_rvalid),
        .I2(write_req),
        .I3(s_axi_aresetn),
        .I4(s_axi_arvalid),
        .I5(Bus2IP_RdCE),
        .O(awready_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    awready_i_i_2
       (.I0(s_axi_awready),
        .I1(s_axi_awvalid),
        .O(p_4_in));
  FDRE awready_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(awready_i_i_1_n_0),
        .Q(s_axi_awready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[0]_i_1 
       (.I0(wr_req_pend_addr[0]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[0]),
        .I4(arready_i0),
        .I5(s_axi_araddr[0]),
        .O(\bus2ip_addr_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[10]_i_1 
       (.I0(wr_req_pend_addr[10]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[10]),
        .I4(arready_i0),
        .I5(s_axi_araddr[10]),
        .O(\bus2ip_addr_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[11]_i_1 
       (.I0(wr_req_pend_addr[11]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[11]),
        .I4(arready_i0),
        .I5(s_axi_araddr[11]),
        .O(\bus2ip_addr_i[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[12]_i_1 
       (.I0(wr_req_pend_addr[12]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[12]),
        .I4(arready_i0),
        .I5(s_axi_araddr[12]),
        .O(\bus2ip_addr_i[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[13]_i_1 
       (.I0(wr_req_pend_addr[13]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[13]),
        .I4(arready_i0),
        .I5(s_axi_araddr[13]),
        .O(\bus2ip_addr_i[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[14]_i_1 
       (.I0(wr_req_pend_addr[14]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[14]),
        .I4(arready_i0),
        .I5(s_axi_araddr[14]),
        .O(\bus2ip_addr_i[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \bus2ip_addr_i[15]_i_1 
       (.I0(s_axi_awready),
        .I1(s_axi_awvalid),
        .I2(s_axi_arready),
        .I3(s_axi_arvalid),
        .I4(wr_req_pend),
        .O(\bus2ip_addr_i[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[15]_i_2 
       (.I0(wr_req_pend_addr[15]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[15]),
        .I4(arready_i0),
        .I5(s_axi_araddr[15]),
        .O(\bus2ip_addr_i[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[1]_i_1 
       (.I0(wr_req_pend_addr[1]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[1]),
        .I4(arready_i0),
        .I5(s_axi_araddr[1]),
        .O(\bus2ip_addr_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(wr_req_pend_addr[2]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[2]),
        .I4(arready_i0),
        .I5(s_axi_araddr[2]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(wr_req_pend_addr[3]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[3]),
        .I4(arready_i0),
        .I5(s_axi_araddr[3]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(wr_req_pend_addr[4]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[4]),
        .I4(arready_i0),
        .I5(s_axi_araddr[4]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(wr_req_pend_addr[5]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[5]),
        .I4(arready_i0),
        .I5(s_axi_araddr[5]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(wr_req_pend_addr[6]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[6]),
        .I4(arready_i0),
        .I5(s_axi_araddr[6]),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(wr_req_pend_addr[7]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[7]),
        .I4(arready_i0),
        .I5(s_axi_araddr[7]),
        .O(\bus2ip_addr_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(wr_req_pend_addr[8]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[8]),
        .I4(arready_i0),
        .I5(s_axi_araddr[8]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \bus2ip_addr_i[9]_i_1 
       (.I0(wr_req_pend_addr[9]),
        .I1(s_axi_awready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awaddr[9]),
        .I4(arready_i0),
        .I5(s_axi_araddr[9]),
        .O(\bus2ip_addr_i[9]_i_1_n_0 ));
  FDRE \bus2ip_addr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[0]_i_1_n_0 ),
        .Q(Bus2IP_Addr[0]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[10]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[11]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[12]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[13]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[14]_i_1_n_0 ),
        .Q(sel0[6]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[15]_i_2_n_0 ),
        .Q(sel0[7]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[1]_i_1_n_0 ),
        .Q(Bus2IP_Addr[1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(Bus2IP_Addr[2]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Bus2IP_Addr[3]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(Bus2IP_Addr[4]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(Bus2IP_Addr[5]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_1_n_0 ),
        .Q(Bus2IP_Addr[6]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[7]_i_1_n_0 ),
        .Q(Bus2IP_Addr[7]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[8]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[15]_i_1_n_0 ),
        .D(\bus2ip_addr_i[9]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h40FF4040)) 
    bvalid_i_2
       (.I0(Bus2IP_RdCE),
        .I1(s_axi_wvalid),
        .I2(write_req),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(bvalid_i_2_n_0));
  FDRE bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bvalid_i_2_n_0),
        .Q(s_axi_bvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    p_in_d1_cdc_from_i_1
       (.I0(Bus2IP_RdCE),
        .I1(out),
        .O(p_in_d1_cdc_from_reg0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF7F0)) 
    rd_in_progress_i_1
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(Bus2IP_RdCE),
        .I3(rd_in_progress),
        .O(rd_in_progress_i_1_n_0));
  FDRE rd_in_progress_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_in_progress_i_1_n_0),
        .Q(rd_in_progress),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    read_req_i_1
       (.I0(s_axi_arready),
        .I1(s_axi_arvalid),
        .O(arready_i0));
  FDRE read_req_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arready_i0),
        .Q(Bus2IP_RdCE),
        .R(SR));
  FDRE rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_DataValid_reg),
        .Q(s_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_wready_INST_0
       (.I0(write_req),
        .I1(Bus2IP_RdCE),
        .O(s_axi_wready));
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_req_pend_addr[15]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready),
        .I2(s_axi_awvalid),
        .I3(s_axi_awready),
        .O(wr_req_pend_pulse));
  FDRE \wr_req_pend_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[0]),
        .Q(wr_req_pend_addr[0]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[10]),
        .Q(wr_req_pend_addr[10]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[11]),
        .Q(wr_req_pend_addr[11]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[12] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[12]),
        .Q(wr_req_pend_addr[12]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[13] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[13]),
        .Q(wr_req_pend_addr[13]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[14] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[14]),
        .Q(wr_req_pend_addr[14]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[15] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[15]),
        .Q(wr_req_pend_addr[15]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[1]),
        .Q(wr_req_pend_addr[1]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[2]),
        .Q(wr_req_pend_addr[2]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[3]),
        .Q(wr_req_pend_addr[3]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[4]),
        .Q(wr_req_pend_addr[4]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[5]),
        .Q(wr_req_pend_addr[5]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[6]),
        .Q(wr_req_pend_addr[6]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[7]),
        .Q(wr_req_pend_addr[7]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[8]),
        .Q(wr_req_pend_addr[8]),
        .R(SR));
  FDRE \wr_req_pend_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(wr_req_pend_pulse),
        .D(s_axi_awaddr[9]),
        .Q(wr_req_pend_addr[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    wr_req_pend_i_1
       (.I0(s_axi_awready),
        .I1(s_axi_awvalid),
        .I2(s_axi_arready),
        .I3(s_axi_arvalid),
        .I4(Bus2IP_RdCE),
        .I5(wr_req_pend),
        .O(wr_req_pend_i_1_n_0));
  FDRE wr_req_pend_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wr_req_pend_i_1_n_0),
        .Q(wr_req_pend),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    write_req_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_awready),
        .I2(write_req),
        .I3(s_axi_wvalid),
        .O(write_req_i_1_n_0));
  FDRE write_req_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(write_req_i_1_n_0),
        .Q(write_req),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync
   (D,
    Ext_Trig_log_en_reg,
    Q,
    core_aresetn,
    Ext_Trig_log_en,
    Use_Ext_Trig_Log,
    SR,
    slot_0_ext_trig_stop,
    core_aclk);
  output [1:0]D;
  output Ext_Trig_log_en_reg;
  input [1:0]Q;
  input core_aresetn;
  input Ext_Trig_log_en;
  input Use_Ext_Trig_Log;
  input [0:0]SR;
  input [1:0]slot_0_ext_trig_stop;
  input core_aclk;

  wire Ext_Trig_log_en;
  wire Ext_Trig_log_en_i_2_n_0;
  wire Ext_Trig_log_en_reg;
  wire [1:0]Q;
  wire [0:0]SR;
  wire Use_Ext_Trig_Log;
  wire core_aclk;
  wire core_aresetn;
  (* async_reg = "true" *) wire p_in_d1_cdc_from;
  (* async_reg = "true" *) wire p_level_in_d1_cdc_from;
  (* async_reg = "true" *) wire p_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire p_level_out_d2;
  (* async_reg = "true" *) wire p_level_out_d3;
  (* async_reg = "true" *) wire p_level_out_d4;
  (* async_reg = "true" *) wire p_level_out_d5;
  (* async_reg = "true" *) wire p_level_out_d6;
  (* async_reg = "true" *) wire p_level_out_d7;
  (* async_reg = "true" *) wire prmry_ack_int;
  (* async_reg = "true" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_level_out_d2;
  (* async_reg = "true" *) wire s_level_out_d3;
  (* async_reg = "true" *) wire s_level_out_d4;
  (* async_reg = "true" *) wire s_level_out_d5;
  (* async_reg = "true" *) wire s_level_out_d6;
  (* async_reg = "true" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_out_d2;
  (* async_reg = "true" *) wire s_out_d3;
  (* async_reg = "true" *) wire s_out_d4;
  (* async_reg = "true" *) wire s_out_d5;
  (* async_reg = "true" *) wire s_out_d6;
  (* async_reg = "true" *) wire s_out_d7;
  (* async_reg = "true" *) wire scndry_out_int_d1;
  wire [1:0]slot_0_ext_trig_stop;

  assign D[1:0] = s_level_out_bus_d4;
  LUT3 #(
    .INIT(8'hA2)) 
    Ext_Trig_log_en_i_1
       (.I0(Ext_Trig_log_en_i_2_n_0),
        .I1(s_level_out_bus_d4[1]),
        .I2(Q[1]),
        .O(Ext_Trig_log_en_reg));
  LUT5 #(
    .INIT(32'hAA200000)) 
    Ext_Trig_log_en_i_2
       (.I0(core_aresetn),
        .I1(Q[0]),
        .I2(s_level_out_bus_d4[0]),
        .I3(Ext_Trig_log_en),
        .I4(Use_Ext_Trig_Log),
        .O(Ext_Trig_log_en_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(prmry_ack_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(scndry_out_int_d1));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(p_level_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(p_level_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(p_level_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(p_level_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(p_level_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(p_in_d1_cdc_from));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[0] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(slot_0_ext_trig_stop[0]),
        .Q(s_level_out_bus_d1_cdc_to[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[1] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(slot_0_ext_trig_stop[1]),
        .Q(s_level_out_bus_d1_cdc_to[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[0] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[0]),
        .Q(s_level_out_bus_d2[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[1] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[1]),
        .Q(s_level_out_bus_d2[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[0] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[0]),
        .Q(s_level_out_bus_d3[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[1] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[1]),
        .Q(s_level_out_bus_d3[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[0] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[0]),
        .Q(s_level_out_bus_d4[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[1] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[1]),
        .Q(s_level_out_bus_d4[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[0] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[0]),
        .Q(s_level_out_bus_d5[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[1] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[1]),
        .Q(s_level_out_bus_d5[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[0] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[0]),
        .Q(s_level_out_bus_d6[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[1] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[1]),
        .Q(s_level_out_bus_d6[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_perf_mon_v5_0_17_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0
   (out,
    p_in_d1_cdc_from_reg0_0,
    SR,
    p_in_d1_cdc_from_reg0,
    s_axi_aclk,
    core_aresetn,
    core_aclk,
    p_in_d1_cdc_from_reg_0);
  output out;
  output p_in_d1_cdc_from_reg0_0;
  input [0:0]SR;
  input p_in_d1_cdc_from_reg0;
  input s_axi_aclk;
  input [0:0]core_aresetn;
  input core_aclk;
  input p_in_d1_cdc_from_reg_0;

  wire [0:0]SR;
  wire core_aclk;
  wire [0:0]core_aresetn;
  (* async_reg = "true" *) wire p_in_d1_cdc_from;
  wire p_in_d1_cdc_from_reg0;
  wire p_in_d1_cdc_from_reg0_0;
  wire p_in_d1_cdc_from_reg_0;
  (* async_reg = "true" *) wire p_level_in_d1_cdc_from;
  (* async_reg = "true" *) wire p_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire p_level_out_d2;
  (* async_reg = "true" *) wire p_level_out_d3;
  (* async_reg = "true" *) wire p_level_out_d4;
  (* async_reg = "true" *) wire p_level_out_d5;
  (* async_reg = "true" *) wire p_level_out_d6;
  (* async_reg = "true" *) wire p_level_out_d7;
  (* async_reg = "true" *) wire prmry_ack_int;
  wire s_axi_aclk;
  (* async_reg = "true" *) wire s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) wire s_level_out_bus_d2;
  (* async_reg = "true" *) wire s_level_out_bus_d3;
  (* async_reg = "true" *) wire s_level_out_bus_d4;
  (* async_reg = "true" *) wire s_level_out_bus_d5;
  (* async_reg = "true" *) wire s_level_out_bus_d6;
  (* async_reg = "true" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_level_out_d2;
  (* async_reg = "true" *) wire s_level_out_d3;
  (* async_reg = "true" *) wire s_level_out_d4;
  (* async_reg = "true" *) wire s_level_out_d5;
  (* async_reg = "true" *) wire s_level_out_d6;
  (* async_reg = "true" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_out_d2;
  (* async_reg = "true" *) wire s_out_d3;
  (* async_reg = "true" *) wire s_out_d4;
  (* async_reg = "true" *) wire s_out_d5;
  (* async_reg = "true" *) wire s_out_d6;
  (* async_reg = "true" *) wire s_out_d7;
  wire s_out_re;
  (* async_reg = "true" *) wire scndry_out_int_d1;

  assign out = p_in_d1_cdc_from;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(prmry_ack_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(p_level_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(p_level_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(p_level_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(p_level_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(p_level_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_d1_cdc_to));
  LUT2 #(
    .INIT(4'h6)) 
    p_in_d1_cdc_from_i_1__0
       (.I0(scndry_out_int_d1),
        .I1(p_in_d1_cdc_from_reg_0),
        .O(p_in_d1_cdc_from_reg0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE p_in_d1_cdc_from_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_in_d1_cdc_from_reg0),
        .Q(p_in_d1_cdc_from),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d1_cdc_to_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(p_in_d1_cdc_from),
        .Q(s_out_d1_cdc_to),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d2_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_out_d1_cdc_to),
        .Q(s_out_d2),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d3_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_out_d2),
        .Q(s_out_d3),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d4_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_out_d3),
        .Q(s_out_d4),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d5_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_out_d4),
        .Q(s_out_d5),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d6_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_out_d5),
        .Q(s_out_d6),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d7_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_out_d6),
        .Q(s_out_d7),
        .R(core_aresetn));
  LUT2 #(
    .INIT(4'h6)) 
    scndry_out_int_d1_i_1
       (.I0(s_out_d4),
        .I1(s_out_d5),
        .O(s_out_re));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE scndry_out_int_d1_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_out_re),
        .Q(scndry_out_int_d1),
        .R(core_aresetn));
endmodule

(* ORIG_REF_NAME = "axi_perf_mon_v5_0_17_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0_5
   (out,
    IP2Bus_DataValid_reg,
    D,
    \IP2Bus_Data_reg[0] ,
    core_aresetn,
    p_in_d1_cdc_from_reg0,
    core_aclk,
    SR,
    s_axi_aclk,
    Q,
    \GEN_PROFILE_MODE.SW_Data_reg_reg[31] ,
    Lat_Sample_Interval_Rd_En,
    Lat_Addr_3downto0_is_0x8,
    Lat_Addr_3downto0_is_0x4,
    s_axi_aresetn,
    Lat_Control_Set_Rd_En,
    Event_Log_En_sync,
    \s_level_out_bus_d4_reg[31] ,
    Lat_Status_Reg_FOC_Rd_En,
    Use_Ext_Trig_Log,
    Streaming_FIFO_Reset,
    \s_level_out_bus_d4_reg[0] ,
    Lat_Intr_Reg_IER_Rd_En,
    Intr_Reg_IER,
    Intr_Reg_ISR,
    Lat_Intr_Reg_ISR_Rd_En,
    Lat_Intr_Reg_GIE_Rd_En,
    Lat_Intr_Reg_Set_Rd_En,
    Lat_Status_Reg_WIF_Rd_En_reg,
    Lat_Event_Log_Set_Rd_En,
    Lat_Status_Reg_Set_Rd_En,
    Lat_Metric_Cnt_Reg_Set_Rd_En,
    Lat_Samp_Metric_Cnt_Reg_Set_Rd_En,
    Lat_Trace_Filter_Rd_En);
  output out;
  output IP2Bus_DataValid_reg;
  output [31:0]D;
  output \IP2Bus_Data_reg[0] ;
  input [0:0]core_aresetn;
  input p_in_d1_cdc_from_reg0;
  input core_aclk;
  input [0:0]SR;
  input s_axi_aclk;
  input [23:0]Q;
  input [31:0]\GEN_PROFILE_MODE.SW_Data_reg_reg[31] ;
  input Lat_Sample_Interval_Rd_En;
  input Lat_Addr_3downto0_is_0x8;
  input Lat_Addr_3downto0_is_0x4;
  input s_axi_aresetn;
  input Lat_Control_Set_Rd_En;
  input Event_Log_En_sync;
  input [29:0]\s_level_out_bus_d4_reg[31] ;
  input Lat_Status_Reg_FOC_Rd_En;
  input Use_Ext_Trig_Log;
  input Streaming_FIFO_Reset;
  input \s_level_out_bus_d4_reg[0] ;
  input Lat_Intr_Reg_IER_Rd_En;
  input [0:0]Intr_Reg_IER;
  input [0:0]Intr_Reg_ISR;
  input Lat_Intr_Reg_ISR_Rd_En;
  input Lat_Intr_Reg_GIE_Rd_En;
  input Lat_Intr_Reg_Set_Rd_En;
  input Lat_Status_Reg_WIF_Rd_En_reg;
  input Lat_Event_Log_Set_Rd_En;
  input Lat_Status_Reg_Set_Rd_En;
  input Lat_Metric_Cnt_Reg_Set_Rd_En;
  input Lat_Samp_Metric_Cnt_Reg_Set_Rd_En;
  input Lat_Trace_Filter_Rd_En;

  wire [31:0]D;
  wire Event_Log_En_sync;
  wire [31:0]\GEN_PROFILE_MODE.SW_Data_reg_reg[31] ;
  wire \IP2Bus_Data[25]_i_2_n_0 ;
  wire \IP2Bus_Data[25]_i_3_n_0 ;
  wire \IP2Bus_Data[2]_i_2_n_0 ;
  wire \IP2Bus_Data[2]_i_3_n_0 ;
  wire \IP2Bus_Data[2]_i_4_n_0 ;
  wire \IP2Bus_Data[31]_i_2_n_0 ;
  wire \IP2Bus_Data[31]_i_3_n_0 ;
  wire \IP2Bus_Data[31]_i_4_n_0 ;
  wire \IP2Bus_Data[31]_i_5_n_0 ;
  wire \IP2Bus_Data[31]_i_6_n_0 ;
  wire \IP2Bus_Data[8]_i_2_n_0 ;
  wire \IP2Bus_Data[8]_i_3_n_0 ;
  wire \IP2Bus_Data[9]_i_2_n_0 ;
  wire \IP2Bus_Data_reg[0] ;
  wire [0:0]Intr_Reg_IER;
  wire [0:0]Intr_Reg_ISR;
  wire Lat_Addr_3downto0_is_0x4;
  wire Lat_Addr_3downto0_is_0x8;
  wire Lat_Control_Set_Rd_En;
  wire Lat_Event_Log_Set_Rd_En;
  wire Lat_Intr_Reg_GIE_Rd_En;
  wire Lat_Intr_Reg_IER_Rd_En;
  wire Lat_Intr_Reg_ISR_Rd_En;
  wire Lat_Intr_Reg_Set_Rd_En;
  wire Lat_Metric_Cnt_Reg_Set_Rd_En;
  wire Lat_Samp_Metric_Cnt_Reg_Set_Rd_En;
  wire Lat_Sample_Interval_Rd_En;
  wire Lat_Status_Reg_FOC_Rd_En;
  wire Lat_Status_Reg_Set_Rd_En;
  wire Lat_Status_Reg_WIF_Rd_En_reg;
  wire Lat_Trace_Filter_Rd_En;
  wire [23:0]Q;
  wire [0:0]SR;
  wire Streaming_FIFO_Reset;
  wire Use_Ext_Trig_Log;
  wire core_aclk;
  wire [0:0]core_aresetn;
  (* async_reg = "true" *) wire p_in_d1_cdc_from;
  wire p_in_d1_cdc_from_reg0;
  (* async_reg = "true" *) wire p_level_in_d1_cdc_from;
  (* async_reg = "true" *) wire p_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire p_level_out_d2;
  (* async_reg = "true" *) wire p_level_out_d3;
  (* async_reg = "true" *) wire p_level_out_d4;
  (* async_reg = "true" *) wire p_level_out_d5;
  (* async_reg = "true" *) wire p_level_out_d6;
  (* async_reg = "true" *) wire p_level_out_d7;
  (* async_reg = "true" *) wire prmry_ack_int;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  (* async_reg = "true" *) wire s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) wire s_level_out_bus_d2;
  (* async_reg = "true" *) wire s_level_out_bus_d3;
  (* async_reg = "true" *) wire s_level_out_bus_d4;
  wire \s_level_out_bus_d4_reg[0] ;
  wire [29:0]\s_level_out_bus_d4_reg[31] ;
  (* async_reg = "true" *) wire s_level_out_bus_d5;
  (* async_reg = "true" *) wire s_level_out_bus_d6;
  (* async_reg = "true" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_level_out_d2;
  (* async_reg = "true" *) wire s_level_out_d3;
  (* async_reg = "true" *) wire s_level_out_d4;
  (* async_reg = "true" *) wire s_level_out_d5;
  (* async_reg = "true" *) wire s_level_out_d6;
  (* async_reg = "true" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_out_d2;
  (* async_reg = "true" *) wire s_out_d3;
  (* async_reg = "true" *) wire s_out_d4;
  (* async_reg = "true" *) wire s_out_d5;
  (* async_reg = "true" *) wire s_out_d6;
  (* async_reg = "true" *) wire s_out_d7;
  wire s_out_re;
  (* async_reg = "true" *) wire scndry_out_int_d1;

  assign IP2Bus_DataValid_reg = scndry_out_int_d1;
  assign out = p_in_d1_cdc_from;
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IP2Bus_Data[0]_i_1 
       (.I0(\s_level_out_bus_d4_reg[0] ),
        .I1(\IP2Bus_Data[31]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(\IP2Bus_Data[31]_i_3_n_0 ),
        .I4(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[10]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [10]),
        .I4(\s_level_out_bus_d4_reg[31] [8]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IP2Bus_Data[11]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(\IP2Bus_Data[31]_i_3_n_0 ),
        .I2(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [11]),
        .I3(\s_level_out_bus_d4_reg[31] [9]),
        .I4(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[12]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[9]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [12]),
        .I4(\s_level_out_bus_d4_reg[31] [10]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[13]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[10]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [13]),
        .I4(\s_level_out_bus_d4_reg[31] [11]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[14]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[11]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [14]),
        .I4(\s_level_out_bus_d4_reg[31] [12]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IP2Bus_Data[15]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(\IP2Bus_Data[31]_i_3_n_0 ),
        .I2(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [15]),
        .I3(\s_level_out_bus_d4_reg[31] [13]),
        .I4(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[16]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[12]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [16]),
        .I4(\s_level_out_bus_d4_reg[31] [14]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[17]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[13]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [17]),
        .I4(\s_level_out_bus_d4_reg[31] [15]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[18]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[14]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [18]),
        .I4(\s_level_out_bus_d4_reg[31] [16]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IP2Bus_Data[19]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(\IP2Bus_Data[31]_i_3_n_0 ),
        .I2(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [19]),
        .I3(\s_level_out_bus_d4_reg[31] [17]),
        .I4(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IP2Bus_Data[1]_i_1 
       (.I0(Lat_Status_Reg_WIF_Rd_En_reg),
        .I1(\IP2Bus_Data[31]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(\IP2Bus_Data[31]_i_3_n_0 ),
        .I4(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h0040)) 
    \IP2Bus_Data[1]_i_3 
       (.I0(Lat_Sample_Interval_Rd_En),
        .I1(scndry_out_int_d1),
        .I2(s_axi_aresetn),
        .I3(Lat_Control_Set_Rd_En),
        .O(\IP2Bus_Data_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[20]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[15]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [20]),
        .I4(\s_level_out_bus_d4_reg[31] [18]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[21]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[16]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [21]),
        .I4(\s_level_out_bus_d4_reg[31] [19]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[22]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[17]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [22]),
        .I4(\s_level_out_bus_d4_reg[31] [20]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IP2Bus_Data[23]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(\IP2Bus_Data[31]_i_3_n_0 ),
        .I2(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [23]),
        .I3(\s_level_out_bus_d4_reg[31] [21]),
        .I4(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[24]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[18]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [24]),
        .I4(\s_level_out_bus_d4_reg[31] [22]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IP2Bus_Data[25]_i_1 
       (.I0(\IP2Bus_Data[25]_i_2_n_0 ),
        .I1(\IP2Bus_Data[31]_i_2_n_0 ),
        .I2(Q[19]),
        .I3(\IP2Bus_Data[31]_i_3_n_0 ),
        .I4(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [25]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \IP2Bus_Data[25]_i_2 
       (.I0(\IP2Bus_Data[31]_i_6_n_0 ),
        .I1(Lat_Control_Set_Rd_En),
        .I2(Streaming_FIFO_Reset),
        .I3(\s_level_out_bus_d4_reg[31] [23]),
        .I4(\IP2Bus_Data[25]_i_3_n_0 ),
        .I5(Lat_Status_Reg_FOC_Rd_En),
        .O(\IP2Bus_Data[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \IP2Bus_Data[25]_i_3 
       (.I0(Lat_Intr_Reg_Set_Rd_En),
        .I1(Lat_Sample_Interval_Rd_En),
        .I2(scndry_out_int_d1),
        .I3(s_axi_aresetn),
        .I4(Lat_Control_Set_Rd_En),
        .I5(Lat_Status_Reg_Set_Rd_En),
        .O(\IP2Bus_Data[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[26]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[20]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [26]),
        .I4(\s_level_out_bus_d4_reg[31] [24]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IP2Bus_Data[27]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(\IP2Bus_Data[31]_i_3_n_0 ),
        .I2(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [27]),
        .I3(\s_level_out_bus_d4_reg[31] [25]),
        .I4(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[28]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[21]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [28]),
        .I4(\s_level_out_bus_d4_reg[31] [26]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[29]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[22]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [29]),
        .I4(\s_level_out_bus_d4_reg[31] [27]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \IP2Bus_Data[2]_i_1 
       (.I0(\IP2Bus_Data[2]_i_2_n_0 ),
        .I1(\IP2Bus_Data[2]_i_3_n_0 ),
        .I2(\IP2Bus_Data[31]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(\IP2Bus_Data[31]_i_3_n_0 ),
        .I5(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \IP2Bus_Data[2]_i_2 
       (.I0(Lat_Status_Reg_FOC_Rd_En),
        .I1(Lat_Intr_Reg_Set_Rd_En),
        .I2(\IP2Bus_Data[31]_i_6_n_0 ),
        .I3(Lat_Control_Set_Rd_En),
        .I4(Lat_Status_Reg_Set_Rd_En),
        .I5(\s_level_out_bus_d4_reg[31] [0]),
        .O(\IP2Bus_Data[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA2808080)) 
    \IP2Bus_Data[2]_i_3 
       (.I0(\IP2Bus_Data[2]_i_4_n_0 ),
        .I1(Lat_Intr_Reg_IER_Rd_En),
        .I2(Intr_Reg_IER),
        .I3(Intr_Reg_ISR),
        .I4(Lat_Intr_Reg_ISR_Rd_En),
        .O(\IP2Bus_Data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \IP2Bus_Data[2]_i_4 
       (.I0(Lat_Intr_Reg_GIE_Rd_En),
        .I1(Lat_Intr_Reg_Set_Rd_En),
        .I2(Lat_Control_Set_Rd_En),
        .I3(s_axi_aresetn),
        .I4(scndry_out_int_d1),
        .I5(Lat_Sample_Interval_Rd_En),
        .O(\IP2Bus_Data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[30]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[23]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [30]),
        .I4(\s_level_out_bus_d4_reg[31] [28]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IP2Bus_Data[31]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(\IP2Bus_Data[31]_i_3_n_0 ),
        .I2(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [31]),
        .I3(\s_level_out_bus_d4_reg[31] [29]),
        .I4(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \IP2Bus_Data[31]_i_2 
       (.I0(Lat_Metric_Cnt_Reg_Set_Rd_En),
        .I1(Lat_Samp_Metric_Cnt_Reg_Set_Rd_En),
        .I2(\IP2Bus_Data[31]_i_5_n_0 ),
        .I3(Lat_Event_Log_Set_Rd_En),
        .I4(Lat_Trace_Filter_Rd_En),
        .O(\IP2Bus_Data[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \IP2Bus_Data[31]_i_3 
       (.I0(Lat_Addr_3downto0_is_0x4),
        .I1(Lat_Event_Log_Set_Rd_En),
        .I2(Lat_Status_Reg_Set_Rd_En),
        .I3(Lat_Control_Set_Rd_En),
        .I4(\IP2Bus_Data[31]_i_6_n_0 ),
        .I5(Lat_Intr_Reg_Set_Rd_En),
        .O(\IP2Bus_Data[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \IP2Bus_Data[31]_i_4 
       (.I0(Lat_Status_Reg_Set_Rd_En),
        .I1(Lat_Control_Set_Rd_En),
        .I2(\IP2Bus_Data[31]_i_6_n_0 ),
        .I3(Lat_Intr_Reg_Set_Rd_En),
        .I4(Lat_Status_Reg_FOC_Rd_En),
        .O(\IP2Bus_Data[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \IP2Bus_Data[31]_i_5 
       (.I0(Lat_Intr_Reg_Set_Rd_En),
        .I1(Lat_Sample_Interval_Rd_En),
        .I2(scndry_out_int_d1),
        .I3(s_axi_aresetn),
        .I4(Lat_Control_Set_Rd_En),
        .I5(Lat_Status_Reg_Set_Rd_En),
        .O(\IP2Bus_Data[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \IP2Bus_Data[31]_i_6 
       (.I0(s_axi_aresetn),
        .I1(scndry_out_int_d1),
        .I2(Lat_Sample_Interval_Rd_En),
        .O(\IP2Bus_Data[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IP2Bus_Data[3]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(\IP2Bus_Data[31]_i_3_n_0 ),
        .I2(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [3]),
        .I3(\s_level_out_bus_d4_reg[31] [1]),
        .I4(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[4]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [4]),
        .I4(\s_level_out_bus_d4_reg[31] [2]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[5]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [5]),
        .I4(\s_level_out_bus_d4_reg[31] [3]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \IP2Bus_Data[6]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(\IP2Bus_Data[31]_i_3_n_0 ),
        .I3(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [6]),
        .I4(\s_level_out_bus_d4_reg[31] [4]),
        .I5(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IP2Bus_Data[7]_i_1 
       (.I0(\IP2Bus_Data[31]_i_2_n_0 ),
        .I1(\IP2Bus_Data[31]_i_3_n_0 ),
        .I2(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [7]),
        .I3(\s_level_out_bus_d4_reg[31] [5]),
        .I4(\IP2Bus_Data[31]_i_4_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \IP2Bus_Data[8]_i_1 
       (.I0(\IP2Bus_Data[8]_i_2_n_0 ),
        .I1(\IP2Bus_Data[8]_i_3_n_0 ),
        .I2(\IP2Bus_Data[31]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(\IP2Bus_Data[31]_i_3_n_0 ),
        .I5(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \IP2Bus_Data[8]_i_2 
       (.I0(Lat_Sample_Interval_Rd_En),
        .I1(Lat_Addr_3downto0_is_0x8),
        .I2(Lat_Addr_3downto0_is_0x4),
        .I3(s_axi_aresetn),
        .I4(scndry_out_int_d1),
        .O(\IP2Bus_Data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \IP2Bus_Data[8]_i_3 
       (.I0(\IP2Bus_Data[31]_i_6_n_0 ),
        .I1(Lat_Control_Set_Rd_En),
        .I2(Event_Log_En_sync),
        .I3(\s_level_out_bus_d4_reg[31] [6]),
        .I4(\IP2Bus_Data[25]_i_3_n_0 ),
        .I5(Lat_Status_Reg_FOC_Rd_En),
        .O(\IP2Bus_Data[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IP2Bus_Data[9]_i_1 
       (.I0(\IP2Bus_Data[9]_i_2_n_0 ),
        .I1(\IP2Bus_Data[31]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(\IP2Bus_Data[31]_i_3_n_0 ),
        .I4(\GEN_PROFILE_MODE.SW_Data_reg_reg[31] [9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \IP2Bus_Data[9]_i_2 
       (.I0(\IP2Bus_Data[31]_i_6_n_0 ),
        .I1(Lat_Control_Set_Rd_En),
        .I2(Use_Ext_Trig_Log),
        .I3(\s_level_out_bus_d4_reg[31] [7]),
        .I4(\IP2Bus_Data[25]_i_3_n_0 ),
        .I5(Lat_Status_Reg_FOC_Rd_En),
        .O(\IP2Bus_Data[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(prmry_ack_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(p_level_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(p_level_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(p_level_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(p_level_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(p_level_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_d1_cdc_to));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE p_in_d1_cdc_from_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(p_in_d1_cdc_from_reg0),
        .Q(p_in_d1_cdc_from),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d1_cdc_to_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_in_d1_cdc_from),
        .Q(s_out_d1_cdc_to),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_d1_cdc_to),
        .Q(s_out_d2),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_d2),
        .Q(s_out_d3),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d4_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_d3),
        .Q(s_out_d4),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d5_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_d4),
        .Q(s_out_d5),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d6_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_d5),
        .Q(s_out_d6),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d7_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_d6),
        .Q(s_out_d7),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    scndry_out_int_d1_i_1__0
       (.I0(s_out_d4),
        .I1(s_out_d5),
        .O(s_out_re));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE scndry_out_int_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_out_re),
        .Q(scndry_out_int_d1),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_perf_mon_v5_0_17_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized1
   (D,
    SR,
    \IP2Bus_Data_reg[0] ,
    \IP2Bus_Data_reg[1] ,
    s_axi_aresetn,
    Global_Intr_En_reg,
    Lat_Status_Reg_Set_Rd_En,
    Lat_Sample_Interval_Rd_En_reg,
    Lat_Intr_Reg_Set_Rd_En,
    Lat_Status_Reg_FOC_Rd_En,
    Lat_Status_Reg_WIF_Rd_En,
    s_axi_aclk,
    \eventlog_cur_cnt_reg[5] );
  output [29:0]D;
  output [0:0]SR;
  output \IP2Bus_Data_reg[0] ;
  output \IP2Bus_Data_reg[1] ;
  input s_axi_aresetn;
  input Global_Intr_En_reg;
  input Lat_Status_Reg_Set_Rd_En;
  input Lat_Sample_Interval_Rd_En_reg;
  input Lat_Intr_Reg_Set_Rd_En;
  input Lat_Status_Reg_FOC_Rd_En;
  input Lat_Status_Reg_WIF_Rd_En;
  input s_axi_aclk;
  input [5:0]\eventlog_cur_cnt_reg[5] ;

  wire Global_Intr_En_reg;
  wire \IP2Bus_Data_reg[0] ;
  wire \IP2Bus_Data_reg[1] ;
  wire Lat_Intr_Reg_Set_Rd_En;
  wire Lat_Sample_Interval_Rd_En_reg;
  wire Lat_Status_Reg_FOC_Rd_En;
  wire Lat_Status_Reg_Set_Rd_En;
  wire Lat_Status_Reg_WIF_Rd_En;
  wire [0:0]SR;
  wire [5:0]\eventlog_cur_cnt_reg[5] ;
  (* async_reg = "true" *) wire p_in_d1_cdc_from;
  (* async_reg = "true" *) wire p_level_in_d1_cdc_from;
  (* async_reg = "true" *) wire p_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire p_level_out_d2;
  (* async_reg = "true" *) wire p_level_out_d3;
  (* async_reg = "true" *) wire p_level_out_d4;
  (* async_reg = "true" *) wire p_level_out_d5;
  (* async_reg = "true" *) wire p_level_out_d6;
  (* async_reg = "true" *) wire p_level_out_d7;
  (* async_reg = "true" *) wire prmry_ack_int;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  (* async_reg = "true" *) wire [31:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) wire [31:0]s_level_out_bus_d2;
  (* async_reg = "true" *) wire [31:0]s_level_out_bus_d3;
  (* async_reg = "true" *) wire [31:0]s_level_out_bus_d4;
  (* async_reg = "true" *) wire [31:0]s_level_out_bus_d5;
  (* async_reg = "true" *) wire [31:0]s_level_out_bus_d6;
  (* async_reg = "true" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_level_out_d2;
  (* async_reg = "true" *) wire s_level_out_d3;
  (* async_reg = "true" *) wire s_level_out_d4;
  (* async_reg = "true" *) wire s_level_out_d5;
  (* async_reg = "true" *) wire s_level_out_d6;
  (* async_reg = "true" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_out_d2;
  (* async_reg = "true" *) wire s_out_d3;
  (* async_reg = "true" *) wire s_out_d4;
  (* async_reg = "true" *) wire s_out_d5;
  (* async_reg = "true" *) wire s_out_d6;
  (* async_reg = "true" *) wire s_out_d7;
  (* async_reg = "true" *) wire scndry_out_int_d1;

  assign D[29:0] = s_level_out_bus_d4[31:2];
  LUT6 #(
    .INIT(64'hAA00EA00AA00AA00)) 
    \IP2Bus_Data[0]_i_2 
       (.I0(Global_Intr_En_reg),
        .I1(s_level_out_bus_d4[0]),
        .I2(Lat_Status_Reg_Set_Rd_En),
        .I3(Lat_Sample_Interval_Rd_En_reg),
        .I4(Lat_Intr_Reg_Set_Rd_En),
        .I5(Lat_Status_Reg_FOC_Rd_En),
        .O(\IP2Bus_Data_reg[0] ));
  LUT6 #(
    .INIT(64'h0000C0000000A000)) 
    \IP2Bus_Data[1]_i_2 
       (.I0(Lat_Status_Reg_WIF_Rd_En),
        .I1(s_level_out_bus_d4[1]),
        .I2(Lat_Status_Reg_Set_Rd_En),
        .I3(Lat_Sample_Interval_Rd_En_reg),
        .I4(Lat_Intr_Reg_Set_Rd_En),
        .I5(Lat_Status_Reg_FOC_Rd_En),
        .O(\IP2Bus_Data_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    bvalid_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(prmry_ack_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(scndry_out_int_d1));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(p_level_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(p_level_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(p_level_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(p_level_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(p_level_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(p_in_d1_cdc_from));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\eventlog_cur_cnt_reg[5] [0]),
        .Q(s_level_out_bus_d1_cdc_to[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[13]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[14]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[15]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[16]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[17]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[18]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[19]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\eventlog_cur_cnt_reg[5] [1]),
        .Q(s_level_out_bus_d1_cdc_to[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[20]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[21]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[22]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[23]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[24]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[25]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[26]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[27]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[28]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[29]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\eventlog_cur_cnt_reg[5] [2]),
        .Q(s_level_out_bus_d1_cdc_to[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[30]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[31]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\eventlog_cur_cnt_reg[5] [3]),
        .Q(s_level_out_bus_d1_cdc_to[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\eventlog_cur_cnt_reg[5] [4]),
        .Q(s_level_out_bus_d1_cdc_to[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\eventlog_cur_cnt_reg[5] [5]),
        .Q(s_level_out_bus_d1_cdc_to[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d1_cdc_to_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(s_level_out_bus_d1_cdc_to[9]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[0]),
        .Q(s_level_out_bus_d2[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[10]),
        .Q(s_level_out_bus_d2[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[11]),
        .Q(s_level_out_bus_d2[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[12]),
        .Q(s_level_out_bus_d2[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[13]),
        .Q(s_level_out_bus_d2[13]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[14]),
        .Q(s_level_out_bus_d2[14]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[15]),
        .Q(s_level_out_bus_d2[15]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[16]),
        .Q(s_level_out_bus_d2[16]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[17]),
        .Q(s_level_out_bus_d2[17]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[18]),
        .Q(s_level_out_bus_d2[18]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[19]),
        .Q(s_level_out_bus_d2[19]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[1]),
        .Q(s_level_out_bus_d2[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[20]),
        .Q(s_level_out_bus_d2[20]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[21]),
        .Q(s_level_out_bus_d2[21]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[22]),
        .Q(s_level_out_bus_d2[22]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[23]),
        .Q(s_level_out_bus_d2[23]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[24]),
        .Q(s_level_out_bus_d2[24]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[25]),
        .Q(s_level_out_bus_d2[25]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[26]),
        .Q(s_level_out_bus_d2[26]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[27]),
        .Q(s_level_out_bus_d2[27]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[28]),
        .Q(s_level_out_bus_d2[28]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[29]),
        .Q(s_level_out_bus_d2[29]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[2]),
        .Q(s_level_out_bus_d2[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[30]),
        .Q(s_level_out_bus_d2[30]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[31]),
        .Q(s_level_out_bus_d2[31]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[3]),
        .Q(s_level_out_bus_d2[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[4]),
        .Q(s_level_out_bus_d2[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[5]),
        .Q(s_level_out_bus_d2[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[6]),
        .Q(s_level_out_bus_d2[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[7]),
        .Q(s_level_out_bus_d2[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[8]),
        .Q(s_level_out_bus_d2[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d2_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to[9]),
        .Q(s_level_out_bus_d2[9]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[0]),
        .Q(s_level_out_bus_d3[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[10]),
        .Q(s_level_out_bus_d3[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[11]),
        .Q(s_level_out_bus_d3[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[12]),
        .Q(s_level_out_bus_d3[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[13]),
        .Q(s_level_out_bus_d3[13]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[14]),
        .Q(s_level_out_bus_d3[14]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[15]),
        .Q(s_level_out_bus_d3[15]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[16]),
        .Q(s_level_out_bus_d3[16]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[17]),
        .Q(s_level_out_bus_d3[17]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[18]),
        .Q(s_level_out_bus_d3[18]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[19]),
        .Q(s_level_out_bus_d3[19]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[1]),
        .Q(s_level_out_bus_d3[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[20]),
        .Q(s_level_out_bus_d3[20]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[21]),
        .Q(s_level_out_bus_d3[21]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[22]),
        .Q(s_level_out_bus_d3[22]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[23]),
        .Q(s_level_out_bus_d3[23]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[24]),
        .Q(s_level_out_bus_d3[24]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[25]),
        .Q(s_level_out_bus_d3[25]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[26]),
        .Q(s_level_out_bus_d3[26]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[27]),
        .Q(s_level_out_bus_d3[27]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[28]),
        .Q(s_level_out_bus_d3[28]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[29]),
        .Q(s_level_out_bus_d3[29]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[2]),
        .Q(s_level_out_bus_d3[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[30]),
        .Q(s_level_out_bus_d3[30]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[31]),
        .Q(s_level_out_bus_d3[31]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[3]),
        .Q(s_level_out_bus_d3[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[4]),
        .Q(s_level_out_bus_d3[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[5]),
        .Q(s_level_out_bus_d3[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[6]),
        .Q(s_level_out_bus_d3[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[7]),
        .Q(s_level_out_bus_d3[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[8]),
        .Q(s_level_out_bus_d3[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d3_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2[9]),
        .Q(s_level_out_bus_d3[9]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[0]),
        .Q(s_level_out_bus_d4[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[10]),
        .Q(s_level_out_bus_d4[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[11]),
        .Q(s_level_out_bus_d4[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[12]),
        .Q(s_level_out_bus_d4[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[13]),
        .Q(s_level_out_bus_d4[13]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[14]),
        .Q(s_level_out_bus_d4[14]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[15]),
        .Q(s_level_out_bus_d4[15]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[16]),
        .Q(s_level_out_bus_d4[16]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[17]),
        .Q(s_level_out_bus_d4[17]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[18]),
        .Q(s_level_out_bus_d4[18]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[19]),
        .Q(s_level_out_bus_d4[19]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[1]),
        .Q(s_level_out_bus_d4[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[20]),
        .Q(s_level_out_bus_d4[20]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[21]),
        .Q(s_level_out_bus_d4[21]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[22]),
        .Q(s_level_out_bus_d4[22]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[23]),
        .Q(s_level_out_bus_d4[23]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[24]),
        .Q(s_level_out_bus_d4[24]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[25]),
        .Q(s_level_out_bus_d4[25]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[26]),
        .Q(s_level_out_bus_d4[26]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[27]),
        .Q(s_level_out_bus_d4[27]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[28]),
        .Q(s_level_out_bus_d4[28]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[29]),
        .Q(s_level_out_bus_d4[29]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[2]),
        .Q(s_level_out_bus_d4[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[30]),
        .Q(s_level_out_bus_d4[30]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[31]),
        .Q(s_level_out_bus_d4[31]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[3]),
        .Q(s_level_out_bus_d4[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[4]),
        .Q(s_level_out_bus_d4[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[5]),
        .Q(s_level_out_bus_d4[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[6]),
        .Q(s_level_out_bus_d4[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[7]),
        .Q(s_level_out_bus_d4[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[8]),
        .Q(s_level_out_bus_d4[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d4_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3[9]),
        .Q(s_level_out_bus_d4[9]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[0]),
        .Q(s_level_out_bus_d5[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[10]),
        .Q(s_level_out_bus_d5[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[11]),
        .Q(s_level_out_bus_d5[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[12]),
        .Q(s_level_out_bus_d5[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[13]),
        .Q(s_level_out_bus_d5[13]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[14]),
        .Q(s_level_out_bus_d5[14]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[15]),
        .Q(s_level_out_bus_d5[15]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[16]),
        .Q(s_level_out_bus_d5[16]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[17]),
        .Q(s_level_out_bus_d5[17]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[18]),
        .Q(s_level_out_bus_d5[18]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[19]),
        .Q(s_level_out_bus_d5[19]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[1]),
        .Q(s_level_out_bus_d5[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[20]),
        .Q(s_level_out_bus_d5[20]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[21]),
        .Q(s_level_out_bus_d5[21]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[22]),
        .Q(s_level_out_bus_d5[22]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[23]),
        .Q(s_level_out_bus_d5[23]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[24]),
        .Q(s_level_out_bus_d5[24]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[25]),
        .Q(s_level_out_bus_d5[25]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[26]),
        .Q(s_level_out_bus_d5[26]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[27]),
        .Q(s_level_out_bus_d5[27]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[28]),
        .Q(s_level_out_bus_d5[28]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[29]),
        .Q(s_level_out_bus_d5[29]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[2]),
        .Q(s_level_out_bus_d5[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[30]),
        .Q(s_level_out_bus_d5[30]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[31]),
        .Q(s_level_out_bus_d5[31]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[3]),
        .Q(s_level_out_bus_d5[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[4]),
        .Q(s_level_out_bus_d5[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[5]),
        .Q(s_level_out_bus_d5[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[6]),
        .Q(s_level_out_bus_d5[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[7]),
        .Q(s_level_out_bus_d5[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[8]),
        .Q(s_level_out_bus_d5[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d5_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d4[9]),
        .Q(s_level_out_bus_d5[9]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[0]),
        .Q(s_level_out_bus_d6[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[10]),
        .Q(s_level_out_bus_d6[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[11]),
        .Q(s_level_out_bus_d6[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[12]),
        .Q(s_level_out_bus_d6[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[13]),
        .Q(s_level_out_bus_d6[13]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[14]),
        .Q(s_level_out_bus_d6[14]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[15]),
        .Q(s_level_out_bus_d6[15]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[16]),
        .Q(s_level_out_bus_d6[16]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[17]),
        .Q(s_level_out_bus_d6[17]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[18]),
        .Q(s_level_out_bus_d6[18]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[19]),
        .Q(s_level_out_bus_d6[19]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[1]),
        .Q(s_level_out_bus_d6[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[20]),
        .Q(s_level_out_bus_d6[20]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[21]),
        .Q(s_level_out_bus_d6[21]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[22]),
        .Q(s_level_out_bus_d6[22]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[23]),
        .Q(s_level_out_bus_d6[23]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[24]),
        .Q(s_level_out_bus_d6[24]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[25]),
        .Q(s_level_out_bus_d6[25]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[26]),
        .Q(s_level_out_bus_d6[26]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[27]),
        .Q(s_level_out_bus_d6[27]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[28]),
        .Q(s_level_out_bus_d6[28]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[29]),
        .Q(s_level_out_bus_d6[29]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[2]),
        .Q(s_level_out_bus_d6[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[30]),
        .Q(s_level_out_bus_d6[30]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[31]),
        .Q(s_level_out_bus_d6[31]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[3]),
        .Q(s_level_out_bus_d6[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[4]),
        .Q(s_level_out_bus_d6[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[5]),
        .Q(s_level_out_bus_d6[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[6]),
        .Q(s_level_out_bus_d6[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[7]),
        .Q(s_level_out_bus_d6[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[8]),
        .Q(s_level_out_bus_d6[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \s_level_out_bus_d6_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d5[9]),
        .Q(s_level_out_bus_d6[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_perf_mon_v5_0_17_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2
   (core_aresetn,
    out,
    core_aclk);
  input core_aresetn;
  input out;
  input core_aclk;

  wire core_aclk;
  wire core_aresetn;
  wire out;
  (* async_reg = "true" *) wire p_in_d1_cdc_from;
  (* async_reg = "true" *) wire p_level_in_d1_cdc_from;
  (* async_reg = "true" *) wire p_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire p_level_out_d2;
  (* async_reg = "true" *) wire p_level_out_d3;
  (* async_reg = "true" *) wire p_level_out_d4;
  (* async_reg = "true" *) wire p_level_out_d5;
  (* async_reg = "true" *) wire p_level_out_d6;
  (* async_reg = "true" *) wire p_level_out_d7;
  (* async_reg = "true" *) wire prmry_ack_int;
  (* async_reg = "true" *) wire s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) wire s_level_out_bus_d2;
  (* async_reg = "true" *) wire s_level_out_bus_d3;
  (* async_reg = "true" *) wire s_level_out_bus_d4;
  (* async_reg = "true" *) wire s_level_out_bus_d5;
  (* async_reg = "true" *) wire s_level_out_bus_d6;
  (* async_reg = "true" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_level_out_d2;
  (* async_reg = "true" *) wire s_level_out_d3;
  (* async_reg = "true" *) wire s_level_out_d4;
  (* async_reg = "true" *) wire s_level_out_d5;
  (* async_reg = "true" *) wire s_level_out_d6;
  (* async_reg = "true" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_out_d2;
  (* async_reg = "true" *) wire s_out_d3;
  (* async_reg = "true" *) wire s_out_d4;
  (* async_reg = "true" *) wire s_out_d5;
  (* async_reg = "true" *) wire s_out_d6;
  (* async_reg = "true" *) wire s_out_d7;
  (* async_reg = "true" *) wire scndry_out_int_d1;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(prmry_ack_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(scndry_out_int_d1));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(p_level_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(p_level_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(p_level_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(p_level_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(p_level_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(p_in_d1_cdc_from));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d1_cdc_to_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(out),
        .Q(s_level_out_d1_cdc_to),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d2_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d3_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d4_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d5_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d6_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(core_aresetn));
endmodule

(* ORIG_REF_NAME = "axi_perf_mon_v5_0_17_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_3
   (core_aresetn,
    out,
    core_aclk);
  input core_aresetn;
  input out;
  input core_aclk;

  wire core_aclk;
  wire core_aresetn;
  wire out;
  (* async_reg = "true" *) wire p_in_d1_cdc_from;
  (* async_reg = "true" *) wire p_level_in_d1_cdc_from;
  (* async_reg = "true" *) wire p_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire p_level_out_d2;
  (* async_reg = "true" *) wire p_level_out_d3;
  (* async_reg = "true" *) wire p_level_out_d4;
  (* async_reg = "true" *) wire p_level_out_d5;
  (* async_reg = "true" *) wire p_level_out_d6;
  (* async_reg = "true" *) wire p_level_out_d7;
  (* async_reg = "true" *) wire prmry_ack_int;
  (* async_reg = "true" *) wire s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) wire s_level_out_bus_d2;
  (* async_reg = "true" *) wire s_level_out_bus_d3;
  (* async_reg = "true" *) wire s_level_out_bus_d4;
  (* async_reg = "true" *) wire s_level_out_bus_d5;
  (* async_reg = "true" *) wire s_level_out_bus_d6;
  (* async_reg = "true" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_level_out_d2;
  (* async_reg = "true" *) wire s_level_out_d3;
  (* async_reg = "true" *) wire s_level_out_d4;
  (* async_reg = "true" *) wire s_level_out_d5;
  (* async_reg = "true" *) wire s_level_out_d6;
  (* async_reg = "true" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_out_d2;
  (* async_reg = "true" *) wire s_out_d3;
  (* async_reg = "true" *) wire s_out_d4;
  (* async_reg = "true" *) wire s_out_d5;
  (* async_reg = "true" *) wire s_out_d6;
  (* async_reg = "true" *) wire s_out_d7;
  (* async_reg = "true" *) wire scndry_out_int_d1;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(prmry_ack_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(scndry_out_int_d1));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(p_level_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(p_level_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(p_level_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(p_level_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(p_level_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(p_in_d1_cdc_from));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d1_cdc_to_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(out),
        .Q(s_level_out_d1_cdc_to),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d2_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d3_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d4_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d5_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(core_aresetn));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d6_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(core_aresetn));
endmodule

(* ORIG_REF_NAME = "axi_perf_mon_v5_0_17_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_4
   (out,
    SR,
    trigger_in,
    core_aclk);
  output out;
  input [0:0]SR;
  input trigger_in;
  input core_aclk;

  wire [0:0]SR;
  wire core_aclk;
  (* async_reg = "true" *) wire p_in_d1_cdc_from;
  (* async_reg = "true" *) wire p_level_in_d1_cdc_from;
  (* async_reg = "true" *) wire p_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire p_level_out_d2;
  (* async_reg = "true" *) wire p_level_out_d3;
  (* async_reg = "true" *) wire p_level_out_d4;
  (* async_reg = "true" *) wire p_level_out_d5;
  (* async_reg = "true" *) wire p_level_out_d6;
  (* async_reg = "true" *) wire p_level_out_d7;
  (* async_reg = "true" *) wire prmry_ack_int;
  (* async_reg = "true" *) wire s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) wire s_level_out_bus_d2;
  (* async_reg = "true" *) wire s_level_out_bus_d3;
  (* async_reg = "true" *) wire s_level_out_bus_d4;
  (* async_reg = "true" *) wire s_level_out_bus_d5;
  (* async_reg = "true" *) wire s_level_out_bus_d6;
  (* async_reg = "true" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_level_out_d2;
  (* async_reg = "true" *) wire s_level_out_d3;
  (* async_reg = "true" *) wire s_level_out_d4;
  (* async_reg = "true" *) wire s_level_out_d5;
  (* async_reg = "true" *) wire s_level_out_d6;
  (* async_reg = "true" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) wire s_out_d2;
  (* async_reg = "true" *) wire s_out_d3;
  (* async_reg = "true" *) wire s_out_d4;
  (* async_reg = "true" *) wire s_out_d5;
  (* async_reg = "true" *) wire s_out_d6;
  (* async_reg = "true" *) wire s_out_d7;
  (* async_reg = "true" *) wire scndry_out_int_d1;
  wire trigger_in;

  assign out = s_level_out_d4;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(p_level_in_d1_cdc_from));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(prmry_ack_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(scndry_out_int_d1));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(p_level_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(p_level_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(p_level_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(p_level_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(p_level_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(p_level_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(p_level_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(p_in_d1_cdc_from));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d1_cdc_to_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(trigger_in),
        .Q(s_level_out_d1_cdc_to),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d2_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d3_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d4_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d5_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_level_out_d6_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_perf_mon_v5_0_17_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_counter__parameterized0
   (A,
    \Count_Out_i_reg[0]_0 ,
    over_flow_cap_reg,
    core_aclk,
    Mon_Wr_En_reg,
    Event_Log_En_sync,
    Event_Log_En_D1,
    core_aresetn,
    p_0_in,
    wr_en);
  output [15:0]A;
  output \Count_Out_i_reg[0]_0 ;
  output over_flow_cap_reg;
  input core_aclk;
  input Mon_Wr_En_reg;
  input Event_Log_En_sync;
  input Event_Log_En_D1;
  input core_aresetn;
  input [0:0]p_0_in;
  input wr_en;

  wire [15:0]A;
  wire Carry_Out;
  wire Carry_Out_i_1_n_0;
  wire Count_Out_i0_carry__0_n_1;
  wire Count_Out_i0_carry__0_n_10;
  wire Count_Out_i0_carry__0_n_11;
  wire Count_Out_i0_carry__0_n_12;
  wire Count_Out_i0_carry__0_n_13;
  wire Count_Out_i0_carry__0_n_14;
  wire Count_Out_i0_carry__0_n_15;
  wire Count_Out_i0_carry__0_n_2;
  wire Count_Out_i0_carry__0_n_3;
  wire Count_Out_i0_carry__0_n_5;
  wire Count_Out_i0_carry__0_n_6;
  wire Count_Out_i0_carry__0_n_7;
  wire Count_Out_i0_carry__0_n_8;
  wire Count_Out_i0_carry__0_n_9;
  wire Count_Out_i0_carry_n_0;
  wire Count_Out_i0_carry_n_1;
  wire Count_Out_i0_carry_n_10;
  wire Count_Out_i0_carry_n_11;
  wire Count_Out_i0_carry_n_12;
  wire Count_Out_i0_carry_n_13;
  wire Count_Out_i0_carry_n_14;
  wire Count_Out_i0_carry_n_15;
  wire Count_Out_i0_carry_n_2;
  wire Count_Out_i0_carry_n_3;
  wire Count_Out_i0_carry_n_5;
  wire Count_Out_i0_carry_n_6;
  wire Count_Out_i0_carry_n_7;
  wire Count_Out_i0_carry_n_8;
  wire Count_Out_i0_carry_n_9;
  wire \Count_Out_i[0]_i_1_n_0 ;
  wire \Count_Out_i[10]_i_1_n_0 ;
  wire \Count_Out_i[11]_i_1_n_0 ;
  wire \Count_Out_i[12]_i_1_n_0 ;
  wire \Count_Out_i[13]_i_1_n_0 ;
  wire \Count_Out_i[14]_i_1_n_0 ;
  wire \Count_Out_i[15]_i_1_n_0 ;
  wire \Count_Out_i[15]_i_2_n_0 ;
  wire \Count_Out_i[16]_i_1_n_0 ;
  wire \Count_Out_i[1]_i_1_n_0 ;
  wire \Count_Out_i[2]_i_1_n_0 ;
  wire \Count_Out_i[3]_i_1_n_0 ;
  wire \Count_Out_i[4]_i_1_n_0 ;
  wire \Count_Out_i[5]_i_1_n_0 ;
  wire \Count_Out_i[6]_i_1_n_0 ;
  wire \Count_Out_i[7]_i_1_n_0 ;
  wire \Count_Out_i[8]_i_1_n_0 ;
  wire \Count_Out_i[9]_i_1_n_0 ;
  wire \Count_Out_i_reg[0]_0 ;
  wire Event_Log_En_D1;
  wire Event_Log_En_sync;
  wire Mon_Wr_En_reg;
  wire Overflow;
  wire Overflow_D1;
  wire core_aclk;
  wire core_aresetn;
  wire over_flow_cap_reg;
  wire [0:0]p_0_in;
  wire wr_en;
  wire [3:3]NLW_Count_Out_i0_carry_CO_UNCONNECTED;
  wire [7:3]NLW_Count_Out_i0_carry__0_CO_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    Carry_Out_i_1
       (.I0(Overflow),
        .I1(Overflow_D1),
        .O(Carry_Out_i_1_n_0));
  FDRE Carry_Out_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(Carry_Out_i_1_n_0),
        .Q(Carry_Out),
        .R(\Count_Out_i_reg[0]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 Count_Out_i0_carry
       (.CI(A[0]),
        .CI_TOP(1'b0),
        .CO({Count_Out_i0_carry_n_0,Count_Out_i0_carry_n_1,Count_Out_i0_carry_n_2,Count_Out_i0_carry_n_3,NLW_Count_Out_i0_carry_CO_UNCONNECTED[3],Count_Out_i0_carry_n_5,Count_Out_i0_carry_n_6,Count_Out_i0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({Count_Out_i0_carry_n_8,Count_Out_i0_carry_n_9,Count_Out_i0_carry_n_10,Count_Out_i0_carry_n_11,Count_Out_i0_carry_n_12,Count_Out_i0_carry_n_13,Count_Out_i0_carry_n_14,Count_Out_i0_carry_n_15}),
        .S(A[8:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 Count_Out_i0_carry__0
       (.CI(Count_Out_i0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_Count_Out_i0_carry__0_CO_UNCONNECTED[7],Count_Out_i0_carry__0_n_1,Count_Out_i0_carry__0_n_2,Count_Out_i0_carry__0_n_3,NLW_Count_Out_i0_carry__0_CO_UNCONNECTED[3],Count_Out_i0_carry__0_n_5,Count_Out_i0_carry__0_n_6,Count_Out_i0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({Count_Out_i0_carry__0_n_8,Count_Out_i0_carry__0_n_9,Count_Out_i0_carry__0_n_10,Count_Out_i0_carry__0_n_11,Count_Out_i0_carry__0_n_12,Count_Out_i0_carry__0_n_13,Count_Out_i0_carry__0_n_14,Count_Out_i0_carry__0_n_15}),
        .S({Overflow,A[15:9]}));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hAEFF)) 
    \Count_Out_i[0]_i_1 
       (.I0(Mon_Wr_En_reg),
        .I1(Event_Log_En_sync),
        .I2(Event_Log_En_D1),
        .I3(A[0]),
        .O(\Count_Out_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[10]_i_1 
       (.I0(Count_Out_i0_carry__0_n_14),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[11]_i_1 
       (.I0(Count_Out_i0_carry__0_n_13),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[12]_i_1 
       (.I0(Count_Out_i0_carry__0_n_12),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[13]_i_1 
       (.I0(Count_Out_i0_carry__0_n_11),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[14]_i_1 
       (.I0(Count_Out_i0_carry__0_n_10),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Count_Out_i[15]_i_1 
       (.I0(Mon_Wr_En_reg),
        .I1(Event_Log_En_sync),
        .O(\Count_Out_i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[15]_i_2 
       (.I0(Count_Out_i0_carry__0_n_9),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h008800A0000000A0)) 
    \Count_Out_i[16]_i_1 
       (.I0(core_aresetn),
        .I1(Count_Out_i0_carry__0_n_8),
        .I2(Overflow),
        .I3(Mon_Wr_En_reg),
        .I4(Event_Log_En_sync),
        .I5(Event_Log_En_D1),
        .O(\Count_Out_i[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[1]_i_1 
       (.I0(Count_Out_i0_carry_n_15),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[2]_i_1 
       (.I0(Count_Out_i0_carry_n_14),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[3]_i_1 
       (.I0(Count_Out_i0_carry_n_13),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[4]_i_1 
       (.I0(Count_Out_i0_carry_n_12),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[5]_i_1 
       (.I0(Count_Out_i0_carry_n_11),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[6]_i_1 
       (.I0(Count_Out_i0_carry_n_10),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[7]_i_1 
       (.I0(Count_Out_i0_carry_n_9),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[8]_i_1 
       (.I0(Count_Out_i0_carry_n_8),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \Count_Out_i[9]_i_1 
       (.I0(Count_Out_i0_carry__0_n_15),
        .I1(Mon_Wr_En_reg),
        .I2(Event_Log_En_sync),
        .I3(Event_Log_En_D1),
        .O(\Count_Out_i[9]_i_1_n_0 ));
  FDRE \Count_Out_i_reg[0] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[0]_i_1_n_0 ),
        .Q(A[0]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[10] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[10]_i_1_n_0 ),
        .Q(A[10]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[11] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[11]_i_1_n_0 ),
        .Q(A[11]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[12] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[12]_i_1_n_0 ),
        .Q(A[12]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[13] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[13]_i_1_n_0 ),
        .Q(A[13]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[14] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[14]_i_1_n_0 ),
        .Q(A[14]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[15] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[15]_i_2_n_0 ),
        .Q(A[15]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[16] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(\Count_Out_i[16]_i_1_n_0 ),
        .Q(Overflow),
        .R(1'b0));
  FDRE \Count_Out_i_reg[1] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[1]_i_1_n_0 ),
        .Q(A[1]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[2] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[2]_i_1_n_0 ),
        .Q(A[2]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[3] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[3]_i_1_n_0 ),
        .Q(A[3]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[4] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[4]_i_1_n_0 ),
        .Q(A[4]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[5] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[5]_i_1_n_0 ),
        .Q(A[5]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[6] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[6]_i_1_n_0 ),
        .Q(A[6]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[7] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[7]_i_1_n_0 ),
        .Q(A[7]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[8] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[8]_i_1_n_0 ),
        .Q(A[8]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE \Count_Out_i_reg[9] 
       (.C(core_aclk),
        .CE(\Count_Out_i[15]_i_1_n_0 ),
        .D(\Count_Out_i[9]_i_1_n_0 ),
        .Q(A[9]),
        .R(\Count_Out_i_reg[0]_0 ));
  FDRE Overflow_D1_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(Overflow),
        .Q(Overflow_D1),
        .R(\Count_Out_i_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h00A8)) 
    over_flow_cap_i_1
       (.I0(core_aresetn),
        .I1(Carry_Out),
        .I2(p_0_in),
        .I3(wr_en),
        .O(over_flow_cap_reg));
  LUT1 #(
    .INIT(2'h1)) 
    trigger_in_ack_r_i_1
       (.I0(core_aresetn),
        .O(\Count_Out_i_reg[0]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset
   (out,
    core_aclk,
    capture_event);
  output out;
  input core_aclk;
  input capture_event;

  wire capture_event;
  wire core_aclk;
  (* async_reg = "true" *) wire out;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE q_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(capture_event),
        .Q(out));
endmodule

(* ORIG_REF_NAME = "axi_perf_mon_v5_0_17_dff_async_reset" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_0
   (out,
    core_aclk,
    reset_event);
  output out;
  input core_aclk;
  input reset_event;

  wire core_aclk;
  (* async_reg = "true" *) wire out;
  wire reset_event;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE q_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_event),
        .Q(out));
endmodule

(* ORIG_REF_NAME = "axi_perf_mon_v5_0_17_dff_async_reset" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_1
   (out,
    q_reg_0,
    core_aclk,
    capture_event);
  output out;
  input q_reg_0;
  input core_aclk;
  input capture_event;

  wire capture_event;
  wire core_aclk;
  (* async_reg = "true" *) wire out;
  wire q_reg_0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE q_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(q_reg_0),
        .PRE(capture_event),
        .Q(out));
endmodule

(* ORIG_REF_NAME = "axi_perf_mon_v5_0_17_dff_async_reset" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_2
   (out,
    q_reg_0,
    core_aclk,
    reset_event);
  output out;
  input q_reg_0;
  input core_aclk;
  input reset_event;

  wire core_aclk;
  (* async_reg = "true" *) wire out;
  wire q_reg_0;
  wire reset_event;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE q_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(q_reg_0),
        .PRE(reset_event),
        .Q(out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_flags_gen_trace
   (Slot_0_Log_En_Marked,
    \Mon_Wr_Data_reg[9] ,
    core_aclk,
    D,
    Q,
    slot_0_axi_wvalid,
    slot_0_axi_wready,
    core_aresetn,
    slot_0_axi_wlast,
    slot_0_axi_rready,
    slot_0_axi_rvalid,
    slot_0_axi_rlast,
    Use_Ext_Trig_Log,
    SR,
    slot_0_ext_trig_stop);
  output Slot_0_Log_En_Marked;
  output [6:0]\Mon_Wr_Data_reg[9] ;
  input core_aclk;
  input [4:0]D;
  input [1:0]Q;
  input slot_0_axi_wvalid;
  input slot_0_axi_wready;
  input core_aresetn;
  input slot_0_axi_wlast;
  input slot_0_axi_rready;
  input slot_0_axi_rvalid;
  input slot_0_axi_rlast;
  input Use_Ext_Trig_Log;
  input [0:0]SR;
  input [1:0]slot_0_ext_trig_stop;

  wire [4:0]D;
  wire Ext_Trig_log_en;
  wire [1:0]Ext_Triggers_Sync;
  wire [1:0]Ext_Triggers_Sync_d1;
  wire [6:0]\Mon_Wr_Data_reg[9] ;
  wire Mon_Wr_En_i_2_n_0;
  wire [1:0]Q;
  wire Read_going_on;
  wire Read_going_on_i_1_n_0;
  wire [0:0]SR;
  wire Slot_0_Log_En_Marked;
  wire Use_Ext_Trig_Log;
  wire Write_going_on;
  wire Write_going_on_i_1_n_0;
  wire core_aclk;
  wire core_aresetn;
  wire ext_trig_cdc_sync_n_2;
  wire [5:1]p_2_out;
  wire slot_0_axi_rlast;
  wire slot_0_axi_rready;
  wire slot_0_axi_rvalid;
  wire slot_0_axi_wlast;
  wire slot_0_axi_wready;
  wire slot_0_axi_wvalid;
  wire [1:0]slot_0_ext_trig_stop;

  FDRE Ext_Trig_log_en_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(ext_trig_cdc_sync_n_2),
        .Q(Ext_Trig_log_en),
        .R(1'b0));
  FDRE \Ext_Triggers_Sync_d1_reg[0] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(Ext_Triggers_Sync[0]),
        .Q(Ext_Triggers_Sync_d1[0]),
        .R(SR));
  FDRE \Ext_Triggers_Sync_d1_reg[1] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(Ext_Triggers_Sync[1]),
        .Q(Ext_Triggers_Sync_d1[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'h4000)) 
    \Flags[1]_i_1 
       (.I0(Write_going_on),
        .I1(Q[1]),
        .I2(slot_0_axi_wvalid),
        .I3(slot_0_axi_wready),
        .O(p_2_out[1]));
  LUT4 #(
    .INIT(16'h4000)) 
    \Flags[5]_i_1 
       (.I0(Read_going_on),
        .I1(Q[0]),
        .I2(slot_0_axi_rready),
        .I3(slot_0_axi_rvalid),
        .O(p_2_out[5]));
  FDRE \Flags_reg[0] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\Mon_Wr_Data_reg[9] [0]),
        .R(SR));
  FDRE \Flags_reg[1] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(p_2_out[1]),
        .Q(\Mon_Wr_Data_reg[9] [1]),
        .R(SR));
  FDRE \Flags_reg[2] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\Mon_Wr_Data_reg[9] [2]),
        .R(SR));
  FDRE \Flags_reg[3] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\Mon_Wr_Data_reg[9] [3]),
        .R(SR));
  FDRE \Flags_reg[4] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\Mon_Wr_Data_reg[9] [4]),
        .R(SR));
  FDRE \Flags_reg[5] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(p_2_out[5]),
        .Q(\Mon_Wr_Data_reg[9] [5]),
        .R(SR));
  FDRE \Flags_reg[6] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\Mon_Wr_Data_reg[9] [6]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFBFBAA)) 
    Mon_Wr_En_i_1
       (.I0(Mon_Wr_En_i_2_n_0),
        .I1(Use_Ext_Trig_Log),
        .I2(Ext_Trig_log_en),
        .I3(\Mon_Wr_Data_reg[9] [5]),
        .I4(\Mon_Wr_Data_reg[9] [2]),
        .I5(\Mon_Wr_Data_reg[9] [3]),
        .O(Slot_0_Log_En_Marked));
  LUT6 #(
    .INIT(64'hFF0FFF0FFF0FEE0E)) 
    Mon_Wr_En_i_2
       (.I0(\Mon_Wr_Data_reg[9] [6]),
        .I1(\Mon_Wr_Data_reg[9] [4]),
        .I2(Use_Ext_Trig_Log),
        .I3(Ext_Trig_log_en),
        .I4(\Mon_Wr_Data_reg[9] [1]),
        .I5(\Mon_Wr_Data_reg[9] [0]),
        .O(Mon_Wr_En_i_2_n_0));
  LUT5 #(
    .INIT(32'h0A888888)) 
    Read_going_on_i_1
       (.I0(core_aresetn),
        .I1(Read_going_on),
        .I2(slot_0_axi_rlast),
        .I3(slot_0_axi_rvalid),
        .I4(slot_0_axi_rready),
        .O(Read_going_on_i_1_n_0));
  FDRE Read_going_on_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(Read_going_on_i_1_n_0),
        .Q(Read_going_on),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0A888888)) 
    Write_going_on_i_1
       (.I0(core_aresetn),
        .I1(Write_going_on),
        .I2(slot_0_axi_wlast),
        .I3(slot_0_axi_wready),
        .I4(slot_0_axi_wvalid),
        .O(Write_going_on_i_1_n_0));
  FDRE Write_going_on_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(Write_going_on_i_1_n_0),
        .Q(Write_going_on),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync ext_trig_cdc_sync
       (.D(Ext_Triggers_Sync),
        .Ext_Trig_log_en(Ext_Trig_log_en),
        .Ext_Trig_log_en_reg(ext_trig_cdc_sync_n_2),
        .Q(Ext_Triggers_Sync_d1),
        .SR(SR),
        .Use_Ext_Trig_Log(Use_Ext_Trig_Log),
        .core_aclk(core_aclk),
        .core_aresetn(core_aresetn),
        .slot_0_ext_trig_stop(slot_0_ext_trig_stop));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_interrupt_module
   (Intr_Reg_ISR,
    interrupt,
    Intr_Reg_IER,
    p_0_out,
    s_axi_aclk,
    SR,
    \bus2ip_addr_i_reg[5] ,
    Global_Intr_En);
  output [0:0]Intr_Reg_ISR;
  output interrupt;
  output [0:0]Intr_Reg_IER;
  input p_0_out;
  input s_axi_aclk;
  input [0:0]SR;
  input \bus2ip_addr_i_reg[5] ;
  input Global_Intr_En;

  wire Global_Intr_En;
  wire Interrupt0;
  wire [0:0]Intr_Reg_IER;
  wire [0:0]Intr_Reg_ISR;
  wire [0:0]SR;
  wire \bus2ip_addr_i_reg[5] ;
  wire interrupt;
  wire p_0_out;
  wire s_axi_aclk;

  FDRE \GEN_ISR_REG[1].ISR_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(Intr_Reg_ISR),
        .R(1'b0));
  FDRE \IER_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[5] ),
        .Q(Intr_Reg_IER),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    Interrupt_i_1
       (.I0(Intr_Reg_ISR),
        .I1(Intr_Reg_IER),
        .I2(Global_Intr_En),
        .O(Interrupt0));
  FDRE Interrupt_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Interrupt0),
        .Q(interrupt),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_profile
   (m_axis_tdata,
    \Count_Out_i_reg[0] ,
    interrupt,
    trigger_in_ack,
    m_axis_tvalid,
    s_axi_rvalid,
    s_axi_arready,
    s_axi_awready,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_wready,
    core_aclk,
    s_axi_wdata,
    s_axi_aclk,
    m_axis_aclk,
    trigger_in,
    m_axis_tready,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_arvalid,
    core_aresetn,
    D,
    s_axi_awaddr,
    s_axi_aresetn,
    s_axi_araddr,
    m_axis_aresetn,
    slot_0_axi_wvalid,
    slot_0_axi_wready,
    slot_0_axi_wlast,
    slot_0_axi_rready,
    slot_0_axi_rvalid,
    slot_0_axi_rlast,
    slot_0_axi_arvalid,
    slot_0_axi_arready,
    slot_0_axi_bvalid,
    slot_0_axi_bready,
    slot_0_axi_awready,
    slot_0_axi_awvalid);
  output [55:0]m_axis_tdata;
  output \Count_Out_i_reg[0] ;
  output interrupt;
  output trigger_in_ack;
  output m_axis_tvalid;
  output s_axi_rvalid;
  output s_axi_arready;
  output s_axi_awready;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  output s_axi_wready;
  input core_aclk;
  input [31:0]s_axi_wdata;
  input s_axi_aclk;
  input m_axis_aclk;
  input trigger_in;
  input m_axis_tready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_arvalid;
  input core_aresetn;
  input [1:0]D;
  input [15:0]s_axi_awaddr;
  input s_axi_aresetn;
  input [15:0]s_axi_araddr;
  input m_axis_aresetn;
  input slot_0_axi_wvalid;
  input slot_0_axi_wready;
  input slot_0_axi_wlast;
  input slot_0_axi_rready;
  input slot_0_axi_rvalid;
  input slot_0_axi_rlast;
  input slot_0_axi_arvalid;
  input slot_0_axi_arready;
  input slot_0_axi_bvalid;
  input slot_0_axi_bready;
  input slot_0_axi_awready;
  input slot_0_axi_awvalid;

  wire Addr_3downto0_is_0x4;
  wire Addr_3downto0_is_0x8;
  wire Bus2IP_RdCE;
  wire Control_Set_Rd_En;
  wire Control_Set_Wr_En;
  wire \Count_Out_i_reg[0] ;
  wire [1:0]D;
  wire Event_Log_En_sync;
  wire Event_Log_Set_Rd_En;
  wire Fifo_Wr_En1_out;
  wire [6:0]Flags;
  wire \GEN_PROFILE_MODE.SW_Data_reg0 ;
  wire \GEN_TRACE_LOG.async_stream_fifo_inst_n_57 ;
  wire \GEN_TRACE_LOG.async_stream_fifo_inst_n_58 ;
  wire Global_Intr_En;
  wire [31:0]IP2Bus_Data;
  wire IP2Bus_DataValid;
  wire Intr_Reg_GIE_Rd_En;
  wire [1:1]Intr_Reg_IER;
  wire Intr_Reg_IER_Rd_En;
  wire [1:1]Intr_Reg_ISR;
  wire Intr_Reg_ISR_Rd_En;
  wire Intr_Reg_Set_Rd_En;
  wire Metric_Cnt_Reg_Set_Rd_En;
  wire Mon_Wr_En;
  wire Samp_Metric_Cnt_Reg_Set_Rd_En;
  wire Sample_Interval_Rd_En;
  wire Slot_0_Log_En_Marked;
  wire Status_Reg_FOC_Rd_En;
  wire Status_Reg_Set_Rd_En;
  wire Status_Reg_WIF_Rd_En;
  wire Streaming_Fifo_Full;
  wire Streaming_Fifo_Full_D1;
  wire [27:1]Streaming_Fifo_Wr_Data;
  wire Streaming_Fifo_Wr_En;
  wire Trace_Filter_Rd_En;
  wire Trace_Filter_Wr_En;
  wire [2:1]Trace_ctrl_reg;
  wire Use_Ext_Trig_Log;
  wire axi_interface_inst_n_5;
  wire axi_interface_inst_n_6;
  wire \cdc_sync_inst1/p_0_in0_in ;
  wire \cdc_sync_inst1/p_in_d1_cdc_from_reg0 ;
  wire core_aclk;
  wire core_aresetn;
  wire [5:0]eventlog_cur_cnt;
  wire fifo_rst;
  wire interrupt;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [55:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire p_0_out;
  wire [6:0]p_2_out;
  wire register_module_inst_n_2;
  wire register_module_inst_n_6;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire slot_0_axi_arready;
  wire slot_0_axi_arvalid;
  wire slot_0_axi_awready;
  wire slot_0_axi_awvalid;
  wire slot_0_axi_bready;
  wire slot_0_axi_bvalid;
  wire slot_0_axi_rlast;
  wire slot_0_axi_rready;
  wire slot_0_axi_rvalid;
  wire slot_0_axi_wlast;
  wire slot_0_axi_wready;
  wire slot_0_axi_wvalid;
  wire trigger_in;
  wire trigger_in_ack;
  wire trigger_in_sync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_flags_gen_trace \GEN_SLOT0_TRACE.flags_generator_inst_0 
       (.D({p_2_out[6],p_2_out[4:2],p_2_out[0]}),
        .\Mon_Wr_Data_reg[9] (Flags),
        .Q(Trace_ctrl_reg),
        .SR(\Count_Out_i_reg[0] ),
        .Slot_0_Log_En_Marked(Slot_0_Log_En_Marked),
        .Use_Ext_Trig_Log(Use_Ext_Trig_Log),
        .core_aclk(core_aclk),
        .core_aresetn(core_aresetn),
        .slot_0_axi_rlast(slot_0_axi_rlast),
        .slot_0_axi_rready(slot_0_axi_rready),
        .slot_0_axi_rvalid(slot_0_axi_rvalid),
        .slot_0_axi_wlast(slot_0_axi_wlast),
        .slot_0_axi_wready(slot_0_axi_wready),
        .slot_0_axi_wvalid(slot_0_axi_wvalid),
        .slot_0_ext_trig_stop(D));
  FDRE \GEN_TRACE_LOG.Streaming_Fifo_Full_D1_reg 
       (.C(core_aclk),
        .CE(1'b1),
        .D(Streaming_Fifo_Full),
        .Q(Streaming_Fifo_Full_D1),
        .R(\Count_Out_i_reg[0] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_async_stream_fifo \GEN_TRACE_LOG.async_stream_fifo_inst 
       (.Event_Log_En_sync(Event_Log_En_sync),
        .\Fifo_Wr_Data_reg[1] (\GEN_TRACE_LOG.async_stream_fifo_inst_n_57 ),
        .Fifo_Wr_En1_out(Fifo_Wr_En1_out),
        .\GEN_ISR_REG[1].ISR_reg[1] (\GEN_TRACE_LOG.async_stream_fifo_inst_n_58 ),
        .Mon_Wr_En(Mon_Wr_En),
        .Q(eventlog_cur_cnt),
        .Streaming_Fifo_Full(Streaming_Fifo_Full),
        .Streaming_Fifo_Full_D1(Streaming_Fifo_Full_D1),
        .core_aclk(core_aclk),
        .core_aresetn(core_aresetn),
        .din({Streaming_Fifo_Wr_Data[27:21],Streaming_Fifo_Wr_Data[17:1]}),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rst(fifo_rst),
        .s_axi_aresetn(s_axi_aresetn),
        .wr_en(Streaming_Fifo_Wr_En));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_strm_fifo_wr_logic \GEN_TRACE_LOG.streaming_fifo_write_logic_inst 
       (.D(Flags),
        .Event_Log_En_sync(Event_Log_En_sync),
        .Fifo_Wr_En1_out(Fifo_Wr_En1_out),
        .Mon_Wr_En(Mon_Wr_En),
        .Mon_Wr_En_reg_0(\GEN_TRACE_LOG.async_stream_fifo_inst_n_57 ),
        .SR(\Count_Out_i_reg[0] ),
        .Slot_0_Log_En_Marked(Slot_0_Log_En_Marked),
        .core_aclk(core_aclk),
        .core_aresetn(core_aresetn),
        .din({Streaming_Fifo_Wr_Data[27:21],Streaming_Fifo_Wr_Data[17:1]}),
        .wr_en(Streaming_Fifo_Wr_En));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_axi_interface axi_interface_inst
       (.Addr_3downto0_is_0x4(Addr_3downto0_is_0x4),
        .Addr_3downto0_is_0x8(Addr_3downto0_is_0x8),
        .Bus2IP_RdCE(Bus2IP_RdCE),
        .Control_Set_Rd_En(Control_Set_Rd_En),
        .Control_Set_Wr_En(Control_Set_Wr_En),
        .E(\GEN_PROFILE_MODE.SW_Data_reg0 ),
        .Event_Log_Set_Rd_En(Event_Log_Set_Rd_En),
        .\GEN_TRACE_LOG.Streaming_Fifo_Full_D1_reg (\GEN_TRACE_LOG.async_stream_fifo_inst_n_58 ),
        .Global_Intr_En(Global_Intr_En),
        .Global_Intr_En_reg(axi_interface_inst_n_5),
        .\IER_reg[1] (axi_interface_inst_n_6),
        .IP2Bus_DataValid_reg(register_module_inst_n_6),
        .IP2Bus_DataValid_reg_0(IP2Bus_DataValid),
        .Intr_Reg_GIE_Rd_En(Intr_Reg_GIE_Rd_En),
        .Intr_Reg_IER(Intr_Reg_IER),
        .Intr_Reg_IER_Rd_En(Intr_Reg_IER_Rd_En),
        .Intr_Reg_ISR(Intr_Reg_ISR),
        .Intr_Reg_ISR_Rd_En(Intr_Reg_ISR_Rd_En),
        .Intr_Reg_Set_Rd_En(Intr_Reg_Set_Rd_En),
        .Metric_Cnt_Reg_Set_Rd_En(Metric_Cnt_Reg_Set_Rd_En),
        .Q(IP2Bus_Data),
        .SR(register_module_inst_n_2),
        .Samp_Metric_Cnt_Reg_Set_Rd_En(Samp_Metric_Cnt_Reg_Set_Rd_En),
        .Sample_Interval_Rd_En(Sample_Interval_Rd_En),
        .Status_Reg_FOC_Rd_En(Status_Reg_FOC_Rd_En),
        .Status_Reg_Set_Rd_En(Status_Reg_Set_Rd_En),
        .Status_Reg_WIF_Rd_En(Status_Reg_WIF_Rd_En),
        .Trace_Filter_Rd_En(Trace_Filter_Rd_En),
        .\Trace_ctrl_reg_reg[30] (Trace_Filter_Wr_En),
        .out(\cdc_sync_inst1/p_0_in0_in ),
        .p_0_out(p_0_out),
        .p_in_d1_cdc_from_reg0(\cdc_sync_inst1/p_in_d1_cdc_from_reg0 ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[2],s_axi_wdata[0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_interrupt_module interrupt_module_inst
       (.Global_Intr_En(Global_Intr_En),
        .Intr_Reg_IER(Intr_Reg_IER),
        .Intr_Reg_ISR(Intr_Reg_ISR),
        .SR(register_module_inst_n_2),
        .\bus2ip_addr_i_reg[5] (axi_interface_inst_n_6),
        .interrupt(interrupt),
        .p_0_out(p_0_out),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_register_module_profile register_module_inst
       (.Addr_3downto0_is_0x4(Addr_3downto0_is_0x4),
        .Addr_3downto0_is_0x8(Addr_3downto0_is_0x8),
        .Bus2IP_RdCE(Bus2IP_RdCE),
        .Control_Set_Rd_En(Control_Set_Rd_En),
        .Control_Set_Wr_En(Control_Set_Wr_En),
        .D({p_2_out[6],p_2_out[4:2],p_2_out[0]}),
        .E(\GEN_PROFILE_MODE.SW_Data_reg0 ),
        .Event_Log_En_sync(Event_Log_En_sync),
        .Event_Log_Set_Rd_En(Event_Log_Set_Rd_En),
        .Global_Intr_En(Global_Intr_En),
        .\IP2Bus_Data_sampled_reg[31] (IP2Bus_DataValid),
        .\IP2Bus_Data_sampled_reg[31]_0 (IP2Bus_Data),
        .Intr_Reg_GIE_Rd_En(Intr_Reg_GIE_Rd_En),
        .Intr_Reg_IER(Intr_Reg_IER),
        .Intr_Reg_IER_Rd_En(Intr_Reg_IER_Rd_En),
        .Intr_Reg_ISR(Intr_Reg_ISR),
        .Intr_Reg_ISR_Rd_En(Intr_Reg_ISR_Rd_En),
        .Intr_Reg_Set_Rd_En(Intr_Reg_Set_Rd_En),
        .Metric_Cnt_Reg_Set_Rd_En(Metric_Cnt_Reg_Set_Rd_En),
        .Q(Trace_ctrl_reg),
        .SR(register_module_inst_n_2),
        .Samp_Metric_Cnt_Reg_Set_Rd_En(Samp_Metric_Cnt_Reg_Set_Rd_En),
        .Sample_Interval_Rd_En(Sample_Interval_Rd_En),
        .Status_Reg_FOC_Rd_En(Status_Reg_FOC_Rd_En),
        .Status_Reg_Set_Rd_En(Status_Reg_Set_Rd_En),
        .Status_Reg_WIF_Rd_En(Status_Reg_WIF_Rd_En),
        .Trace_Filter_Rd_En(Trace_Filter_Rd_En),
        .Use_Ext_Trig_Log(Use_Ext_Trig_Log),
        .\bus2ip_addr_i_reg[5] (axi_interface_inst_n_5),
        .core_aclk(core_aclk),
        .core_aresetn(core_aresetn),
        .core_aresetn_0(\Count_Out_i_reg[0] ),
        .\eventlog_cur_cnt_reg[5] (eventlog_cur_cnt),
        .m_axis_aresetn(m_axis_aresetn),
        .out(\cdc_sync_inst1/p_0_in0_in ),
        .p_in_d1_cdc_from_reg0(\cdc_sync_inst1/p_in_d1_cdc_from_reg0 ),
        .rst(fifo_rst),
        .rvalid_reg(register_module_inst_n_6),
        .rvalid_reg_0(s_axi_rvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .slot_0_axi_arready(slot_0_axi_arready),
        .slot_0_axi_arvalid(slot_0_axi_arvalid),
        .slot_0_axi_awready(slot_0_axi_awready),
        .slot_0_axi_awvalid(slot_0_axi_awvalid),
        .slot_0_axi_bready(slot_0_axi_bready),
        .slot_0_axi_bvalid(slot_0_axi_bvalid),
        .slot_0_axi_rlast(slot_0_axi_rlast),
        .slot_0_axi_rready(slot_0_axi_rready),
        .slot_0_axi_rvalid(slot_0_axi_rvalid),
        .slot_0_axi_wlast(slot_0_axi_wlast),
        .slot_0_axi_wready(slot_0_axi_wready),
        .slot_0_axi_wvalid(slot_0_axi_wvalid),
        .write_req_reg(Trace_Filter_Wr_En));
  (* equivalent_register_removal = "no" *) 
  FDRE trigger_in_ack_r_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(trigger_in_sync),
        .Q(trigger_in_ack),
        .R(\Count_Out_i_reg[0] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_4 trigger_sig_cdc_sync
       (.SR(\Count_Out_i_reg[0] ),
        .core_aclk(core_aclk),
        .out(trigger_in_sync),
        .trigger_in(trigger_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_register_module_profile
   (out,
    Event_Log_En_sync,
    SR,
    Use_Ext_Trig_Log,
    \IP2Bus_Data_sampled_reg[31] ,
    Global_Intr_En,
    rvalid_reg,
    D,
    Q,
    rst,
    \IP2Bus_Data_sampled_reg[31]_0 ,
    Control_Set_Wr_En,
    s_axi_wdata,
    s_axi_aclk,
    Bus2IP_RdCE,
    Trace_Filter_Rd_En,
    Addr_3downto0_is_0x4,
    Event_Log_Set_Rd_En,
    Status_Reg_WIF_Rd_En,
    Status_Reg_FOC_Rd_En,
    Status_Reg_Set_Rd_En,
    Intr_Reg_ISR_Rd_En,
    Intr_Reg_IER_Rd_En,
    Intr_Reg_GIE_Rd_En,
    Intr_Reg_Set_Rd_En,
    Control_Set_Rd_En,
    Addr_3downto0_is_0x8,
    Sample_Interval_Rd_En,
    p_in_d1_cdc_from_reg0,
    core_aresetn_0,
    core_aclk,
    Samp_Metric_Cnt_Reg_Set_Rd_En,
    Metric_Cnt_Reg_Set_Rd_En,
    \bus2ip_addr_i_reg[5] ,
    s_axi_rready,
    rvalid_reg_0,
    slot_0_axi_wlast,
    slot_0_axi_wready,
    slot_0_axi_wvalid,
    slot_0_axi_rlast,
    slot_0_axi_rvalid,
    slot_0_axi_rready,
    s_axi_aresetn,
    slot_0_axi_arvalid,
    slot_0_axi_arready,
    slot_0_axi_bvalid,
    slot_0_axi_bready,
    slot_0_axi_awready,
    slot_0_axi_awvalid,
    core_aresetn,
    m_axis_aresetn,
    Intr_Reg_IER,
    Intr_Reg_ISR,
    E,
    write_req_reg,
    \eventlog_cur_cnt_reg[5] );
  output out;
  output Event_Log_En_sync;
  output [0:0]SR;
  output Use_Ext_Trig_Log;
  output [0:0]\IP2Bus_Data_sampled_reg[31] ;
  output Global_Intr_En;
  output rvalid_reg;
  output [4:0]D;
  output [1:0]Q;
  output rst;
  output [31:0]\IP2Bus_Data_sampled_reg[31]_0 ;
  input Control_Set_Wr_En;
  input [31:0]s_axi_wdata;
  input s_axi_aclk;
  input Bus2IP_RdCE;
  input Trace_Filter_Rd_En;
  input Addr_3downto0_is_0x4;
  input Event_Log_Set_Rd_En;
  input Status_Reg_WIF_Rd_En;
  input Status_Reg_FOC_Rd_En;
  input Status_Reg_Set_Rd_En;
  input Intr_Reg_ISR_Rd_En;
  input Intr_Reg_IER_Rd_En;
  input Intr_Reg_GIE_Rd_En;
  input Intr_Reg_Set_Rd_En;
  input Control_Set_Rd_En;
  input Addr_3downto0_is_0x8;
  input Sample_Interval_Rd_En;
  input p_in_d1_cdc_from_reg0;
  input [0:0]core_aresetn_0;
  input core_aclk;
  input Samp_Metric_Cnt_Reg_Set_Rd_En;
  input Metric_Cnt_Reg_Set_Rd_En;
  input \bus2ip_addr_i_reg[5] ;
  input s_axi_rready;
  input rvalid_reg_0;
  input slot_0_axi_wlast;
  input slot_0_axi_wready;
  input slot_0_axi_wvalid;
  input slot_0_axi_rlast;
  input slot_0_axi_rvalid;
  input slot_0_axi_rready;
  input s_axi_aresetn;
  input slot_0_axi_arvalid;
  input slot_0_axi_arready;
  input slot_0_axi_bvalid;
  input slot_0_axi_bready;
  input slot_0_axi_awready;
  input slot_0_axi_awvalid;
  input core_aresetn;
  input m_axis_aresetn;
  input [0:0]Intr_Reg_IER;
  input [0:0]Intr_Reg_ISR;
  input [0:0]E;
  input [0:0]write_req_reg;
  input [5:0]\eventlog_cur_cnt_reg[5] ;

  wire Addr_3downto0_is_0x4;
  wire Addr_3downto0_is_0x8;
  wire Bus2IP_RdCE;
  wire Control_Set_Rd_En;
  wire Control_Set_Wr_En;
  wire [4:0]D;
  wire [0:0]E;
  wire Event_Log_En_sync;
  wire Event_Log_Set_Rd_En;
  wire [31:0]\GEN_PROFILE_MODE.SW_Data_reg ;
  wire Global_Intr_En;
  wire \IP2Bus_Data[0]_i_3_n_0 ;
  wire [0:0]\IP2Bus_Data_sampled_reg[31] ;
  wire [31:0]\IP2Bus_Data_sampled_reg[31]_0 ;
  wire Intr_Reg_GIE_Rd_En;
  wire [0:0]Intr_Reg_IER;
  wire Intr_Reg_IER_Rd_En;
  wire [0:0]Intr_Reg_ISR;
  wire Intr_Reg_ISR_Rd_En;
  wire Intr_Reg_Set_Rd_En;
  wire Lat_Addr_3downto0_is_0x4;
  wire Lat_Addr_3downto0_is_0x8;
  wire Lat_Control_Set_Rd_En;
  wire Lat_Event_Log_Set_Rd_En;
  wire Lat_Intr_Reg_GIE_Rd_En;
  wire Lat_Intr_Reg_IER_Rd_En;
  wire Lat_Intr_Reg_ISR_Rd_En;
  wire Lat_Intr_Reg_Set_Rd_En;
  wire Lat_Metric_Cnt_Reg_Set_Rd_En;
  wire Lat_Samp_Metric_Cnt_Reg_Set_Rd_En;
  wire Lat_Sample_Interval_Rd_En;
  wire Lat_Status_Reg_FOC_Rd_En;
  wire Lat_Status_Reg_Set_Rd_En;
  wire Lat_Status_Reg_WIF_Rd_En;
  wire Lat_Trace_Filter_Rd_En;
  wire Metric_Cnt_Reg_Set_Rd_En;
  wire [1:0]Q;
  wire RValid;
  wire [0:0]SR;
  wire Samp_Metric_Cnt_Reg_Set_Rd_En;
  wire Sample_Interval_Rd_En;
  wire Status_Reg_FOC_Rd_En;
  wire Status_Reg_Set_Rd_En;
  wire Status_Reg_WIF_Rd_En;
  wire Streaming_FIFO_Reset;
  wire Trace_Filter_Rd_En;
  wire \Trace_ctrl_reg_reg_n_0_[0] ;
  wire \Trace_ctrl_reg_reg_n_0_[10] ;
  wire \Trace_ctrl_reg_reg_n_0_[12] ;
  wire \Trace_ctrl_reg_reg_n_0_[13] ;
  wire \Trace_ctrl_reg_reg_n_0_[14] ;
  wire \Trace_ctrl_reg_reg_n_0_[16] ;
  wire \Trace_ctrl_reg_reg_n_0_[17] ;
  wire \Trace_ctrl_reg_reg_n_0_[18] ;
  wire \Trace_ctrl_reg_reg_n_0_[20] ;
  wire \Trace_ctrl_reg_reg_n_0_[21] ;
  wire \Trace_ctrl_reg_reg_n_0_[22] ;
  wire \Trace_ctrl_reg_reg_n_0_[24] ;
  wire \Trace_ctrl_reg_reg_n_0_[25] ;
  wire \Trace_ctrl_reg_reg_n_0_[26] ;
  wire \Trace_ctrl_reg_reg_n_0_[28] ;
  wire \Trace_ctrl_reg_reg_n_0_[29] ;
  wire \Trace_ctrl_reg_reg_n_0_[30] ;
  wire \Trace_ctrl_reg_reg_n_0_[4] ;
  wire \Trace_ctrl_reg_reg_n_0_[5] ;
  wire \Trace_ctrl_reg_reg_n_0_[6] ;
  wire \Trace_ctrl_reg_reg_n_0_[8] ;
  wire \Trace_ctrl_reg_reg_n_0_[9] ;
  wire Use_Ext_Trig_Log;
  wire \bus2ip_addr_i_reg[5] ;
  wire cdc_sync_inst2_n_10;
  wire cdc_sync_inst2_n_11;
  wire cdc_sync_inst2_n_12;
  wire cdc_sync_inst2_n_13;
  wire cdc_sync_inst2_n_14;
  wire cdc_sync_inst2_n_15;
  wire cdc_sync_inst2_n_16;
  wire cdc_sync_inst2_n_17;
  wire cdc_sync_inst2_n_18;
  wire cdc_sync_inst2_n_19;
  wire cdc_sync_inst2_n_2;
  wire cdc_sync_inst2_n_20;
  wire cdc_sync_inst2_n_21;
  wire cdc_sync_inst2_n_22;
  wire cdc_sync_inst2_n_23;
  wire cdc_sync_inst2_n_24;
  wire cdc_sync_inst2_n_25;
  wire cdc_sync_inst2_n_26;
  wire cdc_sync_inst2_n_27;
  wire cdc_sync_inst2_n_28;
  wire cdc_sync_inst2_n_29;
  wire cdc_sync_inst2_n_3;
  wire cdc_sync_inst2_n_30;
  wire cdc_sync_inst2_n_31;
  wire cdc_sync_inst2_n_32;
  wire cdc_sync_inst2_n_33;
  wire cdc_sync_inst2_n_34;
  wire cdc_sync_inst2_n_4;
  wire cdc_sync_inst2_n_5;
  wire cdc_sync_inst2_n_6;
  wire cdc_sync_inst2_n_7;
  wire cdc_sync_inst2_n_8;
  wire cdc_sync_inst2_n_9;
  wire core_aclk;
  wire core_aresetn;
  wire [0:0]core_aresetn_0;
  wire [5:0]\eventlog_cur_cnt_reg[5] ;
  wire eventlog_fifo_rden_n_31;
  wire eventlog_fifo_rden_n_32;
  wire m_axis_aresetn;
  wire out;
  wire p_0_in0_in;
  wire p_in_d1_cdc_from_reg0;
  wire p_in_d1_cdc_from_reg0_0;
  wire rst;
  wire rvalid_reg;
  wire rvalid_reg_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire slot_0_axi_arready;
  wire slot_0_axi_arvalid;
  wire slot_0_axi_awready;
  wire slot_0_axi_awvalid;
  wire slot_0_axi_bready;
  wire slot_0_axi_bvalid;
  wire slot_0_axi_rlast;
  wire slot_0_axi_rready;
  wire slot_0_axi_rvalid;
  wire slot_0_axi_wlast;
  wire slot_0_axi_wready;
  wire slot_0_axi_wvalid;
  wire [31:2]sync_eventlog_cur_cnt;
  wire [0:0]write_req_reg;

  FDRE Event_Log_En_reg
       (.C(s_axi_aclk),
        .CE(Control_Set_Wr_En),
        .D(s_axi_wdata[8]),
        .Q(Event_Log_En_sync),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Flags[0]_i_1 
       (.I0(slot_0_axi_awready),
        .I1(slot_0_axi_awvalid),
        .I2(Q[1]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Flags[2]_i_1 
       (.I0(Q[1]),
        .I1(slot_0_axi_wlast),
        .I2(slot_0_axi_wready),
        .I3(slot_0_axi_wvalid),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Flags[3]_i_1 
       (.I0(slot_0_axi_bvalid),
        .I1(slot_0_axi_bready),
        .I2(Q[1]),
        .O(D[2]));
  LUT3 #(
    .INIT(8'h80)) 
    \Flags[4]_i_1 
       (.I0(slot_0_axi_arvalid),
        .I1(slot_0_axi_arready),
        .I2(Q[0]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Flags[6]_i_1 
       (.I0(Q[0]),
        .I1(slot_0_axi_rlast),
        .I2(slot_0_axi_rvalid),
        .I3(slot_0_axi_rready),
        .O(D[4]));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [0]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [10]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [11]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[12]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [12]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[13]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [13]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[14]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [14]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[15]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [15]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[16]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [16]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[17]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [17]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[18]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [18]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[19]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [19]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [1]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[20]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [20]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[21]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [21]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[22]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [22]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[23]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [23]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[24]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [24]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[25]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [25]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[26]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [26]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[27]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [27]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[28]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [28]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[29]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [29]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [2]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[30]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [30]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[31]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [31]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [3]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [4]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [5]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [6]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [7]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [8]),
        .R(SR));
  FDRE \GEN_PROFILE_MODE.SW_Data_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(\GEN_PROFILE_MODE.SW_Data_reg [9]),
        .R(SR));
  FDRE Global_Intr_En_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i_reg[5] ),
        .Q(Global_Intr_En),
        .R(SR));
  FDRE IP2Bus_DataValid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(RValid),
        .Q(\IP2Bus_Data_sampled_reg[31] ),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    \IP2Bus_Data[0]_i_3 
       (.I0(Global_Intr_En),
        .I1(Lat_Intr_Reg_GIE_Rd_En),
        .I2(Lat_Intr_Reg_Set_Rd_En),
        .O(\IP2Bus_Data[0]_i_3_n_0 ));
  FDRE \IP2Bus_Data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_33),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_23),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_22),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_21),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_20),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_19),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_18),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_17),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_16),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_15),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_14),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_32),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_13),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_12),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_11),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_10),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_9),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_8),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_7),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_6),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_5),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_4),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_31),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_3),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [30]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_2),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [31]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_30),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_29),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_28),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_27),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_26),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_25),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \IP2Bus_Data_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cdc_sync_inst2_n_24),
        .Q(\IP2Bus_Data_sampled_reg[31]_0 [9]),
        .R(1'b0));
  FDRE Lat_Addr_3downto0_is_0x4_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Addr_3downto0_is_0x4),
        .Q(Lat_Addr_3downto0_is_0x4),
        .R(SR));
  FDRE Lat_Addr_3downto0_is_0x8_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Addr_3downto0_is_0x8),
        .Q(Lat_Addr_3downto0_is_0x8),
        .R(SR));
  FDRE Lat_Control_Set_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Control_Set_Rd_En),
        .Q(Lat_Control_Set_Rd_En),
        .R(SR));
  FDRE Lat_Event_Log_Set_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Event_Log_Set_Rd_En),
        .Q(Lat_Event_Log_Set_Rd_En),
        .R(SR));
  FDRE Lat_Intr_Reg_GIE_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Intr_Reg_GIE_Rd_En),
        .Q(Lat_Intr_Reg_GIE_Rd_En),
        .R(SR));
  FDRE Lat_Intr_Reg_IER_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Intr_Reg_IER_Rd_En),
        .Q(Lat_Intr_Reg_IER_Rd_En),
        .R(SR));
  FDRE Lat_Intr_Reg_ISR_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Intr_Reg_ISR_Rd_En),
        .Q(Lat_Intr_Reg_ISR_Rd_En),
        .R(SR));
  FDRE Lat_Intr_Reg_Set_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Intr_Reg_Set_Rd_En),
        .Q(Lat_Intr_Reg_Set_Rd_En),
        .R(SR));
  FDRE Lat_Metric_Cnt_Reg_Set_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Metric_Cnt_Reg_Set_Rd_En),
        .Q(Lat_Metric_Cnt_Reg_Set_Rd_En),
        .R(SR));
  FDRE Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Samp_Metric_Cnt_Reg_Set_Rd_En),
        .Q(Lat_Samp_Metric_Cnt_Reg_Set_Rd_En),
        .R(SR));
  FDRE Lat_Sample_Interval_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Sample_Interval_Rd_En),
        .Q(Lat_Sample_Interval_Rd_En),
        .R(SR));
  FDRE Lat_Status_Reg_FOC_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Status_Reg_FOC_Rd_En),
        .Q(Lat_Status_Reg_FOC_Rd_En),
        .R(SR));
  FDRE Lat_Status_Reg_Set_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Status_Reg_Set_Rd_En),
        .Q(Lat_Status_Reg_Set_Rd_En),
        .R(SR));
  FDRE Lat_Status_Reg_WIF_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Status_Reg_WIF_Rd_En),
        .Q(Lat_Status_Reg_WIF_Rd_En),
        .R(SR));
  FDRE Lat_Trace_Filter_Rd_En_reg
       (.C(s_axi_aclk),
        .CE(Bus2IP_RdCE),
        .D(Trace_Filter_Rd_En),
        .Q(Lat_Trace_Filter_Rd_En),
        .R(SR));
  FDRE Streaming_FIFO_Reset_reg
       (.C(s_axi_aclk),
        .CE(Control_Set_Wr_En),
        .D(s_axi_wdata[25]),
        .Q(Streaming_FIFO_Reset),
        .R(SR));
  FDSE \Trace_ctrl_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[0]),
        .Q(\Trace_ctrl_reg_reg_n_0_[0] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[10]),
        .Q(\Trace_ctrl_reg_reg_n_0_[10] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[12]),
        .Q(\Trace_ctrl_reg_reg_n_0_[12] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[13]),
        .Q(\Trace_ctrl_reg_reg_n_0_[13] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[14]),
        .Q(\Trace_ctrl_reg_reg_n_0_[14] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[16]),
        .Q(\Trace_ctrl_reg_reg_n_0_[16] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[17]),
        .Q(\Trace_ctrl_reg_reg_n_0_[17] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[18]),
        .Q(\Trace_ctrl_reg_reg_n_0_[18] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[1]),
        .Q(Q[0]),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[20]),
        .Q(\Trace_ctrl_reg_reg_n_0_[20] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[21]),
        .Q(\Trace_ctrl_reg_reg_n_0_[21] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[22]),
        .Q(\Trace_ctrl_reg_reg_n_0_[22] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[24]),
        .Q(\Trace_ctrl_reg_reg_n_0_[24] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[25]),
        .Q(\Trace_ctrl_reg_reg_n_0_[25] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[26]),
        .Q(\Trace_ctrl_reg_reg_n_0_[26] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[28]),
        .Q(\Trace_ctrl_reg_reg_n_0_[28] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[29]),
        .Q(\Trace_ctrl_reg_reg_n_0_[29] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[2]),
        .Q(Q[1]),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[30]),
        .Q(\Trace_ctrl_reg_reg_n_0_[30] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[4]),
        .Q(\Trace_ctrl_reg_reg_n_0_[4] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[5]),
        .Q(\Trace_ctrl_reg_reg_n_0_[5] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[6]),
        .Q(\Trace_ctrl_reg_reg_n_0_[6] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[8]),
        .Q(\Trace_ctrl_reg_reg_n_0_[8] ),
        .S(SR));
  FDSE \Trace_ctrl_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(write_req_reg),
        .D(s_axi_wdata[9]),
        .Q(\Trace_ctrl_reg_reg_n_0_[9] ),
        .S(SR));
  FDRE Use_Ext_Trigger_Log_reg
       (.C(s_axi_aclk),
        .CE(Control_Set_Wr_En),
        .D(s_axi_wdata[9]),
        .Q(Use_Ext_Trig_Log),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0 cdc_sync_inst1
       (.SR(SR),
        .core_aclk(core_aclk),
        .core_aresetn(core_aresetn_0),
        .out(out),
        .p_in_d1_cdc_from_reg0(p_in_d1_cdc_from_reg0),
        .p_in_d1_cdc_from_reg0_0(p_in_d1_cdc_from_reg0_0),
        .p_in_d1_cdc_from_reg_0(p_0_in0_in),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0_5 cdc_sync_inst2
       (.D({cdc_sync_inst2_n_2,cdc_sync_inst2_n_3,cdc_sync_inst2_n_4,cdc_sync_inst2_n_5,cdc_sync_inst2_n_6,cdc_sync_inst2_n_7,cdc_sync_inst2_n_8,cdc_sync_inst2_n_9,cdc_sync_inst2_n_10,cdc_sync_inst2_n_11,cdc_sync_inst2_n_12,cdc_sync_inst2_n_13,cdc_sync_inst2_n_14,cdc_sync_inst2_n_15,cdc_sync_inst2_n_16,cdc_sync_inst2_n_17,cdc_sync_inst2_n_18,cdc_sync_inst2_n_19,cdc_sync_inst2_n_20,cdc_sync_inst2_n_21,cdc_sync_inst2_n_22,cdc_sync_inst2_n_23,cdc_sync_inst2_n_24,cdc_sync_inst2_n_25,cdc_sync_inst2_n_26,cdc_sync_inst2_n_27,cdc_sync_inst2_n_28,cdc_sync_inst2_n_29,cdc_sync_inst2_n_30,cdc_sync_inst2_n_31,cdc_sync_inst2_n_32,cdc_sync_inst2_n_33}),
        .Event_Log_En_sync(Event_Log_En_sync),
        .\GEN_PROFILE_MODE.SW_Data_reg_reg[31] (\GEN_PROFILE_MODE.SW_Data_reg ),
        .IP2Bus_DataValid_reg(RValid),
        .\IP2Bus_Data_reg[0] (cdc_sync_inst2_n_34),
        .Intr_Reg_IER(Intr_Reg_IER),
        .Intr_Reg_ISR(Intr_Reg_ISR),
        .Lat_Addr_3downto0_is_0x4(Lat_Addr_3downto0_is_0x4),
        .Lat_Addr_3downto0_is_0x8(Lat_Addr_3downto0_is_0x8),
        .Lat_Control_Set_Rd_En(Lat_Control_Set_Rd_En),
        .Lat_Event_Log_Set_Rd_En(Lat_Event_Log_Set_Rd_En),
        .Lat_Intr_Reg_GIE_Rd_En(Lat_Intr_Reg_GIE_Rd_En),
        .Lat_Intr_Reg_IER_Rd_En(Lat_Intr_Reg_IER_Rd_En),
        .Lat_Intr_Reg_ISR_Rd_En(Lat_Intr_Reg_ISR_Rd_En),
        .Lat_Intr_Reg_Set_Rd_En(Lat_Intr_Reg_Set_Rd_En),
        .Lat_Metric_Cnt_Reg_Set_Rd_En(Lat_Metric_Cnt_Reg_Set_Rd_En),
        .Lat_Samp_Metric_Cnt_Reg_Set_Rd_En(Lat_Samp_Metric_Cnt_Reg_Set_Rd_En),
        .Lat_Sample_Interval_Rd_En(Lat_Sample_Interval_Rd_En),
        .Lat_Status_Reg_FOC_Rd_En(Lat_Status_Reg_FOC_Rd_En),
        .Lat_Status_Reg_Set_Rd_En(Lat_Status_Reg_Set_Rd_En),
        .Lat_Status_Reg_WIF_Rd_En_reg(eventlog_fifo_rden_n_32),
        .Lat_Trace_Filter_Rd_En(Lat_Trace_Filter_Rd_En),
        .Q({\Trace_ctrl_reg_reg_n_0_[30] ,\Trace_ctrl_reg_reg_n_0_[29] ,\Trace_ctrl_reg_reg_n_0_[28] ,\Trace_ctrl_reg_reg_n_0_[26] ,\Trace_ctrl_reg_reg_n_0_[25] ,\Trace_ctrl_reg_reg_n_0_[24] ,\Trace_ctrl_reg_reg_n_0_[22] ,\Trace_ctrl_reg_reg_n_0_[21] ,\Trace_ctrl_reg_reg_n_0_[20] ,\Trace_ctrl_reg_reg_n_0_[18] ,\Trace_ctrl_reg_reg_n_0_[17] ,\Trace_ctrl_reg_reg_n_0_[16] ,\Trace_ctrl_reg_reg_n_0_[14] ,\Trace_ctrl_reg_reg_n_0_[13] ,\Trace_ctrl_reg_reg_n_0_[12] ,\Trace_ctrl_reg_reg_n_0_[10] ,\Trace_ctrl_reg_reg_n_0_[9] ,\Trace_ctrl_reg_reg_n_0_[8] ,\Trace_ctrl_reg_reg_n_0_[6] ,\Trace_ctrl_reg_reg_n_0_[5] ,\Trace_ctrl_reg_reg_n_0_[4] ,Q,\Trace_ctrl_reg_reg_n_0_[0] }),
        .SR(SR),
        .Streaming_FIFO_Reset(Streaming_FIFO_Reset),
        .Use_Ext_Trig_Log(Use_Ext_Trig_Log),
        .core_aclk(core_aclk),
        .core_aresetn(core_aresetn_0),
        .out(p_0_in0_in),
        .p_in_d1_cdc_from_reg0(p_in_d1_cdc_from_reg0_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\s_level_out_bus_d4_reg[0] (eventlog_fifo_rden_n_31),
        .\s_level_out_bus_d4_reg[31] (sync_eventlog_cur_cnt));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized1 eventlog_fifo_rden
       (.D(sync_eventlog_cur_cnt),
        .Global_Intr_En_reg(\IP2Bus_Data[0]_i_3_n_0 ),
        .\IP2Bus_Data_reg[0] (eventlog_fifo_rden_n_31),
        .\IP2Bus_Data_reg[1] (eventlog_fifo_rden_n_32),
        .Lat_Intr_Reg_Set_Rd_En(Lat_Intr_Reg_Set_Rd_En),
        .Lat_Sample_Interval_Rd_En_reg(cdc_sync_inst2_n_34),
        .Lat_Status_Reg_FOC_Rd_En(Lat_Status_Reg_FOC_Rd_En),
        .Lat_Status_Reg_Set_Rd_En(Lat_Status_Reg_Set_Rd_En),
        .Lat_Status_Reg_WIF_Rd_En(Lat_Status_Reg_WIF_Rd_En),
        .SR(SR),
        .\eventlog_cur_cnt_reg[5] (\eventlog_cur_cnt_reg[5] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  LUT3 #(
    .INIT(8'hBA)) 
    rvalid_i_1
       (.I0(\IP2Bus_Data_sampled_reg[31] ),
        .I1(s_axi_rready),
        .I2(rvalid_reg_0),
        .O(rvalid_reg));
  LUT3 #(
    .INIT(8'hDF)) 
    xpm_fifo_base_inst_i_1
       (.I0(core_aresetn),
        .I1(Streaming_FIFO_Reset),
        .I2(m_axis_aresetn),
        .O(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_strm_fifo_wr_logic
   (SR,
    Mon_Wr_En,
    wr_en,
    din,
    core_aclk,
    Slot_0_Log_En_Marked,
    Fifo_Wr_En1_out,
    Event_Log_En_sync,
    core_aresetn,
    D,
    Mon_Wr_En_reg_0);
  output [0:0]SR;
  output Mon_Wr_En;
  output wr_en;
  output [23:0]din;
  input core_aclk;
  input Slot_0_Log_En_Marked;
  input Fifo_Wr_En1_out;
  input Event_Log_En_sync;
  input core_aresetn;
  input [6:0]D;
  input Mon_Wr_En_reg_0;

  wire [15:0]A;
  wire [6:0]D;
  wire Event_Log_En_D1;
  wire Event_Log_En_sync;
  wire Fifo_Wr_En1_out;
  wire Mon_Wr_En;
  wire Mon_Wr_En_reg_0;
  wire [0:0]SR;
  wire Slot_0_Log_En_Marked;
  wire core_aclk;
  wire core_aresetn;
  wire counter_inst_n_17;
  wire [23:0]din;
  wire [27:17]p_0_in;
  wire wr_en;

  FDRE Event_Log_En_D1_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(Event_Log_En_sync),
        .Q(Event_Log_En_D1),
        .R(SR));
  FDRE \Fifo_Wr_Data_reg[10] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[9]),
        .Q(din[9]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[11] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[10]),
        .Q(din[10]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[12] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[11]),
        .Q(din[11]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[13] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[12]),
        .Q(din[12]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[14] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[13]),
        .Q(din[13]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[15] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[14]),
        .Q(din[14]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[16] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[15]),
        .Q(din[15]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[17] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(p_0_in[17]),
        .Q(din[16]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[1] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[0]),
        .Q(din[0]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[21] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(p_0_in[21]),
        .Q(din[17]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[22] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(p_0_in[22]),
        .Q(din[18]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[23] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(p_0_in[23]),
        .Q(din[19]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[24] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(p_0_in[24]),
        .Q(din[20]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[25] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(p_0_in[25]),
        .Q(din[21]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[26] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(p_0_in[26]),
        .Q(din[22]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[27] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(p_0_in[27]),
        .Q(din[23]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[2] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[1]),
        .Q(din[1]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[3] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[2]),
        .Q(din[2]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[4] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[3]),
        .Q(din[3]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[5] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[4]),
        .Q(din[4]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[6] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[5]),
        .Q(din[5]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[7] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[6]),
        .Q(din[6]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[8] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[7]),
        .Q(din[7]),
        .R(Mon_Wr_En_reg_0));
  FDRE \Fifo_Wr_Data_reg[9] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(A[8]),
        .Q(din[8]),
        .R(Mon_Wr_En_reg_0));
  FDRE Fifo_Wr_En_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(Fifo_Wr_En1_out),
        .Q(wr_en),
        .R(SR));
  FDRE \Mon_Wr_Data_reg[3] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(p_0_in[21]),
        .R(SR));
  FDRE \Mon_Wr_Data_reg[4] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(p_0_in[22]),
        .R(SR));
  FDRE \Mon_Wr_Data_reg[5] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(p_0_in[23]),
        .R(SR));
  FDRE \Mon_Wr_Data_reg[6] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(p_0_in[24]),
        .R(SR));
  FDRE \Mon_Wr_Data_reg[7] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(p_0_in[25]),
        .R(SR));
  FDRE \Mon_Wr_Data_reg[8] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(p_0_in[26]),
        .R(SR));
  FDRE \Mon_Wr_Data_reg[9] 
       (.C(core_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(p_0_in[27]),
        .R(SR));
  FDRE Mon_Wr_En_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(Slot_0_Log_En_Marked),
        .Q(Mon_Wr_En),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_counter__parameterized0 counter_inst
       (.A(A),
        .\Count_Out_i_reg[0]_0 (SR),
        .Event_Log_En_D1(Event_Log_En_D1),
        .Event_Log_En_sync(Event_Log_En_sync),
        .Mon_Wr_En_reg(Mon_Wr_En),
        .core_aclk(core_aclk),
        .core_aresetn(core_aresetn),
        .over_flow_cap_reg(counter_inst_n_17),
        .p_0_in(p_0_in[17]),
        .wr_en(wr_en));
  FDRE over_flow_cap_reg
       (.C(core_aclk),
        .CE(1'b1),
        .D(counter_inst_n_17),
        .Q(p_0_in[17]),
        .R(1'b0));
endmodule

(* COUNTER_LOAD_VALUE = "0" *) (* C_AXI4LITE_CORE_CLK_ASYNC = "0" *) (* C_AXIS_DWIDTH_ROUND_TO_32 = "64" *) 
(* C_ENABLE_ADVANCED = "0" *) (* C_ENABLE_EVENT_COUNT = "0" *) (* C_ENABLE_EVENT_LOG = "0" *) 
(* C_ENABLE_PROFILE = "0" *) (* C_ENABLE_TRACE = "1" *) (* C_EN_ALL_TRACE = "1" *) 
(* C_EN_AXI_DEBUG = "0" *) (* C_EN_EXT_EVENTS_FLAG = "0" *) (* C_EN_FIRST_READ_FLAG = "1" *) 
(* C_EN_FIRST_WRITE_FLAG = "1" *) (* C_EN_LAST_READ_FLAG = "1" *) (* C_EN_LAST_WRITE_FLAG = "1" *) 
(* C_EN_RD_ADD_FLAG = "1" *) (* C_EN_RESPONSE_FLAG = "1" *) (* C_EN_SW_REG_WR_FLAG = "0" *) 
(* C_EN_TRIGGER = "0" *) (* C_EN_WR_ADD_FLAG = "1" *) (* C_EXT_EVENT0_FIFO_ENABLE = "0" *) 
(* C_EXT_EVENT1_FIFO_ENABLE = "1" *) (* C_EXT_EVENT2_FIFO_ENABLE = "1" *) (* C_EXT_EVENT3_FIFO_ENABLE = "1" *) 
(* C_EXT_EVENT4_FIFO_ENABLE = "1" *) (* C_EXT_EVENT5_FIFO_ENABLE = "1" *) (* C_EXT_EVENT6_FIFO_ENABLE = "1" *) 
(* C_EXT_EVENT7_FIFO_ENABLE = "1" *) (* C_FAMILY = "zynquplus" *) (* C_FIFO_AXIS_DEPTH = "32" *) 
(* C_FIFO_AXIS_SYNC = "1" *) (* C_FIFO_AXIS_TDATA_WIDTH = "56" *) (* C_FIFO_AXIS_TID_WIDTH = "1" *) 
(* C_GLOBAL_COUNT_WIDTH = "32" *) (* C_HAVE_SAMPLED_METRIC_CNT = "1" *) (* C_INSTANCE = "design_1_axi_perf_mon_0_0" *) 
(* C_LITE_ADDRESS_WIDTH = "16" *) (* C_LOG_DATA_OFFLD = "0" *) (* C_METRICS_SAMPLE_COUNT_WIDTH = "32" *) 
(* C_METRIC_COUNT_SCALE = "1" *) (* C_METRIC_COUNT_WIDTH = "32" *) (* C_NUM_MONITOR_SLOTS = "1" *) 
(* C_NUM_OF_COUNTERS = "1" *) (* C_REG_ALL_MONITOR_SIGNALS = "0" *) (* C_SHOW_AXIS_TDEST = "0" *) 
(* C_SHOW_AXIS_TID = "0" *) (* C_SHOW_AXIS_TUSER = "0" *) (* C_SHOW_AXI_IDS = "0" *) 
(* C_SHOW_AXI_LEN = "0" *) (* C_SLOT_0_AXIS_TDATA_WIDTH = "32" *) (* C_SLOT_0_AXIS_TDEST_WIDTH = "1" *) 
(* C_SLOT_0_AXIS_TID_WIDTH = "1" *) (* C_SLOT_0_AXIS_TUSER_WIDTH = "1" *) (* C_SLOT_0_AXI_ADDR_WIDTH = "40" *) 
(* C_SLOT_0_AXI_AWLEN = "7" *) (* C_SLOT_0_AXI_DATA_WIDTH = "128" *) (* C_SLOT_0_AXI_ID_WIDTH = "16" *) 
(* C_SLOT_0_AXI_LOCK = "0" *) (* C_SLOT_0_AXI_PROTOCOL = "AXI4" *) (* C_SLOT_0_FIFO_ENABLE = "0" *) 
(* C_SLOT_1_AXIS_TDATA_WIDTH = "32" *) (* C_SLOT_1_AXIS_TDEST_WIDTH = "1" *) (* C_SLOT_1_AXIS_TID_WIDTH = "1" *) 
(* C_SLOT_1_AXIS_TUSER_WIDTH = "1" *) (* C_SLOT_1_AXI_ADDR_WIDTH = "32" *) (* C_SLOT_1_AXI_AWLEN = "7" *) 
(* C_SLOT_1_AXI_DATA_WIDTH = "32" *) (* C_SLOT_1_AXI_ID_WIDTH = "1" *) (* C_SLOT_1_AXI_LOCK = "0" *) 
(* C_SLOT_1_AXI_PROTOCOL = "AXI4" *) (* C_SLOT_1_FIFO_ENABLE = "1" *) (* C_SLOT_2_AXIS_TDATA_WIDTH = "32" *) 
(* C_SLOT_2_AXIS_TDEST_WIDTH = "1" *) (* C_SLOT_2_AXIS_TID_WIDTH = "1" *) (* C_SLOT_2_AXIS_TUSER_WIDTH = "1" *) 
(* C_SLOT_2_AXI_ADDR_WIDTH = "32" *) (* C_SLOT_2_AXI_AWLEN = "7" *) (* C_SLOT_2_AXI_DATA_WIDTH = "32" *) 
(* C_SLOT_2_AXI_ID_WIDTH = "1" *) (* C_SLOT_2_AXI_LOCK = "0" *) (* C_SLOT_2_AXI_PROTOCOL = "AXI4" *) 
(* C_SLOT_2_FIFO_ENABLE = "1" *) (* C_SLOT_3_AXIS_TDATA_WIDTH = "32" *) (* C_SLOT_3_AXIS_TDEST_WIDTH = "1" *) 
(* C_SLOT_3_AXIS_TID_WIDTH = "1" *) (* C_SLOT_3_AXIS_TUSER_WIDTH = "1" *) (* C_SLOT_3_AXI_ADDR_WIDTH = "32" *) 
(* C_SLOT_3_AXI_AWLEN = "7" *) (* C_SLOT_3_AXI_DATA_WIDTH = "32" *) (* C_SLOT_3_AXI_ID_WIDTH = "1" *) 
(* C_SLOT_3_AXI_LOCK = "0" *) (* C_SLOT_3_AXI_PROTOCOL = "AXI4" *) (* C_SLOT_3_FIFO_ENABLE = "1" *) 
(* C_SLOT_4_AXIS_TDATA_WIDTH = "32" *) (* C_SLOT_4_AXIS_TDEST_WIDTH = "1" *) (* C_SLOT_4_AXIS_TID_WIDTH = "1" *) 
(* C_SLOT_4_AXIS_TUSER_WIDTH = "1" *) (* C_SLOT_4_AXI_ADDR_WIDTH = "32" *) (* C_SLOT_4_AXI_AWLEN = "7" *) 
(* C_SLOT_4_AXI_DATA_WIDTH = "32" *) (* C_SLOT_4_AXI_ID_WIDTH = "1" *) (* C_SLOT_4_AXI_LOCK = "0" *) 
(* C_SLOT_4_AXI_PROTOCOL = "AXI4" *) (* C_SLOT_4_FIFO_ENABLE = "1" *) (* C_SLOT_5_AXIS_TDATA_WIDTH = "32" *) 
(* C_SLOT_5_AXIS_TDEST_WIDTH = "1" *) (* C_SLOT_5_AXIS_TID_WIDTH = "1" *) (* C_SLOT_5_AXIS_TUSER_WIDTH = "1" *) 
(* C_SLOT_5_AXI_ADDR_WIDTH = "32" *) (* C_SLOT_5_AXI_AWLEN = "7" *) (* C_SLOT_5_AXI_DATA_WIDTH = "32" *) 
(* C_SLOT_5_AXI_ID_WIDTH = "1" *) (* C_SLOT_5_AXI_LOCK = "0" *) (* C_SLOT_5_AXI_PROTOCOL = "AXI4" *) 
(* C_SLOT_5_FIFO_ENABLE = "1" *) (* C_SLOT_6_AXIS_TDATA_WIDTH = "32" *) (* C_SLOT_6_AXIS_TDEST_WIDTH = "1" *) 
(* C_SLOT_6_AXIS_TID_WIDTH = "1" *) (* C_SLOT_6_AXIS_TUSER_WIDTH = "1" *) (* C_SLOT_6_AXI_ADDR_WIDTH = "32" *) 
(* C_SLOT_6_AXI_AWLEN = "7" *) (* C_SLOT_6_AXI_DATA_WIDTH = "32" *) (* C_SLOT_6_AXI_ID_WIDTH = "1" *) 
(* C_SLOT_6_AXI_LOCK = "0" *) (* C_SLOT_6_AXI_PROTOCOL = "AXI4" *) (* C_SLOT_6_FIFO_ENABLE = "1" *) 
(* C_SLOT_7_AXIS_TDATA_WIDTH = "32" *) (* C_SLOT_7_AXIS_TDEST_WIDTH = "1" *) (* C_SLOT_7_AXIS_TID_WIDTH = "1" *) 
(* C_SLOT_7_AXIS_TUSER_WIDTH = "1" *) (* C_SLOT_7_AXI_ADDR_WIDTH = "32" *) (* C_SLOT_7_AXI_AWLEN = "7" *) 
(* C_SLOT_7_AXI_DATA_WIDTH = "32" *) (* C_SLOT_7_AXI_ID_WIDTH = "1" *) (* C_SLOT_7_AXI_LOCK = "0" *) 
(* C_SLOT_7_AXI_PROTOCOL = "AXI4" *) (* C_SLOT_7_FIFO_ENABLE = "1" *) (* C_SUPPORT_ID_REFLECTION = "0" *) 
(* C_S_AXI4_BASEADDR = "-1" *) (* C_S_AXI4_HIGHADDR = "0" *) (* C_S_AXI_ADDR_WIDTH = "16" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) (* C_S_AXI_PROTOCOL = "AXI4LITE" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ENABLE_EXT_EVENTS = "1" *) (* SLOT_0_AXI_PROTOCOL = "AXI4" *) 
(* SLOT_0_AXI_SUB_PROTOCOL = "NONE" *) (* SLOT_1_AXI_PROTOCOL = "AXI4" *) (* SLOT_1_AXI_SUB_PROTOCOL = "NONE" *) 
(* SLOT_2_AXI_PROTOCOL = "AXI4" *) (* SLOT_2_AXI_SUB_PROTOCOL = "NONE" *) (* SLOT_3_AXI_PROTOCOL = "AXI4" *) 
(* SLOT_3_AXI_SUB_PROTOCOL = "NONE" *) (* SLOT_4_AXI_PROTOCOL = "AXI4" *) (* SLOT_4_AXI_SUB_PROTOCOL = "NONE" *) 
(* SLOT_5_AXI_PROTOCOL = "AXI4" *) (* SLOT_5_AXI_SUB_PROTOCOL = "NONE" *) (* SLOT_6_AXI_PROTOCOL = "AXI4" *) 
(* SLOT_6_AXI_SUB_PROTOCOL = "NONE" *) (* SLOT_7_AXI_PROTOCOL = "AXI4" *) (* SLOT_7_AXI_SUB_PROTOCOL = "NONE" *) 
(* S_AXI_OFFLD_ID_WIDTH = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rid,
    s_axi_rready,
    slot_0_axi_aclk,
    slot_0_axi_aresetn,
    slot_0_axi_awid,
    slot_0_axi_awaddr,
    slot_0_axi_awprot,
    slot_0_axi_awlen,
    slot_0_axi_awsize,
    slot_0_axi_awburst,
    slot_0_axi_awcache,
    slot_0_axi_awlock,
    slot_0_axi_awvalid,
    slot_0_axi_awready,
    slot_0_axi_wdata,
    slot_0_axi_wstrb,
    slot_0_axi_wlast,
    slot_0_axi_wvalid,
    slot_0_axi_wready,
    slot_0_axi_bid,
    slot_0_axi_bresp,
    slot_0_axi_bvalid,
    slot_0_axi_bready,
    slot_0_axi_arid,
    slot_0_axi_araddr,
    slot_0_axi_arlen,
    slot_0_axi_arsize,
    slot_0_axi_arburst,
    slot_0_axi_arcache,
    slot_0_axi_arprot,
    slot_0_axi_arlock,
    slot_0_axi_arvalid,
    slot_0_axi_arready,
    slot_0_axi_rid,
    slot_0_axi_rdata,
    slot_0_axi_rresp,
    slot_0_axi_rlast,
    slot_0_axi_rvalid,
    slot_0_axi_rready,
    slot_0_axis_aclk,
    slot_0_axis_aresetn,
    slot_0_axis_tvalid,
    slot_0_axis_tready,
    slot_0_axis_tdata,
    slot_0_axis_tstrb,
    slot_0_axis_tkeep,
    slot_0_axis_tlast,
    slot_0_axis_tid,
    slot_0_axis_tdest,
    slot_0_axis_tuser,
    slot_0_ext_trig,
    slot_0_ext_trig_stop,
    slot_1_axi_aclk,
    slot_1_axi_aresetn,
    slot_1_axi_awid,
    slot_1_axi_awaddr,
    slot_1_axi_awprot,
    slot_1_axi_awlen,
    slot_1_axi_awsize,
    slot_1_axi_awburst,
    slot_1_axi_awcache,
    slot_1_axi_awlock,
    slot_1_axi_awvalid,
    slot_1_axi_awready,
    slot_1_axi_wdata,
    slot_1_axi_wstrb,
    slot_1_axi_wlast,
    slot_1_axi_wvalid,
    slot_1_axi_wready,
    slot_1_axi_bid,
    slot_1_axi_bresp,
    slot_1_axi_bvalid,
    slot_1_axi_bready,
    slot_1_axi_arid,
    slot_1_axi_araddr,
    slot_1_axi_arlen,
    slot_1_axi_arsize,
    slot_1_axi_arburst,
    slot_1_axi_arcache,
    slot_1_axi_arprot,
    slot_1_axi_arlock,
    slot_1_axi_arvalid,
    slot_1_axi_arready,
    slot_1_axi_rid,
    slot_1_axi_rdata,
    slot_1_axi_rresp,
    slot_1_axi_rlast,
    slot_1_axi_rvalid,
    slot_1_axi_rready,
    slot_1_axis_aclk,
    slot_1_axis_aresetn,
    slot_1_axis_tvalid,
    slot_1_axis_tready,
    slot_1_axis_tdata,
    slot_1_axis_tstrb,
    slot_1_axis_tkeep,
    slot_1_axis_tlast,
    slot_1_axis_tid,
    slot_1_axis_tdest,
    slot_1_axis_tuser,
    slot_1_ext_trig,
    slot_1_ext_trig_stop,
    slot_2_axi_aclk,
    slot_2_axi_aresetn,
    slot_2_axi_awid,
    slot_2_axi_awaddr,
    slot_2_axi_awprot,
    slot_2_axi_awlen,
    slot_2_axi_awsize,
    slot_2_axi_awburst,
    slot_2_axi_awcache,
    slot_2_axi_awlock,
    slot_2_axi_awvalid,
    slot_2_axi_awready,
    slot_2_axi_wdata,
    slot_2_axi_wstrb,
    slot_2_axi_wlast,
    slot_2_axi_wvalid,
    slot_2_axi_wready,
    slot_2_axi_bid,
    slot_2_axi_bresp,
    slot_2_axi_bvalid,
    slot_2_axi_bready,
    slot_2_axi_arid,
    slot_2_axi_araddr,
    slot_2_axi_arlen,
    slot_2_axi_arsize,
    slot_2_axi_arburst,
    slot_2_axi_arcache,
    slot_2_axi_arprot,
    slot_2_axi_arlock,
    slot_2_axi_arvalid,
    slot_2_axi_arready,
    slot_2_axi_rid,
    slot_2_axi_rdata,
    slot_2_axi_rresp,
    slot_2_axi_rlast,
    slot_2_axi_rvalid,
    slot_2_axi_rready,
    slot_2_axis_aclk,
    slot_2_axis_aresetn,
    slot_2_axis_tvalid,
    slot_2_axis_tready,
    slot_2_axis_tdata,
    slot_2_axis_tstrb,
    slot_2_axis_tkeep,
    slot_2_axis_tlast,
    slot_2_axis_tid,
    slot_2_axis_tdest,
    slot_2_axis_tuser,
    slot_2_ext_trig,
    slot_2_ext_trig_stop,
    slot_3_axi_aclk,
    slot_3_axi_aresetn,
    slot_3_axi_awid,
    slot_3_axi_awaddr,
    slot_3_axi_awprot,
    slot_3_axi_awlen,
    slot_3_axi_awsize,
    slot_3_axi_awburst,
    slot_3_axi_awcache,
    slot_3_axi_awlock,
    slot_3_axi_awvalid,
    slot_3_axi_awready,
    slot_3_axi_wdata,
    slot_3_axi_wstrb,
    slot_3_axi_wlast,
    slot_3_axi_wvalid,
    slot_3_axi_wready,
    slot_3_axi_bid,
    slot_3_axi_bresp,
    slot_3_axi_bvalid,
    slot_3_axi_bready,
    slot_3_axi_arid,
    slot_3_axi_araddr,
    slot_3_axi_arlen,
    slot_3_axi_arsize,
    slot_3_axi_arburst,
    slot_3_axi_arcache,
    slot_3_axi_arprot,
    slot_3_axi_arlock,
    slot_3_axi_arvalid,
    slot_3_axi_arready,
    slot_3_axi_rid,
    slot_3_axi_rdata,
    slot_3_axi_rresp,
    slot_3_axi_rlast,
    slot_3_axi_rvalid,
    slot_3_axi_rready,
    slot_3_axis_aclk,
    slot_3_axis_aresetn,
    slot_3_axis_tvalid,
    slot_3_axis_tready,
    slot_3_axis_tdata,
    slot_3_axis_tstrb,
    slot_3_axis_tkeep,
    slot_3_axis_tlast,
    slot_3_axis_tid,
    slot_3_axis_tdest,
    slot_3_axis_tuser,
    slot_3_ext_trig,
    slot_3_ext_trig_stop,
    slot_4_axi_aclk,
    slot_4_axi_aresetn,
    slot_4_axi_awid,
    slot_4_axi_awaddr,
    slot_4_axi_awprot,
    slot_4_axi_awlen,
    slot_4_axi_awsize,
    slot_4_axi_awburst,
    slot_4_axi_awcache,
    slot_4_axi_awlock,
    slot_4_axi_awvalid,
    slot_4_axi_awready,
    slot_4_axi_wdata,
    slot_4_axi_wstrb,
    slot_4_axi_wlast,
    slot_4_axi_wvalid,
    slot_4_axi_wready,
    slot_4_axi_bid,
    slot_4_axi_bresp,
    slot_4_axi_bvalid,
    slot_4_axi_bready,
    slot_4_axi_arid,
    slot_4_axi_araddr,
    slot_4_axi_arlen,
    slot_4_axi_arsize,
    slot_4_axi_arburst,
    slot_4_axi_arcache,
    slot_4_axi_arprot,
    slot_4_axi_arlock,
    slot_4_axi_arvalid,
    slot_4_axi_arready,
    slot_4_axi_rid,
    slot_4_axi_rdata,
    slot_4_axi_rresp,
    slot_4_axi_rlast,
    slot_4_axi_rvalid,
    slot_4_axi_rready,
    slot_4_axis_aclk,
    slot_4_axis_aresetn,
    slot_4_axis_tvalid,
    slot_4_axis_tready,
    slot_4_axis_tdata,
    slot_4_axis_tstrb,
    slot_4_axis_tkeep,
    slot_4_axis_tlast,
    slot_4_axis_tid,
    slot_4_axis_tdest,
    slot_4_axis_tuser,
    slot_4_ext_trig,
    slot_4_ext_trig_stop,
    slot_5_axi_aclk,
    slot_5_axi_aresetn,
    slot_5_axi_awid,
    slot_5_axi_awaddr,
    slot_5_axi_awprot,
    slot_5_axi_awlen,
    slot_5_axi_awsize,
    slot_5_axi_awburst,
    slot_5_axi_awcache,
    slot_5_axi_awlock,
    slot_5_axi_awvalid,
    slot_5_axi_awready,
    slot_5_axi_wdata,
    slot_5_axi_wstrb,
    slot_5_axi_wlast,
    slot_5_axi_wvalid,
    slot_5_axi_wready,
    slot_5_axi_bid,
    slot_5_axi_bresp,
    slot_5_axi_bvalid,
    slot_5_axi_bready,
    slot_5_axi_arid,
    slot_5_axi_araddr,
    slot_5_axi_arlen,
    slot_5_axi_arsize,
    slot_5_axi_arburst,
    slot_5_axi_arcache,
    slot_5_axi_arprot,
    slot_5_axi_arlock,
    slot_5_axi_arvalid,
    slot_5_axi_arready,
    slot_5_axi_rid,
    slot_5_axi_rdata,
    slot_5_axi_rresp,
    slot_5_axi_rlast,
    slot_5_axi_rvalid,
    slot_5_axi_rready,
    slot_5_axis_aclk,
    slot_5_axis_aresetn,
    slot_5_axis_tvalid,
    slot_5_axis_tready,
    slot_5_axis_tdata,
    slot_5_axis_tstrb,
    slot_5_axis_tkeep,
    slot_5_axis_tlast,
    slot_5_axis_tid,
    slot_5_axis_tdest,
    slot_5_axis_tuser,
    slot_5_ext_trig,
    slot_5_ext_trig_stop,
    slot_6_axi_aclk,
    slot_6_axi_aresetn,
    slot_6_axi_awid,
    slot_6_axi_awaddr,
    slot_6_axi_awprot,
    slot_6_axi_awlen,
    slot_6_axi_awsize,
    slot_6_axi_awburst,
    slot_6_axi_awcache,
    slot_6_axi_awlock,
    slot_6_axi_awvalid,
    slot_6_axi_awready,
    slot_6_axi_wdata,
    slot_6_axi_wstrb,
    slot_6_axi_wlast,
    slot_6_axi_wvalid,
    slot_6_axi_wready,
    slot_6_axi_bid,
    slot_6_axi_bresp,
    slot_6_axi_bvalid,
    slot_6_axi_bready,
    slot_6_axi_arid,
    slot_6_axi_araddr,
    slot_6_axi_arlen,
    slot_6_axi_arsize,
    slot_6_axi_arburst,
    slot_6_axi_arcache,
    slot_6_axi_arprot,
    slot_6_axi_arlock,
    slot_6_axi_arvalid,
    slot_6_axi_arready,
    slot_6_axi_rid,
    slot_6_axi_rdata,
    slot_6_axi_rresp,
    slot_6_axi_rlast,
    slot_6_axi_rvalid,
    slot_6_axi_rready,
    slot_6_axis_aclk,
    slot_6_axis_aresetn,
    slot_6_axis_tvalid,
    slot_6_axis_tready,
    slot_6_axis_tdata,
    slot_6_axis_tstrb,
    slot_6_axis_tkeep,
    slot_6_axis_tlast,
    slot_6_axis_tid,
    slot_6_axis_tdest,
    slot_6_axis_tuser,
    slot_6_ext_trig,
    slot_6_ext_trig_stop,
    slot_7_axi_aclk,
    slot_7_axi_aresetn,
    slot_7_axi_awid,
    slot_7_axi_awaddr,
    slot_7_axi_awprot,
    slot_7_axi_awlen,
    slot_7_axi_awsize,
    slot_7_axi_awburst,
    slot_7_axi_awcache,
    slot_7_axi_awlock,
    slot_7_axi_awvalid,
    slot_7_axi_awready,
    slot_7_axi_wdata,
    slot_7_axi_wstrb,
    slot_7_axi_wlast,
    slot_7_axi_wvalid,
    slot_7_axi_wready,
    slot_7_axi_bid,
    slot_7_axi_bresp,
    slot_7_axi_bvalid,
    slot_7_axi_bready,
    slot_7_axi_arid,
    slot_7_axi_araddr,
    slot_7_axi_arlen,
    slot_7_axi_arsize,
    slot_7_axi_arburst,
    slot_7_axi_arcache,
    slot_7_axi_arprot,
    slot_7_axi_arlock,
    slot_7_axi_arvalid,
    slot_7_axi_arready,
    slot_7_axi_rid,
    slot_7_axi_rdata,
    slot_7_axi_rresp,
    slot_7_axi_rlast,
    slot_7_axi_rvalid,
    slot_7_axi_rready,
    slot_7_axis_aclk,
    slot_7_axis_aresetn,
    slot_7_axis_tvalid,
    slot_7_axis_tready,
    slot_7_axis_tdata,
    slot_7_axis_tstrb,
    slot_7_axis_tkeep,
    slot_7_axis_tlast,
    slot_7_axis_tid,
    slot_7_axis_tdest,
    slot_7_axis_tuser,
    slot_7_ext_trig,
    slot_7_ext_trig_stop,
    ext_clk_0,
    ext_rstn_0,
    ext_event_0_cnt_start,
    ext_event_0_cnt_stop,
    ext_event_0,
    ext_clk_1,
    ext_rstn_1,
    ext_event_1_cnt_start,
    ext_event_1_cnt_stop,
    ext_event_1,
    ext_clk_2,
    ext_rstn_2,
    ext_event_2_cnt_start,
    ext_event_2_cnt_stop,
    ext_event_2,
    ext_clk_3,
    ext_rstn_3,
    ext_event_3_cnt_start,
    ext_event_3_cnt_stop,
    ext_event_3,
    ext_clk_4,
    ext_rstn_4,
    ext_event_4_cnt_start,
    ext_event_4_cnt_stop,
    ext_event_4,
    ext_clk_5,
    ext_rstn_5,
    ext_event_5_cnt_start,
    ext_event_5_cnt_stop,
    ext_event_5,
    ext_clk_6,
    ext_rstn_6,
    ext_event_6_cnt_start,
    ext_event_6_cnt_stop,
    ext_event_6,
    ext_clk_7,
    ext_rstn_7,
    ext_event_7_cnt_start,
    ext_event_7_cnt_stop,
    ext_event_7,
    capture_event,
    reset_event,
    core_aclk,
    core_aresetn,
    m_axis_aclk,
    m_axis_aresetn,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tvalid,
    m_axis_tid,
    m_axis_tready,
    s_axi_offld_aclk,
    s_axi_offld_aresetn,
    s_axi_offld_araddr,
    s_axi_offld_arvalid,
    s_axi_offld_arlen,
    s_axi_offld_arid,
    s_axi_offld_arready,
    s_axi_offld_rready,
    s_axi_offld_rdata,
    s_axi_offld_rresp,
    s_axi_offld_rvalid,
    s_axi_offld_rid,
    s_axi_offld_rlast,
    interrupt,
    trigger_in,
    trigger_in_ack);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [15:0]s_axi_awaddr;
  input s_axi_awvalid;
  input [0:0]s_axi_awid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [0:0]s_axi_bid;
  input s_axi_bready;
  input [15:0]s_axi_araddr;
  input s_axi_arvalid;
  input [0:0]s_axi_arid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [0:0]s_axi_rid;
  input s_axi_rready;
  input slot_0_axi_aclk;
  input slot_0_axi_aresetn;
  input [15:0]slot_0_axi_awid;
  input [39:0]slot_0_axi_awaddr;
  input [2:0]slot_0_axi_awprot;
  input [7:0]slot_0_axi_awlen;
  input [2:0]slot_0_axi_awsize;
  input [1:0]slot_0_axi_awburst;
  input [3:0]slot_0_axi_awcache;
  input [0:0]slot_0_axi_awlock;
  input slot_0_axi_awvalid;
  input slot_0_axi_awready;
  input [127:0]slot_0_axi_wdata;
  input [15:0]slot_0_axi_wstrb;
  input slot_0_axi_wlast;
  input slot_0_axi_wvalid;
  input slot_0_axi_wready;
  input [15:0]slot_0_axi_bid;
  input [1:0]slot_0_axi_bresp;
  input slot_0_axi_bvalid;
  input slot_0_axi_bready;
  input [15:0]slot_0_axi_arid;
  input [39:0]slot_0_axi_araddr;
  input [7:0]slot_0_axi_arlen;
  input [2:0]slot_0_axi_arsize;
  input [1:0]slot_0_axi_arburst;
  input [3:0]slot_0_axi_arcache;
  input [2:0]slot_0_axi_arprot;
  input [0:0]slot_0_axi_arlock;
  input slot_0_axi_arvalid;
  input slot_0_axi_arready;
  input [15:0]slot_0_axi_rid;
  input [127:0]slot_0_axi_rdata;
  input [1:0]slot_0_axi_rresp;
  input slot_0_axi_rlast;
  input slot_0_axi_rvalid;
  input slot_0_axi_rready;
  input slot_0_axis_aclk;
  input slot_0_axis_aresetn;
  input slot_0_axis_tvalid;
  input slot_0_axis_tready;
  input [31:0]slot_0_axis_tdata;
  input [3:0]slot_0_axis_tstrb;
  input [3:0]slot_0_axis_tkeep;
  input slot_0_axis_tlast;
  input [0:0]slot_0_axis_tid;
  input [0:0]slot_0_axis_tdest;
  input [0:0]slot_0_axis_tuser;
  input slot_0_ext_trig;
  input slot_0_ext_trig_stop;
  input slot_1_axi_aclk;
  input slot_1_axi_aresetn;
  input [0:0]slot_1_axi_awid;
  input [31:0]slot_1_axi_awaddr;
  input [2:0]slot_1_axi_awprot;
  input [7:0]slot_1_axi_awlen;
  input [2:0]slot_1_axi_awsize;
  input [1:0]slot_1_axi_awburst;
  input [3:0]slot_1_axi_awcache;
  input [0:0]slot_1_axi_awlock;
  input slot_1_axi_awvalid;
  input slot_1_axi_awready;
  input [31:0]slot_1_axi_wdata;
  input [3:0]slot_1_axi_wstrb;
  input slot_1_axi_wlast;
  input slot_1_axi_wvalid;
  input slot_1_axi_wready;
  input [0:0]slot_1_axi_bid;
  input [1:0]slot_1_axi_bresp;
  input slot_1_axi_bvalid;
  input slot_1_axi_bready;
  input [0:0]slot_1_axi_arid;
  input [31:0]slot_1_axi_araddr;
  input [7:0]slot_1_axi_arlen;
  input [2:0]slot_1_axi_arsize;
  input [1:0]slot_1_axi_arburst;
  input [3:0]slot_1_axi_arcache;
  input [2:0]slot_1_axi_arprot;
  input [0:0]slot_1_axi_arlock;
  input slot_1_axi_arvalid;
  input slot_1_axi_arready;
  input [0:0]slot_1_axi_rid;
  input [31:0]slot_1_axi_rdata;
  input [1:0]slot_1_axi_rresp;
  input slot_1_axi_rlast;
  input slot_1_axi_rvalid;
  input slot_1_axi_rready;
  input slot_1_axis_aclk;
  input slot_1_axis_aresetn;
  input slot_1_axis_tvalid;
  input slot_1_axis_tready;
  input [31:0]slot_1_axis_tdata;
  input [3:0]slot_1_axis_tstrb;
  input [3:0]slot_1_axis_tkeep;
  input slot_1_axis_tlast;
  input [0:0]slot_1_axis_tid;
  input [0:0]slot_1_axis_tdest;
  input [0:0]slot_1_axis_tuser;
  input slot_1_ext_trig;
  input slot_1_ext_trig_stop;
  input slot_2_axi_aclk;
  input slot_2_axi_aresetn;
  input [0:0]slot_2_axi_awid;
  input [31:0]slot_2_axi_awaddr;
  input [2:0]slot_2_axi_awprot;
  input [7:0]slot_2_axi_awlen;
  input [2:0]slot_2_axi_awsize;
  input [1:0]slot_2_axi_awburst;
  input [3:0]slot_2_axi_awcache;
  input [0:0]slot_2_axi_awlock;
  input slot_2_axi_awvalid;
  input slot_2_axi_awready;
  input [31:0]slot_2_axi_wdata;
  input [3:0]slot_2_axi_wstrb;
  input slot_2_axi_wlast;
  input slot_2_axi_wvalid;
  input slot_2_axi_wready;
  input [0:0]slot_2_axi_bid;
  input [1:0]slot_2_axi_bresp;
  input slot_2_axi_bvalid;
  input slot_2_axi_bready;
  input [0:0]slot_2_axi_arid;
  input [31:0]slot_2_axi_araddr;
  input [7:0]slot_2_axi_arlen;
  input [2:0]slot_2_axi_arsize;
  input [1:0]slot_2_axi_arburst;
  input [3:0]slot_2_axi_arcache;
  input [2:0]slot_2_axi_arprot;
  input [0:0]slot_2_axi_arlock;
  input slot_2_axi_arvalid;
  input slot_2_axi_arready;
  input [0:0]slot_2_axi_rid;
  input [31:0]slot_2_axi_rdata;
  input [1:0]slot_2_axi_rresp;
  input slot_2_axi_rlast;
  input slot_2_axi_rvalid;
  input slot_2_axi_rready;
  input slot_2_axis_aclk;
  input slot_2_axis_aresetn;
  input slot_2_axis_tvalid;
  input slot_2_axis_tready;
  input [31:0]slot_2_axis_tdata;
  input [3:0]slot_2_axis_tstrb;
  input [3:0]slot_2_axis_tkeep;
  input slot_2_axis_tlast;
  input [0:0]slot_2_axis_tid;
  input [0:0]slot_2_axis_tdest;
  input [0:0]slot_2_axis_tuser;
  input slot_2_ext_trig;
  input slot_2_ext_trig_stop;
  input slot_3_axi_aclk;
  input slot_3_axi_aresetn;
  input [0:0]slot_3_axi_awid;
  input [31:0]slot_3_axi_awaddr;
  input [2:0]slot_3_axi_awprot;
  input [7:0]slot_3_axi_awlen;
  input [2:0]slot_3_axi_awsize;
  input [1:0]slot_3_axi_awburst;
  input [3:0]slot_3_axi_awcache;
  input [0:0]slot_3_axi_awlock;
  input slot_3_axi_awvalid;
  input slot_3_axi_awready;
  input [31:0]slot_3_axi_wdata;
  input [3:0]slot_3_axi_wstrb;
  input slot_3_axi_wlast;
  input slot_3_axi_wvalid;
  input slot_3_axi_wready;
  input [0:0]slot_3_axi_bid;
  input [1:0]slot_3_axi_bresp;
  input slot_3_axi_bvalid;
  input slot_3_axi_bready;
  input [0:0]slot_3_axi_arid;
  input [31:0]slot_3_axi_araddr;
  input [7:0]slot_3_axi_arlen;
  input [2:0]slot_3_axi_arsize;
  input [1:0]slot_3_axi_arburst;
  input [3:0]slot_3_axi_arcache;
  input [2:0]slot_3_axi_arprot;
  input [0:0]slot_3_axi_arlock;
  input slot_3_axi_arvalid;
  input slot_3_axi_arready;
  input [0:0]slot_3_axi_rid;
  input [31:0]slot_3_axi_rdata;
  input [1:0]slot_3_axi_rresp;
  input slot_3_axi_rlast;
  input slot_3_axi_rvalid;
  input slot_3_axi_rready;
  input slot_3_axis_aclk;
  input slot_3_axis_aresetn;
  input slot_3_axis_tvalid;
  input slot_3_axis_tready;
  input [31:0]slot_3_axis_tdata;
  input [3:0]slot_3_axis_tstrb;
  input [3:0]slot_3_axis_tkeep;
  input slot_3_axis_tlast;
  input [0:0]slot_3_axis_tid;
  input [0:0]slot_3_axis_tdest;
  input [0:0]slot_3_axis_tuser;
  input slot_3_ext_trig;
  input slot_3_ext_trig_stop;
  input slot_4_axi_aclk;
  input slot_4_axi_aresetn;
  input [0:0]slot_4_axi_awid;
  input [31:0]slot_4_axi_awaddr;
  input [2:0]slot_4_axi_awprot;
  input [7:0]slot_4_axi_awlen;
  input [2:0]slot_4_axi_awsize;
  input [1:0]slot_4_axi_awburst;
  input [3:0]slot_4_axi_awcache;
  input [0:0]slot_4_axi_awlock;
  input slot_4_axi_awvalid;
  input slot_4_axi_awready;
  input [31:0]slot_4_axi_wdata;
  input [3:0]slot_4_axi_wstrb;
  input slot_4_axi_wlast;
  input slot_4_axi_wvalid;
  input slot_4_axi_wready;
  input [0:0]slot_4_axi_bid;
  input [1:0]slot_4_axi_bresp;
  input slot_4_axi_bvalid;
  input slot_4_axi_bready;
  input [0:0]slot_4_axi_arid;
  input [31:0]slot_4_axi_araddr;
  input [7:0]slot_4_axi_arlen;
  input [2:0]slot_4_axi_arsize;
  input [1:0]slot_4_axi_arburst;
  input [3:0]slot_4_axi_arcache;
  input [2:0]slot_4_axi_arprot;
  input [0:0]slot_4_axi_arlock;
  input slot_4_axi_arvalid;
  input slot_4_axi_arready;
  input [0:0]slot_4_axi_rid;
  input [31:0]slot_4_axi_rdata;
  input [1:0]slot_4_axi_rresp;
  input slot_4_axi_rlast;
  input slot_4_axi_rvalid;
  input slot_4_axi_rready;
  input slot_4_axis_aclk;
  input slot_4_axis_aresetn;
  input slot_4_axis_tvalid;
  input slot_4_axis_tready;
  input [31:0]slot_4_axis_tdata;
  input [3:0]slot_4_axis_tstrb;
  input [3:0]slot_4_axis_tkeep;
  input slot_4_axis_tlast;
  input [0:0]slot_4_axis_tid;
  input [0:0]slot_4_axis_tdest;
  input [0:0]slot_4_axis_tuser;
  input slot_4_ext_trig;
  input slot_4_ext_trig_stop;
  input slot_5_axi_aclk;
  input slot_5_axi_aresetn;
  input [0:0]slot_5_axi_awid;
  input [31:0]slot_5_axi_awaddr;
  input [2:0]slot_5_axi_awprot;
  input [7:0]slot_5_axi_awlen;
  input [2:0]slot_5_axi_awsize;
  input [1:0]slot_5_axi_awburst;
  input [3:0]slot_5_axi_awcache;
  input [0:0]slot_5_axi_awlock;
  input slot_5_axi_awvalid;
  input slot_5_axi_awready;
  input [31:0]slot_5_axi_wdata;
  input [3:0]slot_5_axi_wstrb;
  input slot_5_axi_wlast;
  input slot_5_axi_wvalid;
  input slot_5_axi_wready;
  input [0:0]slot_5_axi_bid;
  input [1:0]slot_5_axi_bresp;
  input slot_5_axi_bvalid;
  input slot_5_axi_bready;
  input [0:0]slot_5_axi_arid;
  input [31:0]slot_5_axi_araddr;
  input [7:0]slot_5_axi_arlen;
  input [2:0]slot_5_axi_arsize;
  input [1:0]slot_5_axi_arburst;
  input [3:0]slot_5_axi_arcache;
  input [2:0]slot_5_axi_arprot;
  input [0:0]slot_5_axi_arlock;
  input slot_5_axi_arvalid;
  input slot_5_axi_arready;
  input [0:0]slot_5_axi_rid;
  input [31:0]slot_5_axi_rdata;
  input [1:0]slot_5_axi_rresp;
  input slot_5_axi_rlast;
  input slot_5_axi_rvalid;
  input slot_5_axi_rready;
  input slot_5_axis_aclk;
  input slot_5_axis_aresetn;
  input slot_5_axis_tvalid;
  input slot_5_axis_tready;
  input [31:0]slot_5_axis_tdata;
  input [3:0]slot_5_axis_tstrb;
  input [3:0]slot_5_axis_tkeep;
  input slot_5_axis_tlast;
  input [0:0]slot_5_axis_tid;
  input [0:0]slot_5_axis_tdest;
  input [0:0]slot_5_axis_tuser;
  input slot_5_ext_trig;
  input slot_5_ext_trig_stop;
  input slot_6_axi_aclk;
  input slot_6_axi_aresetn;
  input [0:0]slot_6_axi_awid;
  input [31:0]slot_6_axi_awaddr;
  input [2:0]slot_6_axi_awprot;
  input [7:0]slot_6_axi_awlen;
  input [2:0]slot_6_axi_awsize;
  input [1:0]slot_6_axi_awburst;
  input [3:0]slot_6_axi_awcache;
  input [0:0]slot_6_axi_awlock;
  input slot_6_axi_awvalid;
  input slot_6_axi_awready;
  input [31:0]slot_6_axi_wdata;
  input [3:0]slot_6_axi_wstrb;
  input slot_6_axi_wlast;
  input slot_6_axi_wvalid;
  input slot_6_axi_wready;
  input [0:0]slot_6_axi_bid;
  input [1:0]slot_6_axi_bresp;
  input slot_6_axi_bvalid;
  input slot_6_axi_bready;
  input [0:0]slot_6_axi_arid;
  input [31:0]slot_6_axi_araddr;
  input [7:0]slot_6_axi_arlen;
  input [2:0]slot_6_axi_arsize;
  input [1:0]slot_6_axi_arburst;
  input [3:0]slot_6_axi_arcache;
  input [2:0]slot_6_axi_arprot;
  input [0:0]slot_6_axi_arlock;
  input slot_6_axi_arvalid;
  input slot_6_axi_arready;
  input [0:0]slot_6_axi_rid;
  input [31:0]slot_6_axi_rdata;
  input [1:0]slot_6_axi_rresp;
  input slot_6_axi_rlast;
  input slot_6_axi_rvalid;
  input slot_6_axi_rready;
  input slot_6_axis_aclk;
  input slot_6_axis_aresetn;
  input slot_6_axis_tvalid;
  input slot_6_axis_tready;
  input [31:0]slot_6_axis_tdata;
  input [3:0]slot_6_axis_tstrb;
  input [3:0]slot_6_axis_tkeep;
  input slot_6_axis_tlast;
  input [0:0]slot_6_axis_tid;
  input [0:0]slot_6_axis_tdest;
  input [0:0]slot_6_axis_tuser;
  input slot_6_ext_trig;
  input slot_6_ext_trig_stop;
  input slot_7_axi_aclk;
  input slot_7_axi_aresetn;
  input [0:0]slot_7_axi_awid;
  input [31:0]slot_7_axi_awaddr;
  input [2:0]slot_7_axi_awprot;
  input [7:0]slot_7_axi_awlen;
  input [2:0]slot_7_axi_awsize;
  input [1:0]slot_7_axi_awburst;
  input [3:0]slot_7_axi_awcache;
  input [0:0]slot_7_axi_awlock;
  input slot_7_axi_awvalid;
  input slot_7_axi_awready;
  input [31:0]slot_7_axi_wdata;
  input [3:0]slot_7_axi_wstrb;
  input slot_7_axi_wlast;
  input slot_7_axi_wvalid;
  input slot_7_axi_wready;
  input [0:0]slot_7_axi_bid;
  input [1:0]slot_7_axi_bresp;
  input slot_7_axi_bvalid;
  input slot_7_axi_bready;
  input [0:0]slot_7_axi_arid;
  input [31:0]slot_7_axi_araddr;
  input [7:0]slot_7_axi_arlen;
  input [2:0]slot_7_axi_arsize;
  input [1:0]slot_7_axi_arburst;
  input [3:0]slot_7_axi_arcache;
  input [2:0]slot_7_axi_arprot;
  input [0:0]slot_7_axi_arlock;
  input slot_7_axi_arvalid;
  input slot_7_axi_arready;
  input [0:0]slot_7_axi_rid;
  input [31:0]slot_7_axi_rdata;
  input [1:0]slot_7_axi_rresp;
  input slot_7_axi_rlast;
  input slot_7_axi_rvalid;
  input slot_7_axi_rready;
  input slot_7_axis_aclk;
  input slot_7_axis_aresetn;
  input slot_7_axis_tvalid;
  input slot_7_axis_tready;
  input [31:0]slot_7_axis_tdata;
  input [3:0]slot_7_axis_tstrb;
  input [3:0]slot_7_axis_tkeep;
  input slot_7_axis_tlast;
  input [0:0]slot_7_axis_tid;
  input [0:0]slot_7_axis_tdest;
  input [0:0]slot_7_axis_tuser;
  input slot_7_ext_trig;
  input slot_7_ext_trig_stop;
  input ext_clk_0;
  input ext_rstn_0;
  input ext_event_0_cnt_start;
  input ext_event_0_cnt_stop;
  input ext_event_0;
  input ext_clk_1;
  input ext_rstn_1;
  input ext_event_1_cnt_start;
  input ext_event_1_cnt_stop;
  input ext_event_1;
  input ext_clk_2;
  input ext_rstn_2;
  input ext_event_2_cnt_start;
  input ext_event_2_cnt_stop;
  input ext_event_2;
  input ext_clk_3;
  input ext_rstn_3;
  input ext_event_3_cnt_start;
  input ext_event_3_cnt_stop;
  input ext_event_3;
  input ext_clk_4;
  input ext_rstn_4;
  input ext_event_4_cnt_start;
  input ext_event_4_cnt_stop;
  input ext_event_4;
  input ext_clk_5;
  input ext_rstn_5;
  input ext_event_5_cnt_start;
  input ext_event_5_cnt_stop;
  input ext_event_5;
  input ext_clk_6;
  input ext_rstn_6;
  input ext_event_6_cnt_start;
  input ext_event_6_cnt_stop;
  input ext_event_6;
  input ext_clk_7;
  input ext_rstn_7;
  input ext_event_7_cnt_start;
  input ext_event_7_cnt_stop;
  input ext_event_7;
  input capture_event;
  input reset_event;
  input core_aclk;
  input core_aresetn;
  input m_axis_aclk;
  input m_axis_aresetn;
  output [55:0]m_axis_tdata;
  output [6:0]m_axis_tstrb;
  output m_axis_tvalid;
  output [0:0]m_axis_tid;
  input m_axis_tready;
  input s_axi_offld_aclk;
  input s_axi_offld_aresetn;
  input [31:0]s_axi_offld_araddr;
  input s_axi_offld_arvalid;
  input [7:0]s_axi_offld_arlen;
  input [0:0]s_axi_offld_arid;
  output s_axi_offld_arready;
  input s_axi_offld_rready;
  output [31:0]s_axi_offld_rdata;
  output [1:0]s_axi_offld_rresp;
  output s_axi_offld_rvalid;
  output [0:0]s_axi_offld_rid;
  output s_axi_offld_rlast;
  output interrupt;
  input trigger_in;
  output trigger_in_ack;

  wire \<const0> ;
  wire \<const1> ;
  wire \GEN_PROFILE_Trace_Mode.profile_trace_mode_inst_n_56 ;
  wire capture_event;
  wire core_aclk;
  wire core_aresetn;
  wire flop_fi_out;
  wire flop_ze_out;
  wire interrupt;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [55:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire reset_event;
  wire rst_flop_fi_out;
  wire rst_flop_ze_out;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire slot_0_axi_arready;
  wire slot_0_axi_arvalid;
  wire slot_0_axi_awready;
  wire slot_0_axi_awvalid;
  wire slot_0_axi_bready;
  wire slot_0_axi_bvalid;
  wire slot_0_axi_rlast;
  wire slot_0_axi_rready;
  wire slot_0_axi_rvalid;
  wire slot_0_axi_wlast;
  wire slot_0_axi_wready;
  wire slot_0_axi_wvalid;
  wire slot_0_ext_trig;
  wire slot_0_ext_trig_stop;
  wire trigger_in;
  wire trigger_in_ack;

  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[6] = \<const1> ;
  assign m_axis_tstrb[5] = \<const1> ;
  assign m_axis_tstrb[4] = \<const1> ;
  assign m_axis_tstrb[3] = \<const1> ;
  assign m_axis_tstrb[2] = \<const1> ;
  assign m_axis_tstrb[1] = \<const1> ;
  assign m_axis_tstrb[0] = \<const1> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_offld_arready = \<const0> ;
  assign s_axi_offld_rdata[31] = \<const0> ;
  assign s_axi_offld_rdata[30] = \<const0> ;
  assign s_axi_offld_rdata[29] = \<const0> ;
  assign s_axi_offld_rdata[28] = \<const0> ;
  assign s_axi_offld_rdata[27] = \<const0> ;
  assign s_axi_offld_rdata[26] = \<const0> ;
  assign s_axi_offld_rdata[25] = \<const0> ;
  assign s_axi_offld_rdata[24] = \<const0> ;
  assign s_axi_offld_rdata[23] = \<const0> ;
  assign s_axi_offld_rdata[22] = \<const0> ;
  assign s_axi_offld_rdata[21] = \<const0> ;
  assign s_axi_offld_rdata[20] = \<const0> ;
  assign s_axi_offld_rdata[19] = \<const0> ;
  assign s_axi_offld_rdata[18] = \<const0> ;
  assign s_axi_offld_rdata[17] = \<const0> ;
  assign s_axi_offld_rdata[16] = \<const0> ;
  assign s_axi_offld_rdata[15] = \<const0> ;
  assign s_axi_offld_rdata[14] = \<const0> ;
  assign s_axi_offld_rdata[13] = \<const0> ;
  assign s_axi_offld_rdata[12] = \<const0> ;
  assign s_axi_offld_rdata[11] = \<const0> ;
  assign s_axi_offld_rdata[10] = \<const0> ;
  assign s_axi_offld_rdata[9] = \<const0> ;
  assign s_axi_offld_rdata[8] = \<const0> ;
  assign s_axi_offld_rdata[7] = \<const0> ;
  assign s_axi_offld_rdata[6] = \<const0> ;
  assign s_axi_offld_rdata[5] = \<const0> ;
  assign s_axi_offld_rdata[4] = \<const0> ;
  assign s_axi_offld_rdata[3] = \<const0> ;
  assign s_axi_offld_rdata[2] = \<const0> ;
  assign s_axi_offld_rdata[1] = \<const0> ;
  assign s_axi_offld_rdata[0] = \<const0> ;
  assign s_axi_offld_rid[0] = \<const0> ;
  assign s_axi_offld_rlast = \<const0> ;
  assign s_axi_offld_rresp[1] = \<const0> ;
  assign s_axi_offld_rresp[0] = \<const0> ;
  assign s_axi_offld_rvalid = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_profile \GEN_PROFILE_Trace_Mode.profile_trace_mode_inst 
       (.\Count_Out_i_reg[0] (\GEN_PROFILE_Trace_Mode.profile_trace_mode_inst_n_56 ),
        .D({slot_0_ext_trig_stop,slot_0_ext_trig}),
        .core_aclk(core_aclk),
        .core_aresetn(core_aresetn),
        .interrupt(interrupt),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .slot_0_axi_arready(slot_0_axi_arready),
        .slot_0_axi_arvalid(slot_0_axi_arvalid),
        .slot_0_axi_awready(slot_0_axi_awready),
        .slot_0_axi_awvalid(slot_0_axi_awvalid),
        .slot_0_axi_bready(slot_0_axi_bready),
        .slot_0_axi_bvalid(slot_0_axi_bvalid),
        .slot_0_axi_rlast(slot_0_axi_rlast),
        .slot_0_axi_rready(slot_0_axi_rready),
        .slot_0_axi_rvalid(slot_0_axi_rvalid),
        .slot_0_axi_wlast(slot_0_axi_wlast),
        .slot_0_axi_wready(slot_0_axi_wready),
        .slot_0_axi_wvalid(slot_0_axi_wvalid),
        .trigger_in(trigger_in),
        .trigger_in_ack(trigger_in_ack));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset ext_sync_flop_0
       (.capture_event(capture_event),
        .core_aclk(core_aclk),
        .out(flop_ze_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_0 ext_sync_flop_00
       (.core_aclk(core_aclk),
        .out(rst_flop_ze_out),
        .reset_event(reset_event));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_1 ext_sync_flop_1
       (.capture_event(capture_event),
        .core_aclk(core_aclk),
        .out(flop_fi_out),
        .q_reg_0(flop_ze_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_2 ext_sync_flop_10
       (.core_aclk(core_aclk),
        .out(rst_flop_fi_out),
        .q_reg_0(rst_flop_ze_out),
        .reset_event(reset_event));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2 reset_event_cdc_sync
       (.core_aclk(core_aclk),
        .core_aresetn(\GEN_PROFILE_Trace_Mode.profile_trace_mode_inst_n_56 ),
        .out(flop_fi_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_3 reset_event_cdc_sync1
       (.core_aclk(core_aclk),
        .core_aresetn(\GEN_PROFILE_Trace_Mode.profile_trace_mode_inst_n_56 ),
        .out(rst_flop_fi_out));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_perf_mon_0_0,axi_perf_mon_v5_0_17_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_perf_mon_v5_0_17_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    slot_0_axi_aclk,
    slot_0_axi_aresetn,
    slot_0_axi_awid,
    slot_0_axi_awaddr,
    slot_0_axi_awprot,
    slot_0_axi_awlen,
    slot_0_axi_awsize,
    slot_0_axi_awburst,
    slot_0_axi_awcache,
    slot_0_axi_awlock,
    slot_0_axi_awvalid,
    slot_0_axi_awready,
    slot_0_axi_wdata,
    slot_0_axi_wstrb,
    slot_0_axi_wlast,
    slot_0_axi_wvalid,
    slot_0_axi_wready,
    slot_0_axi_bid,
    slot_0_axi_bresp,
    slot_0_axi_bvalid,
    slot_0_axi_bready,
    slot_0_axi_arid,
    slot_0_axi_araddr,
    slot_0_axi_arlen,
    slot_0_axi_arsize,
    slot_0_axi_arburst,
    slot_0_axi_arcache,
    slot_0_axi_arprot,
    slot_0_axi_arlock,
    slot_0_axi_arvalid,
    slot_0_axi_arready,
    slot_0_axi_rid,
    slot_0_axi_rdata,
    slot_0_axi_rresp,
    slot_0_axi_rlast,
    slot_0_axi_rvalid,
    slot_0_axi_rready,
    slot_0_ext_trig,
    slot_0_ext_trig_stop,
    ext_clk_0,
    ext_rstn_0,
    ext_event_0_cnt_start,
    ext_event_0_cnt_stop,
    ext_event_0,
    core_aclk,
    core_aresetn,
    m_axis_aclk,
    m_axis_aresetn,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tvalid,
    m_axis_tid,
    m_axis_tready,
    interrupt);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_RESET s_axi_aresetn, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [15:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [15:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 slot0_axi_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME slot0_axi_clk, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_0_AXI4LITE, ASSOCIATED_RESET slot_0_axi_aresetn, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0" *) input slot_0_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SLOT0_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT0_AXI_RST, POLARITY ACTIVE_LOW" *) input slot_0_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWID" *) input [15:0]slot_0_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *) input [39:0]slot_0_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT" *) input [2:0]slot_0_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN" *) input [7:0]slot_0_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE" *) input [2:0]slot_0_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST" *) input [1:0]slot_0_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE" *) input [3:0]slot_0_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK" *) input [0:0]slot_0_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *) input slot_0_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *) input slot_0_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *) input [127:0]slot_0_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB" *) input [15:0]slot_0_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST" *) input slot_0_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *) input slot_0_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *) input slot_0_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BID" *) input [15:0]slot_0_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP" *) input [1:0]slot_0_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *) input slot_0_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *) input slot_0_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARID" *) input [15:0]slot_0_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *) input [39:0]slot_0_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN" *) input [7:0]slot_0_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE" *) input [2:0]slot_0_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST" *) input [1:0]slot_0_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE" *) input [3:0]slot_0_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT" *) input [2:0]slot_0_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK" *) input [0:0]slot_0_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *) input slot_0_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *) input slot_0_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RID" *) input [15:0]slot_0_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *) input [127:0]slot_0_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP" *) input [1:0]slot_0_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST" *) input slot_0_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *) input slot_0_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input slot_0_axi_rready;
  input slot_0_ext_trig;
  input slot_0_ext_trig_stop;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 EXT_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME EXT_CLK_0, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0" *) input ext_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 EXT_RSTN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME EXT_RSTN_0, POLARITY ACTIVE_LOW" *) input ext_rstn_0;
  input ext_event_0_cnt_start;
  input ext_event_0_cnt_stop;
  input ext_event_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CORE_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CORE_ACLK, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0" *) input core_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 CORE_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CORE_ARESETN, POLARITY ACTIVE_LOW" *) input core_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXIS_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_ACLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXIS_ARESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_ARESET, POLARITY ACTIVE_LOW" *) input m_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [55:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TSTRB" *) output [6:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TID" *) output [0:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 7, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire core_aclk;
  wire core_aresetn;
  wire ext_clk_0;
  wire ext_event_0;
  wire ext_event_0_cnt_start;
  wire ext_event_0_cnt_stop;
  wire ext_rstn_0;
  wire interrupt;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [55:0]m_axis_tdata;
  wire [0:0]m_axis_tid;
  wire m_axis_tready;
  wire [6:0]m_axis_tstrb;
  wire m_axis_tvalid;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire slot_0_axi_aclk;
  wire [39:0]slot_0_axi_araddr;
  wire [1:0]slot_0_axi_arburst;
  wire [3:0]slot_0_axi_arcache;
  wire slot_0_axi_aresetn;
  wire [15:0]slot_0_axi_arid;
  wire [7:0]slot_0_axi_arlen;
  wire [0:0]slot_0_axi_arlock;
  wire [2:0]slot_0_axi_arprot;
  wire slot_0_axi_arready;
  wire [2:0]slot_0_axi_arsize;
  wire slot_0_axi_arvalid;
  wire [39:0]slot_0_axi_awaddr;
  wire [1:0]slot_0_axi_awburst;
  wire [3:0]slot_0_axi_awcache;
  wire [15:0]slot_0_axi_awid;
  wire [7:0]slot_0_axi_awlen;
  wire [0:0]slot_0_axi_awlock;
  wire [2:0]slot_0_axi_awprot;
  wire slot_0_axi_awready;
  wire [2:0]slot_0_axi_awsize;
  wire slot_0_axi_awvalid;
  wire [15:0]slot_0_axi_bid;
  wire slot_0_axi_bready;
  wire [1:0]slot_0_axi_bresp;
  wire slot_0_axi_bvalid;
  wire [127:0]slot_0_axi_rdata;
  wire [15:0]slot_0_axi_rid;
  wire slot_0_axi_rlast;
  wire slot_0_axi_rready;
  wire [1:0]slot_0_axi_rresp;
  wire slot_0_axi_rvalid;
  wire [127:0]slot_0_axi_wdata;
  wire slot_0_axi_wlast;
  wire slot_0_axi_wready;
  wire [15:0]slot_0_axi_wstrb;
  wire slot_0_axi_wvalid;
  wire slot_0_ext_trig;
  wire slot_0_ext_trig_stop;
  wire NLW_inst_s_axi_offld_arready_UNCONNECTED;
  wire NLW_inst_s_axi_offld_rlast_UNCONNECTED;
  wire NLW_inst_s_axi_offld_rvalid_UNCONNECTED;
  wire NLW_inst_trigger_in_ack_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_offld_rdata_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_offld_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_offld_rresp_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;

  (* COUNTER_LOAD_VALUE = "0" *) 
  (* C_AXI4LITE_CORE_CLK_ASYNC = "0" *) 
  (* C_AXIS_DWIDTH_ROUND_TO_32 = "64" *) 
  (* C_ENABLE_ADVANCED = "0" *) 
  (* C_ENABLE_EVENT_COUNT = "0" *) 
  (* C_ENABLE_EVENT_LOG = "0" *) 
  (* C_ENABLE_PROFILE = "0" *) 
  (* C_ENABLE_TRACE = "1" *) 
  (* C_EN_ALL_TRACE = "1" *) 
  (* C_EN_AXI_DEBUG = "0" *) 
  (* C_EN_EXT_EVENTS_FLAG = "0" *) 
  (* C_EN_FIRST_READ_FLAG = "1" *) 
  (* C_EN_FIRST_WRITE_FLAG = "1" *) 
  (* C_EN_LAST_READ_FLAG = "1" *) 
  (* C_EN_LAST_WRITE_FLAG = "1" *) 
  (* C_EN_RD_ADD_FLAG = "1" *) 
  (* C_EN_RESPONSE_FLAG = "1" *) 
  (* C_EN_SW_REG_WR_FLAG = "0" *) 
  (* C_EN_TRIGGER = "0" *) 
  (* C_EN_WR_ADD_FLAG = "1" *) 
  (* C_EXT_EVENT0_FIFO_ENABLE = "0" *) 
  (* C_EXT_EVENT1_FIFO_ENABLE = "1" *) 
  (* C_EXT_EVENT2_FIFO_ENABLE = "1" *) 
  (* C_EXT_EVENT3_FIFO_ENABLE = "1" *) 
  (* C_EXT_EVENT4_FIFO_ENABLE = "1" *) 
  (* C_EXT_EVENT5_FIFO_ENABLE = "1" *) 
  (* C_EXT_EVENT6_FIFO_ENABLE = "1" *) 
  (* C_EXT_EVENT7_FIFO_ENABLE = "1" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FIFO_AXIS_DEPTH = "32" *) 
  (* C_FIFO_AXIS_SYNC = "1" *) 
  (* C_FIFO_AXIS_TDATA_WIDTH = "56" *) 
  (* C_FIFO_AXIS_TID_WIDTH = "1" *) 
  (* C_GLOBAL_COUNT_WIDTH = "32" *) 
  (* C_HAVE_SAMPLED_METRIC_CNT = "1" *) 
  (* C_INSTANCE = "design_1_axi_perf_mon_0_0" *) 
  (* C_LITE_ADDRESS_WIDTH = "16" *) 
  (* C_LOG_DATA_OFFLD = "0" *) 
  (* C_METRICS_SAMPLE_COUNT_WIDTH = "32" *) 
  (* C_METRIC_COUNT_SCALE = "1" *) 
  (* C_METRIC_COUNT_WIDTH = "32" *) 
  (* C_NUM_MONITOR_SLOTS = "1" *) 
  (* C_NUM_OF_COUNTERS = "1" *) 
  (* C_REG_ALL_MONITOR_SIGNALS = "0" *) 
  (* C_SHOW_AXIS_TDEST = "0" *) 
  (* C_SHOW_AXIS_TID = "0" *) 
  (* C_SHOW_AXIS_TUSER = "0" *) 
  (* C_SHOW_AXI_IDS = "0" *) 
  (* C_SHOW_AXI_LEN = "0" *) 
  (* C_SLOT_0_AXIS_TDATA_WIDTH = "32" *) 
  (* C_SLOT_0_AXIS_TDEST_WIDTH = "1" *) 
  (* C_SLOT_0_AXIS_TID_WIDTH = "1" *) 
  (* C_SLOT_0_AXIS_TUSER_WIDTH = "1" *) 
  (* C_SLOT_0_AXI_ADDR_WIDTH = "40" *) 
  (* C_SLOT_0_AXI_AWLEN = "7" *) 
  (* C_SLOT_0_AXI_DATA_WIDTH = "128" *) 
  (* C_SLOT_0_AXI_ID_WIDTH = "16" *) 
  (* C_SLOT_0_AXI_LOCK = "0" *) 
  (* C_SLOT_0_AXI_PROTOCOL = "AXI4" *) 
  (* C_SLOT_0_FIFO_ENABLE = "0" *) 
  (* C_SLOT_1_AXIS_TDATA_WIDTH = "32" *) 
  (* C_SLOT_1_AXIS_TDEST_WIDTH = "1" *) 
  (* C_SLOT_1_AXIS_TID_WIDTH = "1" *) 
  (* C_SLOT_1_AXIS_TUSER_WIDTH = "1" *) 
  (* C_SLOT_1_AXI_ADDR_WIDTH = "32" *) 
  (* C_SLOT_1_AXI_AWLEN = "7" *) 
  (* C_SLOT_1_AXI_DATA_WIDTH = "32" *) 
  (* C_SLOT_1_AXI_ID_WIDTH = "1" *) 
  (* C_SLOT_1_AXI_LOCK = "0" *) 
  (* C_SLOT_1_AXI_PROTOCOL = "AXI4" *) 
  (* C_SLOT_1_FIFO_ENABLE = "1" *) 
  (* C_SLOT_2_AXIS_TDATA_WIDTH = "32" *) 
  (* C_SLOT_2_AXIS_TDEST_WIDTH = "1" *) 
  (* C_SLOT_2_AXIS_TID_WIDTH = "1" *) 
  (* C_SLOT_2_AXIS_TUSER_WIDTH = "1" *) 
  (* C_SLOT_2_AXI_ADDR_WIDTH = "32" *) 
  (* C_SLOT_2_AXI_AWLEN = "7" *) 
  (* C_SLOT_2_AXI_DATA_WIDTH = "32" *) 
  (* C_SLOT_2_AXI_ID_WIDTH = "1" *) 
  (* C_SLOT_2_AXI_LOCK = "0" *) 
  (* C_SLOT_2_AXI_PROTOCOL = "AXI4" *) 
  (* C_SLOT_2_FIFO_ENABLE = "1" *) 
  (* C_SLOT_3_AXIS_TDATA_WIDTH = "32" *) 
  (* C_SLOT_3_AXIS_TDEST_WIDTH = "1" *) 
  (* C_SLOT_3_AXIS_TID_WIDTH = "1" *) 
  (* C_SLOT_3_AXIS_TUSER_WIDTH = "1" *) 
  (* C_SLOT_3_AXI_ADDR_WIDTH = "32" *) 
  (* C_SLOT_3_AXI_AWLEN = "7" *) 
  (* C_SLOT_3_AXI_DATA_WIDTH = "32" *) 
  (* C_SLOT_3_AXI_ID_WIDTH = "1" *) 
  (* C_SLOT_3_AXI_LOCK = "0" *) 
  (* C_SLOT_3_AXI_PROTOCOL = "AXI4" *) 
  (* C_SLOT_3_FIFO_ENABLE = "1" *) 
  (* C_SLOT_4_AXIS_TDATA_WIDTH = "32" *) 
  (* C_SLOT_4_AXIS_TDEST_WIDTH = "1" *) 
  (* C_SLOT_4_AXIS_TID_WIDTH = "1" *) 
  (* C_SLOT_4_AXIS_TUSER_WIDTH = "1" *) 
  (* C_SLOT_4_AXI_ADDR_WIDTH = "32" *) 
  (* C_SLOT_4_AXI_AWLEN = "7" *) 
  (* C_SLOT_4_AXI_DATA_WIDTH = "32" *) 
  (* C_SLOT_4_AXI_ID_WIDTH = "1" *) 
  (* C_SLOT_4_AXI_LOCK = "0" *) 
  (* C_SLOT_4_AXI_PROTOCOL = "AXI4" *) 
  (* C_SLOT_4_FIFO_ENABLE = "1" *) 
  (* C_SLOT_5_AXIS_TDATA_WIDTH = "32" *) 
  (* C_SLOT_5_AXIS_TDEST_WIDTH = "1" *) 
  (* C_SLOT_5_AXIS_TID_WIDTH = "1" *) 
  (* C_SLOT_5_AXIS_TUSER_WIDTH = "1" *) 
  (* C_SLOT_5_AXI_ADDR_WIDTH = "32" *) 
  (* C_SLOT_5_AXI_AWLEN = "7" *) 
  (* C_SLOT_5_AXI_DATA_WIDTH = "32" *) 
  (* C_SLOT_5_AXI_ID_WIDTH = "1" *) 
  (* C_SLOT_5_AXI_LOCK = "0" *) 
  (* C_SLOT_5_AXI_PROTOCOL = "AXI4" *) 
  (* C_SLOT_5_FIFO_ENABLE = "1" *) 
  (* C_SLOT_6_AXIS_TDATA_WIDTH = "32" *) 
  (* C_SLOT_6_AXIS_TDEST_WIDTH = "1" *) 
  (* C_SLOT_6_AXIS_TID_WIDTH = "1" *) 
  (* C_SLOT_6_AXIS_TUSER_WIDTH = "1" *) 
  (* C_SLOT_6_AXI_ADDR_WIDTH = "32" *) 
  (* C_SLOT_6_AXI_AWLEN = "7" *) 
  (* C_SLOT_6_AXI_DATA_WIDTH = "32" *) 
  (* C_SLOT_6_AXI_ID_WIDTH = "1" *) 
  (* C_SLOT_6_AXI_LOCK = "0" *) 
  (* C_SLOT_6_AXI_PROTOCOL = "AXI4" *) 
  (* C_SLOT_6_FIFO_ENABLE = "1" *) 
  (* C_SLOT_7_AXIS_TDATA_WIDTH = "32" *) 
  (* C_SLOT_7_AXIS_TDEST_WIDTH = "1" *) 
  (* C_SLOT_7_AXIS_TID_WIDTH = "1" *) 
  (* C_SLOT_7_AXIS_TUSER_WIDTH = "1" *) 
  (* C_SLOT_7_AXI_ADDR_WIDTH = "32" *) 
  (* C_SLOT_7_AXI_AWLEN = "7" *) 
  (* C_SLOT_7_AXI_DATA_WIDTH = "32" *) 
  (* C_SLOT_7_AXI_ID_WIDTH = "1" *) 
  (* C_SLOT_7_AXI_LOCK = "0" *) 
  (* C_SLOT_7_AXI_PROTOCOL = "AXI4" *) 
  (* C_SLOT_7_FIFO_ENABLE = "1" *) 
  (* C_SUPPORT_ID_REFLECTION = "0" *) 
  (* C_S_AXI4_BASEADDR = "-1" *) 
  (* C_S_AXI4_HIGHADDR = "0" *) 
  (* C_S_AXI_ADDR_WIDTH = "16" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* C_S_AXI_PROTOCOL = "AXI4LITE" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* ENABLE_EXT_EVENTS = "1" *) 
  (* SLOT_0_AXI_PROTOCOL = "AXI4" *) 
  (* SLOT_0_AXI_SUB_PROTOCOL = "NONE" *) 
  (* SLOT_1_AXI_PROTOCOL = "AXI4" *) 
  (* SLOT_1_AXI_SUB_PROTOCOL = "NONE" *) 
  (* SLOT_2_AXI_PROTOCOL = "AXI4" *) 
  (* SLOT_2_AXI_SUB_PROTOCOL = "NONE" *) 
  (* SLOT_3_AXI_PROTOCOL = "AXI4" *) 
  (* SLOT_3_AXI_SUB_PROTOCOL = "NONE" *) 
  (* SLOT_4_AXI_PROTOCOL = "AXI4" *) 
  (* SLOT_4_AXI_SUB_PROTOCOL = "NONE" *) 
  (* SLOT_5_AXI_PROTOCOL = "AXI4" *) 
  (* SLOT_5_AXI_SUB_PROTOCOL = "NONE" *) 
  (* SLOT_6_AXI_PROTOCOL = "AXI4" *) 
  (* SLOT_6_AXI_SUB_PROTOCOL = "NONE" *) 
  (* SLOT_7_AXI_PROTOCOL = "AXI4" *) 
  (* SLOT_7_AXI_SUB_PROTOCOL = "NONE" *) 
  (* S_AXI_OFFLD_ID_WIDTH = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top inst
       (.capture_event(1'b0),
        .core_aclk(core_aclk),
        .core_aresetn(core_aresetn),
        .ext_clk_0(ext_clk_0),
        .ext_clk_1(1'b0),
        .ext_clk_2(1'b0),
        .ext_clk_3(1'b0),
        .ext_clk_4(1'b0),
        .ext_clk_5(1'b0),
        .ext_clk_6(1'b0),
        .ext_clk_7(1'b0),
        .ext_event_0(ext_event_0),
        .ext_event_0_cnt_start(ext_event_0_cnt_start),
        .ext_event_0_cnt_stop(ext_event_0_cnt_stop),
        .ext_event_1(1'b0),
        .ext_event_1_cnt_start(1'b0),
        .ext_event_1_cnt_stop(1'b0),
        .ext_event_2(1'b0),
        .ext_event_2_cnt_start(1'b0),
        .ext_event_2_cnt_stop(1'b0),
        .ext_event_3(1'b0),
        .ext_event_3_cnt_start(1'b0),
        .ext_event_3_cnt_stop(1'b0),
        .ext_event_4(1'b0),
        .ext_event_4_cnt_start(1'b0),
        .ext_event_4_cnt_stop(1'b0),
        .ext_event_5(1'b0),
        .ext_event_5_cnt_start(1'b0),
        .ext_event_5_cnt_stop(1'b0),
        .ext_event_6(1'b0),
        .ext_event_6_cnt_start(1'b0),
        .ext_event_6_cnt_stop(1'b0),
        .ext_event_7(1'b0),
        .ext_event_7_cnt_start(1'b0),
        .ext_event_7_cnt_stop(1'b0),
        .ext_rstn_0(ext_rstn_0),
        .ext_rstn_1(1'b1),
        .ext_rstn_2(1'b1),
        .ext_rstn_3(1'b1),
        .ext_rstn_4(1'b1),
        .ext_rstn_5(1'b1),
        .ext_rstn_6(1'b1),
        .ext_rstn_7(1'b1),
        .interrupt(interrupt),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tvalid(m_axis_tvalid),
        .reset_event(1'b0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awid(1'b0),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_offld_aclk(1'b0),
        .s_axi_offld_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_offld_aresetn(1'b1),
        .s_axi_offld_arid(1'b0),
        .s_axi_offld_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_offld_arready(NLW_inst_s_axi_offld_arready_UNCONNECTED),
        .s_axi_offld_arvalid(1'b0),
        .s_axi_offld_rdata(NLW_inst_s_axi_offld_rdata_UNCONNECTED[31:0]),
        .s_axi_offld_rid(NLW_inst_s_axi_offld_rid_UNCONNECTED[0]),
        .s_axi_offld_rlast(NLW_inst_s_axi_offld_rlast_UNCONNECTED),
        .s_axi_offld_rready(1'b0),
        .s_axi_offld_rresp(NLW_inst_s_axi_offld_rresp_UNCONNECTED[1:0]),
        .s_axi_offld_rvalid(NLW_inst_s_axi_offld_rvalid_UNCONNECTED),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .slot_0_axi_aclk(slot_0_axi_aclk),
        .slot_0_axi_araddr(slot_0_axi_araddr),
        .slot_0_axi_arburst(slot_0_axi_arburst),
        .slot_0_axi_arcache(slot_0_axi_arcache),
        .slot_0_axi_aresetn(slot_0_axi_aresetn),
        .slot_0_axi_arid(slot_0_axi_arid),
        .slot_0_axi_arlen(slot_0_axi_arlen),
        .slot_0_axi_arlock(slot_0_axi_arlock),
        .slot_0_axi_arprot(slot_0_axi_arprot),
        .slot_0_axi_arready(slot_0_axi_arready),
        .slot_0_axi_arsize(slot_0_axi_arsize),
        .slot_0_axi_arvalid(slot_0_axi_arvalid),
        .slot_0_axi_awaddr(slot_0_axi_awaddr),
        .slot_0_axi_awburst(slot_0_axi_awburst),
        .slot_0_axi_awcache(slot_0_axi_awcache),
        .slot_0_axi_awid(slot_0_axi_awid),
        .slot_0_axi_awlen(slot_0_axi_awlen),
        .slot_0_axi_awlock(slot_0_axi_awlock),
        .slot_0_axi_awprot(slot_0_axi_awprot),
        .slot_0_axi_awready(slot_0_axi_awready),
        .slot_0_axi_awsize(slot_0_axi_awsize),
        .slot_0_axi_awvalid(slot_0_axi_awvalid),
        .slot_0_axi_bid(slot_0_axi_bid),
        .slot_0_axi_bready(slot_0_axi_bready),
        .slot_0_axi_bresp(slot_0_axi_bresp),
        .slot_0_axi_bvalid(slot_0_axi_bvalid),
        .slot_0_axi_rdata(slot_0_axi_rdata),
        .slot_0_axi_rid(slot_0_axi_rid),
        .slot_0_axi_rlast(slot_0_axi_rlast),
        .slot_0_axi_rready(slot_0_axi_rready),
        .slot_0_axi_rresp(slot_0_axi_rresp),
        .slot_0_axi_rvalid(slot_0_axi_rvalid),
        .slot_0_axi_wdata(slot_0_axi_wdata),
        .slot_0_axi_wlast(slot_0_axi_wlast),
        .slot_0_axi_wready(slot_0_axi_wready),
        .slot_0_axi_wstrb(slot_0_axi_wstrb),
        .slot_0_axi_wvalid(slot_0_axi_wvalid),
        .slot_0_axis_aclk(1'b0),
        .slot_0_axis_aresetn(1'b1),
        .slot_0_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_0_axis_tdest(1'b0),
        .slot_0_axis_tid(1'b0),
        .slot_0_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .slot_0_axis_tlast(1'b0),
        .slot_0_axis_tready(1'b0),
        .slot_0_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .slot_0_axis_tuser(1'b0),
        .slot_0_axis_tvalid(1'b0),
        .slot_0_ext_trig(slot_0_ext_trig),
        .slot_0_ext_trig_stop(slot_0_ext_trig_stop),
        .slot_1_axi_aclk(1'b0),
        .slot_1_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_1_axi_arburst({1'b0,1'b0}),
        .slot_1_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_1_axi_aresetn(1'b1),
        .slot_1_axi_arid(1'b0),
        .slot_1_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_1_axi_arlock(1'b0),
        .slot_1_axi_arprot({1'b0,1'b0,1'b0}),
        .slot_1_axi_arready(1'b0),
        .slot_1_axi_arsize({1'b0,1'b0,1'b0}),
        .slot_1_axi_arvalid(1'b0),
        .slot_1_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_1_axi_awburst({1'b0,1'b0}),
        .slot_1_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_1_axi_awid(1'b0),
        .slot_1_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_1_axi_awlock(1'b0),
        .slot_1_axi_awprot({1'b0,1'b0,1'b0}),
        .slot_1_axi_awready(1'b0),
        .slot_1_axi_awsize({1'b0,1'b0,1'b0}),
        .slot_1_axi_awvalid(1'b0),
        .slot_1_axi_bid(1'b0),
        .slot_1_axi_bready(1'b0),
        .slot_1_axi_bresp({1'b0,1'b0}),
        .slot_1_axi_bvalid(1'b0),
        .slot_1_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_1_axi_rid(1'b0),
        .slot_1_axi_rlast(1'b0),
        .slot_1_axi_rready(1'b0),
        .slot_1_axi_rresp({1'b0,1'b0}),
        .slot_1_axi_rvalid(1'b0),
        .slot_1_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_1_axi_wlast(1'b0),
        .slot_1_axi_wready(1'b0),
        .slot_1_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .slot_1_axi_wvalid(1'b0),
        .slot_1_axis_aclk(1'b0),
        .slot_1_axis_aresetn(1'b1),
        .slot_1_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_1_axis_tdest(1'b0),
        .slot_1_axis_tid(1'b0),
        .slot_1_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .slot_1_axis_tlast(1'b0),
        .slot_1_axis_tready(1'b0),
        .slot_1_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .slot_1_axis_tuser(1'b0),
        .slot_1_axis_tvalid(1'b0),
        .slot_1_ext_trig(1'b0),
        .slot_1_ext_trig_stop(1'b0),
        .slot_2_axi_aclk(1'b0),
        .slot_2_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_2_axi_arburst({1'b0,1'b0}),
        .slot_2_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_2_axi_aresetn(1'b1),
        .slot_2_axi_arid(1'b0),
        .slot_2_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_2_axi_arlock(1'b0),
        .slot_2_axi_arprot({1'b0,1'b0,1'b0}),
        .slot_2_axi_arready(1'b0),
        .slot_2_axi_arsize({1'b0,1'b0,1'b0}),
        .slot_2_axi_arvalid(1'b0),
        .slot_2_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_2_axi_awburst({1'b0,1'b0}),
        .slot_2_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_2_axi_awid(1'b0),
        .slot_2_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_2_axi_awlock(1'b0),
        .slot_2_axi_awprot({1'b0,1'b0,1'b0}),
        .slot_2_axi_awready(1'b0),
        .slot_2_axi_awsize({1'b0,1'b0,1'b0}),
        .slot_2_axi_awvalid(1'b0),
        .slot_2_axi_bid(1'b0),
        .slot_2_axi_bready(1'b0),
        .slot_2_axi_bresp({1'b0,1'b0}),
        .slot_2_axi_bvalid(1'b0),
        .slot_2_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_2_axi_rid(1'b0),
        .slot_2_axi_rlast(1'b0),
        .slot_2_axi_rready(1'b0),
        .slot_2_axi_rresp({1'b0,1'b0}),
        .slot_2_axi_rvalid(1'b0),
        .slot_2_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_2_axi_wlast(1'b0),
        .slot_2_axi_wready(1'b0),
        .slot_2_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .slot_2_axi_wvalid(1'b0),
        .slot_2_axis_aclk(1'b0),
        .slot_2_axis_aresetn(1'b1),
        .slot_2_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_2_axis_tdest(1'b0),
        .slot_2_axis_tid(1'b0),
        .slot_2_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .slot_2_axis_tlast(1'b0),
        .slot_2_axis_tready(1'b0),
        .slot_2_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .slot_2_axis_tuser(1'b0),
        .slot_2_axis_tvalid(1'b0),
        .slot_2_ext_trig(1'b0),
        .slot_2_ext_trig_stop(1'b0),
        .slot_3_axi_aclk(1'b0),
        .slot_3_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_3_axi_arburst({1'b0,1'b0}),
        .slot_3_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_3_axi_aresetn(1'b1),
        .slot_3_axi_arid(1'b0),
        .slot_3_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_3_axi_arlock(1'b0),
        .slot_3_axi_arprot({1'b0,1'b0,1'b0}),
        .slot_3_axi_arready(1'b0),
        .slot_3_axi_arsize({1'b0,1'b0,1'b0}),
        .slot_3_axi_arvalid(1'b0),
        .slot_3_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_3_axi_awburst({1'b0,1'b0}),
        .slot_3_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_3_axi_awid(1'b0),
        .slot_3_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_3_axi_awlock(1'b0),
        .slot_3_axi_awprot({1'b0,1'b0,1'b0}),
        .slot_3_axi_awready(1'b0),
        .slot_3_axi_awsize({1'b0,1'b0,1'b0}),
        .slot_3_axi_awvalid(1'b0),
        .slot_3_axi_bid(1'b0),
        .slot_3_axi_bready(1'b0),
        .slot_3_axi_bresp({1'b0,1'b0}),
        .slot_3_axi_bvalid(1'b0),
        .slot_3_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_3_axi_rid(1'b0),
        .slot_3_axi_rlast(1'b0),
        .slot_3_axi_rready(1'b0),
        .slot_3_axi_rresp({1'b0,1'b0}),
        .slot_3_axi_rvalid(1'b0),
        .slot_3_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_3_axi_wlast(1'b0),
        .slot_3_axi_wready(1'b0),
        .slot_3_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .slot_3_axi_wvalid(1'b0),
        .slot_3_axis_aclk(1'b0),
        .slot_3_axis_aresetn(1'b1),
        .slot_3_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_3_axis_tdest(1'b0),
        .slot_3_axis_tid(1'b0),
        .slot_3_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .slot_3_axis_tlast(1'b0),
        .slot_3_axis_tready(1'b0),
        .slot_3_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .slot_3_axis_tuser(1'b0),
        .slot_3_axis_tvalid(1'b0),
        .slot_3_ext_trig(1'b0),
        .slot_3_ext_trig_stop(1'b0),
        .slot_4_axi_aclk(1'b0),
        .slot_4_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_4_axi_arburst({1'b0,1'b0}),
        .slot_4_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_4_axi_aresetn(1'b1),
        .slot_4_axi_arid(1'b0),
        .slot_4_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_4_axi_arlock(1'b0),
        .slot_4_axi_arprot({1'b0,1'b0,1'b0}),
        .slot_4_axi_arready(1'b0),
        .slot_4_axi_arsize({1'b0,1'b0,1'b0}),
        .slot_4_axi_arvalid(1'b0),
        .slot_4_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_4_axi_awburst({1'b0,1'b0}),
        .slot_4_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_4_axi_awid(1'b0),
        .slot_4_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_4_axi_awlock(1'b0),
        .slot_4_axi_awprot({1'b0,1'b0,1'b0}),
        .slot_4_axi_awready(1'b0),
        .slot_4_axi_awsize({1'b0,1'b0,1'b0}),
        .slot_4_axi_awvalid(1'b0),
        .slot_4_axi_bid(1'b0),
        .slot_4_axi_bready(1'b0),
        .slot_4_axi_bresp({1'b0,1'b0}),
        .slot_4_axi_bvalid(1'b0),
        .slot_4_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_4_axi_rid(1'b0),
        .slot_4_axi_rlast(1'b0),
        .slot_4_axi_rready(1'b0),
        .slot_4_axi_rresp({1'b0,1'b0}),
        .slot_4_axi_rvalid(1'b0),
        .slot_4_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_4_axi_wlast(1'b0),
        .slot_4_axi_wready(1'b0),
        .slot_4_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .slot_4_axi_wvalid(1'b0),
        .slot_4_axis_aclk(1'b0),
        .slot_4_axis_aresetn(1'b1),
        .slot_4_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_4_axis_tdest(1'b0),
        .slot_4_axis_tid(1'b0),
        .slot_4_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .slot_4_axis_tlast(1'b0),
        .slot_4_axis_tready(1'b0),
        .slot_4_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .slot_4_axis_tuser(1'b0),
        .slot_4_axis_tvalid(1'b0),
        .slot_4_ext_trig(1'b0),
        .slot_4_ext_trig_stop(1'b0),
        .slot_5_axi_aclk(1'b0),
        .slot_5_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_5_axi_arburst({1'b0,1'b0}),
        .slot_5_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_5_axi_aresetn(1'b0),
        .slot_5_axi_arid(1'b0),
        .slot_5_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_5_axi_arlock(1'b0),
        .slot_5_axi_arprot({1'b0,1'b0,1'b0}),
        .slot_5_axi_arready(1'b0),
        .slot_5_axi_arsize({1'b0,1'b0,1'b0}),
        .slot_5_axi_arvalid(1'b0),
        .slot_5_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_5_axi_awburst({1'b0,1'b0}),
        .slot_5_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_5_axi_awid(1'b0),
        .slot_5_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_5_axi_awlock(1'b0),
        .slot_5_axi_awprot({1'b0,1'b0,1'b0}),
        .slot_5_axi_awready(1'b0),
        .slot_5_axi_awsize({1'b0,1'b0,1'b0}),
        .slot_5_axi_awvalid(1'b0),
        .slot_5_axi_bid(1'b0),
        .slot_5_axi_bready(1'b0),
        .slot_5_axi_bresp({1'b0,1'b0}),
        .slot_5_axi_bvalid(1'b0),
        .slot_5_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_5_axi_rid(1'b0),
        .slot_5_axi_rlast(1'b0),
        .slot_5_axi_rready(1'b0),
        .slot_5_axi_rresp({1'b0,1'b0}),
        .slot_5_axi_rvalid(1'b0),
        .slot_5_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_5_axi_wlast(1'b0),
        .slot_5_axi_wready(1'b0),
        .slot_5_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .slot_5_axi_wvalid(1'b0),
        .slot_5_axis_aclk(1'b0),
        .slot_5_axis_aresetn(1'b1),
        .slot_5_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_5_axis_tdest(1'b0),
        .slot_5_axis_tid(1'b0),
        .slot_5_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .slot_5_axis_tlast(1'b0),
        .slot_5_axis_tready(1'b0),
        .slot_5_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .slot_5_axis_tuser(1'b0),
        .slot_5_axis_tvalid(1'b0),
        .slot_5_ext_trig(1'b0),
        .slot_5_ext_trig_stop(1'b0),
        .slot_6_axi_aclk(1'b0),
        .slot_6_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_6_axi_arburst({1'b0,1'b0}),
        .slot_6_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_6_axi_aresetn(1'b1),
        .slot_6_axi_arid(1'b0),
        .slot_6_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_6_axi_arlock(1'b0),
        .slot_6_axi_arprot({1'b0,1'b0,1'b0}),
        .slot_6_axi_arready(1'b0),
        .slot_6_axi_arsize({1'b0,1'b0,1'b0}),
        .slot_6_axi_arvalid(1'b0),
        .slot_6_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_6_axi_awburst({1'b0,1'b0}),
        .slot_6_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_6_axi_awid(1'b0),
        .slot_6_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_6_axi_awlock(1'b0),
        .slot_6_axi_awprot({1'b0,1'b0,1'b0}),
        .slot_6_axi_awready(1'b0),
        .slot_6_axi_awsize({1'b0,1'b0,1'b0}),
        .slot_6_axi_awvalid(1'b0),
        .slot_6_axi_bid(1'b0),
        .slot_6_axi_bready(1'b0),
        .slot_6_axi_bresp({1'b0,1'b0}),
        .slot_6_axi_bvalid(1'b0),
        .slot_6_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_6_axi_rid(1'b0),
        .slot_6_axi_rlast(1'b0),
        .slot_6_axi_rready(1'b0),
        .slot_6_axi_rresp({1'b0,1'b0}),
        .slot_6_axi_rvalid(1'b0),
        .slot_6_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_6_axi_wlast(1'b0),
        .slot_6_axi_wready(1'b0),
        .slot_6_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .slot_6_axi_wvalid(1'b0),
        .slot_6_axis_aclk(1'b0),
        .slot_6_axis_aresetn(1'b1),
        .slot_6_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_6_axis_tdest(1'b0),
        .slot_6_axis_tid(1'b0),
        .slot_6_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .slot_6_axis_tlast(1'b0),
        .slot_6_axis_tready(1'b0),
        .slot_6_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .slot_6_axis_tuser(1'b0),
        .slot_6_axis_tvalid(1'b0),
        .slot_6_ext_trig(1'b0),
        .slot_6_ext_trig_stop(1'b0),
        .slot_7_axi_aclk(1'b0),
        .slot_7_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_7_axi_arburst({1'b0,1'b0}),
        .slot_7_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_7_axi_aresetn(1'b1),
        .slot_7_axi_arid(1'b0),
        .slot_7_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_7_axi_arlock(1'b0),
        .slot_7_axi_arprot({1'b0,1'b0,1'b0}),
        .slot_7_axi_arready(1'b0),
        .slot_7_axi_arsize({1'b0,1'b0,1'b0}),
        .slot_7_axi_arvalid(1'b0),
        .slot_7_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_7_axi_awburst({1'b0,1'b0}),
        .slot_7_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .slot_7_axi_awid(1'b0),
        .slot_7_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_7_axi_awlock(1'b0),
        .slot_7_axi_awprot({1'b0,1'b0,1'b0}),
        .slot_7_axi_awready(1'b0),
        .slot_7_axi_awsize({1'b0,1'b0,1'b0}),
        .slot_7_axi_awvalid(1'b0),
        .slot_7_axi_bid(1'b0),
        .slot_7_axi_bready(1'b0),
        .slot_7_axi_bresp({1'b0,1'b0}),
        .slot_7_axi_bvalid(1'b0),
        .slot_7_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_7_axi_rid(1'b0),
        .slot_7_axi_rlast(1'b0),
        .slot_7_axi_rready(1'b0),
        .slot_7_axi_rresp({1'b0,1'b0}),
        .slot_7_axi_rvalid(1'b0),
        .slot_7_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_7_axi_wlast(1'b0),
        .slot_7_axi_wready(1'b0),
        .slot_7_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .slot_7_axi_wvalid(1'b0),
        .slot_7_axis_aclk(1'b0),
        .slot_7_axis_aresetn(1'b1),
        .slot_7_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .slot_7_axis_tdest(1'b0),
        .slot_7_axis_tid(1'b0),
        .slot_7_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .slot_7_axis_tlast(1'b0),
        .slot_7_axis_tready(1'b0),
        .slot_7_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .slot_7_axis_tuser(1'b0),
        .slot_7_axis_tvalid(1'b0),
        .slot_7_ext_trig(1'b0),
        .slot_7_ext_trig_stop(1'b0),
        .trigger_in(1'b0),
        .trigger_in_ack(NLW_inst_trigger_in_ack_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
   (\count_value_i_reg[1]_0 ,
    S,
    DI,
    rd_en,
    Q,
    ram_empty_i,
    \count_value_i_reg[1]_1 ,
    \count_value_i_reg[1]_2 ,
    SR,
    rd_clk);
  output [0:0]\count_value_i_reg[1]_0 ;
  output [1:0]S;
  output [0:0]DI;
  input rd_en;
  input [1:0]Q;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[1]_1 ;
  input [1:0]\count_value_i_reg[1]_2 ;
  input [0:0]SR;
  input rd_clk;

  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire [0:0]count_value_i;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_3_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [1:0]\count_value_i_reg[1]_1 ;
  wire [1:0]\count_value_i_reg[1]_2 ;
  wire \gen_fwft.count_en ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT5 #(
    .INIT(32'h77C88837)) 
    \count_value_i[0]_i_1 
       (.I0(rd_en),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(ram_empty_i),
        .I4(count_value_i),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC01F)) 
    \count_value_i[1]_i_2 
       (.I0(Q[1]),
        .I1(rd_en),
        .I2(Q[0]),
        .I3(ram_empty_i),
        .O(\gen_fwft.count_en ));
  LUT6 #(
    .INIT(64'hBBDDFDDD44220222)) 
    \count_value_i[1]_i_3 
       (.I0(count_value_i),
        .I1(ram_empty_i),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(rd_en),
        .I5(\count_value_i_reg[1]_0 ),
        .O(\count_value_i[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(count_value_i),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[1]_i_3_n_0 ),
        .Q(\count_value_i_reg[1]_0 ),
        .R(SR));
  LUT4 #(
    .INIT(16'h9669)) 
    \gwdc.wr_data_count_i[5]_i_10 
       (.I0(DI),
        .I1(\count_value_i_reg[1]_1 [1]),
        .I2(\count_value_i_reg[1]_2 [1]),
        .I3(\count_value_i_reg[1]_0 ),
        .O(S[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gwdc.wr_data_count_i[5]_i_11 
       (.I0(count_value_i),
        .I1(\count_value_i_reg[1]_2 [0]),
        .I2(\count_value_i_reg[1]_1 [0]),
        .O(S[0]));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gwdc.wr_data_count_i[5]_i_5 
       (.I0(count_value_i),
        .I1(\count_value_i_reg[1]_2 [0]),
        .O(DI));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (Q,
    \count_value_i_reg[4]_0 ,
    D,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ,
    E,
    S,
    ram_full_i0,
    ram_empty_i0,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_reg ,
    \grdc.rd_data_count_i_reg[5] ,
    \count_value_i_reg[4]_1 ,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    \gen_fwft.empty_fwft_i_reg ,
    ram_wr_en_pf,
    \gen_fwft.empty_fwft_i_reg_0 ,
    \gen_fwft.curr_fwft_state_reg[1] ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[4]_2 ,
    wr_en,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[3]_0 ,
    \count_value_i_reg[1]_0 ,
    \gen_fwft.empty_fwft_i_reg_1 ,
    \gen_rst_cc.fifo_wr_rst_i_reg ,
    rd_clk);
  output [5:0]Q;
  output \count_value_i_reg[4]_0 ;
  output [3:0]D;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ;
  output [0:0]E;
  output [0:0]S;
  output ram_full_i0;
  output ram_empty_i0;
  output \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_reg ;
  output [2:0]\grdc.rd_data_count_i_reg[5] ;
  input [4:0]\count_value_i_reg[4]_1 ;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input \gen_fwft.empty_fwft_i_reg ;
  input ram_wr_en_pf;
  input \gen_fwft.empty_fwft_i_reg_0 ;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input rd_en;
  input ram_empty_i;
  input [4:0]\count_value_i_reg[4]_2 ;
  input wr_en;
  input \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  input \count_value_i_reg[3]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input \gen_fwft.empty_fwft_i_reg_1 ;
  input \gen_rst_cc.fifo_wr_rst_i_reg ;
  input rd_clk;

  wire [3:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[5]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[3]_0 ;
  wire \count_value_i_reg[4]_0 ;
  wire [4:0]\count_value_i_reg[4]_1 ;
  wire [4:0]\count_value_i_reg[4]_2 ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_fwft.empty_fwft_i_reg_0 ;
  wire \gen_fwft.empty_fwft_i_reg_1 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_reg ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ;
  wire \gen_rst_cc.fifo_wr_rst_i_reg ;
  wire [2:0]\grdc.rd_data_count_i_reg[5] ;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_full_i0;
  wire ram_wr_en_pf;
  wire rd_clk;
  wire rd_en;
  wire wr_en;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5595)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(rd_en),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6555AAAA)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[1]),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I4(Q[0]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[4]_0 ),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\count_value_i_reg[4]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\count_value_i_reg[4]_0 ),
        .I5(Q[2]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value_i[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(\count_value_i[5]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4555000000000000)) 
    \count_value_i[5]_i_2 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\count_value_i[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC0E0CCEC)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_1 
       (.I0(wr_en),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .I2(\count_value_i_reg[4]_0 ),
        .I3(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ),
        .O(ram_full_i0));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .O(\count_value_i_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I1(Q[2]),
        .I2(\count_value_i_reg[4]_2 [2]),
        .I3(Q[0]),
        .I4(\count_value_i_reg[4]_2 [0]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4 
       (.I0(\count_value_i_reg[4]_1 [4]),
        .I1(Q[4]),
        .I2(\count_value_i_reg[4]_1 [1]),
        .I3(Q[1]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[4]_2 [4]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[4]_2 [1]),
        .I4(Q[3]),
        .I5(\count_value_i_reg[4]_2 [3]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[4]_1 [3]),
        .I2(\count_value_i_reg[4]_1 [0]),
        .I3(Q[0]),
        .I4(\count_value_i_reg[4]_1 [2]),
        .I5(Q[2]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0ACF0AFF)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_i_1 
       (.I0(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ),
        .I2(\count_value_i_reg[4]_0 ),
        .I3(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .I4(wr_en),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_reg ));
  LUT5 #(
    .INIT(32'hFCFC44FC)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[3]_0 ),
        .I3(wr_en),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .O(ram_empty_i0));
  LUT5 #(
    .INIT(32'h66666669)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[0]_i_1 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[4]_1 [0]),
        .I2(\gen_fwft.empty_fwft_i_reg_1 ),
        .I3(\count_value_i_reg[4]_0 ),
        .I4(ram_wr_en_pf),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h69669969)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[1]_i_1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[4]_1 [1]),
        .I2(\count_value_i_reg[4]_1 [0]),
        .I3(Q[0]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h66969699)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[2]_i_1 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[4]_1 [2]),
        .I2(Q[1]),
        .I3(\count_value_i_reg[4]_1 [1]),
        .I4(\gen_fwft.empty_fwft_i_reg ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h66969699)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[4]_1 [3]),
        .I2(Q[2]),
        .I3(\count_value_i_reg[4]_1 [2]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hEF0E0000FFFFEF0E)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[4]_i_3 
       (.I0(ram_wr_en_pf),
        .I1(\gen_fwft.empty_fwft_i_reg_0 ),
        .I2(Q[0]),
        .I3(\count_value_i_reg[4]_1 [0]),
        .I4(\count_value_i_reg[4]_1 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_3 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[4]_2 [4]),
        .O(S));
  LUT4 #(
    .INIT(16'h00F7)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(E));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[5]_i_7 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[4]_1 [3]),
        .I2(Q[4]),
        .I3(\count_value_i_reg[4]_1 [4]),
        .O(\grdc.rd_data_count_i_reg[5] [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[5]_i_8 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[4]_1 [2]),
        .I2(Q[3]),
        .I3(\count_value_i_reg[4]_1 [3]),
        .O(\grdc.rd_data_count_i_reg[5] [1]));
  LUT5 #(
    .INIT(32'h4DB2B24D)) 
    \gwdc.wr_data_count_i[5]_i_9 
       (.I0(\count_value_i_reg[1]_0 ),
        .I1(Q[1]),
        .I2(\count_value_i_reg[4]_1 [1]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[4]_1 [2]),
        .O(\grdc.rd_data_count_i_reg[5] [0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_6
   (Q,
    D,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4] ,
    \count_value_i_reg[5]_0 ,
    DI,
    S,
    \count_value_i_reg[0]_0 ,
    \gen_rst_cc.fifo_wr_rst_i_reg ,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ,
    wr_en,
    ram_wr_en_pf,
    wr_clk);
  output [4:0]Q;
  output [4:0]D;
  output [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4] ;
  input [3:0]\count_value_i_reg[5]_0 ;
  input [0:0]DI;
  input [4:0]S;
  input \count_value_i_reg[0]_0 ;
  input \gen_rst_cc.fifo_wr_rst_i_reg ;
  input \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input ram_wr_en_pf;
  input wr_clk;

  wire [4:0]D;
  wire [0:0]DI;
  wire [4:0]Q;
  wire [4:0]S;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_2__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [3:0]\count_value_i_reg[5]_0 ;
  wire \count_value_i_reg_n_0_[5] ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[4]_i_2_n_0 ;
  wire [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4] ;
  wire \gen_rst_cc.fifo_wr_rst_i_reg ;
  wire \gwdc.wr_data_count_i[5]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[5]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[5]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[5]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i_reg[5]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[5]_i_1_n_5 ;
  wire \gwdc.wr_data_count_i_reg[5]_i_1_n_6 ;
  wire \gwdc.wr_data_count_i_reg[5]_i_1_n_7 ;
  wire ram_wr_en_pf;
  wire wr_clk;
  wire wr_en;
  wire [7:3]\NLW_gwdc.wr_data_count_i_reg[5]_i_1_CO_UNCONNECTED ;
  wire [7:6]\NLW_gwdc.wr_data_count_i_reg[5]_i_1_DI_UNCONNECTED ;
  wire [7:0]\NLW_gwdc.wr_data_count_i_reg[5]_i_1_O_UNCONNECTED ;
  wire [7:6]\NLW_gwdc.wr_data_count_i_reg[5]_i_1_S_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count_value_i[5]_i_1__0 
       (.I0(\count_value_i_reg_n_0_[5] ),
        .I1(\count_value_i[5]_i_2__0_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \count_value_i[5]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\gen_rst_cc.fifo_wr_rst_i_reg ),
        .I3(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .I4(wr_en),
        .I5(Q[2]),
        .O(\count_value_i[5]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[5] ),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  LUT6 #(
    .INIT(64'hA6A665A665A66565)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[4]_i_1 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[4]_i_2_n_0 ),
        .I1(\count_value_i_reg[5]_0 [1]),
        .I2(Q[3]),
        .I3(\count_value_i_reg[5]_0 [0]),
        .I4(Q[2]),
        .I5(\count_value_i_reg[0]_0 ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[4]_i_2 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[5]_0 [2]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[5]_i_2 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[5]_0 [1]),
        .O(\gwdc.wr_data_count_i[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[5]_i_3 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[5]_0 [0]),
        .O(\gwdc.wr_data_count_i[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gwdc.wr_data_count_i[5]_i_4 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[5]_0 [0]),
        .O(\gwdc.wr_data_count_i[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hD22D)) 
    \gwdc.wr_data_count_i[5]_i_6 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[5]_0 [2]),
        .I2(\count_value_i_reg[5]_0 [3]),
        .I3(\count_value_i_reg_n_0_[5] ),
        .O(\gwdc.wr_data_count_i[5]_i_6_n_0 ));
  CARRY8 \gwdc.wr_data_count_i_reg[5]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_gwdc.wr_data_count_i_reg[5]_i_1_CO_UNCONNECTED [7:5],\gwdc.wr_data_count_i_reg[5]_i_1_n_3 ,\NLW_gwdc.wr_data_count_i_reg[5]_i_1_CO_UNCONNECTED [3],\gwdc.wr_data_count_i_reg[5]_i_1_n_5 ,\gwdc.wr_data_count_i_reg[5]_i_1_n_6 ,\gwdc.wr_data_count_i_reg[5]_i_1_n_7 }),
        .DI({\NLW_gwdc.wr_data_count_i_reg[5]_i_1_DI_UNCONNECTED [7:6],1'b0,\gwdc.wr_data_count_i[5]_i_2_n_0 ,\gwdc.wr_data_count_i[5]_i_3_n_0 ,\gwdc.wr_data_count_i[5]_i_4_n_0 ,DI,Q[0]}),
        .O({\NLW_gwdc.wr_data_count_i_reg[5]_i_1_O_UNCONNECTED [7:6],D,\NLW_gwdc.wr_data_count_i_reg[5]_i_1_O_UNCONNECTED [0]}),
        .S({\NLW_gwdc.wr_data_count_i_reg[5]_i_1_S_UNCONNECTED [7:6],\gwdc.wr_data_count_i[5]_i_6_n_0 ,S}));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
   (\gen_pntr_flags_cc.ram_empty_i_reg ,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    Q,
    rd_en,
    \gen_fwft.curr_fwft_state_reg[1] ,
    \gen_rst_cc.fifo_wr_rst_i_reg ,
    E,
    rd_clk);
  output \gen_pntr_flags_cc.ram_empty_i_reg ;
  input \gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input [4:0]Q;
  input rd_en;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input \gen_rst_cc.fifo_wr_rst_i_reg ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [4:0]Q;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i_reg_n_0_[0] ;
  wire \count_value_i_reg_n_0_[1] ;
  wire \count_value_i_reg_n_0_[2] ;
  wire \count_value_i_reg_n_0_[3] ;
  wire \count_value_i_reg_n_0_[4] ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire \gen_rst_cc.fifo_wr_rst_i_reg ;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h5595)) 
    \count_value_i[0]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(rd_en),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h6555AAAA)) 
    \count_value_i[1]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I4(\count_value_i_reg_n_0_[0] ),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \count_value_i[2]_i_1 
       (.I0(\count_value_i_reg_n_0_[2] ),
        .I1(\count_value_i_reg_n_0_[0] ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 ),
        .I3(\count_value_i_reg_n_0_[1] ),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \count_value_i[3]_i_1 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 ),
        .I3(\count_value_i_reg_n_0_[0] ),
        .I4(\count_value_i_reg_n_0_[2] ),
        .O(\count_value_i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \count_value_i[4]_i_1 
       (.I0(\count_value_i_reg_n_0_[4] ),
        .I1(\count_value_i_reg_n_0_[2] ),
        .I2(\count_value_i_reg_n_0_[0] ),
        .I3(\gen_pntr_flags_cc.ram_empty_i_reg_0 ),
        .I4(\count_value_i_reg_n_0_[1] ),
        .I5(\count_value_i_reg_n_0_[3] ),
        .O(\count_value_i[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[0] ),
        .S(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[1] ),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[2] ),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[3] ),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[4] ),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[3]),
        .I1(\count_value_i_reg_n_0_[3] ),
        .I2(Q[4]),
        .I3(\count_value_i_reg_n_0_[4] ),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I5(\gen_pntr_flags_cc.ram_empty_i_reg_0 ),
        .O(\gen_pntr_flags_cc.ram_empty_i_reg ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(\count_value_i_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\count_value_i_reg_n_0_[0] ),
        .I4(Q[2]),
        .I5(\count_value_i_reg_n_0_[2] ),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_7
   (Q,
    D,
    \gen_fwft.curr_fwft_state_reg[1] ,
    S,
    \count_value_i_reg[3]_0 ,
    \gen_rst_cc.fifo_wr_rst_i_reg ,
    ram_wr_en_pf,
    wr_clk);
  output [4:0]Q;
  output [4:0]D;
  input \gen_fwft.curr_fwft_state_reg[1] ;
  input [0:0]S;
  input [3:0]\count_value_i_reg[3]_0 ;
  input \gen_rst_cc.fifo_wr_rst_i_reg ;
  input ram_wr_en_pf;
  input wr_clk;

  wire [4:0]D;
  wire [4:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire [3:0]\count_value_i_reg[3]_0 ;
  wire \gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_5_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_6_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_7_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_n_5 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_n_6 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_n_7 ;
  wire \gen_rst_cc.fifo_wr_rst_i_reg ;
  wire ram_wr_en_pf;
  wire wr_clk;
  wire [7:3]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_DI_UNCONNECTED ;
  wire [7:5]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_O_UNCONNECTED ;
  wire [7:5]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_S_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .S(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_4 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[3]_0 [3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_5 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[3]_0 [2]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_6 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[3]_0 [1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_7 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[3]_0 [0]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_7_n_0 ));
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1 
       (.CI(\gen_fwft.curr_fwft_state_reg[1] ),
        .CI_TOP(1'b0),
        .CO({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_CO_UNCONNECTED [7:3],\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_n_5 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_n_6 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_n_7 }),
        .DI({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_DI_UNCONNECTED [7:5],1'b0,Q[3:0]}),
        .O({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_O_UNCONNECTED [7:5],D}),
        .S({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]_i_1_S_UNCONNECTED [7:5],S,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_4_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_5_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_6_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_7_n_0 }));
endmodule

(* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
(* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) (* EN_DVLD = "1'b0" *) 
(* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) (* EN_PF = "1'b1" *) 
(* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) (* EN_WACK = "1'b0" *) 
(* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "2" *) 
(* FIFO_MEM_TYPE = "2" *) (* FIFO_READ_DEPTH = "32" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_SIZE = "1792" *) (* FIFO_WRITE_DEPTH = "32" *) (* FULL_RESET_VALUE = "0" *) 
(* FULL_RST_VAL = "1'b0" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "27" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "27" *) 
(* PF_THRESH_MIN = "7" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "5" *) (* RD_DC_WIDTH_EXT = "6" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "5" *) (* READ_DATA_WIDTH = "56" *) 
(* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "56" *) (* WR_DATA_COUNT_WIDTH = "5" *) 
(* WR_DC_WIDTH_EXT = "6" *) (* WR_PNTR_WIDTH = "5" *) (* WR_RD_RATIO = "0" *) 
(* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [55:0]din;
  output full;
  output full_n;
  output prog_full;
  output [4:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [55:0]dout;
  output empty;
  output prog_empty;
  output [4:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [1:1]count_value_i;
  wire [3:1]diff_pntr_pe;
  wire [5:1]diff_pntr_pf_q;
  wire [5:1]diff_pntr_pf_q0;
  wire [55:0]din;
  wire [55:0]dout;
  wire empty;
  wire full;
  wire full_n;
  wire \gen_fwft.count_rst ;
  wire [1:0]\gen_fwft.curr_fwft_state ;
  wire \gen_fwft.curr_fwft_state[0]_i_1_n_0 ;
  wire \gen_fwft.curr_fwft_state[1]_i_1_n_0 ;
  wire \gen_fwft.empty_fwft_i_reg0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[4]_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2_n_0 ;
  wire \gen_sdpram.xpm_memory_base_inst_i_3_n_0 ;
  wire [5:1]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire overflow;
  wire overflow_i0;
  wire prog_empty;
  wire prog_full;
  wire prog_full_i215_in;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_full_i0;
  wire ram_rd_en_pf;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf;
  wire ram_wr_en_pf_q;
  wire rd_clk;
  wire [4:0]rd_data_count;
  wire rd_en;
  wire [4:0]rd_pntr_ext;
  wire rd_rst_busy;
  wire rdp_inst_n_0;
  wire rdp_inst_n_10;
  wire rdp_inst_n_11;
  wire rdp_inst_n_13;
  wire rdp_inst_n_16;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_6;
  wire rdpp1_inst_n_0;
  wire read_only;
  wire read_only_q;
  wire rst;
  wire rst_d1_inst_n_0;
  wire sleep;
  wire underflow;
  wire underflow_i0;
  wire wr_clk;
  wire [4:0]wr_data_count;
  wire wr_en;
  wire [4:0]wr_pntr_ext;
  wire write_only_q;
  wire wrp_inst_n_10;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire xpm_fifo_rst_inst_n_1;
  wire xpm_fifo_rst_inst_n_10;
  wire xpm_fifo_rst_inst_n_11;
  wire xpm_fifo_rst_inst_n_4;
  wire xpm_fifo_rst_inst_n_6;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [55:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_rst_busy = rd_rst_busy;
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'hAE)) 
    \gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(\gen_fwft.curr_fwft_state [1]),
        .I1(\gen_fwft.curr_fwft_state [0]),
        .I2(rd_en),
        .O(\gen_fwft.curr_fwft_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    \gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(\gen_fwft.curr_fwft_state [0]),
        .I2(\gen_fwft.curr_fwft_state [1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.curr_fwft_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.curr_fwft_state[0]_i_1_n_0 ),
        .Q(\gen_fwft.curr_fwft_state [0]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.curr_fwft_state[1]_i_1_n_0 ),
        .Q(\gen_fwft.curr_fwft_state [1]),
        .R(rd_rst_busy));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF320)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(\gen_fwft.curr_fwft_state [1]),
        .I2(\gen_fwft.curr_fwft_state [0]),
        .I3(empty),
        .O(\gen_fwft.empty_fwft_i_reg0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.empty_fwft_i_reg0 ),
        .Q(empty),
        .S(rd_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_3 ),
        .Q(\gen_fwft.curr_fwft_state ),
        .S({\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\count_value_i_reg[1]_1 (wr_pntr_ext[1:0]),
        .\count_value_i_reg[1]_2 (rd_pntr_ext[1:0]),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(full),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_16),
        .Q(full_n),
        .R(rd_rst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFAAEA)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[4]_i_4 
       (.I0(empty),
        .I1(\gen_fwft.curr_fwft_state [1]),
        .I2(\gen_fwft.curr_fwft_state [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[4]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_10),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wrp_inst_n_10),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ),
        .R(rd_rst_busy));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_6),
        .Q(prog_empty),
        .R(1'b0));
  FDRE \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(read_only),
        .Q(read_only_q),
        .R(rd_rst_busy));
  FDRE \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_11),
        .Q(write_only_q),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[1]),
        .Q(diff_pntr_pf_q[1]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(rd_rst_busy));
  LUT5 #(
    .INIT(32'h00000010)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3 
       (.I0(diff_pntr_pf_q[5]),
        .I1(diff_pntr_pf_q[3]),
        .I2(diff_pntr_pf_q[4]),
        .I3(diff_pntr_pf_q[1]),
        .I4(diff_pntr_pf_q[2]),
        .O(prog_full_i215_in));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_0),
        .Q(prog_full),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_rd_en_pf),
        .Q(ram_rd_en_pf_q),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_wr_en_pf),
        .Q(ram_wr_en_pf_q),
        .R(rd_rst_busy));
  (* ADDR_WIDTH_A = "5" *) 
  (* ADDR_WIDTH_B = "5" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "56" *) 
  (* BYTE_WRITE_WIDTH_B = "56" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "55" *) 
  (* \MEM.ADDRESS_SPACE_END  = "511" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "56" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "1792" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "32" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "56" *) 
  (* P_MIN_WIDTH_DATA_A = "56" *) 
  (* P_MIN_WIDTH_DATA_B = "56" *) 
  (* P_MIN_WIDTH_DATA_ECC = "56" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "56" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "no" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "5" *) 
  (* P_WIDTH_ADDR_READ_B = "5" *) 
  (* P_WIDTH_ADDR_WRITE_A = "5" *) 
  (* P_WIDTH_ADDR_WRITE_B = "5" *) 
  (* P_WIDTH_COL_WRITE_A = "56" *) 
  (* P_WIDTH_COL_WRITE_B = "56" *) 
  (* READ_DATA_WIDTH_A = "56" *) 
  (* READ_DATA_WIDTH_B = "56" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "56" *) 
  (* WRITE_DATA_WIDTH_B = "56" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [55:0]),
        .doutb(dout),
        .ena(ram_wr_en_pf),
        .enb(ram_rd_en_pf),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_sdpram.xpm_memory_base_inst_i_3_n_0 ),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(\gen_fwft.curr_fwft_state [0]),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state [1]),
        .O(\gen_sdpram.xpm_memory_base_inst_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(wr_data_count[0]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(wr_data_count[1]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(wr_data_count[2]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(wr_data_count[3]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(wr_data_count[4]),
        .R(rd_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 rdp_inst
       (.D({diff_pntr_pe,rdp_inst_n_10}),
        .E(ram_rd_en_pf),
        .Q({rdp_inst_n_0,rd_pntr_ext}),
        .S(rdp_inst_n_13),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\count_value_i_reg[3]_0 (rdpp1_inst_n_0),
        .\count_value_i_reg[4]_0 (rdp_inst_n_6),
        .\count_value_i_reg[4]_1 (wr_pntr_ext),
        .\count_value_i_reg[4]_2 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4}),
        .\gen_fwft.curr_fwft_state_reg[1] (\gen_fwft.curr_fwft_state ),
        .\gen_fwft.empty_fwft_i_reg (xpm_fifo_rst_inst_n_1),
        .\gen_fwft.empty_fwft_i_reg_0 (\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[4]_i_4_n_0 ),
        .\gen_fwft.empty_fwft_i_reg_1 (empty),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg (full),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_reg (rdp_inst_n_16),
        .\gen_pntr_flags_cc.ram_empty_i_reg (xpm_fifo_rst_inst_n_4),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] (rdp_inst_n_11),
        .\gen_rst_cc.fifo_wr_rst_i_reg (rd_rst_busy),
        .\grdc.rd_data_count_i_reg[5] ({rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19}),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_full_i0(ram_full_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 rdpp1_inst
       (.E(ram_rd_en_pf),
        .Q(wr_pntr_ext),
        .\gen_fwft.curr_fwft_state_reg[1] (\gen_fwft.curr_fwft_state ),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_0),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 (rdp_inst_n_6),
        .\gen_rst_cc.fifo_wr_rst_i_reg (rd_rst_busy),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg (rst_d1_inst_n_0),
        .\gen_rst_cc.fifo_wr_rst_i_reg (rd_rst_busy),
        .prog_full(prog_full),
        .prog_full_i215_in(prog_full_i215_in),
        .ram_rd_en_pf_q(ram_rd_en_pf_q),
        .ram_wr_en_pf_q(ram_wr_en_pf_q),
        .rst(rst),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_6 wrp_inst
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI(\gen_fwft.rdpp1_inst_n_3 ),
        .Q(wr_pntr_ext),
        .S({rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19,\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .\count_value_i_reg[0]_0 (rdp_inst_n_11),
        .\count_value_i_reg[5]_0 ({rdp_inst_n_0,rd_pntr_ext[4:2]}),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg (full),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4] (wrp_inst_n_10),
        .\gen_rst_cc.fifo_wr_rst_i_reg (rd_rst_busy),
        .ram_wr_en_pf(ram_wr_en_pf),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_7 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4}),
        .S(rdp_inst_n_13),
        .\count_value_i_reg[3]_0 (rd_pntr_ext[3:0]),
        .\gen_fwft.curr_fwft_state_reg[1] (xpm_fifo_rst_inst_n_10),
        .\gen_rst_cc.fifo_wr_rst_i_reg (rd_rst_busy),
        .ram_wr_en_pf(ram_wr_en_pf),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(rd_pntr_ext[0]),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[0] (wr_pntr_ext[0]),
        .\count_value_i_reg[1] (rd_rst_busy),
        .\gen_fwft.curr_fwft_state_reg[1] (\gen_fwft.curr_fwft_state ),
        .\gen_fwft.empty_fwft_i_reg (empty),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg (full),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_6),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1] (xpm_fifo_rst_inst_n_4),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2] (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] (\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg (xpm_fifo_rst_inst_n_6),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg (xpm_fifo_rst_inst_n_11),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] (xpm_fifo_rst_inst_n_10),
        .\grdc.rd_data_count_i_reg[1] (\grdc.rd_data_count_i0 ),
        .overflow_i0(overflow_i0),
        .prog_empty(prog_empty),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .read_only(read_only),
        .read_only_q(read_only_q),
        .rst(rst),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .write_only_q(write_only_q));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
   (\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ,
    \gen_rst_cc.fifo_wr_rst_i_reg ,
    wr_clk,
    ram_rd_en_pf_q,
    prog_full_i215_in,
    ram_wr_en_pf_q,
    prog_full,
    rst);
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  input \gen_rst_cc.fifo_wr_rst_i_reg ;
  input wr_clk;
  input ram_rd_en_pf_q;
  input prog_full_i215_in;
  input ram_wr_en_pf_q;
  input prog_full;
  input rst;

  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  wire \gen_rst_cc.fifo_wr_rst_i_reg ;
  wire prog_full;
  wire prog_full_i215_in;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf_q;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_i_reg ),
        .Q(rst_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AA2A2000)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2_n_0 ),
        .I1(ram_rd_en_pf_q),
        .I2(prog_full_i215_in),
        .I3(ram_wr_en_pf_q),
        .I4(prog_full),
        .I5(\gen_rst_cc.fifo_wr_rst_i_reg ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (\count_value_i_reg[1] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2] ,
    ram_wr_en_pf,
    read_only,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1] ,
    overflow_i0,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ,
    SR,
    \grdc.rd_data_count_i_reg[1] ,
    underflow_i0,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ,
    wr_clk,
    rst,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    \gen_fwft.empty_fwft_i_reg ,
    Q,
    \count_value_i_reg[0] ,
    \gen_fwft.curr_fwft_state_reg[1] ,
    rd_en,
    ram_empty_i,
    wr_en,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ,
    read_only_q,
    prog_empty,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ,
    write_only_q);
  output \count_value_i_reg[1] ;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2] ;
  output ram_wr_en_pf;
  output read_only;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1] ;
  output overflow_i0;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ;
  output [0:0]SR;
  output [0:0]\grdc.rd_data_count_i_reg[1] ;
  output underflow_i0;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] ;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ;
  input wr_clk;
  input rst;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input \gen_fwft.empty_fwft_i_reg ;
  input [0:0]Q;
  input [0:0]\count_value_i_reg[0] ;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input rd_en;
  input ram_empty_i;
  input wr_en;
  input \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  input read_only_q;
  input prog_empty;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ;
  input write_only_q;

  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]\count_value_i_reg[0] ;
  wire \count_value_i_reg[1] ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] ;
  wire [0:0]\grdc.rd_data_count_i_reg[1] ;
  wire overflow_i0;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire prog_empty;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire read_only;
  wire read_only_q;
  wire rst;
  wire rst_i;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire write_only_q;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF1F0)) 
    \count_value_i[1]_i_1 
       (.I0(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(\count_value_i_reg[1] ),
        .I3(ram_empty_i),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEEEEE)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[1]_i_2 
       (.I0(ram_wr_en_pf),
        .I1(ram_empty_i),
        .I2(rd_en),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I4(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I5(\gen_fwft.empty_fwft_i_reg ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1] ));
  LUT5 #(
    .INIT(32'hFEFF00FE)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[2]_i_2 
       (.I0(ram_wr_en_pf),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I2(\gen_fwft.empty_fwft_i_reg ),
        .I3(Q),
        .I4(\count_value_i_reg[0] ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2] ));
  LUT5 #(
    .INIT(32'hFFFFCACE)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_1 
       (.I0(read_only_q),
        .I1(prog_empty),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ),
        .I3(write_only_q),
        .I4(\count_value_i_reg[1] ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ));
  LUT6 #(
    .INIT(64'h0000000000005515)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg ),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(ram_wr_en_pf),
        .O(read_only));
  LUT6 #(
    .INIT(64'hFFFFBAAA00000000)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I4(\gen_fwft.empty_fwft_i_reg ),
        .I5(ram_wr_en_pf),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ));
  LUT5 #(
    .INIT(32'hFF080000)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[5]_i_2 
       (.I0(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .I4(ram_wr_en_pf),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_i_i_1 
       (.I0(rst),
        .I1(p_0_in),
        .O(rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_i),
        .Q(\count_value_i_reg[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .I2(\count_value_i_reg[1] ),
        .O(ram_wr_en_pf));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \gof.overflow_i_i_1 
       (.I0(wr_en),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .I2(\count_value_i_reg[1] ),
        .O(overflow_i0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[5]_i_1 
       (.I0(\count_value_i_reg[1] ),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .O(\grdc.rd_data_count_i_reg[1] ));
  LUT3 #(
    .INIT(8'hA8)) 
    \guf.underflow_i_i_1 
       (.I0(rd_en),
        .I1(\gen_fwft.empty_fwft_i_reg ),
        .I2(\count_value_i_reg[1] ),
        .O(underflow_i0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync
   (m_axis_tdata,
    empty,
    m_axis_tvalid_int_reg,
    \Fifo_Wr_Data_reg[1] ,
    \GEN_ISR_REG[1].ISR_reg[1] ,
    Streaming_Fifo_Full,
    Fifo_Wr_En1_out,
    D,
    rst,
    core_aclk,
    wr_en,
    din,
    fifo_empty_reg,
    m_axis_tready,
    m_axis_tvalid_int_reg_0,
    Mon_Wr_En,
    Event_Log_En_sync,
    core_aresetn,
    Streaming_Fifo_Full_D1,
    s_axi_aresetn,
    \buf_valid_reg[0] ,
    p_0_in8_in);
  output [55:0]m_axis_tdata;
  output empty;
  output m_axis_tvalid_int_reg;
  output \Fifo_Wr_Data_reg[1] ;
  output \GEN_ISR_REG[1].ISR_reg[1] ;
  output Streaming_Fifo_Full;
  output Fifo_Wr_En1_out;
  output [5:0]D;
  input rst;
  input core_aclk;
  input wr_en;
  input [23:0]din;
  input fifo_empty_reg;
  input m_axis_tready;
  input m_axis_tvalid_int_reg_0;
  input Mon_Wr_En;
  input Event_Log_En_sync;
  input core_aresetn;
  input Streaming_Fifo_Full_D1;
  input s_axi_aresetn;
  input \buf_valid_reg[0] ;
  input p_0_in8_in;

  wire [5:0]D;
  wire Event_Log_En_sync;
  wire \Fifo_Wr_Data_reg[1] ;
  wire Fifo_Wr_En1_out;
  wire \GEN_ISR_REG[1].ISR_reg[1] ;
  wire Mon_Wr_En;
  wire Streaming_Fifo_Full;
  wire Streaming_Fifo_Full_D1;
  wire almost_empty;
  wire \buf_valid_reg[0] ;
  wire core_aclk;
  wire core_aresetn;
  wire [23:0]din;
  wire empty;
  wire \eventlog_cur_cnt[5]_i_2_n_0 ;
  wire fifo_empty_reg;
  wire fifo_full;
  wire [55:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid_int_reg;
  wire m_axis_tvalid_int_reg_0;
  wire p_0_in8_in;
  wire [4:0]rd_data_count;
  wire rst;
  wire s_axi_aresetn;
  wire wr_en;
  wire wr_rst_busy;
  wire xpm_fifo_base_inst_i_2_n_0;
  wire xpm_fifo_base_inst_n_10;
  wire xpm_fifo_base_inst_n_11;
  wire xpm_fifo_base_inst_n_2;
  wire xpm_fifo_base_inst_n_3;
  wire xpm_fifo_base_inst_n_4;
  wire xpm_fifo_base_inst_n_5;
  wire xpm_fifo_base_inst_n_6;
  wire xpm_fifo_base_inst_n_69;
  wire xpm_fifo_base_inst_n_7;
  wire xpm_fifo_base_inst_n_75;
  wire xpm_fifo_base_inst_n_78;
  wire xpm_fifo_base_inst_n_79;
  wire xpm_fifo_base_inst_n_8;
  wire xpm_fifo_base_inst_n_80;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h5DFFFFFF)) 
    \Fifo_Wr_Data[27]_i_1 
       (.I0(Mon_Wr_En),
        .I1(fifo_full),
        .I2(wr_rst_busy),
        .I3(Event_Log_En_sync),
        .I4(core_aresetn),
        .O(\Fifo_Wr_Data_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    Fifo_Wr_En_i_1
       (.I0(Event_Log_En_sync),
        .I1(wr_rst_busy),
        .I2(fifo_full),
        .I3(Mon_Wr_En),
        .O(Fifo_Wr_En1_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \GEN_ISR_REG[1].ISR[1]_i_2 
       (.I0(Streaming_Fifo_Full_D1),
        .I1(s_axi_aresetn),
        .I2(fifo_full),
        .I3(wr_rst_busy),
        .O(\GEN_ISR_REG[1].ISR_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_TRACE_LOG.Streaming_Fifo_Full_D1_i_1 
       (.I0(fifo_full),
        .I1(wr_rst_busy),
        .O(Streaming_Fifo_Full));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \eventlog_cur_cnt[0]_i_1 
       (.I0(almost_empty),
        .I1(empty),
        .I2(\buf_valid_reg[0] ),
        .I3(p_0_in8_in),
        .I4(rd_data_count[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h559A66596659AA65)) 
    \eventlog_cur_cnt[1]_i_1 
       (.I0(rd_data_count[1]),
        .I1(rd_data_count[0]),
        .I2(almost_empty),
        .I3(empty),
        .I4(\buf_valid_reg[0] ),
        .I5(p_0_in8_in),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \eventlog_cur_cnt[2]_i_1 
       (.I0(rd_data_count[2]),
        .I1(\eventlog_cur_cnt[5]_i_2_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \eventlog_cur_cnt[3]_i_1 
       (.I0(rd_data_count[3]),
        .I1(\eventlog_cur_cnt[5]_i_2_n_0 ),
        .I2(rd_data_count[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \eventlog_cur_cnt[4]_i_1 
       (.I0(rd_data_count[4]),
        .I1(rd_data_count[2]),
        .I2(\eventlog_cur_cnt[5]_i_2_n_0 ),
        .I3(rd_data_count[3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \eventlog_cur_cnt[5]_i_1 
       (.I0(rd_data_count[4]),
        .I1(rd_data_count[2]),
        .I2(\eventlog_cur_cnt[5]_i_2_n_0 ),
        .I3(rd_data_count[3]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h445454DD54DDDDFD)) 
    \eventlog_cur_cnt[5]_i_2 
       (.I0(rd_data_count[1]),
        .I1(empty),
        .I2(almost_empty),
        .I3(rd_data_count[0]),
        .I4(\buf_valid_reg[0] ),
        .I5(p_0_in8_in),
        .O(\eventlog_cur_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h4FFF4444)) 
    m_axis_tvalid_int_i_2
       (.I0(empty),
        .I1(fifo_empty_reg),
        .I2(almost_empty),
        .I3(m_axis_tready),
        .I4(m_axis_tvalid_int_reg_0),
        .O(m_axis_tvalid_int_reg));
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "2" *) 
  (* FIFO_MEM_TYPE = "2" *) 
  (* FIFO_READ_DEPTH = "32" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "1792" *) 
  (* FIFO_WRITE_DEPTH = "32" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* FULL_RST_VAL = "1'b0" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "27" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "27" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* RD_DC_WIDTH_EXT = "6" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "5" *) 
  (* READ_DATA_WIDTH = "56" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "56" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* WR_DC_WIDTH_EXT = "6" *) 
  (* WR_PNTR_WIDTH = "5" *) 
  (* WR_RD_RATIO = "0" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(almost_empty),
        .almost_full(xpm_fifo_base_inst_n_10),
        .data_valid(xpm_fifo_base_inst_n_78),
        .dbiterr(xpm_fifo_base_inst_n_80),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[23:17],1'b0,1'b0,1'b0,din[16:0],1'b0}),
        .dout(m_axis_tdata),
        .empty(empty),
        .full(fifo_full),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(xpm_fifo_base_inst_n_8),
        .prog_empty(xpm_fifo_base_inst_n_69),
        .prog_full(xpm_fifo_base_inst_n_2),
        .rd_clk(core_aclk),
        .rd_data_count(rd_data_count),
        .rd_en(xpm_fifo_base_inst_i_2_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(xpm_fifo_base_inst_n_79),
        .sleep(1'b0),
        .underflow(xpm_fifo_base_inst_n_75),
        .wr_ack(xpm_fifo_base_inst_n_11),
        .wr_clk(core_aclk),
        .wr_data_count({xpm_fifo_base_inst_n_3,xpm_fifo_base_inst_n_4,xpm_fifo_base_inst_n_5,xpm_fifo_base_inst_n_6,xpm_fifo_base_inst_n_7}),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    xpm_fifo_base_inst_i_2
       (.I0(m_axis_tvalid_int_reg_0),
        .I1(m_axis_tready),
        .I2(empty),
        .O(xpm_fifo_base_inst_i_2_n_0));
endmodule

(* ADDR_WIDTH_A = "5" *) (* ADDR_WIDTH_B = "5" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "56" *) (* BYTE_WRITE_WIDTH_B = "56" *) (* CLOCKING_MODE = "0" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "2" *) 
(* MEMORY_SIZE = "1792" *) (* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) 
(* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) 
(* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "32" *) (* P_MEMORY_OPT = "yes" *) 
(* P_MEMORY_PRIMITIVE = "block" *) (* P_MIN_WIDTH_DATA = "56" *) (* P_MIN_WIDTH_DATA_A = "56" *) 
(* P_MIN_WIDTH_DATA_B = "56" *) (* P_MIN_WIDTH_DATA_ECC = "56" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) 
(* P_MIN_WIDTH_DATA_SHFT = "56" *) (* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "no" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
(* P_WIDTH_ADDR_READ_A = "5" *) (* P_WIDTH_ADDR_READ_B = "5" *) (* P_WIDTH_ADDR_WRITE_A = "5" *) 
(* P_WIDTH_ADDR_WRITE_B = "5" *) (* P_WIDTH_COL_WRITE_A = "56" *) (* P_WIDTH_COL_WRITE_B = "56" *) 
(* READ_DATA_WIDTH_A = "56" *) (* READ_DATA_WIDTH_B = "56" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "56" *) (* WRITE_DATA_WIDTH_B = "56" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [4:0]addra;
  input [55:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [55:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [4:0]addrb;
  input [55:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [55:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire [55:0]dina;
  wire [55:0]doutb;
  wire ena;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPB_UNCONNECTED ;
  wire [31:24]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d56" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "55" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d56" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "55" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "1792" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "511" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "55" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED ),
        .DINADIN(dina[31:0]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,dina[55:32]}),
        .DINPADINP({1'b1,1'b1,1'b1,1'b1}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(doutb[31:0]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTBDOUT_UNCONNECTED [31:24],doutb[55:32]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(enb),
        .ENBWREN(ena),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({ena,ena,ena,ena,ena,ena,ena,ena}));
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
