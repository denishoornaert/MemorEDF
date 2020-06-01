-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sat May  9 14:08:44 2020
-- Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_perf_mon_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_perf_mon_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_axi_interface is
  port (
    Bus2IP_RdCE : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    Global_Intr_En_reg : out STD_LOGIC;
    \IER_reg[1]\ : out STD_LOGIC;
    Samp_Metric_Cnt_Reg_Set_Rd_En : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    Control_Set_Wr_En : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Trace_ctrl_reg_reg[30]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    p_in_d1_cdc_from_reg0 : out STD_LOGIC;
    Control_Set_Rd_En : out STD_LOGIC;
    Intr_Reg_GIE_Rd_En : out STD_LOGIC;
    Intr_Reg_IER_Rd_En : out STD_LOGIC;
    Intr_Reg_ISR_Rd_En : out STD_LOGIC;
    Addr_3downto0_is_0x8 : out STD_LOGIC;
    Addr_3downto0_is_0x4 : out STD_LOGIC;
    Trace_Filter_Rd_En : out STD_LOGIC;
    Event_Log_Set_Rd_En : out STD_LOGIC;
    Status_Reg_WIF_Rd_En : out STD_LOGIC;
    Status_Reg_FOC_Rd_En : out STD_LOGIC;
    Status_Reg_Set_Rd_En : out STD_LOGIC;
    Intr_Reg_Set_Rd_En : out STD_LOGIC;
    Sample_Interval_Rd_En : out STD_LOGIC;
    Metric_Cnt_Reg_Set_Rd_En : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    IP2Bus_DataValid_reg : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Global_Intr_En : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    Intr_Reg_IER : in STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_TRACE_LOG.Streaming_Fifo_Full_D1_reg\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Intr_Reg_ISR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \out\ : in STD_LOGIC;
    IP2Bus_DataValid_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_axi_interface;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_axi_interface is
  signal Bus2IP_Addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^bus2ip_rdce\ : STD_LOGIC;
  signal Event_Log_En_i_2_n_0 : STD_LOGIC;
  signal Event_Log_En_i_3_n_0 : STD_LOGIC;
  signal Event_Log_En_i_4_n_0 : STD_LOGIC;
  signal \GEN_ISR_REG[1].ISR[1]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ISR_REG[1].ISR[1]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_PROFILE_MODE.SW_Data_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_PROFILE_MODE.SW_Data_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \IER[1]_i_2_n_0\ : STD_LOGIC;
  signal Lat_Control_Set_Rd_En_i_2_n_0 : STD_LOGIC;
  signal Lat_Intr_Reg_ISR_Rd_En_i_2_n_0 : STD_LOGIC;
  signal Lat_Metric_Cnt_Reg_Set_Rd_En_i_2_n_0 : STD_LOGIC;
  signal Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_2_n_0 : STD_LOGIC;
  signal Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_3_n_0 : STD_LOGIC;
  signal Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_4_n_0 : STD_LOGIC;
  signal Lat_Status_Reg_WIF_Rd_En_i_2_n_0 : STD_LOGIC;
  signal Lat_Status_Reg_WIF_Rd_En_i_3_n_0 : STD_LOGIC;
  signal Lat_Status_Reg_WIF_Rd_En_i_4_n_0 : STD_LOGIC;
  signal \Trace_ctrl_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal arready_i0 : STD_LOGIC;
  signal arready_i_i_1_n_0 : STD_LOGIC;
  signal awready_i_i_1_n_0 : STD_LOGIC;
  signal \bus2ip_addr_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[10]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[12]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[13]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[14]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[15]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[9]_i_1_n_0\ : STD_LOGIC;
  signal bvalid_i_2_n_0 : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal rd_in_progress : STD_LOGIC;
  signal rd_in_progress_i_1_n_0 : STD_LOGIC;
  signal \register_module_inst/Addr_15downto8_is_0x00__2\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_req_pend : STD_LOGIC;
  signal wr_req_pend_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal wr_req_pend_i_1_n_0 : STD_LOGIC;
  signal wr_req_pend_pulse : STD_LOGIC;
  signal write_req : STD_LOGIC;
  signal write_req_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Event_Log_En_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of Event_Log_En_i_3 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_PROFILE_MODE.SW_Data_reg[31]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \IER[1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of Lat_Addr_3downto0_is_0x4_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of Lat_Addr_3downto0_is_0x8_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of Lat_Event_Log_Set_Rd_En_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of Lat_Intr_Reg_Set_Rd_En_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_4 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of Lat_Sample_Interval_Rd_En_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of Lat_Sample_Interval_Rd_En_i_2 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of Lat_Status_Reg_FOC_Rd_En_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of Lat_Status_Reg_Set_Rd_En_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of Lat_Status_Reg_WIF_Rd_En_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of Lat_Status_Reg_WIF_Rd_En_i_2 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of Lat_Status_Reg_WIF_Rd_En_i_3 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of Lat_Status_Reg_WIF_Rd_En_i_4 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of Lat_Trace_Filter_Rd_En_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \Trace_ctrl_reg[30]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of awready_i_i_2 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of bvalid_i_2 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of p_in_d1_cdc_from_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of rd_in_progress_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of write_req_i_1 : label is "soft_lutpair38";
begin
  Bus2IP_RdCE <= \^bus2ip_rdce\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
Event_Log_En_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => Event_Log_En_i_2_n_0,
      I1 => Event_Log_En_i_3_n_0,
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => Event_Log_En_i_4_n_0,
      O => Control_Set_Wr_En
    );
Event_Log_En_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(7),
      I2 => sel0(5),
      I3 => sel0(4),
      I4 => sel0(3),
      O => Event_Log_En_i_2_n_0
    );
Event_Log_En_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => Bus2IP_Addr(4),
      I1 => Bus2IP_Addr(5),
      I2 => write_req,
      I3 => s_axi_wvalid,
      O => Event_Log_En_i_3_n_0
    );
Event_Log_En_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(7),
      I2 => Bus2IP_Addr(6),
      I3 => Bus2IP_Addr(0),
      I4 => Bus2IP_Addr(1),
      I5 => Bus2IP_Addr(3),
      O => Event_Log_En_i_4_n_0
    );
\GEN_ISR_REG[1].ISR[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFA8AAA8AAA8AA"
    )
        port map (
      I0 => \GEN_TRACE_LOG.Streaming_Fifo_Full_D1_reg\,
      I1 => \GEN_ISR_REG[1].ISR[1]_i_3_n_0\,
      I2 => \Trace_ctrl_reg[30]_i_2_n_0\,
      I3 => s_axi_wdata(1),
      I4 => s_axi_aresetn,
      I5 => Intr_Reg_ISR(0),
      O => p_0_out
    );
\GEN_ISR_REG[1].ISR[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFDFFFFF"
    )
        port map (
      I0 => Bus2IP_Addr(5),
      I1 => sel0(2),
      I2 => \GEN_ISR_REG[1].ISR[1]_i_4_n_0\,
      I3 => sel0(1),
      I4 => Bus2IP_Addr(4),
      I5 => \IER[1]_i_2_n_0\,
      O => \GEN_ISR_REG[1].ISR[1]_i_3_n_0\
    );
\GEN_ISR_REG[1].ISR[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => sel0(7),
      I4 => sel0(6),
      I5 => sel0(0),
      O => \GEN_ISR_REG[1].ISR[1]_i_4_n_0\
    );
\GEN_PROFILE_MODE.SW_Data_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => write_req,
      I2 => \GEN_PROFILE_MODE.SW_Data_reg[31]_i_2_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg[31]_i_3_n_0\,
      O => E(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => Bus2IP_Addr(3),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(1),
      I3 => Bus2IP_Addr(0),
      I4 => Bus2IP_Addr(6),
      I5 => Bus2IP_Addr(7),
      O => \GEN_PROFILE_MODE.SW_Data_reg[31]_i_2_n_0\
    );
\GEN_PROFILE_MODE.SW_Data_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => sel0(2),
      I1 => Bus2IP_Addr(5),
      I2 => Bus2IP_Addr(4),
      I3 => sel0(1),
      I4 => Event_Log_En_i_2_n_0,
      I5 => sel0(0),
      O => \GEN_PROFILE_MODE.SW_Data_reg[31]_i_3_n_0\
    );
Global_Intr_En_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => Event_Log_En_i_4_n_0,
      I2 => \IER[1]_i_2_n_0\,
      I3 => Lat_Status_Reg_WIF_Rd_En_i_4_n_0,
      I4 => Bus2IP_Addr(5),
      I5 => Global_Intr_En,
      O => Global_Intr_En_reg
    );
\IER[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \GEN_PROFILE_MODE.SW_Data_reg[31]_i_2_n_0\,
      I2 => \IER[1]_i_2_n_0\,
      I3 => Lat_Status_Reg_WIF_Rd_En_i_4_n_0,
      I4 => Bus2IP_Addr(5),
      I5 => Intr_Reg_IER(0),
      O => \IER_reg[1]\
    );
\IER[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => write_req,
      O => \IER[1]_i_2_n_0\
    );
\IP2Bus_Data_sampled_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(0),
      Q => s_axi_rdata(0),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(10),
      Q => s_axi_rdata(10),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(11),
      Q => s_axi_rdata(11),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(12),
      Q => s_axi_rdata(12),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(13),
      Q => s_axi_rdata(13),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(14),
      Q => s_axi_rdata(14),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(15),
      Q => s_axi_rdata(15),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(16),
      Q => s_axi_rdata(16),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(17),
      Q => s_axi_rdata(17),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(18),
      Q => s_axi_rdata(18),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(19),
      Q => s_axi_rdata(19),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(1),
      Q => s_axi_rdata(1),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(20),
      Q => s_axi_rdata(20),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(21),
      Q => s_axi_rdata(21),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(22),
      Q => s_axi_rdata(22),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(23),
      Q => s_axi_rdata(23),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(24),
      Q => s_axi_rdata(24),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(25),
      Q => s_axi_rdata(25),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(26),
      Q => s_axi_rdata(26),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(27),
      Q => s_axi_rdata(27),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(28),
      Q => s_axi_rdata(28),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(29),
      Q => s_axi_rdata(29),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(2),
      Q => s_axi_rdata(2),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(30),
      Q => s_axi_rdata(30),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(31),
      Q => s_axi_rdata(31),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(3),
      Q => s_axi_rdata(3),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(4),
      Q => s_axi_rdata(4),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(5),
      Q => s_axi_rdata(5),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(6),
      Q => s_axi_rdata(6),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(7),
      Q => s_axi_rdata(7),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(8),
      Q => s_axi_rdata(8),
      R => SR(0)
    );
\IP2Bus_Data_sampled_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => IP2Bus_DataValid_reg_0(0),
      D => Q(9),
      Q => s_axi_rdata(9),
      R => SR(0)
    );
Lat_Addr_3downto0_is_0x4_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Bus2IP_Addr(3),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(0),
      I3 => Bus2IP_Addr(1),
      O => Addr_3downto0_is_0x4
    );
Lat_Addr_3downto0_is_0x8_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(3),
      I2 => Bus2IP_Addr(0),
      I3 => Bus2IP_Addr(1),
      O => Addr_3downto0_is_0x8
    );
Lat_Control_Set_Rd_En_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Event_Log_En_i_2_n_0,
      I1 => Lat_Control_Set_Rd_En_i_2_n_0,
      I2 => Event_Log_En_i_4_n_0,
      O => Control_Set_Rd_En
    );
Lat_Control_Set_Rd_En_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^bus2ip_rdce\,
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => Bus2IP_Addr(4),
      I5 => Bus2IP_Addr(5),
      O => Lat_Control_Set_Rd_En_i_2_n_0
    );
Lat_Event_Log_Set_Rd_En_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_PROFILE_MODE.SW_Data_reg[31]_i_2_n_0\,
      I1 => \GEN_PROFILE_MODE.SW_Data_reg[31]_i_3_n_0\,
      O => Event_Log_Set_Rd_En
    );
Lat_Intr_Reg_GIE_Rd_En_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => Bus2IP_Addr(3),
      I1 => Lat_Status_Reg_WIF_Rd_En_i_3_n_0,
      I2 => Bus2IP_Addr(6),
      I3 => Bus2IP_Addr(7),
      I4 => Bus2IP_Addr(2),
      I5 => Lat_Intr_Reg_ISR_Rd_En_i_2_n_0,
      O => Intr_Reg_GIE_Rd_En
    );
Lat_Intr_Reg_IER_Rd_En_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => Lat_Intr_Reg_ISR_Rd_En_i_2_n_0,
      I1 => Bus2IP_Addr(7),
      I2 => Bus2IP_Addr(6),
      I3 => Lat_Status_Reg_WIF_Rd_En_i_3_n_0,
      I4 => Bus2IP_Addr(2),
      I5 => Bus2IP_Addr(3),
      O => Intr_Reg_IER_Rd_En
    );
Lat_Intr_Reg_ISR_Rd_En_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => Lat_Intr_Reg_ISR_Rd_En_i_2_n_0,
      I1 => Bus2IP_Addr(3),
      I2 => Lat_Status_Reg_WIF_Rd_En_i_3_n_0,
      I3 => Bus2IP_Addr(6),
      I4 => Bus2IP_Addr(7),
      I5 => Bus2IP_Addr(2),
      O => Intr_Reg_ISR_Rd_En
    );
Lat_Intr_Reg_ISR_Rd_En_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \^bus2ip_rdce\,
      I1 => Bus2IP_Addr(5),
      I2 => sel0(2),
      I3 => \GEN_ISR_REG[1].ISR[1]_i_4_n_0\,
      I4 => sel0(1),
      I5 => Bus2IP_Addr(4),
      O => Lat_Intr_Reg_ISR_Rd_En_i_2_n_0
    );
Lat_Intr_Reg_Set_Rd_En_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Lat_Status_Reg_WIF_Rd_En_i_4_n_0,
      I1 => Bus2IP_Addr(5),
      I2 => Bus2IP_Addr(7),
      I3 => Bus2IP_Addr(6),
      O => Intr_Reg_Set_Rd_En
    );
Lat_Metric_Cnt_Reg_Set_Rd_En_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA000000"
    )
        port map (
      I0 => Lat_Metric_Cnt_Reg_Set_Rd_En_i_2_n_0,
      I1 => sel0(2),
      I2 => Event_Log_En_i_2_n_0,
      I3 => sel0(0),
      I4 => Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_3_n_0,
      O => Metric_Cnt_Reg_Set_Rd_En
    );
Lat_Metric_Cnt_Reg_Set_Rd_En_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(6),
      I3 => sel0(7),
      I4 => sel0(5),
      I5 => sel0(4),
      O => Lat_Metric_Cnt_Reg_Set_Rd_En_i_2_n_0
    );
Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005C00000000"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_2_n_0,
      I4 => sel0(0),
      I5 => Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_3_n_0,
      O => Samp_Metric_Cnt_Reg_Set_Rd_En
    );
Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      I2 => sel0(7),
      I3 => sel0(6),
      O => Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_2_n_0
    );
Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAABAAA"
    )
        port map (
      I0 => Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_4_n_0,
      I1 => Bus2IP_Addr(7),
      I2 => Bus2IP_Addr(6),
      I3 => Bus2IP_Addr(4),
      I4 => Bus2IP_Addr(5),
      O => Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_3_n_0
    );
Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Bus2IP_Addr(3),
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(0),
      I3 => Bus2IP_Addr(1),
      O => Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_i_4_n_0
    );
Lat_Sample_Interval_Rd_En_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => Bus2IP_Addr(6),
      I1 => Bus2IP_Addr(7),
      I2 => Bus2IP_Addr(5),
      I3 => Bus2IP_Addr(4),
      I4 => \register_module_inst/Addr_15downto8_is_0x00__2\,
      O => Sample_Interval_Rd_En
    );
Lat_Sample_Interval_Rd_En_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(1),
      I1 => Event_Log_En_i_2_n_0,
      I2 => sel0(0),
      I3 => sel0(2),
      O => \register_module_inst/Addr_15downto8_is_0x00__2\
    );
Lat_Status_Reg_FOC_Rd_En_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => Lat_Status_Reg_WIF_Rd_En_i_2_n_0,
      I1 => Bus2IP_Addr(2),
      I2 => Bus2IP_Addr(3),
      I3 => Lat_Status_Reg_WIF_Rd_En_i_3_n_0,
      I4 => Lat_Status_Reg_WIF_Rd_En_i_4_n_0,
      O => Status_Reg_FOC_Rd_En
    );
Lat_Status_Reg_Set_Rd_En_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Bus2IP_Addr(5),
      I1 => Bus2IP_Addr(6),
      I2 => Bus2IP_Addr(7),
      I3 => Lat_Status_Reg_WIF_Rd_En_i_4_n_0,
      O => Status_Reg_Set_Rd_En
    );
Lat_Status_Reg_WIF_Rd_En_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => Lat_Status_Reg_WIF_Rd_En_i_2_n_0,
      I1 => Lat_Status_Reg_WIF_Rd_En_i_3_n_0,
      I2 => Bus2IP_Addr(3),
      I3 => Bus2IP_Addr(2),
      I4 => Lat_Status_Reg_WIF_Rd_En_i_4_n_0,
      O => Status_Reg_WIF_Rd_En
    );
Lat_Status_Reg_WIF_Rd_En_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Bus2IP_Addr(5),
      I1 => Bus2IP_Addr(6),
      I2 => Bus2IP_Addr(7),
      O => Lat_Status_Reg_WIF_Rd_En_i_2_n_0
    );
Lat_Status_Reg_WIF_Rd_En_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Bus2IP_Addr(1),
      I1 => Bus2IP_Addr(0),
      O => Lat_Status_Reg_WIF_Rd_En_i_3_n_0
    );
Lat_Status_Reg_WIF_Rd_En_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => Event_Log_En_i_2_n_0,
      I3 => sel0(1),
      I4 => Bus2IP_Addr(4),
      O => Lat_Status_Reg_WIF_Rd_En_i_4_n_0
    );
Lat_Trace_Filter_Rd_En_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \Trace_ctrl_reg[30]_i_2_n_0\,
      I1 => \GEN_PROFILE_MODE.SW_Data_reg[31]_i_3_n_0\,
      O => Trace_Filter_Rd_En
    );
\Trace_ctrl_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => write_req,
      I2 => \Trace_ctrl_reg[30]_i_2_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg[31]_i_3_n_0\,
      O => \Trace_ctrl_reg_reg[30]\(0)
    );
\Trace_ctrl_reg[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => Bus2IP_Addr(2),
      I1 => Bus2IP_Addr(7),
      I2 => Bus2IP_Addr(6),
      I3 => Bus2IP_Addr(0),
      I4 => Bus2IP_Addr(1),
      I5 => Bus2IP_Addr(3),
      O => \Trace_ctrl_reg[30]_i_2_n_0\
    );
arready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => arready_i0,
      I1 => write_req,
      I2 => s_axi_awvalid,
      I3 => rd_in_progress,
      I4 => s_axi_aresetn,
      I5 => \^bus2ip_rdce\,
      O => arready_i_i_1_n_0
    );
arready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => arready_i_i_1_n_0,
      Q => \^s_axi_arready\,
      R => '0'
    );
awready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => p_4_in,
      I1 => \^s_axi_rvalid\,
      I2 => write_req,
      I3 => s_axi_aresetn,
      I4 => s_axi_arvalid,
      I5 => \^bus2ip_rdce\,
      O => awready_i_i_1_n_0
    );
awready_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s_axi_awvalid,
      O => p_4_in
    );
awready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => awready_i_i_1_n_0,
      Q => \^s_axi_awready\,
      R => '0'
    );
\bus2ip_addr_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(0),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(0),
      I4 => arready_i0,
      I5 => s_axi_araddr(0),
      O => \bus2ip_addr_i[0]_i_1_n_0\
    );
\bus2ip_addr_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(10),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(10),
      I4 => arready_i0,
      I5 => s_axi_araddr(10),
      O => \bus2ip_addr_i[10]_i_1_n_0\
    );
\bus2ip_addr_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(11),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(11),
      I4 => arready_i0,
      I5 => s_axi_araddr(11),
      O => \bus2ip_addr_i[11]_i_1_n_0\
    );
\bus2ip_addr_i[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(12),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(12),
      I4 => arready_i0,
      I5 => s_axi_araddr(12),
      O => \bus2ip_addr_i[12]_i_1_n_0\
    );
\bus2ip_addr_i[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(13),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(13),
      I4 => arready_i0,
      I5 => s_axi_araddr(13),
      O => \bus2ip_addr_i[13]_i_1_n_0\
    );
\bus2ip_addr_i[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(14),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(14),
      I4 => arready_i0,
      I5 => s_axi_araddr(14),
      O => \bus2ip_addr_i[14]_i_1_n_0\
    );
\bus2ip_addr_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_arready\,
      I3 => s_axi_arvalid,
      I4 => wr_req_pend,
      O => \bus2ip_addr_i[15]_i_1_n_0\
    );
\bus2ip_addr_i[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(15),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(15),
      I4 => arready_i0,
      I5 => s_axi_araddr(15),
      O => \bus2ip_addr_i[15]_i_2_n_0\
    );
\bus2ip_addr_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(1),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(1),
      I4 => arready_i0,
      I5 => s_axi_araddr(1),
      O => \bus2ip_addr_i[1]_i_1_n_0\
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(2),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(2),
      I4 => arready_i0,
      I5 => s_axi_araddr(2),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(3),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(3),
      I4 => arready_i0,
      I5 => s_axi_araddr(3),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(4),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(4),
      I4 => arready_i0,
      I5 => s_axi_araddr(4),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(5),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(5),
      I4 => arready_i0,
      I5 => s_axi_araddr(5),
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(6),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(6),
      I4 => arready_i0,
      I5 => s_axi_araddr(6),
      O => \bus2ip_addr_i[6]_i_1_n_0\
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(7),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(7),
      I4 => arready_i0,
      I5 => s_axi_araddr(7),
      O => \bus2ip_addr_i[7]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(8),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(8),
      I4 => arready_i0,
      I5 => s_axi_araddr(8),
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => wr_req_pend_addr(9),
      I1 => \^s_axi_awready\,
      I2 => s_axi_awvalid,
      I3 => s_axi_awaddr(9),
      I4 => arready_i0,
      I5 => s_axi_araddr(9),
      O => \bus2ip_addr_i[9]_i_1_n_0\
    );
\bus2ip_addr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[0]_i_1_n_0\,
      Q => Bus2IP_Addr(0),
      R => SR(0)
    );
\bus2ip_addr_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[10]_i_1_n_0\,
      Q => sel0(2),
      R => SR(0)
    );
\bus2ip_addr_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[11]_i_1_n_0\,
      Q => sel0(3),
      R => SR(0)
    );
\bus2ip_addr_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[12]_i_1_n_0\,
      Q => sel0(4),
      R => SR(0)
    );
\bus2ip_addr_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[13]_i_1_n_0\,
      Q => sel0(5),
      R => SR(0)
    );
\bus2ip_addr_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[14]_i_1_n_0\,
      Q => sel0(6),
      R => SR(0)
    );
\bus2ip_addr_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[15]_i_2_n_0\,
      Q => sel0(7),
      R => SR(0)
    );
\bus2ip_addr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[1]_i_1_n_0\,
      Q => Bus2IP_Addr(1),
      R => SR(0)
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => Bus2IP_Addr(2),
      R => SR(0)
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => Bus2IP_Addr(3),
      R => SR(0)
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => Bus2IP_Addr(4),
      R => SR(0)
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => Bus2IP_Addr(5),
      R => SR(0)
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[6]_i_1_n_0\,
      Q => Bus2IP_Addr(6),
      R => SR(0)
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[7]_i_1_n_0\,
      Q => Bus2IP_Addr(7),
      R => SR(0)
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[8]_i_1_n_0\,
      Q => sel0(0),
      R => SR(0)
    );
\bus2ip_addr_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[15]_i_1_n_0\,
      D => \bus2ip_addr_i[9]_i_1_n_0\,
      Q => sel0(1),
      R => SR(0)
    );
bvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => \^bus2ip_rdce\,
      I1 => s_axi_wvalid,
      I2 => write_req,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      O => bvalid_i_2_n_0
    );
bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bvalid_i_2_n_0,
      Q => \^s_axi_bvalid\,
      R => SR(0)
    );
p_in_d1_cdc_from_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bus2ip_rdce\,
      I1 => \out\,
      O => p_in_d1_cdc_from_reg0
    );
rd_in_progress_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => \^bus2ip_rdce\,
      I3 => rd_in_progress,
      O => rd_in_progress_i_1_n_0
    );
rd_in_progress_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_in_progress_i_1_n_0,
      Q => rd_in_progress,
      R => SR(0)
    );
read_req_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s_axi_arvalid,
      O => arready_i0
    );
read_req_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => arready_i0,
      Q => \^bus2ip_rdce\,
      R => SR(0)
    );
rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2Bus_DataValid_reg,
      Q => \^s_axi_rvalid\,
      R => SR(0)
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => write_req,
      I1 => \^bus2ip_rdce\,
      O => s_axi_wready
    );
\wr_req_pend_addr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => s_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => wr_req_pend_pulse
    );
\wr_req_pend_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(0),
      Q => wr_req_pend_addr(0),
      R => SR(0)
    );
\wr_req_pend_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(10),
      Q => wr_req_pend_addr(10),
      R => SR(0)
    );
\wr_req_pend_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(11),
      Q => wr_req_pend_addr(11),
      R => SR(0)
    );
\wr_req_pend_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(12),
      Q => wr_req_pend_addr(12),
      R => SR(0)
    );
\wr_req_pend_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(13),
      Q => wr_req_pend_addr(13),
      R => SR(0)
    );
\wr_req_pend_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(14),
      Q => wr_req_pend_addr(14),
      R => SR(0)
    );
\wr_req_pend_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(15),
      Q => wr_req_pend_addr(15),
      R => SR(0)
    );
\wr_req_pend_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(1),
      Q => wr_req_pend_addr(1),
      R => SR(0)
    );
\wr_req_pend_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(2),
      Q => wr_req_pend_addr(2),
      R => SR(0)
    );
\wr_req_pend_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(3),
      Q => wr_req_pend_addr(3),
      R => SR(0)
    );
\wr_req_pend_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(4),
      Q => wr_req_pend_addr(4),
      R => SR(0)
    );
\wr_req_pend_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(5),
      Q => wr_req_pend_addr(5),
      R => SR(0)
    );
\wr_req_pend_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(6),
      Q => wr_req_pend_addr(6),
      R => SR(0)
    );
\wr_req_pend_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(7),
      Q => wr_req_pend_addr(7),
      R => SR(0)
    );
\wr_req_pend_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(8),
      Q => wr_req_pend_addr(8),
      R => SR(0)
    );
\wr_req_pend_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => wr_req_pend_pulse,
      D => s_axi_awaddr(9),
      Q => wr_req_pend_addr(9),
      R => SR(0)
    );
wr_req_pend_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80008000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s_axi_awvalid,
      I2 => \^s_axi_arready\,
      I3 => s_axi_arvalid,
      I4 => \^bus2ip_rdce\,
      I5 => wr_req_pend,
      O => wr_req_pend_i_1_n_0
    );
wr_req_pend_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => wr_req_pend_i_1_n_0,
      Q => wr_req_pend,
      R => SR(0)
    );
write_req_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => write_req,
      I3 => s_axi_wvalid,
      O => write_req_i_1_n_0
    );
write_req_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => write_req_i_1_n_0,
      Q => write_req,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Ext_Trig_log_en_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    core_aresetn : in STD_LOGIC;
    Ext_Trig_log_en : in STD_LOGIC;
    Use_Ext_Trig_Log : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_ext_trig_stop : in STD_LOGIC_VECTOR ( 1 downto 0 );
    core_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync is
  signal Ext_Trig_log_en_i_2_n_0 : STD_LOGIC;
  signal p_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of p_in_d1_cdc_from : signal is "true";
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of p_level_out_d1_cdc_to : signal is "true";
  signal p_level_out_d2 : STD_LOGIC;
  attribute async_reg of p_level_out_d2 : signal is "true";
  signal p_level_out_d3 : STD_LOGIC;
  attribute async_reg of p_level_out_d3 : signal is "true";
  signal p_level_out_d4 : STD_LOGIC;
  attribute async_reg of p_level_out_d4 : signal is "true";
  signal p_level_out_d5 : STD_LOGIC;
  attribute async_reg of p_level_out_d5 : signal is "true";
  signal p_level_out_d6 : STD_LOGIC;
  attribute async_reg of p_level_out_d6 : signal is "true";
  signal p_level_out_d7 : STD_LOGIC;
  attribute async_reg of p_level_out_d7 : signal is "true";
  signal prmry_ack_int : STD_LOGIC;
  attribute async_reg of prmry_ack_int : signal is "true";
  signal s_level_out_bus_d1_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d1_cdc_to : signal is "true";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_cdc_to : signal is "true";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  signal s_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_cdc_to : signal is "true";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  signal scndry_out_int_d1 : STD_LOGIC;
  attribute async_reg of scndry_out_int_d1 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[1]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[0]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[1]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[0]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[1]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[0]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[1]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[0]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[1]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[0]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[1]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[1]\ : label is "yes";
begin
  D(1 downto 0) <= s_level_out_bus_d4(1 downto 0);
Ext_Trig_log_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => Ext_Trig_log_en_i_2_n_0,
      I1 => s_level_out_bus_d4(1),
      I2 => Q(1),
      O => Ext_Trig_log_en_reg
    );
Ext_Trig_log_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA200000"
    )
        port map (
      I0 => core_aresetn,
      I1 => Q(0),
      I2 => s_level_out_bus_d4(0),
      I3 => Ext_Trig_log_en,
      I4 => Use_Ext_Trig_Log,
      O => Ext_Trig_log_en_i_2_n_0
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => prmry_ack_int
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_cdc_to
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => scndry_out_int_d1
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d1_cdc_to
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d2
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d1_cdc_to
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d3
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d4
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d5
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d6
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d2
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d3
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d4
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d5
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d6
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d7
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_in_d1_cdc_from
    );
\s_level_out_bus_d1_cdc_to_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => slot_0_ext_trig_stop(0),
      Q => s_level_out_bus_d1_cdc_to(0),
      R => SR(0)
    );
\s_level_out_bus_d1_cdc_to_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => slot_0_ext_trig_stop(1),
      Q => s_level_out_bus_d1_cdc_to(1),
      R => SR(0)
    );
\s_level_out_bus_d2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(0),
      Q => s_level_out_bus_d2(0),
      R => SR(0)
    );
\s_level_out_bus_d2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(1),
      Q => s_level_out_bus_d2(1),
      R => SR(0)
    );
\s_level_out_bus_d3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_bus_d2(0),
      Q => s_level_out_bus_d3(0),
      R => SR(0)
    );
\s_level_out_bus_d3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_bus_d2(1),
      Q => s_level_out_bus_d3(1),
      R => SR(0)
    );
\s_level_out_bus_d4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_bus_d3(0),
      Q => s_level_out_bus_d4(0),
      R => SR(0)
    );
\s_level_out_bus_d4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_bus_d3(1),
      Q => s_level_out_bus_d4(1),
      R => SR(0)
    );
\s_level_out_bus_d5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_bus_d4(0),
      Q => s_level_out_bus_d5(0),
      R => SR(0)
    );
\s_level_out_bus_d5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_bus_d4(1),
      Q => s_level_out_bus_d5(1),
      R => SR(0)
    );
\s_level_out_bus_d6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_bus_d5(0),
      Q => s_level_out_bus_d6(0),
      R => SR(0)
    );
\s_level_out_bus_d6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_bus_d5(1),
      Q => s_level_out_bus_d6(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    p_in_d1_cdc_from_reg0_0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_in_d1_cdc_from_reg0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    core_aresetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    core_aclk : in STD_LOGIC;
    p_in_d1_cdc_from_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0\ : entity is "axi_perf_mon_v5_0_17_cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0\ is
  signal p_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of p_in_d1_cdc_from : signal is "true";
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of p_level_out_d1_cdc_to : signal is "true";
  signal p_level_out_d2 : STD_LOGIC;
  attribute async_reg of p_level_out_d2 : signal is "true";
  signal p_level_out_d3 : STD_LOGIC;
  attribute async_reg of p_level_out_d3 : signal is "true";
  signal p_level_out_d4 : STD_LOGIC;
  attribute async_reg of p_level_out_d4 : signal is "true";
  signal p_level_out_d5 : STD_LOGIC;
  attribute async_reg of p_level_out_d5 : signal is "true";
  signal p_level_out_d6 : STD_LOGIC;
  attribute async_reg of p_level_out_d6 : signal is "true";
  signal p_level_out_d7 : STD_LOGIC;
  attribute async_reg of p_level_out_d7 : signal is "true";
  signal prmry_ack_int : STD_LOGIC;
  attribute async_reg of prmry_ack_int : signal is "true";
  signal s_level_out_bus_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d1_cdc_to : signal is "true";
  signal s_level_out_bus_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  signal s_level_out_bus_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  signal s_level_out_bus_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  signal s_level_out_bus_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  signal s_level_out_bus_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_cdc_to : signal is "true";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  signal s_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_cdc_to : signal is "true";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  signal s_out_re : STD_LOGIC;
  signal scndry_out_int_d1 : STD_LOGIC;
  attribute async_reg of scndry_out_int_d1 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of p_in_d1_cdc_from_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of p_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_out_d2_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_out_d3_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_out_d4_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_out_d5_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_out_d6_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d7_reg : label is std.standard.true;
  attribute KEEP of s_out_d7_reg : label is "yes";
  attribute ASYNC_REG_boolean of scndry_out_int_d1_reg : label is std.standard.true;
  attribute KEEP of scndry_out_int_d1_reg : label is "yes";
begin
  \out\ <= p_in_d1_cdc_from;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => prmry_ack_int
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d2
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d3
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d4
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d5
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d6
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_cdc_to
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d1_cdc_to
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d2
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d3
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d4
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d5
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d6
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d7
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d1_cdc_to
    );
\p_in_d1_cdc_from_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => scndry_out_int_d1,
      I1 => p_in_d1_cdc_from_reg_0,
      O => p_in_d1_cdc_from_reg0_0
    );
p_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_in_d1_cdc_from_reg0,
      Q => p_in_d1_cdc_from,
      R => SR(0)
    );
s_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => p_in_d1_cdc_from,
      Q => s_out_d1_cdc_to,
      R => core_aresetn(0)
    );
s_out_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => core_aresetn(0)
    );
s_out_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => core_aresetn(0)
    );
s_out_d4_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => core_aresetn(0)
    );
s_out_d5_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => core_aresetn(0)
    );
s_out_d6_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_out_d5,
      Q => s_out_d6,
      R => core_aresetn(0)
    );
s_out_d7_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_out_d6,
      Q => s_out_d7,
      R => core_aresetn(0)
    );
scndry_out_int_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_out_d4,
      I1 => s_out_d5,
      O => s_out_re
    );
scndry_out_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_out_re,
      Q => scndry_out_int_d1,
      R => core_aresetn(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0_5\ is
  port (
    \out\ : out STD_LOGIC;
    IP2Bus_DataValid_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \IP2Bus_Data_reg[0]\ : out STD_LOGIC;
    core_aresetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_in_d1_cdc_from_reg0 : in STD_LOGIC;
    core_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Lat_Sample_Interval_Rd_En : in STD_LOGIC;
    Lat_Addr_3downto0_is_0x8 : in STD_LOGIC;
    Lat_Addr_3downto0_is_0x4 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Lat_Control_Set_Rd_En : in STD_LOGIC;
    Event_Log_En_sync : in STD_LOGIC;
    \s_level_out_bus_d4_reg[31]\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Lat_Status_Reg_FOC_Rd_En : in STD_LOGIC;
    Use_Ext_Trig_Log : in STD_LOGIC;
    Streaming_FIFO_Reset : in STD_LOGIC;
    \s_level_out_bus_d4_reg[0]\ : in STD_LOGIC;
    Lat_Intr_Reg_IER_Rd_En : in STD_LOGIC;
    Intr_Reg_IER : in STD_LOGIC_VECTOR ( 0 to 0 );
    Intr_Reg_ISR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Lat_Intr_Reg_ISR_Rd_En : in STD_LOGIC;
    Lat_Intr_Reg_GIE_Rd_En : in STD_LOGIC;
    Lat_Intr_Reg_Set_Rd_En : in STD_LOGIC;
    Lat_Status_Reg_WIF_Rd_En_reg : in STD_LOGIC;
    Lat_Event_Log_Set_Rd_En : in STD_LOGIC;
    Lat_Status_Reg_Set_Rd_En : in STD_LOGIC;
    Lat_Metric_Cnt_Reg_Set_Rd_En : in STD_LOGIC;
    Lat_Samp_Metric_Cnt_Reg_Set_Rd_En : in STD_LOGIC;
    Lat_Trace_Filter_Rd_En : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0_5\ : entity is "axi_perf_mon_v5_0_17_cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0_5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0_5\ is
  signal \IP2Bus_Data[25]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[25]_i_3_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[2]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[2]_i_3_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[2]_i_4_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[31]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[31]_i_3_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[31]_i_4_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[31]_i_5_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[31]_i_6_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[8]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[8]_i_3_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[9]_i_2_n_0\ : STD_LOGIC;
  signal p_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of p_in_d1_cdc_from : signal is "true";
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of p_level_out_d1_cdc_to : signal is "true";
  signal p_level_out_d2 : STD_LOGIC;
  attribute async_reg of p_level_out_d2 : signal is "true";
  signal p_level_out_d3 : STD_LOGIC;
  attribute async_reg of p_level_out_d3 : signal is "true";
  signal p_level_out_d4 : STD_LOGIC;
  attribute async_reg of p_level_out_d4 : signal is "true";
  signal p_level_out_d5 : STD_LOGIC;
  attribute async_reg of p_level_out_d5 : signal is "true";
  signal p_level_out_d6 : STD_LOGIC;
  attribute async_reg of p_level_out_d6 : signal is "true";
  signal p_level_out_d7 : STD_LOGIC;
  attribute async_reg of p_level_out_d7 : signal is "true";
  signal prmry_ack_int : STD_LOGIC;
  attribute async_reg of prmry_ack_int : signal is "true";
  signal s_level_out_bus_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d1_cdc_to : signal is "true";
  signal s_level_out_bus_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  signal s_level_out_bus_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  signal s_level_out_bus_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  signal s_level_out_bus_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  signal s_level_out_bus_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_cdc_to : signal is "true";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  signal s_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_cdc_to : signal is "true";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  signal s_out_re : STD_LOGIC;
  signal scndry_out_int_d1 : STD_LOGIC;
  attribute async_reg of scndry_out_int_d1 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of p_in_d1_cdc_from_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of p_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_out_d2_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_out_d3_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_out_d4_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_out_d5_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_out_d6_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d7_reg : label is std.standard.true;
  attribute KEEP of s_out_d7_reg : label is "yes";
  attribute ASYNC_REG_boolean of scndry_out_int_d1_reg : label is std.standard.true;
  attribute KEEP of scndry_out_int_d1_reg : label is "yes";
begin
  IP2Bus_DataValid_reg <= scndry_out_int_d1;
  \out\ <= p_in_d1_cdc_from;
\IP2Bus_Data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \s_level_out_bus_d4_reg[0]\,
      I1 => \IP2Bus_Data[31]_i_2_n_0\,
      I2 => Q(0),
      I3 => \IP2Bus_Data[31]_i_3_n_0\,
      I4 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(0),
      O => D(0)
    );
\IP2Bus_Data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(8),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(10),
      I4 => \s_level_out_bus_d4_reg[31]\(8),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(10)
    );
\IP2Bus_Data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => \IP2Bus_Data[31]_i_3_n_0\,
      I2 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(11),
      I3 => \s_level_out_bus_d4_reg[31]\(9),
      I4 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(11)
    );
\IP2Bus_Data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(9),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(12),
      I4 => \s_level_out_bus_d4_reg[31]\(10),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(12)
    );
\IP2Bus_Data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(10),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(13),
      I4 => \s_level_out_bus_d4_reg[31]\(11),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(13)
    );
\IP2Bus_Data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(11),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(14),
      I4 => \s_level_out_bus_d4_reg[31]\(12),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(14)
    );
\IP2Bus_Data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => \IP2Bus_Data[31]_i_3_n_0\,
      I2 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(15),
      I3 => \s_level_out_bus_d4_reg[31]\(13),
      I4 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(15)
    );
\IP2Bus_Data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(12),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(16),
      I4 => \s_level_out_bus_d4_reg[31]\(14),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(16)
    );
\IP2Bus_Data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(13),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(17),
      I4 => \s_level_out_bus_d4_reg[31]\(15),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(17)
    );
\IP2Bus_Data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(14),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(18),
      I4 => \s_level_out_bus_d4_reg[31]\(16),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(18)
    );
\IP2Bus_Data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => \IP2Bus_Data[31]_i_3_n_0\,
      I2 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(19),
      I3 => \s_level_out_bus_d4_reg[31]\(17),
      I4 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(19)
    );
\IP2Bus_Data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => Lat_Status_Reg_WIF_Rd_En_reg,
      I1 => \IP2Bus_Data[31]_i_2_n_0\,
      I2 => Q(1),
      I3 => \IP2Bus_Data[31]_i_3_n_0\,
      I4 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(1),
      O => D(1)
    );
\IP2Bus_Data[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => Lat_Sample_Interval_Rd_En,
      I1 => scndry_out_int_d1,
      I2 => s_axi_aresetn,
      I3 => Lat_Control_Set_Rd_En,
      O => \IP2Bus_Data_reg[0]\
    );
\IP2Bus_Data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(15),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(20),
      I4 => \s_level_out_bus_d4_reg[31]\(18),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(20)
    );
\IP2Bus_Data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(16),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(21),
      I4 => \s_level_out_bus_d4_reg[31]\(19),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(21)
    );
\IP2Bus_Data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(17),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(22),
      I4 => \s_level_out_bus_d4_reg[31]\(20),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(22)
    );
\IP2Bus_Data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => \IP2Bus_Data[31]_i_3_n_0\,
      I2 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(23),
      I3 => \s_level_out_bus_d4_reg[31]\(21),
      I4 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(23)
    );
\IP2Bus_Data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(18),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(24),
      I4 => \s_level_out_bus_d4_reg[31]\(22),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(24)
    );
\IP2Bus_Data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \IP2Bus_Data[25]_i_2_n_0\,
      I1 => \IP2Bus_Data[31]_i_2_n_0\,
      I2 => Q(19),
      I3 => \IP2Bus_Data[31]_i_3_n_0\,
      I4 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(25),
      O => D(25)
    );
\IP2Bus_Data[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_6_n_0\,
      I1 => Lat_Control_Set_Rd_En,
      I2 => Streaming_FIFO_Reset,
      I3 => \s_level_out_bus_d4_reg[31]\(23),
      I4 => \IP2Bus_Data[25]_i_3_n_0\,
      I5 => Lat_Status_Reg_FOC_Rd_En,
      O => \IP2Bus_Data[25]_i_2_n_0\
    );
\IP2Bus_Data[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => Lat_Intr_Reg_Set_Rd_En,
      I1 => Lat_Sample_Interval_Rd_En,
      I2 => scndry_out_int_d1,
      I3 => s_axi_aresetn,
      I4 => Lat_Control_Set_Rd_En,
      I5 => Lat_Status_Reg_Set_Rd_En,
      O => \IP2Bus_Data[25]_i_3_n_0\
    );
\IP2Bus_Data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(20),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(26),
      I4 => \s_level_out_bus_d4_reg[31]\(24),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(26)
    );
\IP2Bus_Data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => \IP2Bus_Data[31]_i_3_n_0\,
      I2 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(27),
      I3 => \s_level_out_bus_d4_reg[31]\(25),
      I4 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(27)
    );
\IP2Bus_Data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(21),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(28),
      I4 => \s_level_out_bus_d4_reg[31]\(26),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(28)
    );
\IP2Bus_Data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(22),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(29),
      I4 => \s_level_out_bus_d4_reg[31]\(27),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(29)
    );
\IP2Bus_Data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \IP2Bus_Data[2]_i_2_n_0\,
      I1 => \IP2Bus_Data[2]_i_3_n_0\,
      I2 => \IP2Bus_Data[31]_i_2_n_0\,
      I3 => Q(2),
      I4 => \IP2Bus_Data[31]_i_3_n_0\,
      I5 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(2),
      O => D(2)
    );
\IP2Bus_Data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => Lat_Status_Reg_FOC_Rd_En,
      I1 => Lat_Intr_Reg_Set_Rd_En,
      I2 => \IP2Bus_Data[31]_i_6_n_0\,
      I3 => Lat_Control_Set_Rd_En,
      I4 => Lat_Status_Reg_Set_Rd_En,
      I5 => \s_level_out_bus_d4_reg[31]\(0),
      O => \IP2Bus_Data[2]_i_2_n_0\
    );
\IP2Bus_Data[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2808080"
    )
        port map (
      I0 => \IP2Bus_Data[2]_i_4_n_0\,
      I1 => Lat_Intr_Reg_IER_Rd_En,
      I2 => Intr_Reg_IER(0),
      I3 => Intr_Reg_ISR(0),
      I4 => Lat_Intr_Reg_ISR_Rd_En,
      O => \IP2Bus_Data[2]_i_3_n_0\
    );
\IP2Bus_Data[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => Lat_Intr_Reg_GIE_Rd_En,
      I1 => Lat_Intr_Reg_Set_Rd_En,
      I2 => Lat_Control_Set_Rd_En,
      I3 => s_axi_aresetn,
      I4 => scndry_out_int_d1,
      I5 => Lat_Sample_Interval_Rd_En,
      O => \IP2Bus_Data[2]_i_4_n_0\
    );
\IP2Bus_Data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(23),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(30),
      I4 => \s_level_out_bus_d4_reg[31]\(28),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(30)
    );
\IP2Bus_Data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => \IP2Bus_Data[31]_i_3_n_0\,
      I2 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(31),
      I3 => \s_level_out_bus_d4_reg[31]\(29),
      I4 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(31)
    );
\IP2Bus_Data[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => Lat_Metric_Cnt_Reg_Set_Rd_En,
      I1 => Lat_Samp_Metric_Cnt_Reg_Set_Rd_En,
      I2 => \IP2Bus_Data[31]_i_5_n_0\,
      I3 => Lat_Event_Log_Set_Rd_En,
      I4 => Lat_Trace_Filter_Rd_En,
      O => \IP2Bus_Data[31]_i_2_n_0\
    );
\IP2Bus_Data[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => Lat_Addr_3downto0_is_0x4,
      I1 => Lat_Event_Log_Set_Rd_En,
      I2 => Lat_Status_Reg_Set_Rd_En,
      I3 => Lat_Control_Set_Rd_En,
      I4 => \IP2Bus_Data[31]_i_6_n_0\,
      I5 => Lat_Intr_Reg_Set_Rd_En,
      O => \IP2Bus_Data[31]_i_3_n_0\
    );
\IP2Bus_Data[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => Lat_Status_Reg_Set_Rd_En,
      I1 => Lat_Control_Set_Rd_En,
      I2 => \IP2Bus_Data[31]_i_6_n_0\,
      I3 => Lat_Intr_Reg_Set_Rd_En,
      I4 => Lat_Status_Reg_FOC_Rd_En,
      O => \IP2Bus_Data[31]_i_4_n_0\
    );
\IP2Bus_Data[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => Lat_Intr_Reg_Set_Rd_En,
      I1 => Lat_Sample_Interval_Rd_En,
      I2 => scndry_out_int_d1,
      I3 => s_axi_aresetn,
      I4 => Lat_Control_Set_Rd_En,
      I5 => Lat_Status_Reg_Set_Rd_En,
      O => \IP2Bus_Data[31]_i_5_n_0\
    );
\IP2Bus_Data[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => scndry_out_int_d1,
      I2 => Lat_Sample_Interval_Rd_En,
      O => \IP2Bus_Data[31]_i_6_n_0\
    );
\IP2Bus_Data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => \IP2Bus_Data[31]_i_3_n_0\,
      I2 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(3),
      I3 => \s_level_out_bus_d4_reg[31]\(1),
      I4 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(3)
    );
\IP2Bus_Data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(3),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(4),
      I4 => \s_level_out_bus_d4_reg[31]\(2),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(4)
    );
\IP2Bus_Data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(4),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(5),
      I4 => \s_level_out_bus_d4_reg[31]\(3),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(5)
    );
\IP2Bus_Data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => Q(5),
      I2 => \IP2Bus_Data[31]_i_3_n_0\,
      I3 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(6),
      I4 => \s_level_out_bus_d4_reg[31]\(4),
      I5 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(6)
    );
\IP2Bus_Data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => \IP2Bus_Data[31]_i_3_n_0\,
      I2 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(7),
      I3 => \s_level_out_bus_d4_reg[31]\(5),
      I4 => \IP2Bus_Data[31]_i_4_n_0\,
      O => D(7)
    );
\IP2Bus_Data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \IP2Bus_Data[8]_i_2_n_0\,
      I1 => \IP2Bus_Data[8]_i_3_n_0\,
      I2 => \IP2Bus_Data[31]_i_2_n_0\,
      I3 => Q(6),
      I4 => \IP2Bus_Data[31]_i_3_n_0\,
      I5 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(8),
      O => D(8)
    );
\IP2Bus_Data[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => Lat_Sample_Interval_Rd_En,
      I1 => Lat_Addr_3downto0_is_0x8,
      I2 => Lat_Addr_3downto0_is_0x4,
      I3 => s_axi_aresetn,
      I4 => scndry_out_int_d1,
      O => \IP2Bus_Data[8]_i_2_n_0\
    );
\IP2Bus_Data[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_6_n_0\,
      I1 => Lat_Control_Set_Rd_En,
      I2 => Event_Log_En_sync,
      I3 => \s_level_out_bus_d4_reg[31]\(6),
      I4 => \IP2Bus_Data[25]_i_3_n_0\,
      I5 => Lat_Status_Reg_FOC_Rd_En,
      O => \IP2Bus_Data[8]_i_3_n_0\
    );
\IP2Bus_Data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \IP2Bus_Data[9]_i_2_n_0\,
      I1 => \IP2Bus_Data[31]_i_2_n_0\,
      I2 => Q(7),
      I3 => \IP2Bus_Data[31]_i_3_n_0\,
      I4 => \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(9),
      O => D(9)
    );
\IP2Bus_Data[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_6_n_0\,
      I1 => Lat_Control_Set_Rd_En,
      I2 => Use_Ext_Trig_Log,
      I3 => \s_level_out_bus_d4_reg[31]\(7),
      I4 => \IP2Bus_Data[25]_i_3_n_0\,
      I5 => Lat_Status_Reg_FOC_Rd_En,
      O => \IP2Bus_Data[9]_i_2_n_0\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => prmry_ack_int
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d2
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d3
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d4
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d5
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d6
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_cdc_to
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d1_cdc_to
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d2
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d3
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d4
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d5
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d6
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d7
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d1_cdc_to
    );
p_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => p_in_d1_cdc_from_reg0,
      Q => p_in_d1_cdc_from,
      R => core_aresetn(0)
    );
s_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_in_d1_cdc_from,
      Q => s_out_d1_cdc_to,
      R => SR(0)
    );
s_out_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => SR(0)
    );
s_out_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => SR(0)
    );
s_out_d4_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => SR(0)
    );
s_out_d5_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => SR(0)
    );
s_out_d6_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d5,
      Q => s_out_d6,
      R => SR(0)
    );
s_out_d7_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d6,
      Q => s_out_d7,
      R => SR(0)
    );
\scndry_out_int_d1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_out_d4,
      I1 => s_out_d5,
      O => s_out_re
    );
scndry_out_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_re,
      Q => scndry_out_int_d1,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 29 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \IP2Bus_Data_reg[0]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[1]\ : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Global_Intr_En_reg : in STD_LOGIC;
    Lat_Status_Reg_Set_Rd_En : in STD_LOGIC;
    Lat_Sample_Interval_Rd_En_reg : in STD_LOGIC;
    Lat_Intr_Reg_Set_Rd_En : in STD_LOGIC;
    Lat_Status_Reg_FOC_Rd_En : in STD_LOGIC;
    Lat_Status_Reg_WIF_Rd_En : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \eventlog_cur_cnt_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized1\ : entity is "axi_perf_mon_v5_0_17_cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized1\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of p_in_d1_cdc_from : signal is "true";
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of p_level_out_d1_cdc_to : signal is "true";
  signal p_level_out_d2 : STD_LOGIC;
  attribute async_reg of p_level_out_d2 : signal is "true";
  signal p_level_out_d3 : STD_LOGIC;
  attribute async_reg of p_level_out_d3 : signal is "true";
  signal p_level_out_d4 : STD_LOGIC;
  attribute async_reg of p_level_out_d4 : signal is "true";
  signal p_level_out_d5 : STD_LOGIC;
  attribute async_reg of p_level_out_d5 : signal is "true";
  signal p_level_out_d6 : STD_LOGIC;
  attribute async_reg of p_level_out_d6 : signal is "true";
  signal p_level_out_d7 : STD_LOGIC;
  attribute async_reg of p_level_out_d7 : signal is "true";
  signal prmry_ack_int : STD_LOGIC;
  attribute async_reg of prmry_ack_int : signal is "true";
  signal s_level_out_bus_d1_cdc_to : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg of s_level_out_bus_d1_cdc_to : signal is "true";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_cdc_to : signal is "true";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  signal s_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_cdc_to : signal is "true";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  signal scndry_out_int_d1 : STD_LOGIC;
  attribute async_reg of scndry_out_int_d1 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[10]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[11]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[12]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[13]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[14]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[15]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[16]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[17]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[18]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[19]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[1]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[20]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[21]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[22]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[23]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[24]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[25]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[26]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[27]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[28]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[29]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[2]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[30]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[31]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[3]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[4]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[5]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[6]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[7]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[8]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d1_cdc_to_reg[9]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d1_cdc_to_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[0]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[10]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[11]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[12]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[13]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[14]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[15]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[16]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[17]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[18]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[19]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[1]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[20]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[21]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[22]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[23]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[24]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[25]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[26]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[27]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[28]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[29]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[2]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[30]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[31]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[3]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[4]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[5]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[6]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[7]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[8]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d2_reg[9]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d2_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[0]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[10]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[11]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[12]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[13]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[14]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[15]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[16]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[17]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[18]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[19]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[1]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[20]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[21]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[22]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[23]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[24]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[25]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[26]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[27]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[28]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[29]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[2]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[30]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[31]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[3]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[4]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[5]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[6]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[7]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[8]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d3_reg[9]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d3_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[0]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[10]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[11]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[12]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[13]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[14]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[15]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[16]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[17]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[18]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[19]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[1]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[20]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[21]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[22]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[23]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[24]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[25]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[26]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[27]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[28]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[29]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[2]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[30]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[31]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[3]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[4]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[5]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[6]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[7]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[8]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d4_reg[9]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d4_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[0]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[10]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[11]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[12]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[13]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[14]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[15]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[16]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[17]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[18]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[19]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[1]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[20]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[21]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[22]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[23]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[24]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[25]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[26]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[27]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[28]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[29]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[2]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[30]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[31]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[3]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[4]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[5]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[6]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[7]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[8]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d5_reg[9]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d5_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[0]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[10]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[11]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[12]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[13]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[14]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[15]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[16]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[17]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[18]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[19]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[1]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[20]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[21]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[22]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[23]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[24]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[25]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[26]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[27]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[28]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[29]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[2]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[30]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[31]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[3]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[4]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[5]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[6]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[7]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[8]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \s_level_out_bus_d6_reg[9]\ : label is std.standard.true;
  attribute KEEP of \s_level_out_bus_d6_reg[9]\ : label is "yes";
begin
  D(29 downto 0) <= s_level_out_bus_d4(31 downto 2);
  SR(0) <= \^sr\(0);
\IP2Bus_Data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00EA00AA00AA00"
    )
        port map (
      I0 => Global_Intr_En_reg,
      I1 => s_level_out_bus_d4(0),
      I2 => Lat_Status_Reg_Set_Rd_En,
      I3 => Lat_Sample_Interval_Rd_En_reg,
      I4 => Lat_Intr_Reg_Set_Rd_En,
      I5 => Lat_Status_Reg_FOC_Rd_En,
      O => \IP2Bus_Data_reg[0]\
    );
\IP2Bus_Data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C0000000A000"
    )
        port map (
      I0 => Lat_Status_Reg_WIF_Rd_En,
      I1 => s_level_out_bus_d4(1),
      I2 => Lat_Status_Reg_Set_Rd_En,
      I3 => Lat_Sample_Interval_Rd_En_reg,
      I4 => Lat_Intr_Reg_Set_Rd_En,
      I5 => Lat_Status_Reg_FOC_Rd_En,
      O => \IP2Bus_Data_reg[1]\
    );
bvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => prmry_ack_int
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_cdc_to
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => scndry_out_int_d1
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d1_cdc_to
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d2
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d1_cdc_to
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d3
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d4
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d5
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_d6
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d2
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d3
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d4
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d5
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d6
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d7
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_in_d1_cdc_from
    );
\s_level_out_bus_d1_cdc_to_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \eventlog_cur_cnt_reg[7]\(0),
      Q => s_level_out_bus_d1_cdc_to(0),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(10),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(11),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(12),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(13),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(14),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(15),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(16),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(17),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(18),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(19),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \eventlog_cur_cnt_reg[7]\(1),
      Q => s_level_out_bus_d1_cdc_to(1),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(20),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(21),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(22),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(23),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(24),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(25),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(26),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(27),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(28),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(29),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \eventlog_cur_cnt_reg[7]\(2),
      Q => s_level_out_bus_d1_cdc_to(2),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(30),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(31),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \eventlog_cur_cnt_reg[7]\(3),
      Q => s_level_out_bus_d1_cdc_to(3),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \eventlog_cur_cnt_reg[7]\(4),
      Q => s_level_out_bus_d1_cdc_to(4),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \eventlog_cur_cnt_reg[7]\(5),
      Q => s_level_out_bus_d1_cdc_to(5),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \eventlog_cur_cnt_reg[7]\(6),
      Q => s_level_out_bus_d1_cdc_to(6),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \eventlog_cur_cnt_reg[7]\(7),
      Q => s_level_out_bus_d1_cdc_to(7),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(8),
      R => \^sr\(0)
    );
\s_level_out_bus_d1_cdc_to_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => '0',
      Q => s_level_out_bus_d1_cdc_to(9),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(0),
      Q => s_level_out_bus_d2(0),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(10),
      Q => s_level_out_bus_d2(10),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(11),
      Q => s_level_out_bus_d2(11),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(12),
      Q => s_level_out_bus_d2(12),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(13),
      Q => s_level_out_bus_d2(13),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(14),
      Q => s_level_out_bus_d2(14),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(15),
      Q => s_level_out_bus_d2(15),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(16),
      Q => s_level_out_bus_d2(16),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(17),
      Q => s_level_out_bus_d2(17),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(18),
      Q => s_level_out_bus_d2(18),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(19),
      Q => s_level_out_bus_d2(19),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(1),
      Q => s_level_out_bus_d2(1),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(20),
      Q => s_level_out_bus_d2(20),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(21),
      Q => s_level_out_bus_d2(21),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(22),
      Q => s_level_out_bus_d2(22),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(23),
      Q => s_level_out_bus_d2(23),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(24),
      Q => s_level_out_bus_d2(24),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(25),
      Q => s_level_out_bus_d2(25),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(26),
      Q => s_level_out_bus_d2(26),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(27),
      Q => s_level_out_bus_d2(27),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(28),
      Q => s_level_out_bus_d2(28),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(29),
      Q => s_level_out_bus_d2(29),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(2),
      Q => s_level_out_bus_d2(2),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(30),
      Q => s_level_out_bus_d2(30),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(31),
      Q => s_level_out_bus_d2(31),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(3),
      Q => s_level_out_bus_d2(3),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(4),
      Q => s_level_out_bus_d2(4),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(5),
      Q => s_level_out_bus_d2(5),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(6),
      Q => s_level_out_bus_d2(6),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(7),
      Q => s_level_out_bus_d2(7),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(8),
      Q => s_level_out_bus_d2(8),
      R => \^sr\(0)
    );
\s_level_out_bus_d2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to(9),
      Q => s_level_out_bus_d2(9),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(0),
      Q => s_level_out_bus_d3(0),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(10),
      Q => s_level_out_bus_d3(10),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(11),
      Q => s_level_out_bus_d3(11),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(12),
      Q => s_level_out_bus_d3(12),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(13),
      Q => s_level_out_bus_d3(13),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(14),
      Q => s_level_out_bus_d3(14),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(15),
      Q => s_level_out_bus_d3(15),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(16),
      Q => s_level_out_bus_d3(16),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(17),
      Q => s_level_out_bus_d3(17),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(18),
      Q => s_level_out_bus_d3(18),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(19),
      Q => s_level_out_bus_d3(19),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(1),
      Q => s_level_out_bus_d3(1),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(20),
      Q => s_level_out_bus_d3(20),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(21),
      Q => s_level_out_bus_d3(21),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(22),
      Q => s_level_out_bus_d3(22),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(23),
      Q => s_level_out_bus_d3(23),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(24),
      Q => s_level_out_bus_d3(24),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(25),
      Q => s_level_out_bus_d3(25),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(26),
      Q => s_level_out_bus_d3(26),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(27),
      Q => s_level_out_bus_d3(27),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(28),
      Q => s_level_out_bus_d3(28),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(29),
      Q => s_level_out_bus_d3(29),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(2),
      Q => s_level_out_bus_d3(2),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(30),
      Q => s_level_out_bus_d3(30),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(31),
      Q => s_level_out_bus_d3(31),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(3),
      Q => s_level_out_bus_d3(3),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(4),
      Q => s_level_out_bus_d3(4),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(5),
      Q => s_level_out_bus_d3(5),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(6),
      Q => s_level_out_bus_d3(6),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(7),
      Q => s_level_out_bus_d3(7),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(8),
      Q => s_level_out_bus_d3(8),
      R => \^sr\(0)
    );
\s_level_out_bus_d3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2(9),
      Q => s_level_out_bus_d3(9),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(0),
      Q => s_level_out_bus_d4(0),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(10),
      Q => s_level_out_bus_d4(10),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(11),
      Q => s_level_out_bus_d4(11),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(12),
      Q => s_level_out_bus_d4(12),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(13),
      Q => s_level_out_bus_d4(13),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(14),
      Q => s_level_out_bus_d4(14),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(15),
      Q => s_level_out_bus_d4(15),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(16),
      Q => s_level_out_bus_d4(16),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(17),
      Q => s_level_out_bus_d4(17),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(18),
      Q => s_level_out_bus_d4(18),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(19),
      Q => s_level_out_bus_d4(19),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(1),
      Q => s_level_out_bus_d4(1),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(20),
      Q => s_level_out_bus_d4(20),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(21),
      Q => s_level_out_bus_d4(21),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(22),
      Q => s_level_out_bus_d4(22),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(23),
      Q => s_level_out_bus_d4(23),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(24),
      Q => s_level_out_bus_d4(24),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(25),
      Q => s_level_out_bus_d4(25),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(26),
      Q => s_level_out_bus_d4(26),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(27),
      Q => s_level_out_bus_d4(27),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(28),
      Q => s_level_out_bus_d4(28),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(29),
      Q => s_level_out_bus_d4(29),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(2),
      Q => s_level_out_bus_d4(2),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(30),
      Q => s_level_out_bus_d4(30),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(31),
      Q => s_level_out_bus_d4(31),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(3),
      Q => s_level_out_bus_d4(3),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(4),
      Q => s_level_out_bus_d4(4),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(5),
      Q => s_level_out_bus_d4(5),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(6),
      Q => s_level_out_bus_d4(6),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(7),
      Q => s_level_out_bus_d4(7),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(8),
      Q => s_level_out_bus_d4(8),
      R => \^sr\(0)
    );
\s_level_out_bus_d4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3(9),
      Q => s_level_out_bus_d4(9),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(0),
      Q => s_level_out_bus_d5(0),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(10),
      Q => s_level_out_bus_d5(10),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(11),
      Q => s_level_out_bus_d5(11),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(12),
      Q => s_level_out_bus_d5(12),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(13),
      Q => s_level_out_bus_d5(13),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(14),
      Q => s_level_out_bus_d5(14),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(15),
      Q => s_level_out_bus_d5(15),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(16),
      Q => s_level_out_bus_d5(16),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(17),
      Q => s_level_out_bus_d5(17),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(18),
      Q => s_level_out_bus_d5(18),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(19),
      Q => s_level_out_bus_d5(19),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(1),
      Q => s_level_out_bus_d5(1),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(20),
      Q => s_level_out_bus_d5(20),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(21),
      Q => s_level_out_bus_d5(21),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(22),
      Q => s_level_out_bus_d5(22),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(23),
      Q => s_level_out_bus_d5(23),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(24),
      Q => s_level_out_bus_d5(24),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(25),
      Q => s_level_out_bus_d5(25),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(26),
      Q => s_level_out_bus_d5(26),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(27),
      Q => s_level_out_bus_d5(27),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(28),
      Q => s_level_out_bus_d5(28),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(29),
      Q => s_level_out_bus_d5(29),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(2),
      Q => s_level_out_bus_d5(2),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(30),
      Q => s_level_out_bus_d5(30),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(31),
      Q => s_level_out_bus_d5(31),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(3),
      Q => s_level_out_bus_d5(3),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(4),
      Q => s_level_out_bus_d5(4),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(5),
      Q => s_level_out_bus_d5(5),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(6),
      Q => s_level_out_bus_d5(6),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(7),
      Q => s_level_out_bus_d5(7),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(8),
      Q => s_level_out_bus_d5(8),
      R => \^sr\(0)
    );
\s_level_out_bus_d5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d4(9),
      Q => s_level_out_bus_d5(9),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(0),
      Q => s_level_out_bus_d6(0),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(10),
      Q => s_level_out_bus_d6(10),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(11),
      Q => s_level_out_bus_d6(11),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(12),
      Q => s_level_out_bus_d6(12),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(13),
      Q => s_level_out_bus_d6(13),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(14),
      Q => s_level_out_bus_d6(14),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(15),
      Q => s_level_out_bus_d6(15),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(16),
      Q => s_level_out_bus_d6(16),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(17),
      Q => s_level_out_bus_d6(17),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(18),
      Q => s_level_out_bus_d6(18),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(19),
      Q => s_level_out_bus_d6(19),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(1),
      Q => s_level_out_bus_d6(1),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(20),
      Q => s_level_out_bus_d6(20),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(21),
      Q => s_level_out_bus_d6(21),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(22),
      Q => s_level_out_bus_d6(22),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(23),
      Q => s_level_out_bus_d6(23),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(24),
      Q => s_level_out_bus_d6(24),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(25),
      Q => s_level_out_bus_d6(25),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(26),
      Q => s_level_out_bus_d6(26),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(27),
      Q => s_level_out_bus_d6(27),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(28),
      Q => s_level_out_bus_d6(28),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(29),
      Q => s_level_out_bus_d6(29),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(2),
      Q => s_level_out_bus_d6(2),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(30),
      Q => s_level_out_bus_d6(30),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(31),
      Q => s_level_out_bus_d6(31),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(3),
      Q => s_level_out_bus_d6(3),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(4),
      Q => s_level_out_bus_d6(4),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(5),
      Q => s_level_out_bus_d6(5),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(6),
      Q => s_level_out_bus_d6(6),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(7),
      Q => s_level_out_bus_d6(7),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(8),
      Q => s_level_out_bus_d6(8),
      R => \^sr\(0)
    );
\s_level_out_bus_d6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d5(9),
      Q => s_level_out_bus_d6(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2\ is
  port (
    core_aresetn : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    core_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2\ : entity is "axi_perf_mon_v5_0_17_cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2\ is
  signal p_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of p_in_d1_cdc_from : signal is "true";
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of p_level_out_d1_cdc_to : signal is "true";
  signal p_level_out_d2 : STD_LOGIC;
  attribute async_reg of p_level_out_d2 : signal is "true";
  signal p_level_out_d3 : STD_LOGIC;
  attribute async_reg of p_level_out_d3 : signal is "true";
  signal p_level_out_d4 : STD_LOGIC;
  attribute async_reg of p_level_out_d4 : signal is "true";
  signal p_level_out_d5 : STD_LOGIC;
  attribute async_reg of p_level_out_d5 : signal is "true";
  signal p_level_out_d6 : STD_LOGIC;
  attribute async_reg of p_level_out_d6 : signal is "true";
  signal p_level_out_d7 : STD_LOGIC;
  attribute async_reg of p_level_out_d7 : signal is "true";
  signal prmry_ack_int : STD_LOGIC;
  attribute async_reg of prmry_ack_int : signal is "true";
  signal s_level_out_bus_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d1_cdc_to : signal is "true";
  signal s_level_out_bus_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  signal s_level_out_bus_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  signal s_level_out_bus_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  signal s_level_out_bus_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  signal s_level_out_bus_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_cdc_to : signal is "true";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  signal s_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_cdc_to : signal is "true";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  signal scndry_out_int_d1 : STD_LOGIC;
  attribute async_reg of scndry_out_int_d1 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => prmry_ack_int
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_cdc_to
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => scndry_out_int_d1
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_cdc_to
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d1_cdc_to
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d2
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d3
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d4
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d5
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d6
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d7
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_in_d1_cdc_from
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => \out\,
      Q => s_level_out_d1_cdc_to,
      R => core_aresetn
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => core_aresetn
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => core_aresetn
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => core_aresetn
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => core_aresetn
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => core_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_3\ is
  port (
    core_aresetn : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    core_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_3\ : entity is "axi_perf_mon_v5_0_17_cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_3\ is
  signal p_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of p_in_d1_cdc_from : signal is "true";
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of p_level_out_d1_cdc_to : signal is "true";
  signal p_level_out_d2 : STD_LOGIC;
  attribute async_reg of p_level_out_d2 : signal is "true";
  signal p_level_out_d3 : STD_LOGIC;
  attribute async_reg of p_level_out_d3 : signal is "true";
  signal p_level_out_d4 : STD_LOGIC;
  attribute async_reg of p_level_out_d4 : signal is "true";
  signal p_level_out_d5 : STD_LOGIC;
  attribute async_reg of p_level_out_d5 : signal is "true";
  signal p_level_out_d6 : STD_LOGIC;
  attribute async_reg of p_level_out_d6 : signal is "true";
  signal p_level_out_d7 : STD_LOGIC;
  attribute async_reg of p_level_out_d7 : signal is "true";
  signal prmry_ack_int : STD_LOGIC;
  attribute async_reg of prmry_ack_int : signal is "true";
  signal s_level_out_bus_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d1_cdc_to : signal is "true";
  signal s_level_out_bus_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  signal s_level_out_bus_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  signal s_level_out_bus_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  signal s_level_out_bus_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  signal s_level_out_bus_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_cdc_to : signal is "true";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  signal s_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_cdc_to : signal is "true";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  signal scndry_out_int_d1 : STD_LOGIC;
  attribute async_reg of scndry_out_int_d1 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => prmry_ack_int
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_cdc_to
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => scndry_out_int_d1
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_cdc_to
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d1_cdc_to
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d2
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d3
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d4
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d5
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d6
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d7
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_in_d1_cdc_from
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => \out\,
      Q => s_level_out_d1_cdc_to,
      R => core_aresetn
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => core_aresetn
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => core_aresetn
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => core_aresetn
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => core_aresetn
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => core_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_4\ is
  port (
    \out\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    trigger_in : in STD_LOGIC;
    core_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_4\ : entity is "axi_perf_mon_v5_0_17_cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_4\ is
  signal p_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of p_in_d1_cdc_from : signal is "true";
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute async_reg of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of p_level_out_d1_cdc_to : signal is "true";
  signal p_level_out_d2 : STD_LOGIC;
  attribute async_reg of p_level_out_d2 : signal is "true";
  signal p_level_out_d3 : STD_LOGIC;
  attribute async_reg of p_level_out_d3 : signal is "true";
  signal p_level_out_d4 : STD_LOGIC;
  attribute async_reg of p_level_out_d4 : signal is "true";
  signal p_level_out_d5 : STD_LOGIC;
  attribute async_reg of p_level_out_d5 : signal is "true";
  signal p_level_out_d6 : STD_LOGIC;
  attribute async_reg of p_level_out_d6 : signal is "true";
  signal p_level_out_d7 : STD_LOGIC;
  attribute async_reg of p_level_out_d7 : signal is "true";
  signal prmry_ack_int : STD_LOGIC;
  attribute async_reg of prmry_ack_int : signal is "true";
  signal s_level_out_bus_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d1_cdc_to : signal is "true";
  signal s_level_out_bus_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  signal s_level_out_bus_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  signal s_level_out_bus_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  signal s_level_out_bus_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  signal s_level_out_bus_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_cdc_to : signal is "true";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  signal s_out_d1_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_cdc_to : signal is "true";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  signal scndry_out_int_d1 : STD_LOGIC;
  attribute async_reg of scndry_out_int_d1 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_cdc_to_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
begin
  \out\ <= s_level_out_d4;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => prmry_ack_int
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_cdc_to
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => scndry_out_int_d1
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_cdc_to
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d1_cdc_to
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3
    );
i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4
    );
i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5
    );
i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d2
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d3
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d4
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d5
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d6
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_out_d7
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_in_d1_cdc_from
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => trigger_in,
      Q => s_level_out_d1_cdc_to,
      R => SR(0)
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => SR(0)
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => SR(0)
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => SR(0)
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => SR(0)
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_counter__parameterized0\ is
  port (
    A : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \Count_Out_i_reg[0]_0\ : out STD_LOGIC;
    over_flow_cap_reg : out STD_LOGIC;
    core_aclk : in STD_LOGIC;
    Mon_Wr_En_reg : in STD_LOGIC;
    Event_Log_En_sync : in STD_LOGIC;
    Event_Log_En_D1 : in STD_LOGIC;
    core_aresetn : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_counter__parameterized0\ : entity is "axi_perf_mon_v5_0_17_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_counter__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_counter__parameterized0\ is
  signal \^a\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Carry_Out : STD_LOGIC;
  signal Carry_Out_i_1_n_0 : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_1\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_10\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_11\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_12\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_13\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_14\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_15\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_2\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_3\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_5\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_6\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_7\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_8\ : STD_LOGIC;
  signal \Count_Out_i0_carry__0_n_9\ : STD_LOGIC;
  signal Count_Out_i0_carry_n_0 : STD_LOGIC;
  signal Count_Out_i0_carry_n_1 : STD_LOGIC;
  signal Count_Out_i0_carry_n_10 : STD_LOGIC;
  signal Count_Out_i0_carry_n_11 : STD_LOGIC;
  signal Count_Out_i0_carry_n_12 : STD_LOGIC;
  signal Count_Out_i0_carry_n_13 : STD_LOGIC;
  signal Count_Out_i0_carry_n_14 : STD_LOGIC;
  signal Count_Out_i0_carry_n_15 : STD_LOGIC;
  signal Count_Out_i0_carry_n_2 : STD_LOGIC;
  signal Count_Out_i0_carry_n_3 : STD_LOGIC;
  signal Count_Out_i0_carry_n_5 : STD_LOGIC;
  signal Count_Out_i0_carry_n_6 : STD_LOGIC;
  signal Count_Out_i0_carry_n_7 : STD_LOGIC;
  signal Count_Out_i0_carry_n_8 : STD_LOGIC;
  signal Count_Out_i0_carry_n_9 : STD_LOGIC;
  signal \Count_Out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[10]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[12]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[13]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[14]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[15]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \Count_Out_i[16]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \Count_Out_i[9]_i_1_n_0\ : STD_LOGIC;
  signal \^count_out_i_reg[0]_0\ : STD_LOGIC;
  signal Overflow : STD_LOGIC;
  signal Overflow_D1 : STD_LOGIC;
  signal NLW_Count_Out_i0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Count_Out_i0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of Count_Out_i0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Count_Out_i0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Count_Out_i[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Count_Out_i[10]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Count_Out_i[11]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Count_Out_i[12]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Count_Out_i[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Count_Out_i[14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Count_Out_i[15]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Count_Out_i[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Count_Out_i[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Count_Out_i[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Count_Out_i[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Count_Out_i[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Count_Out_i[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Count_Out_i[7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Count_Out_i[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Count_Out_i[9]_i_1\ : label is "soft_lutpair24";
begin
  A(15 downto 0) <= \^a\(15 downto 0);
  \Count_Out_i_reg[0]_0\ <= \^count_out_i_reg[0]_0\;
Carry_Out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Overflow,
      I1 => Overflow_D1,
      O => Carry_Out_i_1_n_0
    );
Carry_Out_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => Carry_Out_i_1_n_0,
      Q => Carry_Out,
      R => \^count_out_i_reg[0]_0\
    );
Count_Out_i0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => \^a\(0),
      CI_TOP => '0',
      CO(7) => Count_Out_i0_carry_n_0,
      CO(6) => Count_Out_i0_carry_n_1,
      CO(5) => Count_Out_i0_carry_n_2,
      CO(4) => Count_Out_i0_carry_n_3,
      CO(3) => NLW_Count_Out_i0_carry_CO_UNCONNECTED(3),
      CO(2) => Count_Out_i0_carry_n_5,
      CO(1) => Count_Out_i0_carry_n_6,
      CO(0) => Count_Out_i0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7) => Count_Out_i0_carry_n_8,
      O(6) => Count_Out_i0_carry_n_9,
      O(5) => Count_Out_i0_carry_n_10,
      O(4) => Count_Out_i0_carry_n_11,
      O(3) => Count_Out_i0_carry_n_12,
      O(2) => Count_Out_i0_carry_n_13,
      O(1) => Count_Out_i0_carry_n_14,
      O(0) => Count_Out_i0_carry_n_15,
      S(7 downto 0) => \^a\(8 downto 1)
    );
\Count_Out_i0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => Count_Out_i0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_Count_Out_i0_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \Count_Out_i0_carry__0_n_1\,
      CO(5) => \Count_Out_i0_carry__0_n_2\,
      CO(4) => \Count_Out_i0_carry__0_n_3\,
      CO(3) => \NLW_Count_Out_i0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \Count_Out_i0_carry__0_n_5\,
      CO(1) => \Count_Out_i0_carry__0_n_6\,
      CO(0) => \Count_Out_i0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \Count_Out_i0_carry__0_n_8\,
      O(6) => \Count_Out_i0_carry__0_n_9\,
      O(5) => \Count_Out_i0_carry__0_n_10\,
      O(4) => \Count_Out_i0_carry__0_n_11\,
      O(3) => \Count_Out_i0_carry__0_n_12\,
      O(2) => \Count_Out_i0_carry__0_n_13\,
      O(1) => \Count_Out_i0_carry__0_n_14\,
      O(0) => \Count_Out_i0_carry__0_n_15\,
      S(7) => Overflow,
      S(6 downto 0) => \^a\(15 downto 9)
    );
\Count_Out_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => Mon_Wr_En_reg,
      I1 => Event_Log_En_sync,
      I2 => Event_Log_En_D1,
      I3 => \^a\(0),
      O => \Count_Out_i[0]_i_1_n_0\
    );
\Count_Out_i[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \Count_Out_i0_carry__0_n_14\,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[10]_i_1_n_0\
    );
\Count_Out_i[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \Count_Out_i0_carry__0_n_13\,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[11]_i_1_n_0\
    );
\Count_Out_i[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \Count_Out_i0_carry__0_n_12\,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[12]_i_1_n_0\
    );
\Count_Out_i[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \Count_Out_i0_carry__0_n_11\,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[13]_i_1_n_0\
    );
\Count_Out_i[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \Count_Out_i0_carry__0_n_10\,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[14]_i_1_n_0\
    );
\Count_Out_i[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Mon_Wr_En_reg,
      I1 => Event_Log_En_sync,
      O => \Count_Out_i[15]_i_1_n_0\
    );
\Count_Out_i[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \Count_Out_i0_carry__0_n_9\,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[15]_i_2_n_0\
    );
\Count_Out_i[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008800A0000000A0"
    )
        port map (
      I0 => core_aresetn,
      I1 => \Count_Out_i0_carry__0_n_8\,
      I2 => Overflow,
      I3 => Mon_Wr_En_reg,
      I4 => Event_Log_En_sync,
      I5 => Event_Log_En_D1,
      O => \Count_Out_i[16]_i_1_n_0\
    );
\Count_Out_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => Count_Out_i0_carry_n_15,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[1]_i_1_n_0\
    );
\Count_Out_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => Count_Out_i0_carry_n_14,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[2]_i_1_n_0\
    );
\Count_Out_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => Count_Out_i0_carry_n_13,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[3]_i_1_n_0\
    );
\Count_Out_i[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => Count_Out_i0_carry_n_12,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[4]_i_1_n_0\
    );
\Count_Out_i[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => Count_Out_i0_carry_n_11,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[5]_i_1_n_0\
    );
\Count_Out_i[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => Count_Out_i0_carry_n_10,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[6]_i_1_n_0\
    );
\Count_Out_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => Count_Out_i0_carry_n_9,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[7]_i_1_n_0\
    );
\Count_Out_i[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => Count_Out_i0_carry_n_8,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[8]_i_1_n_0\
    );
\Count_Out_i[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \Count_Out_i0_carry__0_n_15\,
      I1 => Mon_Wr_En_reg,
      I2 => Event_Log_En_sync,
      I3 => Event_Log_En_D1,
      O => \Count_Out_i[9]_i_1_n_0\
    );
\Count_Out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[0]_i_1_n_0\,
      Q => \^a\(0),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[10]_i_1_n_0\,
      Q => \^a\(10),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[11]_i_1_n_0\,
      Q => \^a\(11),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[12]_i_1_n_0\,
      Q => \^a\(12),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[13]_i_1_n_0\,
      Q => \^a\(13),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[14]_i_1_n_0\,
      Q => \^a\(14),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[15]_i_2_n_0\,
      Q => \^a\(15),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => \Count_Out_i[16]_i_1_n_0\,
      Q => Overflow,
      R => '0'
    );
\Count_Out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[1]_i_1_n_0\,
      Q => \^a\(1),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[2]_i_1_n_0\,
      Q => \^a\(2),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[3]_i_1_n_0\,
      Q => \^a\(3),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[4]_i_1_n_0\,
      Q => \^a\(4),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[5]_i_1_n_0\,
      Q => \^a\(5),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[6]_i_1_n_0\,
      Q => \^a\(6),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[7]_i_1_n_0\,
      Q => \^a\(7),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[8]_i_1_n_0\,
      Q => \^a\(8),
      R => \^count_out_i_reg[0]_0\
    );
\Count_Out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => \Count_Out_i[15]_i_1_n_0\,
      D => \Count_Out_i[9]_i_1_n_0\,
      Q => \^a\(9),
      R => \^count_out_i_reg[0]_0\
    );
Overflow_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => Overflow,
      Q => Overflow_D1,
      R => \^count_out_i_reg[0]_0\
    );
over_flow_cap_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => core_aresetn,
      I1 => Carry_Out,
      I2 => p_0_in(0),
      I3 => wr_en,
      O => over_flow_cap_reg
    );
trigger_in_ack_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => core_aresetn,
      O => \^count_out_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset is
  port (
    \out\ : out STD_LOGIC;
    core_aclk : in STD_LOGIC;
    capture_event : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset is
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of q_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of q_reg : label is "yes";
begin
q_reg: unisim.vcomponents.FDPE
     port map (
      C => core_aclk,
      CE => '1',
      D => '0',
      PRE => capture_event,
      Q => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_0 is
  port (
    \out\ : out STD_LOGIC;
    core_aclk : in STD_LOGIC;
    reset_event : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_0 : entity is "axi_perf_mon_v5_0_17_dff_async_reset";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_0 is
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of q_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of q_reg : label is "yes";
begin
q_reg: unisim.vcomponents.FDPE
     port map (
      C => core_aclk,
      CE => '1',
      D => '0',
      PRE => reset_event,
      Q => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_1 is
  port (
    \out\ : out STD_LOGIC;
    q_reg_0 : in STD_LOGIC;
    core_aclk : in STD_LOGIC;
    capture_event : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_1 : entity is "axi_perf_mon_v5_0_17_dff_async_reset";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_1 is
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of q_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of q_reg : label is "yes";
begin
q_reg: unisim.vcomponents.FDPE
     port map (
      C => core_aclk,
      CE => '1',
      D => q_reg_0,
      PRE => capture_event,
      Q => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_2 is
  port (
    \out\ : out STD_LOGIC;
    q_reg_0 : in STD_LOGIC;
    core_aclk : in STD_LOGIC;
    reset_event : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_2 : entity is "axi_perf_mon_v5_0_17_dff_async_reset";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_2 is
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of q_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of q_reg : label is "yes";
begin
q_reg: unisim.vcomponents.FDPE
     port map (
      C => core_aclk,
      CE => '1',
      D => q_reg_0,
      PRE => reset_event,
      Q => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_interrupt_module is
  port (
    Intr_Reg_ISR : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    Intr_Reg_IER : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_out : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC;
    Global_Intr_En : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_interrupt_module;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_interrupt_module is
  signal Interrupt0 : STD_LOGIC;
  signal \^intr_reg_ier\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^intr_reg_isr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Intr_Reg_IER(0) <= \^intr_reg_ier\(0);
  Intr_Reg_ISR(0) <= \^intr_reg_isr\(0);
\GEN_ISR_REG[1].ISR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out,
      Q => \^intr_reg_isr\(0),
      R => '0'
    );
\IER_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i_reg[5]\,
      Q => \^intr_reg_ier\(0),
      R => SR(0)
    );
Interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^intr_reg_isr\(0),
      I1 => \^intr_reg_ier\(0),
      I2 => Global_Intr_En,
      O => Interrupt0
    );
Interrupt_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Interrupt0,
      Q => interrupt,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count_value_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \gen_fwft.count_en\ : STD_LOGIC;
  attribute HLUTNM : string;
  attribute HLUTNM of \gwdc.wr_data_count_i[7]_i_15\ : label is "lutpair0";
  attribute HLUTNM of \gwdc.wr_data_count_i[7]_i_7\ : label is "lutpair0";
begin
  DI(0) <= \^di\(0);
  Q(0) <= \^q\(0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AA9A5A5"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => ram_empty_i,
      I3 => rd_en,
      I4 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C133"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I1 => ram_empty_i,
      I2 => rd_en,
      I3 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      O => \gen_fwft.count_en\
    );
\count_value_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA5955AAAAAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => count_value_i(0),
      O => \count_value_i[1]_i_3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.count_en\,
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => count_value_i(0),
      R => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.count_en\,
      D => \count_value_i[1]_i_3_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\gwdc.wr_data_count_i[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^di\(0),
      I1 => \count_value_i_reg[1]_0\(1),
      I2 => \^q\(0),
      I3 => \count_value_i_reg[1]_1\(1),
      O => S(1)
    );
\gwdc.wr_data_count_i[7]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_1\(0),
      O => S(0)
    );
\gwdc.wr_data_count_i[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \count_value_i_reg[1]_0\(0),
      O => \^di\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  port (
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    ram_full_i0 : out STD_LOGIC;
    ram_empty_i0 : out STD_LOGIC;
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_reg\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    \gen_rst_cc.fifo_wr_rst_i_reg\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_i_1\ : label is "soft_lutpair0";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40BF"
    )
        port map (
      I0 => rd_en,
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FFF700"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA2A00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[7]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \count_value_i_reg_n_0_[7]\,
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^count_value_i_reg[0]_0\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[7]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^count_value_i_reg[0]_0\,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[7]\,
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444FCCC"
    )
        port map (
      I0 => leaving_empty0,
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => wr_en,
      I3 => going_full1,
      I4 => \^count_value_i_reg[0]_0\,
      O => ram_full_i0
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i_reg[7]_0\(6),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0\,
      I3 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0\,
      O => leaving_empty0
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i_reg[6]_0\(6),
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0\,
      I3 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0\,
      O => going_full1
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[7]_0\(3),
      I2 => \count_value_i_reg[7]_0\(5),
      I3 => \^q\(5),
      I4 => \count_value_i_reg[7]_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[7]_0\(0),
      I2 => \count_value_i_reg[7]_0\(2),
      I3 => \^q\(2),
      I4 => \count_value_i_reg[7]_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[6]_0\(3),
      I2 => \count_value_i_reg[6]_0\(5),
      I3 => \^q\(5),
      I4 => \count_value_i_reg[6]_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[6]_0\(0),
      I2 => \count_value_i_reg[6]_0\(2),
      I3 => \^q\(2),
      I4 => \count_value_i_reg[6]_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABF00BF"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => going_full1,
      I2 => wr_en,
      I3 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\,
      I4 => leaving_empty0,
      O => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_reg\
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444F4F"
    )
        port map (
      I0 => leaving_empty0,
      I1 => ram_empty_i,
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I3 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\,
      I4 => wr_en,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i_reg[7]_0\(6),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(5)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i_reg[7]_0\(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(4)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \count_value_i_reg[7]_0\(4),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(3)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[7]_0\(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(2)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count_value_i_reg[7]_0\(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(1)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[6]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[7]_0\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(0)
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F7"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^count_value_i_reg[0]_0\
    );
\gwdc.wr_data_count_i[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \count_value_i_reg[7]_0\(4),
      I2 => \^q\(5),
      I3 => \count_value_i_reg[7]_0\(5),
      O => S(2)
    );
\gwdc.wr_data_count_i[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[7]_0\(3),
      I2 => \^q\(4),
      I3 => \count_value_i_reg[7]_0\(4),
      O => S(1)
    );
\gwdc.wr_data_count_i[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count_value_i_reg[7]_0\(2),
      I2 => \^q\(3),
      I3 => \count_value_i_reg[7]_0\(3),
      O => S(0)
    );
\gwdc.wr_data_count_i[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[7]_0\(1),
      O => DI(0)
    );
\gwdc.wr_data_count_i[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i_reg[7]_0\(6),
      I2 => \count_value_i_reg_n_0_[7]\,
      I3 => \count_value_i_reg[7]_0\(7),
      O => S(4)
    );
\gwdc.wr_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i_reg[7]_0\(5),
      I2 => \^q\(6),
      I3 => \count_value_i_reg[7]_0\(6),
      O => S(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_6\ is
  port (
    \gen_pntr_flags_cc.ram_empty_i_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ram_empty_i : in STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_rst_cc.fifo_wr_rst_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_rst_cc.fifo_wr_rst_i_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[6]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[5]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_6\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_6\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_13_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_gwdc.wr_data_count_i_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_gwdc.wr_data_count_i_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_value_i[5]_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_value_i[6]_i_1__1\ : label is "soft_lutpair4";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[7]_i_2__0_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \count_value_i[7]_i_2__0_n_0\,
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \count_value_i[7]_i_2__0_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(6),
      I5 => \^q\(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \gen_rst_cc.fifo_wr_rst_i_reg\,
      I3 => wr_en,
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\,
      I5 => \^q\(1),
      O => \count_value_i[7]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\gen_pntr_flags_cc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1551555555555555"
    )
        port map (
      I0 => ram_empty_i,
      I1 => \gen_fwft.curr_fwft_state_reg[0]\,
      I2 => \^q\(6),
      I3 => \count_value_i_reg[6]_0\(6),
      I4 => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      I5 => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\,
      O => \gen_pntr_flags_cc.ram_empty_i_reg\
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[6]_0\(3),
      I2 => \count_value_i_reg[6]_0\(5),
      I3 => \^q\(5),
      I4 => \count_value_i_reg[6]_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[6]_0\(0),
      I2 => \count_value_i_reg[6]_0\(2),
      I3 => \^q\(2),
      I4 => \count_value_i_reg[6]_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \^q\(0),
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_n_2\,
      CO(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_n_3\,
      CO(3) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_n_5\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_n_6\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_n_7\,
      DI(7) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_DI_UNCONNECTED\(7),
      DI(6) => '0',
      DI(5 downto 1) => \^q\(5 downto 1),
      DI(0) => \gen_rst_cc.fifo_wr_rst_i_reg_0\(0),
      O(7) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_O_UNCONNECTED\(7),
      O(6 downto 0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(6 downto 0),
      S(7) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_i_1_S_UNCONNECTED\(7),
      S(6 downto 0) => \count_value_i_reg[6]_1\(6 downto 0)
    );
\gwdc.wr_data_count_i[7]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[5]_0\(0),
      I3 => \count_value_i_reg[5]_0\(1),
      I4 => \^q\(2),
      O => \gwdc.wr_data_count_i[7]_i_13_n_0\
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i_reg[5]_0\(4),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \count_value_i_reg[5]_0\(3),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[5]_0\(2),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count_value_i_reg[5]_0\(1),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \NLW_gwdc.wr_data_count_i_reg[7]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(5) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(4) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CO(3) => \NLW_gwdc.wr_data_count_i_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_5\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_6\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      DI(5) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      DI(4) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      DI(3) => \gwdc.wr_data_count_i[7]_i_5_n_0\,
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^q\(0),
      O(7 downto 1) => D(6 downto 0),
      O(0) => \NLW_gwdc.wr_data_count_i_reg[7]_i_1_O_UNCONNECTED\(0),
      S(7 downto 3) => S(6 downto 2),
      S(2) => \gwdc.wr_data_count_i[7]_i_13_n_0\,
      S(1 downto 0) => S(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_fwft.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_rst_cc.fifo_wr_rst_i_reg\ : in STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair3";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40BF"
    )
        port map (
      I0 => rd_en,
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FFF700"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA2A00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_fwft.curr_fwft_state_reg[1]\(0),
      I2 => \gen_fwft.curr_fwft_state_reg[1]\(1),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.curr_fwft_state_reg[0]\,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_7\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_rst_cc.fifo_wr_rst_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    \gen_rst_cc.fifo_wr_rst_i_reg_0\ : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_7\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_9_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count_value_i[5]_i_1__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count_value_i[6]_i_1__2\ : label is "soft_lutpair7";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \gen_rst_cc.fifo_wr_rst_i_reg\,
      I3 => wr_en,
      I4 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\,
      I5 => \^q\(1),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => \gen_rst_cc.fifo_wr_rst_i_reg\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i_reg[6]_0\(6),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i_reg[6]_0\(5),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \count_value_i_reg[6]_0\(4),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_5_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i_reg[6]_0\(3),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_6_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \count_value_i_reg[6]_0\(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_7_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[6]_0\(1),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_8_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[6]_0\(0),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_9_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \gen_rst_cc.fifo_wr_rst_i_reg_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_n_2\,
      CO(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_n_3\,
      CO(3) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_n_5\,
      CO(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_n_6\,
      CO(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_n_7\,
      DI(7) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_DI_UNCONNECTED\(7),
      DI(6) => '0',
      DI(5 downto 0) => \^q\(5 downto 0),
      O(7) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_O_UNCONNECTED\(7),
      O(6 downto 0) => D(6 downto 0),
      S(7) => \NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]_i_1_S_UNCONNECTED\(7),
      S(6) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_3_n_0\,
      S(5) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_4_n_0\,
      S(4) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_5_n_0\,
      S(3) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_6_n_0\,
      S(2) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_7_n_0\,
      S(1) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_8_n_0\,
      S(0) => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    \gen_rst_cc.fifo_wr_rst_i_reg\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
begin
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_i_reg\,
      Q => rst_d1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  port (
    \count_value_i_reg[1]\ : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ : out STD_LOGIC;
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow_i0 : out STD_LOGIC;
    underflow_i0 : out STD_LOGIC;
    \count_value_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    ram_wr_en_pf_q : in STD_LOGIC;
    prog_full_i215_in : in STD_LOGIC;
    ram_rd_en_pf_q : in STD_LOGIC;
    rst : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    write_only_q : in STD_LOGIC;
    prog_empty : in STD_LOGIC;
    prog_empty_i1 : in STD_LOGIC;
    read_only_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_en : in STD_LOGIC;
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    \gen_fwft.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gen_fwft.empty_fwft_i_reg\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  signal \^count_value_i_reg[1]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gof.overflow_i_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \guf.underflow_i_i_1\ : label is "soft_lutpair12";
begin
  \count_value_i_reg[1]\ <= \^count_value_i_reg[1]\;
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => \^count_value_i_reg[1]\,
      I1 => Q(0),
      I2 => ram_empty_i,
      I3 => Q(1),
      O => \count_value_i_reg[1]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF04FF"
    )
        port map (
      I0 => \^count_value_i_reg[1]\,
      I1 => wr_en,
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\,
      I3 => \gen_fwft.curr_fwft_state_reg[0]\,
      I4 => \gen_fwft.empty_fwft_i_reg\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF04FF0000FB00"
    )
        port map (
      I0 => \^count_value_i_reg[1]\,
      I1 => wr_en,
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\,
      I3 => \gen_fwft.curr_fwft_state_reg[0]\,
      I4 => \gen_fwft.empty_fwft_i_reg\,
      I5 => \count_value_i_reg[0]\(0),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_0\(0)
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFC4C"
    )
        port map (
      I0 => write_only_q,
      I1 => prog_empty,
      I2 => prog_empty_i1,
      I3 => read_only_q,
      I4 => \^count_value_i_reg[1]\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^count_value_i_reg[1]\,
      I1 => wr_en,
      I2 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\,
      I3 => \gen_fwft.curr_fwft_state_reg[0]\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008AEA"
    )
        port map (
      I0 => prog_full,
      I1 => ram_wr_en_pf_q,
      I2 => prog_full_i215_in,
      I3 => ram_rd_en_pf_q,
      I4 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \^count_value_i_reg[1]\,
      I1 => rst_d1,
      I2 => rst,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0\
    );
\gen_rst_cc.fifo_wr_rst_i_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_i,
      Q => \^count_value_i_reg[1]\,
      R => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\,
      I1 => wr_en,
      I2 => \^count_value_i_reg[1]\,
      O => E(0)
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => wr_en,
      I1 => \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => \^count_value_i_reg[1]\,
      O => overflow_i0
    );
\grdc.rd_data_count_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^count_value_i_reg[1]\,
      I1 => Q(0),
      I2 => Q(1),
      O => SR(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => rd_en,
      I1 => \gen_fwft.empty_fwft_i_reg\,
      I2 => \^count_value_i_reg[1]\,
      O => underflow_i0
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 55 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 55 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 55 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 55 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7168;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 7;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : integer;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 56;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d56";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 55;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d56";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 55;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 7168;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 511;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 55;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(55) <= \<const0>\;
  douta(54) <= \<const0>\;
  douta(53) <= \<const0>\;
  douta(52) <= \<const0>\;
  douta(51) <= \<const0>\;
  douta(50) <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 1,
      DOB_REG => 1,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(14 downto 13) => B"00",
      ADDRARDADDR(12 downto 6) => addrb(6 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(14 downto 13) => B"00",
      ADDRBWRADDR(12 downto 6) => addra(6 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => dina(31 downto 0),
      DINBDIN(31 downto 24) => B"11111111",
      DINBDIN(23 downto 0) => dina(55 downto 32),
      DINPADINP(3 downto 0) => B"1111",
      DINPBDINP(3 downto 0) => B"1111",
      DOUTADOUT(31 downto 0) => doutb(31 downto 0),
      DOUTBDOUT(31 downto 24) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTBDOUT_UNCONNECTED\(31 downto 24),
      DOUTBDOUT(23 downto 0) => doutb(55 downto 32),
      DOUTPADOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '1',
      ENARDEN => enb,
      ENBWREN => ena,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => regceb,
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => rstb,
      RSTREGB => '0',
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED\,
      SLEEP => '0',
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => ena,
      WEBWE(6) => ena,
      WEBWE(5) => ena,
      WEBWE(4) => ena,
      WEBWE(3) => ena,
      WEBWE(2) => ena,
      WEBWE(1) => ena,
      WEBWE(0) => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_flags_gen_trace is
  port (
    Slot_0_Log_En_Marked : out STD_LOGIC;
    \Mon_Wr_Data_reg[9]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    core_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_wvalid : in STD_LOGIC;
    slot_0_axi_wready : in STD_LOGIC;
    core_aresetn : in STD_LOGIC;
    slot_0_axi_wlast : in STD_LOGIC;
    slot_0_axi_rready : in STD_LOGIC;
    slot_0_axi_rvalid : in STD_LOGIC;
    slot_0_axi_rlast : in STD_LOGIC;
    Use_Ext_Trig_Log : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_ext_trig_stop : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_flags_gen_trace;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_flags_gen_trace is
  signal Ext_Trig_log_en : STD_LOGIC;
  signal Ext_Triggers_Sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Ext_Triggers_Sync_d1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^mon_wr_data_reg[9]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Mon_Wr_En_i_2_n_0 : STD_LOGIC;
  signal Read_going_on : STD_LOGIC;
  signal Read_going_on_i_1_n_0 : STD_LOGIC;
  signal Write_going_on : STD_LOGIC;
  signal Write_going_on_i_1_n_0 : STD_LOGIC;
  signal ext_trig_cdc_sync_n_2 : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 5 downto 1 );
begin
  \Mon_Wr_Data_reg[9]\(6 downto 0) <= \^mon_wr_data_reg[9]\(6 downto 0);
Ext_Trig_log_en_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => ext_trig_cdc_sync_n_2,
      Q => Ext_Trig_log_en,
      R => '0'
    );
\Ext_Triggers_Sync_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => Ext_Triggers_Sync(0),
      Q => Ext_Triggers_Sync_d1(0),
      R => SR(0)
    );
\Ext_Triggers_Sync_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => Ext_Triggers_Sync(1),
      Q => Ext_Triggers_Sync_d1(1),
      R => SR(0)
    );
\Flags[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => Write_going_on,
      I1 => Q(1),
      I2 => slot_0_axi_wvalid,
      I3 => slot_0_axi_wready,
      O => p_2_out(1)
    );
\Flags[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => Read_going_on,
      I1 => Q(0),
      I2 => slot_0_axi_rready,
      I3 => slot_0_axi_rvalid,
      O => p_2_out(5)
    );
\Flags_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => D(0),
      Q => \^mon_wr_data_reg[9]\(0),
      R => SR(0)
    );
\Flags_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => p_2_out(1),
      Q => \^mon_wr_data_reg[9]\(1),
      R => SR(0)
    );
\Flags_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => D(1),
      Q => \^mon_wr_data_reg[9]\(2),
      R => SR(0)
    );
\Flags_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => D(2),
      Q => \^mon_wr_data_reg[9]\(3),
      R => SR(0)
    );
\Flags_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => D(3),
      Q => \^mon_wr_data_reg[9]\(4),
      R => SR(0)
    );
\Flags_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => p_2_out(5),
      Q => \^mon_wr_data_reg[9]\(5),
      R => SR(0)
    );
\Flags_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => D(4),
      Q => \^mon_wr_data_reg[9]\(6),
      R => SR(0)
    );
Mon_Wr_En_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFBFBAA"
    )
        port map (
      I0 => Mon_Wr_En_i_2_n_0,
      I1 => Use_Ext_Trig_Log,
      I2 => Ext_Trig_log_en,
      I3 => \^mon_wr_data_reg[9]\(5),
      I4 => \^mon_wr_data_reg[9]\(2),
      I5 => \^mon_wr_data_reg[9]\(3),
      O => Slot_0_Log_En_Marked
    );
Mon_Wr_En_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFF0FFF0FEE0E"
    )
        port map (
      I0 => \^mon_wr_data_reg[9]\(6),
      I1 => \^mon_wr_data_reg[9]\(4),
      I2 => Use_Ext_Trig_Log,
      I3 => Ext_Trig_log_en,
      I4 => \^mon_wr_data_reg[9]\(1),
      I5 => \^mon_wr_data_reg[9]\(0),
      O => Mon_Wr_En_i_2_n_0
    );
Read_going_on_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A888888"
    )
        port map (
      I0 => core_aresetn,
      I1 => Read_going_on,
      I2 => slot_0_axi_rlast,
      I3 => slot_0_axi_rvalid,
      I4 => slot_0_axi_rready,
      O => Read_going_on_i_1_n_0
    );
Read_going_on_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => Read_going_on_i_1_n_0,
      Q => Read_going_on,
      R => '0'
    );
Write_going_on_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A888888"
    )
        port map (
      I0 => core_aresetn,
      I1 => Write_going_on,
      I2 => slot_0_axi_wlast,
      I3 => slot_0_axi_wready,
      I4 => slot_0_axi_wvalid,
      O => Write_going_on_i_1_n_0
    );
Write_going_on_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => Write_going_on_i_1_n_0,
      Q => Write_going_on,
      R => '0'
    );
ext_trig_cdc_sync: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync
     port map (
      D(1 downto 0) => Ext_Triggers_Sync(1 downto 0),
      Ext_Trig_log_en => Ext_Trig_log_en,
      Ext_Trig_log_en_reg => ext_trig_cdc_sync_n_2,
      Q(1 downto 0) => Ext_Triggers_Sync_d1(1 downto 0),
      SR(0) => SR(0),
      Use_Ext_Trig_Log => Use_Ext_Trig_Log,
      core_aclk => core_aclk,
      core_aresetn => core_aresetn,
      slot_0_ext_trig_stop(1 downto 0) => slot_0_ext_trig_stop(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_register_module_profile is
  port (
    \out\ : out STD_LOGIC;
    Event_Log_En_sync : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Use_Ext_Trig_Log : out STD_LOGIC;
    \IP2Bus_Data_sampled_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Global_Intr_En : out STD_LOGIC;
    rvalid_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : out STD_LOGIC;
    \IP2Bus_Data_sampled_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Control_Set_Wr_En : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Bus2IP_RdCE : in STD_LOGIC;
    Trace_Filter_Rd_En : in STD_LOGIC;
    Addr_3downto0_is_0x4 : in STD_LOGIC;
    Event_Log_Set_Rd_En : in STD_LOGIC;
    Status_Reg_WIF_Rd_En : in STD_LOGIC;
    Status_Reg_FOC_Rd_En : in STD_LOGIC;
    Status_Reg_Set_Rd_En : in STD_LOGIC;
    Intr_Reg_ISR_Rd_En : in STD_LOGIC;
    Intr_Reg_IER_Rd_En : in STD_LOGIC;
    Intr_Reg_GIE_Rd_En : in STD_LOGIC;
    Intr_Reg_Set_Rd_En : in STD_LOGIC;
    Control_Set_Rd_En : in STD_LOGIC;
    Addr_3downto0_is_0x8 : in STD_LOGIC;
    Sample_Interval_Rd_En : in STD_LOGIC;
    p_in_d1_cdc_from_reg0 : in STD_LOGIC;
    core_aresetn_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    core_aclk : in STD_LOGIC;
    Samp_Metric_Cnt_Reg_Set_Rd_En : in STD_LOGIC;
    Metric_Cnt_Reg_Set_Rd_En : in STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rvalid_reg_0 : in STD_LOGIC;
    slot_0_axi_wlast : in STD_LOGIC;
    slot_0_axi_wready : in STD_LOGIC;
    slot_0_axi_wvalid : in STD_LOGIC;
    slot_0_axi_rlast : in STD_LOGIC;
    slot_0_axi_rvalid : in STD_LOGIC;
    slot_0_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    slot_0_axi_arvalid : in STD_LOGIC;
    slot_0_axi_arready : in STD_LOGIC;
    slot_0_axi_bvalid : in STD_LOGIC;
    slot_0_axi_bready : in STD_LOGIC;
    slot_0_axi_awready : in STD_LOGIC;
    slot_0_axi_awvalid : in STD_LOGIC;
    core_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    Intr_Reg_IER : in STD_LOGIC_VECTOR ( 0 to 0 );
    Intr_Reg_ISR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    write_req_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \eventlog_cur_cnt_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_register_module_profile;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_register_module_profile is
  signal \^event_log_en_sync\ : STD_LOGIC;
  signal \GEN_PROFILE_MODE.SW_Data_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^global_intr_en\ : STD_LOGIC;
  signal \IP2Bus_Data[0]_i_3_n_0\ : STD_LOGIC;
  signal \^ip2bus_data_sampled_reg[31]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Lat_Addr_3downto0_is_0x4 : STD_LOGIC;
  signal Lat_Addr_3downto0_is_0x8 : STD_LOGIC;
  signal Lat_Control_Set_Rd_En : STD_LOGIC;
  signal Lat_Event_Log_Set_Rd_En : STD_LOGIC;
  signal Lat_Intr_Reg_GIE_Rd_En : STD_LOGIC;
  signal Lat_Intr_Reg_IER_Rd_En : STD_LOGIC;
  signal Lat_Intr_Reg_ISR_Rd_En : STD_LOGIC;
  signal Lat_Intr_Reg_Set_Rd_En : STD_LOGIC;
  signal Lat_Metric_Cnt_Reg_Set_Rd_En : STD_LOGIC;
  signal Lat_Samp_Metric_Cnt_Reg_Set_Rd_En : STD_LOGIC;
  signal Lat_Sample_Interval_Rd_En : STD_LOGIC;
  signal Lat_Status_Reg_FOC_Rd_En : STD_LOGIC;
  signal Lat_Status_Reg_Set_Rd_En : STD_LOGIC;
  signal Lat_Status_Reg_WIF_Rd_En : STD_LOGIC;
  signal Lat_Trace_Filter_Rd_En : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal RValid : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Streaming_FIFO_Reset : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \Trace_ctrl_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \^use_ext_trig_log\ : STD_LOGIC;
  signal cdc_sync_inst2_n_10 : STD_LOGIC;
  signal cdc_sync_inst2_n_11 : STD_LOGIC;
  signal cdc_sync_inst2_n_12 : STD_LOGIC;
  signal cdc_sync_inst2_n_13 : STD_LOGIC;
  signal cdc_sync_inst2_n_14 : STD_LOGIC;
  signal cdc_sync_inst2_n_15 : STD_LOGIC;
  signal cdc_sync_inst2_n_16 : STD_LOGIC;
  signal cdc_sync_inst2_n_17 : STD_LOGIC;
  signal cdc_sync_inst2_n_18 : STD_LOGIC;
  signal cdc_sync_inst2_n_19 : STD_LOGIC;
  signal cdc_sync_inst2_n_2 : STD_LOGIC;
  signal cdc_sync_inst2_n_20 : STD_LOGIC;
  signal cdc_sync_inst2_n_21 : STD_LOGIC;
  signal cdc_sync_inst2_n_22 : STD_LOGIC;
  signal cdc_sync_inst2_n_23 : STD_LOGIC;
  signal cdc_sync_inst2_n_24 : STD_LOGIC;
  signal cdc_sync_inst2_n_25 : STD_LOGIC;
  signal cdc_sync_inst2_n_26 : STD_LOGIC;
  signal cdc_sync_inst2_n_27 : STD_LOGIC;
  signal cdc_sync_inst2_n_28 : STD_LOGIC;
  signal cdc_sync_inst2_n_29 : STD_LOGIC;
  signal cdc_sync_inst2_n_3 : STD_LOGIC;
  signal cdc_sync_inst2_n_30 : STD_LOGIC;
  signal cdc_sync_inst2_n_31 : STD_LOGIC;
  signal cdc_sync_inst2_n_32 : STD_LOGIC;
  signal cdc_sync_inst2_n_33 : STD_LOGIC;
  signal cdc_sync_inst2_n_34 : STD_LOGIC;
  signal cdc_sync_inst2_n_4 : STD_LOGIC;
  signal cdc_sync_inst2_n_5 : STD_LOGIC;
  signal cdc_sync_inst2_n_6 : STD_LOGIC;
  signal cdc_sync_inst2_n_7 : STD_LOGIC;
  signal cdc_sync_inst2_n_8 : STD_LOGIC;
  signal cdc_sync_inst2_n_9 : STD_LOGIC;
  signal eventlog_fifo_rden_n_31 : STD_LOGIC;
  signal eventlog_fifo_rden_n_32 : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_in_d1_cdc_from_reg0_0 : STD_LOGIC;
  signal sync_eventlog_cur_cnt : STD_LOGIC_VECTOR ( 31 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Flags[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \Flags[3]_i_1\ : label is "soft_lutpair42";
begin
  Event_Log_En_sync <= \^event_log_en_sync\;
  Global_Intr_En <= \^global_intr_en\;
  \IP2Bus_Data_sampled_reg[31]\(0) <= \^ip2bus_data_sampled_reg[31]\(0);
  Q(1 downto 0) <= \^q\(1 downto 0);
  SR(0) <= \^sr\(0);
  Use_Ext_Trig_Log <= \^use_ext_trig_log\;
Event_Log_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Control_Set_Wr_En,
      D => s_axi_wdata(8),
      Q => \^event_log_en_sync\,
      R => \^sr\(0)
    );
\Flags[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => slot_0_axi_awready,
      I1 => slot_0_axi_awvalid,
      I2 => \^q\(1),
      O => D(0)
    );
\Flags[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => slot_0_axi_wlast,
      I2 => slot_0_axi_wready,
      I3 => slot_0_axi_wvalid,
      O => D(1)
    );
\Flags[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => slot_0_axi_bvalid,
      I1 => slot_0_axi_bready,
      I2 => \^q\(1),
      O => D(2)
    );
\Flags[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => slot_0_axi_arvalid,
      I1 => slot_0_axi_arready,
      I2 => \^q\(0),
      O => D(3)
    );
\Flags[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(0),
      I1 => slot_0_axi_rlast,
      I2 => slot_0_axi_rvalid,
      I3 => slot_0_axi_rready,
      O => D(4)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(0),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(10),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(10),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(11),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(11),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(12),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(12),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(13),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(13),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(14),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(14),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(15),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(15),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(16),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(16),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(17),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(17),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(18),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(18),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(19),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(19),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(1),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(20),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(20),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(21),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(21),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(22),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(22),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(23),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(23),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(24),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(24),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(25),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(25),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(26),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(26),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(27),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(27),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(28),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(28),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(29),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(29),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(2),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(30),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(30),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(31),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(31),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(3),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(4),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(5),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(6),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(7),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(8),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(8),
      R => \^sr\(0)
    );
\GEN_PROFILE_MODE.SW_Data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(9),
      Q => \GEN_PROFILE_MODE.SW_Data_reg\(9),
      R => \^sr\(0)
    );
Global_Intr_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i_reg[5]\,
      Q => \^global_intr_en\,
      R => \^sr\(0)
    );
IP2Bus_DataValid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => RValid,
      Q => \^ip2bus_data_sampled_reg[31]\(0),
      R => \^sr\(0)
    );
\IP2Bus_Data[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^global_intr_en\,
      I1 => Lat_Intr_Reg_GIE_Rd_En,
      I2 => Lat_Intr_Reg_Set_Rd_En,
      O => \IP2Bus_Data[0]_i_3_n_0\
    );
\IP2Bus_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_33,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(0),
      R => '0'
    );
\IP2Bus_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_23,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(10),
      R => '0'
    );
\IP2Bus_Data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_22,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(11),
      R => '0'
    );
\IP2Bus_Data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_21,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(12),
      R => '0'
    );
\IP2Bus_Data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_20,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(13),
      R => '0'
    );
\IP2Bus_Data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_19,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(14),
      R => '0'
    );
\IP2Bus_Data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_18,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(15),
      R => '0'
    );
\IP2Bus_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_17,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(16),
      R => '0'
    );
\IP2Bus_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_16,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(17),
      R => '0'
    );
\IP2Bus_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_15,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(18),
      R => '0'
    );
\IP2Bus_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_14,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(19),
      R => '0'
    );
\IP2Bus_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_32,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(1),
      R => '0'
    );
\IP2Bus_Data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_13,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(20),
      R => '0'
    );
\IP2Bus_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_12,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(21),
      R => '0'
    );
\IP2Bus_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_11,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(22),
      R => '0'
    );
\IP2Bus_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_10,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(23),
      R => '0'
    );
\IP2Bus_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_9,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(24),
      R => '0'
    );
\IP2Bus_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_8,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(25),
      R => '0'
    );
\IP2Bus_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_7,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(26),
      R => '0'
    );
\IP2Bus_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_6,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(27),
      R => '0'
    );
\IP2Bus_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_5,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(28),
      R => '0'
    );
\IP2Bus_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_4,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(29),
      R => '0'
    );
\IP2Bus_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_31,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(2),
      R => '0'
    );
\IP2Bus_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_3,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(30),
      R => '0'
    );
\IP2Bus_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_2,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(31),
      R => '0'
    );
\IP2Bus_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_30,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(3),
      R => '0'
    );
\IP2Bus_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_29,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(4),
      R => '0'
    );
\IP2Bus_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_28,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(5),
      R => '0'
    );
\IP2Bus_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_27,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(6),
      R => '0'
    );
\IP2Bus_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_26,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(7),
      R => '0'
    );
\IP2Bus_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_25,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(8),
      R => '0'
    );
\IP2Bus_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cdc_sync_inst2_n_24,
      Q => \IP2Bus_Data_sampled_reg[31]_0\(9),
      R => '0'
    );
Lat_Addr_3downto0_is_0x4_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Addr_3downto0_is_0x4,
      Q => Lat_Addr_3downto0_is_0x4,
      R => \^sr\(0)
    );
Lat_Addr_3downto0_is_0x8_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Addr_3downto0_is_0x8,
      Q => Lat_Addr_3downto0_is_0x8,
      R => \^sr\(0)
    );
Lat_Control_Set_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Control_Set_Rd_En,
      Q => Lat_Control_Set_Rd_En,
      R => \^sr\(0)
    );
Lat_Event_Log_Set_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Event_Log_Set_Rd_En,
      Q => Lat_Event_Log_Set_Rd_En,
      R => \^sr\(0)
    );
Lat_Intr_Reg_GIE_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Intr_Reg_GIE_Rd_En,
      Q => Lat_Intr_Reg_GIE_Rd_En,
      R => \^sr\(0)
    );
Lat_Intr_Reg_IER_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Intr_Reg_IER_Rd_En,
      Q => Lat_Intr_Reg_IER_Rd_En,
      R => \^sr\(0)
    );
Lat_Intr_Reg_ISR_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Intr_Reg_ISR_Rd_En,
      Q => Lat_Intr_Reg_ISR_Rd_En,
      R => \^sr\(0)
    );
Lat_Intr_Reg_Set_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Intr_Reg_Set_Rd_En,
      Q => Lat_Intr_Reg_Set_Rd_En,
      R => \^sr\(0)
    );
Lat_Metric_Cnt_Reg_Set_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Metric_Cnt_Reg_Set_Rd_En,
      Q => Lat_Metric_Cnt_Reg_Set_Rd_En,
      R => \^sr\(0)
    );
Lat_Samp_Metric_Cnt_Reg_Set_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Samp_Metric_Cnt_Reg_Set_Rd_En,
      Q => Lat_Samp_Metric_Cnt_Reg_Set_Rd_En,
      R => \^sr\(0)
    );
Lat_Sample_Interval_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Sample_Interval_Rd_En,
      Q => Lat_Sample_Interval_Rd_En,
      R => \^sr\(0)
    );
Lat_Status_Reg_FOC_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Status_Reg_FOC_Rd_En,
      Q => Lat_Status_Reg_FOC_Rd_En,
      R => \^sr\(0)
    );
Lat_Status_Reg_Set_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Status_Reg_Set_Rd_En,
      Q => Lat_Status_Reg_Set_Rd_En,
      R => \^sr\(0)
    );
Lat_Status_Reg_WIF_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Status_Reg_WIF_Rd_En,
      Q => Lat_Status_Reg_WIF_Rd_En,
      R => \^sr\(0)
    );
Lat_Trace_Filter_Rd_En_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Bus2IP_RdCE,
      D => Trace_Filter_Rd_En,
      Q => Lat_Trace_Filter_Rd_En,
      R => \^sr\(0)
    );
Streaming_FIFO_Reset_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Control_Set_Wr_En,
      D => s_axi_wdata(25),
      Q => Streaming_FIFO_Reset,
      R => \^sr\(0)
    );
\Trace_ctrl_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(0),
      Q => \Trace_ctrl_reg_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(10),
      Q => \Trace_ctrl_reg_reg_n_0_[10]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(12),
      Q => \Trace_ctrl_reg_reg_n_0_[12]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(13),
      Q => \Trace_ctrl_reg_reg_n_0_[13]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(14),
      Q => \Trace_ctrl_reg_reg_n_0_[14]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(16),
      Q => \Trace_ctrl_reg_reg_n_0_[16]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(17),
      Q => \Trace_ctrl_reg_reg_n_0_[17]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(18),
      Q => \Trace_ctrl_reg_reg_n_0_[18]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(1),
      Q => \^q\(0),
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(20),
      Q => \Trace_ctrl_reg_reg_n_0_[20]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(21),
      Q => \Trace_ctrl_reg_reg_n_0_[21]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(22),
      Q => \Trace_ctrl_reg_reg_n_0_[22]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(24),
      Q => \Trace_ctrl_reg_reg_n_0_[24]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(25),
      Q => \Trace_ctrl_reg_reg_n_0_[25]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(26),
      Q => \Trace_ctrl_reg_reg_n_0_[26]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(28),
      Q => \Trace_ctrl_reg_reg_n_0_[28]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(29),
      Q => \Trace_ctrl_reg_reg_n_0_[29]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(2),
      Q => \^q\(1),
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(30),
      Q => \Trace_ctrl_reg_reg_n_0_[30]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(4),
      Q => \Trace_ctrl_reg_reg_n_0_[4]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(5),
      Q => \Trace_ctrl_reg_reg_n_0_[5]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(6),
      Q => \Trace_ctrl_reg_reg_n_0_[6]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(8),
      Q => \Trace_ctrl_reg_reg_n_0_[8]\,
      S => \^sr\(0)
    );
\Trace_ctrl_reg_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => write_req_reg(0),
      D => s_axi_wdata(9),
      Q => \Trace_ctrl_reg_reg_n_0_[9]\,
      S => \^sr\(0)
    );
Use_Ext_Trigger_Log_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Control_Set_Wr_En,
      D => s_axi_wdata(9),
      Q => \^use_ext_trig_log\,
      R => \^sr\(0)
    );
cdc_sync_inst1: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0\
     port map (
      SR(0) => \^sr\(0),
      core_aclk => core_aclk,
      core_aresetn(0) => core_aresetn_0(0),
      \out\ => \out\,
      p_in_d1_cdc_from_reg0 => p_in_d1_cdc_from_reg0,
      p_in_d1_cdc_from_reg0_0 => p_in_d1_cdc_from_reg0_0,
      p_in_d1_cdc_from_reg_0 => p_0_in0_in,
      s_axi_aclk => s_axi_aclk
    );
cdc_sync_inst2: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized0_5\
     port map (
      D(31) => cdc_sync_inst2_n_2,
      D(30) => cdc_sync_inst2_n_3,
      D(29) => cdc_sync_inst2_n_4,
      D(28) => cdc_sync_inst2_n_5,
      D(27) => cdc_sync_inst2_n_6,
      D(26) => cdc_sync_inst2_n_7,
      D(25) => cdc_sync_inst2_n_8,
      D(24) => cdc_sync_inst2_n_9,
      D(23) => cdc_sync_inst2_n_10,
      D(22) => cdc_sync_inst2_n_11,
      D(21) => cdc_sync_inst2_n_12,
      D(20) => cdc_sync_inst2_n_13,
      D(19) => cdc_sync_inst2_n_14,
      D(18) => cdc_sync_inst2_n_15,
      D(17) => cdc_sync_inst2_n_16,
      D(16) => cdc_sync_inst2_n_17,
      D(15) => cdc_sync_inst2_n_18,
      D(14) => cdc_sync_inst2_n_19,
      D(13) => cdc_sync_inst2_n_20,
      D(12) => cdc_sync_inst2_n_21,
      D(11) => cdc_sync_inst2_n_22,
      D(10) => cdc_sync_inst2_n_23,
      D(9) => cdc_sync_inst2_n_24,
      D(8) => cdc_sync_inst2_n_25,
      D(7) => cdc_sync_inst2_n_26,
      D(6) => cdc_sync_inst2_n_27,
      D(5) => cdc_sync_inst2_n_28,
      D(4) => cdc_sync_inst2_n_29,
      D(3) => cdc_sync_inst2_n_30,
      D(2) => cdc_sync_inst2_n_31,
      D(1) => cdc_sync_inst2_n_32,
      D(0) => cdc_sync_inst2_n_33,
      Event_Log_En_sync => \^event_log_en_sync\,
      \GEN_PROFILE_MODE.SW_Data_reg_reg[31]\(31 downto 0) => \GEN_PROFILE_MODE.SW_Data_reg\(31 downto 0),
      IP2Bus_DataValid_reg => RValid,
      \IP2Bus_Data_reg[0]\ => cdc_sync_inst2_n_34,
      Intr_Reg_IER(0) => Intr_Reg_IER(0),
      Intr_Reg_ISR(0) => Intr_Reg_ISR(0),
      Lat_Addr_3downto0_is_0x4 => Lat_Addr_3downto0_is_0x4,
      Lat_Addr_3downto0_is_0x8 => Lat_Addr_3downto0_is_0x8,
      Lat_Control_Set_Rd_En => Lat_Control_Set_Rd_En,
      Lat_Event_Log_Set_Rd_En => Lat_Event_Log_Set_Rd_En,
      Lat_Intr_Reg_GIE_Rd_En => Lat_Intr_Reg_GIE_Rd_En,
      Lat_Intr_Reg_IER_Rd_En => Lat_Intr_Reg_IER_Rd_En,
      Lat_Intr_Reg_ISR_Rd_En => Lat_Intr_Reg_ISR_Rd_En,
      Lat_Intr_Reg_Set_Rd_En => Lat_Intr_Reg_Set_Rd_En,
      Lat_Metric_Cnt_Reg_Set_Rd_En => Lat_Metric_Cnt_Reg_Set_Rd_En,
      Lat_Samp_Metric_Cnt_Reg_Set_Rd_En => Lat_Samp_Metric_Cnt_Reg_Set_Rd_En,
      Lat_Sample_Interval_Rd_En => Lat_Sample_Interval_Rd_En,
      Lat_Status_Reg_FOC_Rd_En => Lat_Status_Reg_FOC_Rd_En,
      Lat_Status_Reg_Set_Rd_En => Lat_Status_Reg_Set_Rd_En,
      Lat_Status_Reg_WIF_Rd_En_reg => eventlog_fifo_rden_n_32,
      Lat_Trace_Filter_Rd_En => Lat_Trace_Filter_Rd_En,
      Q(23) => \Trace_ctrl_reg_reg_n_0_[30]\,
      Q(22) => \Trace_ctrl_reg_reg_n_0_[29]\,
      Q(21) => \Trace_ctrl_reg_reg_n_0_[28]\,
      Q(20) => \Trace_ctrl_reg_reg_n_0_[26]\,
      Q(19) => \Trace_ctrl_reg_reg_n_0_[25]\,
      Q(18) => \Trace_ctrl_reg_reg_n_0_[24]\,
      Q(17) => \Trace_ctrl_reg_reg_n_0_[22]\,
      Q(16) => \Trace_ctrl_reg_reg_n_0_[21]\,
      Q(15) => \Trace_ctrl_reg_reg_n_0_[20]\,
      Q(14) => \Trace_ctrl_reg_reg_n_0_[18]\,
      Q(13) => \Trace_ctrl_reg_reg_n_0_[17]\,
      Q(12) => \Trace_ctrl_reg_reg_n_0_[16]\,
      Q(11) => \Trace_ctrl_reg_reg_n_0_[14]\,
      Q(10) => \Trace_ctrl_reg_reg_n_0_[13]\,
      Q(9) => \Trace_ctrl_reg_reg_n_0_[12]\,
      Q(8) => \Trace_ctrl_reg_reg_n_0_[10]\,
      Q(7) => \Trace_ctrl_reg_reg_n_0_[9]\,
      Q(6) => \Trace_ctrl_reg_reg_n_0_[8]\,
      Q(5) => \Trace_ctrl_reg_reg_n_0_[6]\,
      Q(4) => \Trace_ctrl_reg_reg_n_0_[5]\,
      Q(3) => \Trace_ctrl_reg_reg_n_0_[4]\,
      Q(2 downto 1) => \^q\(1 downto 0),
      Q(0) => \Trace_ctrl_reg_reg_n_0_[0]\,
      SR(0) => \^sr\(0),
      Streaming_FIFO_Reset => Streaming_FIFO_Reset,
      Use_Ext_Trig_Log => \^use_ext_trig_log\,
      core_aclk => core_aclk,
      core_aresetn(0) => core_aresetn_0(0),
      \out\ => p_0_in0_in,
      p_in_d1_cdc_from_reg0 => p_in_d1_cdc_from_reg0_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \s_level_out_bus_d4_reg[0]\ => eventlog_fifo_rden_n_31,
      \s_level_out_bus_d4_reg[31]\(29 downto 0) => sync_eventlog_cur_cnt(31 downto 2)
    );
eventlog_fifo_rden: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized1\
     port map (
      D(29 downto 0) => sync_eventlog_cur_cnt(31 downto 2),
      Global_Intr_En_reg => \IP2Bus_Data[0]_i_3_n_0\,
      \IP2Bus_Data_reg[0]\ => eventlog_fifo_rden_n_31,
      \IP2Bus_Data_reg[1]\ => eventlog_fifo_rden_n_32,
      Lat_Intr_Reg_Set_Rd_En => Lat_Intr_Reg_Set_Rd_En,
      Lat_Sample_Interval_Rd_En_reg => cdc_sync_inst2_n_34,
      Lat_Status_Reg_FOC_Rd_En => Lat_Status_Reg_FOC_Rd_En,
      Lat_Status_Reg_Set_Rd_En => Lat_Status_Reg_Set_Rd_En,
      Lat_Status_Reg_WIF_Rd_En => Lat_Status_Reg_WIF_Rd_En,
      SR(0) => \^sr\(0),
      \eventlog_cur_cnt_reg[7]\(7 downto 0) => \eventlog_cur_cnt_reg[7]\(7 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^ip2bus_data_sampled_reg[31]\(0),
      I1 => s_axi_rready,
      I2 => rvalid_reg_0,
      O => rvalid_reg
    );
xpm_fifo_base_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => core_aresetn,
      I1 => Streaming_FIFO_Reset,
      I2 => m_axis_aresetn,
      O => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_strm_fifo_wr_logic is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Mon_Wr_En : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    din : out STD_LOGIC_VECTOR ( 23 downto 0 );
    core_aclk : in STD_LOGIC;
    Slot_0_Log_En_Marked : in STD_LOGIC;
    Fifo_Wr_En1_out : in STD_LOGIC;
    Event_Log_En_sync : in STD_LOGIC;
    core_aresetn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Mon_Wr_En_reg_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_strm_fifo_wr_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_strm_fifo_wr_logic is
  signal A : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Event_Log_En_D1 : STD_LOGIC;
  signal \^mon_wr_en\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_inst_n_17 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 27 downto 17 );
  signal \^wr_en\ : STD_LOGIC;
begin
  Mon_Wr_En <= \^mon_wr_en\;
  SR(0) <= \^sr\(0);
  wr_en <= \^wr_en\;
Event_Log_En_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => Event_Log_En_sync,
      Q => Event_Log_En_D1,
      R => \^sr\(0)
    );
\Fifo_Wr_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(9),
      Q => din(9),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(10),
      Q => din(10),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(11),
      Q => din(11),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(12),
      Q => din(12),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(13),
      Q => din(13),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(14),
      Q => din(14),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(15),
      Q => din(15),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => p_0_in(17),
      Q => din(16),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(0),
      Q => din(0),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => p_0_in(21),
      Q => din(17),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => p_0_in(22),
      Q => din(18),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => p_0_in(23),
      Q => din(19),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => p_0_in(24),
      Q => din(20),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => p_0_in(25),
      Q => din(21),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => p_0_in(26),
      Q => din(22),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => p_0_in(27),
      Q => din(23),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(1),
      Q => din(1),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(2),
      Q => din(2),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(3),
      Q => din(3),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(4),
      Q => din(4),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(5),
      Q => din(5),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(6),
      Q => din(6),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(7),
      Q => din(7),
      R => Mon_Wr_En_reg_0
    );
\Fifo_Wr_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => A(8),
      Q => din(8),
      R => Mon_Wr_En_reg_0
    );
Fifo_Wr_En_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => Fifo_Wr_En1_out,
      Q => \^wr_en\,
      R => \^sr\(0)
    );
\Mon_Wr_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => D(0),
      Q => p_0_in(21),
      R => \^sr\(0)
    );
\Mon_Wr_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => D(1),
      Q => p_0_in(22),
      R => \^sr\(0)
    );
\Mon_Wr_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => D(2),
      Q => p_0_in(23),
      R => \^sr\(0)
    );
\Mon_Wr_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => D(3),
      Q => p_0_in(24),
      R => \^sr\(0)
    );
\Mon_Wr_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => D(4),
      Q => p_0_in(25),
      R => \^sr\(0)
    );
\Mon_Wr_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => D(5),
      Q => p_0_in(26),
      R => \^sr\(0)
    );
\Mon_Wr_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => D(6),
      Q => p_0_in(27),
      R => \^sr\(0)
    );
Mon_Wr_En_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => Slot_0_Log_En_Marked,
      Q => \^mon_wr_en\,
      R => \^sr\(0)
    );
counter_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_counter__parameterized0\
     port map (
      A(15 downto 0) => A(15 downto 0),
      \Count_Out_i_reg[0]_0\ => \^sr\(0),
      Event_Log_En_D1 => Event_Log_En_D1,
      Event_Log_En_sync => Event_Log_En_sync,
      Mon_Wr_En_reg => \^mon_wr_en\,
      core_aclk => core_aclk,
      core_aresetn => core_aresetn,
      over_flow_cap_reg => counter_inst_n_17,
      p_0_in(0) => p_0_in(17),
      wr_en => \^wr_en\
    );
over_flow_cap_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => counter_inst_n_17,
      Q => p_0_in(17),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 55 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 6 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 55 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 6 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : integer;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 128;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7168;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 128;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 123;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 123;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 56;
  attribute READ_MODE : integer;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0707";
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 56;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "TRUE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_fwft.count_rst\ : STD_LOGIC;
  signal \gen_fwft.curr_fwft_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_fwft.empty_fwft_i_reg0\ : STD_LOGIC;
  signal \gen_fwft.next_fwft_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal overflow_i0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal prog_empty_i1 : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal prog_full_i215_in : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_full_i0 : STD_LOGIC;
  signal ram_rd_en_pf_q : STD_LOGIC;
  signal ram_wr_en_pf_q : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_0 : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_13 : STD_LOGIC;
  signal rdp_inst_n_14 : STD_LOGIC;
  signal rdp_inst_n_15 : STD_LOGIC;
  signal rdp_inst_n_16 : STD_LOGIC;
  signal rdp_inst_n_17 : STD_LOGIC;
  signal rdp_inst_n_18 : STD_LOGIC;
  signal rdp_inst_n_19 : STD_LOGIC;
  signal rdp_inst_n_20 : STD_LOGIC;
  signal rdp_inst_n_21 : STD_LOGIC;
  signal rdp_inst_n_22 : STD_LOGIC;
  signal rdp_inst_n_8 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal read_only_q : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal write_only_q : STD_LOGIC;
  signal wrp_inst_n_0 : STD_LOGIC;
  signal wrp_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp1_inst_n_5 : STD_LOGIC;
  signal wrpp1_inst_n_6 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_10 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_8 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_9 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1\ : label is "soft_lutpair14";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 55;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 511;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 7168;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : integer;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair13";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_rst_busy <= \^rd_rst_busy\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state\(1),
      I1 => rd_en,
      I2 => \gen_fwft.curr_fwft_state\(0),
      O => \gen_fwft.next_fwft_state\(0)
    );
\gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state\(1),
      I1 => rd_en,
      I2 => \gen_fwft.curr_fwft_state\(0),
      I3 => ram_empty_i,
      O => \gen_fwft.next_fwft_state\(1)
    );
\gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.next_fwft_state\(0),
      Q => \gen_fwft.curr_fwft_state\(0),
      R => \^rd_rst_busy\
    );
\gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.next_fwft_state\(1),
      Q => \gen_fwft.curr_fwft_state\(1),
      R => \^rd_rst_busy\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => rd_en,
      I1 => \gen_fwft.curr_fwft_state\(1),
      I2 => \gen_fwft.curr_fwft_state\(0),
      I3 => \^empty\,
      O => \gen_fwft.empty_fwft_i_reg0\
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.empty_fwft_i_reg0\,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
     port map (
      DI(0) => \gen_fwft.rdpp1_inst_n_3\,
      Q(0) => count_value_i(1),
      S(1) => \gen_fwft.rdpp1_inst_n_1\,
      S(0) => \gen_fwft.rdpp1_inst_n_2\,
      SR(0) => \gen_fwft.count_rst\,
      \count_value_i_reg[1]_0\(1 downto 0) => rd_pntr_ext(1 downto 0),
      \count_value_i_reg[1]_1\(1 downto 0) => wr_pntr_ext(1 downto 0),
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => \gen_fwft.curr_fwft_state\(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_full_i0,
      Q => \^full\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_11,
      Q => full_n,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(4),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(5),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(6),
      Q => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5]\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\,
      O => prog_empty_i1
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0]\,
      I1 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3]\,
      I2 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2]\,
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1]\,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_2,
      Q => \^prog_empty\,
      R => '0'
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => \^empty\,
      I1 => rdp_inst_n_8,
      I2 => \^full\,
      I3 => wr_en,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1_n_0\,
      Q => read_only_q,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => \^full\,
      I1 => wr_en,
      I2 => \^empty\,
      I3 => rdp_inst_n_8,
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1_n_0\,
      Q => write_only_q,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(1),
      Q => diff_pntr_pf_q(1),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(2),
      Q => diff_pntr_pf_q(2),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(3),
      Q => diff_pntr_pf_q(3),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => diff_pntr_pf_q(6),
      I1 => diff_pntr_pf_q(5),
      I2 => diff_pntr_pf_q(7),
      I3 => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0\,
      O => prog_full_i215_in
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => diff_pntr_pf_q(1),
      I1 => diff_pntr_pf_q(4),
      I2 => diff_pntr_pf_q(3),
      I3 => diff_pntr_pf_q(2),
      O => \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_1,
      Q => \^prog_full\,
      R => '0'
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_8,
      Q => ram_rd_en_pf_q,
      R => \^rd_rst_busy\
    );
\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_10,
      Q => ram_wr_en_pf_q,
      R => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(6 downto 0) => wr_pntr_ext(6 downto 0),
      addrb(6 downto 0) => rd_pntr_ext(6 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(55 downto 0) => din(55 downto 0),
      dinb(55 downto 0) => B"00000000000000000000000000000000000000000000000000000000",
      douta(55 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(55 downto 0),
      doutb(55 downto 0) => dout(55 downto 0),
      ena => xpm_fifo_rst_inst_n_10,
      enb => rdp_inst_n_8,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => \gen_fwft.curr_fwft_state\(1),
      I1 => \gen_fwft.curr_fwft_state\(0),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => rd_data_count(5),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => rd_data_count(6),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => wr_data_count(0),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => wr_data_count(1),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => wr_data_count(2),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => wr_data_count(3),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => wr_data_count(4),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => wr_data_count(5),
      R => \^rd_rst_busy\
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => wr_data_count(6),
      R => \^rd_rst_busy\
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\
     port map (
      DI(0) => rdp_inst_n_0,
      Q(6 downto 0) => rd_pntr_ext(6 downto 0),
      S(4) => rdp_inst_n_12,
      S(3) => rdp_inst_n_13,
      S(2) => rdp_inst_n_14,
      S(1) => rdp_inst_n_15,
      S(0) => rdp_inst_n_16,
      \count_value_i_reg[0]_0\ => rdp_inst_n_8,
      \count_value_i_reg[1]_0\(0) => count_value_i(1),
      \count_value_i_reg[6]_0\(6) => wrpp1_inst_n_0,
      \count_value_i_reg[6]_0\(5) => wrpp1_inst_n_1,
      \count_value_i_reg[6]_0\(4) => wrpp1_inst_n_2,
      \count_value_i_reg[6]_0\(3) => wrpp1_inst_n_3,
      \count_value_i_reg[6]_0\(2) => wrpp1_inst_n_4,
      \count_value_i_reg[6]_0\(1) => wrpp1_inst_n_5,
      \count_value_i_reg[6]_0\(0) => wrpp1_inst_n_6,
      \count_value_i_reg[7]_0\(7) => wrp_inst_n_1,
      \count_value_i_reg[7]_0\(6 downto 0) => wr_pntr_ext(6 downto 0),
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => \gen_fwft.curr_fwft_state\(1 downto 0),
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\ => \^full\,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_n_reg\ => rdp_inst_n_11,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => wrp_inst_n_0,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(5) => rdp_inst_n_17,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(4) => rdp_inst_n_18,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(3) => rdp_inst_n_19,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(2) => rdp_inst_n_20,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(1) => rdp_inst_n_21,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(0) => rdp_inst_n_22,
      \gen_rst_cc.fifo_wr_rst_i_reg\ => \^rd_rst_busy\,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      ram_full_i0 => ram_full_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_en => wr_en
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\
     port map (
      Q(6) => rdpp1_inst_n_0,
      Q(5) => rdpp1_inst_n_1,
      Q(4) => rdpp1_inst_n_2,
      Q(3) => rdpp1_inst_n_3,
      Q(2) => rdpp1_inst_n_4,
      Q(1) => rdpp1_inst_n_5,
      Q(0) => rdpp1_inst_n_6,
      \gen_fwft.curr_fwft_state_reg[0]\ => rdp_inst_n_8,
      \gen_fwft.curr_fwft_state_reg[1]\(1 downto 0) => \gen_fwft.curr_fwft_state\(1 downto 0),
      \gen_rst_cc.fifo_wr_rst_i_reg\ => \^rd_rst_busy\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
     port map (
      \gen_rst_cc.fifo_wr_rst_i_reg\ => \^rd_rst_busy\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_6\
     port map (
      D(6 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(7 downto 1),
      DI(1) => rdp_inst_n_0,
      DI(0) => \gen_fwft.rdpp1_inst_n_3\,
      E(0) => xpm_fifo_rst_inst_n_10,
      Q(7) => wrp_inst_n_1,
      Q(6 downto 0) => wr_pntr_ext(6 downto 0),
      S(6) => rdp_inst_n_12,
      S(5) => rdp_inst_n_13,
      S(4) => rdp_inst_n_14,
      S(3) => rdp_inst_n_15,
      S(2) => rdp_inst_n_16,
      S(1) => \gen_fwft.rdpp1_inst_n_1\,
      S(0) => \gen_fwft.rdpp1_inst_n_2\,
      \count_value_i_reg[1]_0\(0) => count_value_i(1),
      \count_value_i_reg[5]_0\(4 downto 0) => rd_pntr_ext(5 downto 1),
      \count_value_i_reg[6]_0\(6) => rdpp1_inst_n_0,
      \count_value_i_reg[6]_0\(5) => rdpp1_inst_n_1,
      \count_value_i_reg[6]_0\(4) => rdpp1_inst_n_2,
      \count_value_i_reg[6]_0\(3) => rdpp1_inst_n_3,
      \count_value_i_reg[6]_0\(2) => rdpp1_inst_n_4,
      \count_value_i_reg[6]_0\(1) => rdpp1_inst_n_5,
      \count_value_i_reg[6]_0\(0) => rdpp1_inst_n_6,
      \count_value_i_reg[6]_1\(6) => rdp_inst_n_17,
      \count_value_i_reg[6]_1\(5) => rdp_inst_n_18,
      \count_value_i_reg[6]_1\(4) => rdp_inst_n_19,
      \count_value_i_reg[6]_1\(3) => rdp_inst_n_20,
      \count_value_i_reg[6]_1\(2) => rdp_inst_n_21,
      \count_value_i_reg[6]_1\(1) => rdp_inst_n_22,
      \count_value_i_reg[6]_1\(0) => xpm_fifo_rst_inst_n_8,
      \gen_fwft.curr_fwft_state_reg[0]\ => rdp_inst_n_8,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\ => \^full\,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => wrp_inst_n_0,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(6 downto 0) => diff_pntr_pe(6 downto 0),
      \gen_rst_cc.fifo_wr_rst_i_reg\ => \^rd_rst_busy\,
      \gen_rst_cc.fifo_wr_rst_i_reg_0\(0) => p_1_in,
      ram_empty_i => ram_empty_i,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_7\
     port map (
      D(6 downto 0) => diff_pntr_pf_q0(7 downto 1),
      E(0) => xpm_fifo_rst_inst_n_10,
      Q(6) => wrpp1_inst_n_0,
      Q(5) => wrpp1_inst_n_1,
      Q(4) => wrpp1_inst_n_2,
      Q(3) => wrpp1_inst_n_3,
      Q(2) => wrpp1_inst_n_4,
      Q(1) => wrpp1_inst_n_5,
      Q(0) => wrpp1_inst_n_6,
      \count_value_i_reg[6]_0\(6 downto 0) => rd_pntr_ext(6 downto 0),
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\ => \^full\,
      \gen_rst_cc.fifo_wr_rst_i_reg\ => \^rd_rst_busy\,
      \gen_rst_cc.fifo_wr_rst_i_reg_0\ => xpm_fifo_rst_inst_n_9,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
xpm_fifo_rst_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
     port map (
      E(0) => xpm_fifo_rst_inst_n_10,
      Q(1 downto 0) => \gen_fwft.curr_fwft_state\(1 downto 0),
      SR(0) => \grdc.rd_data_count_i0\,
      \count_value_i_reg[0]\(0) => rd_pntr_ext(0),
      \count_value_i_reg[1]\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_0\(0) => \gen_fwft.count_rst\,
      \gen_fwft.curr_fwft_state_reg[0]\ => rdp_inst_n_8,
      \gen_fwft.empty_fwft_i_reg\ => \^empty\,
      \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg\ => \^full\,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]\(0) => p_1_in,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6]_0\(0) => xpm_fifo_rst_inst_n_8,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg\ => xpm_fifo_rst_inst_n_2,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7]\ => xpm_fifo_rst_inst_n_9,
      \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg\ => xpm_fifo_rst_inst_n_1,
      overflow_i0 => overflow_i0,
      prog_empty => \^prog_empty\,
      prog_empty_i1 => prog_empty_i1,
      prog_full => \^prog_full\,
      prog_full_i215_in => prog_full_i215_in,
      ram_empty_i => ram_empty_i,
      ram_rd_en_pf_q => ram_rd_en_pf_q,
      ram_wr_en_pf_q => ram_wr_en_pf_q,
      rd_en => rd_en,
      read_only_q => read_only_q,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      write_only_q => write_only_q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 55 downto 0 );
    empty : out STD_LOGIC;
    m_axis_tvalid_int_reg : out STD_LOGIC;
    \Fifo_Wr_Data_reg[1]\ : out STD_LOGIC;
    \GEN_ISR_REG[1].ISR_reg[1]\ : out STD_LOGIC;
    Streaming_Fifo_Full : out STD_LOGIC;
    Fifo_Wr_En1_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    core_aclk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    fifo_empty_reg : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid_int_reg_0 : in STD_LOGIC;
    Mon_Wr_En : in STD_LOGIC;
    Event_Log_En_sync : in STD_LOGIC;
    core_aresetn : in STD_LOGIC;
    Streaming_Fifo_Full_D1 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \buf_valid_reg[0]\ : in STD_LOGIC;
    p_0_in8_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync is
  signal almost_empty : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal \eventlog_cur_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal fifo_full : STD_LOGIC;
  signal rd_data_count : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal wr_rst_busy : STD_LOGIC;
  signal xpm_fifo_base_inst_i_2_n_0 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_10 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_12 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_13 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_2 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_3 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_4 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_5 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_6 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_7 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_71 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_79 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_8 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_82 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_83 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_84 : STD_LOGIC;
  signal xpm_fifo_base_inst_n_9 : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_n_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Fifo_Wr_Data[27]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of Fifo_Wr_En_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \GEN_ISR_REG[1].ISR[1]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \GEN_TRACE_LOG.Streaming_Fifo_Full_D1_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \eventlog_cur_cnt[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \eventlog_cur_cnt[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \eventlog_cur_cnt[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \eventlog_cur_cnt[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of m_axis_tvalid_int_i_2 : label is "soft_lutpair16";
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE : integer;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of xpm_fifo_base_inst : label is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 128;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 7168;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 128;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b0";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 123;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 123;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 7;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 8;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 7;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 56;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of xpm_fifo_base_inst : label is "0707";
  attribute VERSION : integer;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 56;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 7;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 8;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 7;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute SOFT_HLUTNM of xpm_fifo_base_inst_i_2 : label is "soft_lutpair16";
begin
  empty <= \^empty\;
\Fifo_Wr_Data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5DFFFFFF"
    )
        port map (
      I0 => Mon_Wr_En,
      I1 => fifo_full,
      I2 => wr_rst_busy,
      I3 => Event_Log_En_sync,
      I4 => core_aresetn,
      O => \Fifo_Wr_Data_reg[1]\
    );
Fifo_Wr_En_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => Event_Log_En_sync,
      I1 => wr_rst_busy,
      I2 => fifo_full,
      I3 => Mon_Wr_En,
      O => Fifo_Wr_En1_out
    );
\GEN_ISR_REG[1].ISR[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => Streaming_Fifo_Full_D1,
      I1 => s_axi_aresetn,
      I2 => fifo_full,
      I3 => wr_rst_busy,
      O => \GEN_ISR_REG[1].ISR_reg[1]\
    );
\GEN_TRACE_LOG.Streaming_Fifo_Full_D1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_full,
      I1 => wr_rst_busy,
      O => Streaming_Fifo_Full
    );
\eventlog_cur_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D22D2DD2"
    )
        port map (
      I0 => almost_empty,
      I1 => \^empty\,
      I2 => \buf_valid_reg[0]\,
      I3 => p_0_in8_in,
      I4 => rd_data_count(0),
      O => D(0)
    );
\eventlog_cur_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"559A66596659AA65"
    )
        port map (
      I0 => rd_data_count(1),
      I1 => rd_data_count(0),
      I2 => almost_empty,
      I3 => \^empty\,
      I4 => \buf_valid_reg[0]\,
      I5 => p_0_in8_in,
      O => D(1)
    );
\eventlog_cur_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rd_data_count(2),
      I1 => \eventlog_cur_cnt[7]_i_2_n_0\,
      O => D(2)
    );
\eventlog_cur_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => rd_data_count(3),
      I1 => \eventlog_cur_cnt[7]_i_2_n_0\,
      I2 => rd_data_count(2),
      O => D(3)
    );
\eventlog_cur_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => rd_data_count(4),
      I1 => rd_data_count(2),
      I2 => \eventlog_cur_cnt[7]_i_2_n_0\,
      I3 => rd_data_count(3),
      O => D(4)
    );
\eventlog_cur_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => rd_data_count(5),
      I1 => rd_data_count(3),
      I2 => \eventlog_cur_cnt[7]_i_2_n_0\,
      I3 => rd_data_count(2),
      I4 => rd_data_count(4),
      O => D(5)
    );
\eventlog_cur_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => rd_data_count(6),
      I1 => rd_data_count(4),
      I2 => rd_data_count(2),
      I3 => \eventlog_cur_cnt[7]_i_2_n_0\,
      I4 => rd_data_count(3),
      I5 => rd_data_count(5),
      O => D(6)
    );
\eventlog_cur_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => rd_data_count(6),
      I1 => rd_data_count(4),
      I2 => rd_data_count(2),
      I3 => \eventlog_cur_cnt[7]_i_2_n_0\,
      I4 => rd_data_count(3),
      I5 => rd_data_count(5),
      O => D(7)
    );
\eventlog_cur_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"445454DD54DDDDFD"
    )
        port map (
      I0 => rd_data_count(1),
      I1 => \^empty\,
      I2 => almost_empty,
      I3 => rd_data_count(0),
      I4 => \buf_valid_reg[0]\,
      I5 => p_0_in8_in,
      O => \eventlog_cur_cnt[7]_i_2_n_0\
    );
m_axis_tvalid_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFF4444"
    )
        port map (
      I0 => \^empty\,
      I1 => fifo_empty_reg,
      I2 => almost_empty,
      I3 => m_axis_tready,
      I4 => m_axis_tvalid_int_reg_0,
      O => m_axis_tvalid_int_reg
    );
xpm_fifo_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
     port map (
      almost_empty => almost_empty,
      almost_full => xpm_fifo_base_inst_n_12,
      data_valid => xpm_fifo_base_inst_n_82,
      dbiterr => xpm_fifo_base_inst_n_84,
      din(55 downto 28) => B"0000000000000000000000000000",
      din(27 downto 21) => din(23 downto 17),
      din(20 downto 18) => B"000",
      din(17 downto 1) => din(16 downto 0),
      din(0) => '0',
      dout(55 downto 0) => m_axis_tdata(55 downto 0),
      empty => \^empty\,
      full => fifo_full,
      full_n => NLW_xpm_fifo_base_inst_full_n_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => xpm_fifo_base_inst_n_10,
      prog_empty => xpm_fifo_base_inst_n_71,
      prog_full => xpm_fifo_base_inst_n_2,
      rd_clk => core_aclk,
      rd_data_count(6 downto 0) => rd_data_count(6 downto 0),
      rd_en => xpm_fifo_base_inst_i_2_n_0,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst,
      sbiterr => xpm_fifo_base_inst_n_83,
      sleep => '0',
      underflow => xpm_fifo_base_inst_n_79,
      wr_ack => xpm_fifo_base_inst_n_13,
      wr_clk => core_aclk,
      wr_data_count(6) => xpm_fifo_base_inst_n_3,
      wr_data_count(5) => xpm_fifo_base_inst_n_4,
      wr_data_count(4) => xpm_fifo_base_inst_n_5,
      wr_data_count(3) => xpm_fifo_base_inst_n_6,
      wr_data_count(2) => xpm_fifo_base_inst_n_7,
      wr_data_count(1) => xpm_fifo_base_inst_n_8,
      wr_data_count(0) => xpm_fifo_base_inst_n_9,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
xpm_fifo_base_inst_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_axis_tvalid_int_reg_0,
      I1 => m_axis_tready,
      I2 => \^empty\,
      O => xpm_fifo_base_inst_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_async_fifo is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 55 downto 0 );
    empty : out STD_LOGIC;
    m_axis_tvalid_int_reg : out STD_LOGIC;
    \Fifo_Wr_Data_reg[1]\ : out STD_LOGIC;
    \GEN_ISR_REG[1].ISR_reg[1]\ : out STD_LOGIC;
    Streaming_Fifo_Full : out STD_LOGIC;
    Fifo_Wr_En1_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    core_aclk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    fifo_empty_reg : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid_int_reg_0 : in STD_LOGIC;
    Mon_Wr_En : in STD_LOGIC;
    Event_Log_En_sync : in STD_LOGIC;
    core_aresetn : in STD_LOGIC;
    Streaming_Fifo_Full_D1 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \buf_valid_reg[0]\ : in STD_LOGIC;
    p_0_in8_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_async_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_async_fifo is
begin
\XPM_SYNC.inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync
     port map (
      D(7 downto 0) => D(7 downto 0),
      Event_Log_En_sync => Event_Log_En_sync,
      \Fifo_Wr_Data_reg[1]\ => \Fifo_Wr_Data_reg[1]\,
      Fifo_Wr_En1_out => Fifo_Wr_En1_out,
      \GEN_ISR_REG[1].ISR_reg[1]\ => \GEN_ISR_REG[1].ISR_reg[1]\,
      Mon_Wr_En => Mon_Wr_En,
      Streaming_Fifo_Full => Streaming_Fifo_Full,
      Streaming_Fifo_Full_D1 => Streaming_Fifo_Full_D1,
      \buf_valid_reg[0]\ => \buf_valid_reg[0]\,
      core_aclk => core_aclk,
      core_aresetn => core_aresetn,
      din(23 downto 0) => din(23 downto 0),
      empty => empty,
      fifo_empty_reg => fifo_empty_reg,
      m_axis_tdata(55 downto 0) => m_axis_tdata(55 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid_int_reg => m_axis_tvalid_int_reg,
      m_axis_tvalid_int_reg_0 => m_axis_tvalid_int_reg_0,
      p_0_in8_in => p_0_in8_in,
      rst => rst,
      s_axi_aresetn => s_axi_aresetn,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_async_stream_fifo is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    \Fifo_Wr_Data_reg[1]\ : out STD_LOGIC;
    \GEN_ISR_REG[1].ISR_reg[1]\ : out STD_LOGIC;
    Streaming_Fifo_Full : out STD_LOGIC;
    Fifo_Wr_En1_out : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    core_aclk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    Mon_Wr_En : in STD_LOGIC;
    Event_Log_En_sync : in STD_LOGIC;
    core_aresetn : in STD_LOGIC;
    Streaming_Fifo_Full_D1 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_async_stream_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_async_stream_fifo is
  signal Streaming_Fifo_Empty : STD_LOGIC;
  signal async_fifo_inst_n_57 : STD_LOGIC;
  signal \buf_valid[0]_i_1_n_0\ : STD_LOGIC;
  signal \buf_valid[1]_i_1_n_0\ : STD_LOGIC;
  signal \buf_valid_reg_n_0_[0]\ : STD_LOGIC;
  signal eventlog_cur_cnt_wire : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_empty_reg : STD_LOGIC;
  signal fifo_rst0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \buf_valid[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \buf_valid[1]_i_1\ : label is "soft_lutpair20";
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
async_fifo_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_async_fifo
     port map (
      D(7 downto 0) => eventlog_cur_cnt_wire(7 downto 0),
      Event_Log_En_sync => Event_Log_En_sync,
      \Fifo_Wr_Data_reg[1]\ => \Fifo_Wr_Data_reg[1]\,
      Fifo_Wr_En1_out => Fifo_Wr_En1_out,
      \GEN_ISR_REG[1].ISR_reg[1]\ => \GEN_ISR_REG[1].ISR_reg[1]\,
      Mon_Wr_En => Mon_Wr_En,
      Streaming_Fifo_Full => Streaming_Fifo_Full,
      Streaming_Fifo_Full_D1 => Streaming_Fifo_Full_D1,
      \buf_valid_reg[0]\ => \buf_valid_reg_n_0_[0]\,
      core_aclk => core_aclk,
      core_aresetn => core_aresetn,
      din(23 downto 0) => din(23 downto 0),
      empty => Streaming_Fifo_Empty,
      fifo_empty_reg => fifo_empty_reg,
      m_axis_tdata(55 downto 0) => m_axis_tdata(55 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid_int_reg => async_fifo_inst_n_57,
      m_axis_tvalid_int_reg_0 => \^m_axis_tvalid\,
      p_0_in8_in => p_0_in8_in,
      rst => rst,
      s_axi_aresetn => s_axi_aresetn,
      wr_en => wr_en
    );
\buf_valid[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      I2 => \buf_valid_reg_n_0_[0]\,
      O => \buf_valid[0]_i_1_n_0\
    );
\buf_valid[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      I2 => \buf_valid_reg_n_0_[0]\,
      I3 => p_0_in8_in,
      O => \buf_valid[1]_i_1_n_0\
    );
\buf_valid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => \buf_valid[0]_i_1_n_0\,
      Q => \buf_valid_reg_n_0_[0]\,
      R => fifo_rst0
    );
\buf_valid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => \buf_valid[1]_i_1_n_0\,
      Q => p_0_in8_in,
      R => fifo_rst0
    );
\eventlog_cur_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => eventlog_cur_cnt_wire(0),
      Q => Q(0),
      R => fifo_rst0
    );
\eventlog_cur_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => eventlog_cur_cnt_wire(1),
      Q => Q(1),
      R => fifo_rst0
    );
\eventlog_cur_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => eventlog_cur_cnt_wire(2),
      Q => Q(2),
      R => fifo_rst0
    );
\eventlog_cur_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => eventlog_cur_cnt_wire(3),
      Q => Q(3),
      R => fifo_rst0
    );
\eventlog_cur_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => eventlog_cur_cnt_wire(4),
      Q => Q(4),
      R => fifo_rst0
    );
\eventlog_cur_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => eventlog_cur_cnt_wire(5),
      Q => Q(5),
      R => fifo_rst0
    );
\eventlog_cur_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => eventlog_cur_cnt_wire(6),
      Q => Q(6),
      R => fifo_rst0
    );
\eventlog_cur_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => eventlog_cur_cnt_wire(7),
      Q => Q(7),
      R => fifo_rst0
    );
fifo_empty_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => Streaming_Fifo_Empty,
      Q => fifo_empty_reg,
      R => fifo_rst0
    );
m_axis_tvalid_int_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_aresetn,
      O => fifo_rst0
    );
m_axis_tvalid_int_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => async_fifo_inst_n_57,
      Q => \^m_axis_tvalid\,
      R => fifo_rst0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_profile is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \Count_Out_i_reg[0]\ : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    trigger_in_ack : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    core_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    trigger_in : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    core_aresetn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_aresetn : in STD_LOGIC;
    slot_0_axi_wvalid : in STD_LOGIC;
    slot_0_axi_wready : in STD_LOGIC;
    slot_0_axi_wlast : in STD_LOGIC;
    slot_0_axi_rready : in STD_LOGIC;
    slot_0_axi_rvalid : in STD_LOGIC;
    slot_0_axi_rlast : in STD_LOGIC;
    slot_0_axi_arvalid : in STD_LOGIC;
    slot_0_axi_arready : in STD_LOGIC;
    slot_0_axi_bvalid : in STD_LOGIC;
    slot_0_axi_bready : in STD_LOGIC;
    slot_0_axi_awready : in STD_LOGIC;
    slot_0_axi_awvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_profile;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_profile is
  signal Addr_3downto0_is_0x4 : STD_LOGIC;
  signal Addr_3downto0_is_0x8 : STD_LOGIC;
  signal Bus2IP_RdCE : STD_LOGIC;
  signal Control_Set_Rd_En : STD_LOGIC;
  signal Control_Set_Wr_En : STD_LOGIC;
  signal \^count_out_i_reg[0]\ : STD_LOGIC;
  signal Event_Log_En_sync : STD_LOGIC;
  signal Event_Log_Set_Rd_En : STD_LOGIC;
  signal Fifo_Wr_En1_out : STD_LOGIC;
  signal Flags : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \GEN_PROFILE_MODE.SW_Data_reg0\ : STD_LOGIC;
  signal \GEN_TRACE_LOG.async_stream_fifo_inst_n_57\ : STD_LOGIC;
  signal \GEN_TRACE_LOG.async_stream_fifo_inst_n_58\ : STD_LOGIC;
  signal Global_Intr_En : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IP2Bus_DataValid : STD_LOGIC;
  signal Intr_Reg_GIE_Rd_En : STD_LOGIC;
  signal Intr_Reg_IER : STD_LOGIC_VECTOR ( 1 to 1 );
  signal Intr_Reg_IER_Rd_En : STD_LOGIC;
  signal Intr_Reg_ISR : STD_LOGIC_VECTOR ( 1 to 1 );
  signal Intr_Reg_ISR_Rd_En : STD_LOGIC;
  signal Intr_Reg_Set_Rd_En : STD_LOGIC;
  signal Metric_Cnt_Reg_Set_Rd_En : STD_LOGIC;
  signal Mon_Wr_En : STD_LOGIC;
  signal Samp_Metric_Cnt_Reg_Set_Rd_En : STD_LOGIC;
  signal Sample_Interval_Rd_En : STD_LOGIC;
  signal Slot_0_Log_En_Marked : STD_LOGIC;
  signal Status_Reg_FOC_Rd_En : STD_LOGIC;
  signal Status_Reg_Set_Rd_En : STD_LOGIC;
  signal Status_Reg_WIF_Rd_En : STD_LOGIC;
  signal Streaming_Fifo_Full : STD_LOGIC;
  signal Streaming_Fifo_Full_D1 : STD_LOGIC;
  signal Streaming_Fifo_Wr_Data : STD_LOGIC_VECTOR ( 27 downto 1 );
  signal Streaming_Fifo_Wr_En : STD_LOGIC;
  signal Trace_Filter_Rd_En : STD_LOGIC;
  signal Trace_Filter_Wr_En : STD_LOGIC;
  signal Trace_ctrl_reg : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal Use_Ext_Trig_Log : STD_LOGIC;
  signal axi_interface_inst_n_5 : STD_LOGIC;
  signal axi_interface_inst_n_6 : STD_LOGIC;
  signal \cdc_sync_inst1/p_0_in0_in\ : STD_LOGIC;
  signal \cdc_sync_inst1/p_in_d1_cdc_from_reg0\ : STD_LOGIC;
  signal eventlog_cur_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_rst : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal register_module_inst_n_2 : STD_LOGIC;
  signal register_module_inst_n_6 : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal trigger_in_sync : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of trigger_in_ack_r_reg : label is "no";
begin
  \Count_Out_i_reg[0]\ <= \^count_out_i_reg[0]\;
  s_axi_rvalid <= \^s_axi_rvalid\;
\GEN_SLOT0_TRACE.flags_generator_inst_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_flags_gen_trace
     port map (
      D(4) => p_2_out(6),
      D(3 downto 1) => p_2_out(4 downto 2),
      D(0) => p_2_out(0),
      \Mon_Wr_Data_reg[9]\(6 downto 0) => Flags(6 downto 0),
      Q(1 downto 0) => Trace_ctrl_reg(2 downto 1),
      SR(0) => \^count_out_i_reg[0]\,
      Slot_0_Log_En_Marked => Slot_0_Log_En_Marked,
      Use_Ext_Trig_Log => Use_Ext_Trig_Log,
      core_aclk => core_aclk,
      core_aresetn => core_aresetn,
      slot_0_axi_rlast => slot_0_axi_rlast,
      slot_0_axi_rready => slot_0_axi_rready,
      slot_0_axi_rvalid => slot_0_axi_rvalid,
      slot_0_axi_wlast => slot_0_axi_wlast,
      slot_0_axi_wready => slot_0_axi_wready,
      slot_0_axi_wvalid => slot_0_axi_wvalid,
      slot_0_ext_trig_stop(1 downto 0) => D(1 downto 0)
    );
\GEN_TRACE_LOG.Streaming_Fifo_Full_D1_reg\: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => Streaming_Fifo_Full,
      Q => Streaming_Fifo_Full_D1,
      R => \^count_out_i_reg[0]\
    );
\GEN_TRACE_LOG.async_stream_fifo_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_async_stream_fifo
     port map (
      Event_Log_En_sync => Event_Log_En_sync,
      \Fifo_Wr_Data_reg[1]\ => \GEN_TRACE_LOG.async_stream_fifo_inst_n_57\,
      Fifo_Wr_En1_out => Fifo_Wr_En1_out,
      \GEN_ISR_REG[1].ISR_reg[1]\ => \GEN_TRACE_LOG.async_stream_fifo_inst_n_58\,
      Mon_Wr_En => Mon_Wr_En,
      Q(7 downto 0) => eventlog_cur_cnt(7 downto 0),
      Streaming_Fifo_Full => Streaming_Fifo_Full,
      Streaming_Fifo_Full_D1 => Streaming_Fifo_Full_D1,
      core_aclk => core_aclk,
      core_aresetn => core_aresetn,
      din(23 downto 17) => Streaming_Fifo_Wr_Data(27 downto 21),
      din(16 downto 0) => Streaming_Fifo_Wr_Data(17 downto 1),
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(55 downto 0) => m_axis_tdata(55 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      rst => fifo_rst,
      s_axi_aresetn => s_axi_aresetn,
      wr_en => Streaming_Fifo_Wr_En
    );
\GEN_TRACE_LOG.streaming_fifo_write_logic_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_strm_fifo_wr_logic
     port map (
      D(6 downto 0) => Flags(6 downto 0),
      Event_Log_En_sync => Event_Log_En_sync,
      Fifo_Wr_En1_out => Fifo_Wr_En1_out,
      Mon_Wr_En => Mon_Wr_En,
      Mon_Wr_En_reg_0 => \GEN_TRACE_LOG.async_stream_fifo_inst_n_57\,
      SR(0) => \^count_out_i_reg[0]\,
      Slot_0_Log_En_Marked => Slot_0_Log_En_Marked,
      core_aclk => core_aclk,
      core_aresetn => core_aresetn,
      din(23 downto 17) => Streaming_Fifo_Wr_Data(27 downto 21),
      din(16 downto 0) => Streaming_Fifo_Wr_Data(17 downto 1),
      wr_en => Streaming_Fifo_Wr_En
    );
axi_interface_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_axi_interface
     port map (
      Addr_3downto0_is_0x4 => Addr_3downto0_is_0x4,
      Addr_3downto0_is_0x8 => Addr_3downto0_is_0x8,
      Bus2IP_RdCE => Bus2IP_RdCE,
      Control_Set_Rd_En => Control_Set_Rd_En,
      Control_Set_Wr_En => Control_Set_Wr_En,
      E(0) => \GEN_PROFILE_MODE.SW_Data_reg0\,
      Event_Log_Set_Rd_En => Event_Log_Set_Rd_En,
      \GEN_TRACE_LOG.Streaming_Fifo_Full_D1_reg\ => \GEN_TRACE_LOG.async_stream_fifo_inst_n_58\,
      Global_Intr_En => Global_Intr_En,
      Global_Intr_En_reg => axi_interface_inst_n_5,
      \IER_reg[1]\ => axi_interface_inst_n_6,
      IP2Bus_DataValid_reg => register_module_inst_n_6,
      IP2Bus_DataValid_reg_0(0) => IP2Bus_DataValid,
      Intr_Reg_GIE_Rd_En => Intr_Reg_GIE_Rd_En,
      Intr_Reg_IER(0) => Intr_Reg_IER(1),
      Intr_Reg_IER_Rd_En => Intr_Reg_IER_Rd_En,
      Intr_Reg_ISR(0) => Intr_Reg_ISR(1),
      Intr_Reg_ISR_Rd_En => Intr_Reg_ISR_Rd_En,
      Intr_Reg_Set_Rd_En => Intr_Reg_Set_Rd_En,
      Metric_Cnt_Reg_Set_Rd_En => Metric_Cnt_Reg_Set_Rd_En,
      Q(31 downto 0) => IP2Bus_Data(31 downto 0),
      SR(0) => register_module_inst_n_2,
      Samp_Metric_Cnt_Reg_Set_Rd_En => Samp_Metric_Cnt_Reg_Set_Rd_En,
      Sample_Interval_Rd_En => Sample_Interval_Rd_En,
      Status_Reg_FOC_Rd_En => Status_Reg_FOC_Rd_En,
      Status_Reg_Set_Rd_En => Status_Reg_Set_Rd_En,
      Status_Reg_WIF_Rd_En => Status_Reg_WIF_Rd_En,
      Trace_Filter_Rd_En => Trace_Filter_Rd_En,
      \Trace_ctrl_reg_reg[30]\(0) => Trace_Filter_Wr_En,
      \out\ => \cdc_sync_inst1/p_0_in0_in\,
      p_0_out => p_0_out,
      p_in_d1_cdc_from_reg0 => \cdc_sync_inst1/p_in_d1_cdc_from_reg0\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(15 downto 0) => s_axi_araddr(15 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(15 downto 0) => s_axi_awaddr(15 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => \^s_axi_rvalid\,
      s_axi_wdata(1) => s_axi_wdata(2),
      s_axi_wdata(0) => s_axi_wdata(0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
interrupt_module_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_interrupt_module
     port map (
      Global_Intr_En => Global_Intr_En,
      Intr_Reg_IER(0) => Intr_Reg_IER(1),
      Intr_Reg_ISR(0) => Intr_Reg_ISR(1),
      SR(0) => register_module_inst_n_2,
      \bus2ip_addr_i_reg[5]\ => axi_interface_inst_n_6,
      interrupt => interrupt,
      p_0_out => p_0_out,
      s_axi_aclk => s_axi_aclk
    );
register_module_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_register_module_profile
     port map (
      Addr_3downto0_is_0x4 => Addr_3downto0_is_0x4,
      Addr_3downto0_is_0x8 => Addr_3downto0_is_0x8,
      Bus2IP_RdCE => Bus2IP_RdCE,
      Control_Set_Rd_En => Control_Set_Rd_En,
      Control_Set_Wr_En => Control_Set_Wr_En,
      D(4) => p_2_out(6),
      D(3 downto 1) => p_2_out(4 downto 2),
      D(0) => p_2_out(0),
      E(0) => \GEN_PROFILE_MODE.SW_Data_reg0\,
      Event_Log_En_sync => Event_Log_En_sync,
      Event_Log_Set_Rd_En => Event_Log_Set_Rd_En,
      Global_Intr_En => Global_Intr_En,
      \IP2Bus_Data_sampled_reg[31]\(0) => IP2Bus_DataValid,
      \IP2Bus_Data_sampled_reg[31]_0\(31 downto 0) => IP2Bus_Data(31 downto 0),
      Intr_Reg_GIE_Rd_En => Intr_Reg_GIE_Rd_En,
      Intr_Reg_IER(0) => Intr_Reg_IER(1),
      Intr_Reg_IER_Rd_En => Intr_Reg_IER_Rd_En,
      Intr_Reg_ISR(0) => Intr_Reg_ISR(1),
      Intr_Reg_ISR_Rd_En => Intr_Reg_ISR_Rd_En,
      Intr_Reg_Set_Rd_En => Intr_Reg_Set_Rd_En,
      Metric_Cnt_Reg_Set_Rd_En => Metric_Cnt_Reg_Set_Rd_En,
      Q(1 downto 0) => Trace_ctrl_reg(2 downto 1),
      SR(0) => register_module_inst_n_2,
      Samp_Metric_Cnt_Reg_Set_Rd_En => Samp_Metric_Cnt_Reg_Set_Rd_En,
      Sample_Interval_Rd_En => Sample_Interval_Rd_En,
      Status_Reg_FOC_Rd_En => Status_Reg_FOC_Rd_En,
      Status_Reg_Set_Rd_En => Status_Reg_Set_Rd_En,
      Status_Reg_WIF_Rd_En => Status_Reg_WIF_Rd_En,
      Trace_Filter_Rd_En => Trace_Filter_Rd_En,
      Use_Ext_Trig_Log => Use_Ext_Trig_Log,
      \bus2ip_addr_i_reg[5]\ => axi_interface_inst_n_5,
      core_aclk => core_aclk,
      core_aresetn => core_aresetn,
      core_aresetn_0(0) => \^count_out_i_reg[0]\,
      \eventlog_cur_cnt_reg[7]\(7 downto 0) => eventlog_cur_cnt(7 downto 0),
      m_axis_aresetn => m_axis_aresetn,
      \out\ => \cdc_sync_inst1/p_0_in0_in\,
      p_in_d1_cdc_from_reg0 => \cdc_sync_inst1/p_in_d1_cdc_from_reg0\,
      rst => fifo_rst,
      rvalid_reg => register_module_inst_n_6,
      rvalid_reg_0 => \^s_axi_rvalid\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      slot_0_axi_arready => slot_0_axi_arready,
      slot_0_axi_arvalid => slot_0_axi_arvalid,
      slot_0_axi_awready => slot_0_axi_awready,
      slot_0_axi_awvalid => slot_0_axi_awvalid,
      slot_0_axi_bready => slot_0_axi_bready,
      slot_0_axi_bvalid => slot_0_axi_bvalid,
      slot_0_axi_rlast => slot_0_axi_rlast,
      slot_0_axi_rready => slot_0_axi_rready,
      slot_0_axi_rvalid => slot_0_axi_rvalid,
      slot_0_axi_wlast => slot_0_axi_wlast,
      slot_0_axi_wready => slot_0_axi_wready,
      slot_0_axi_wvalid => slot_0_axi_wvalid,
      write_req_reg(0) => Trace_Filter_Wr_En
    );
trigger_in_ack_r_reg: unisim.vcomponents.FDRE
     port map (
      C => core_aclk,
      CE => '1',
      D => trigger_in_sync,
      Q => trigger_in_ack,
      R => \^count_out_i_reg[0]\
    );
trigger_sig_cdc_sync: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_4\
     port map (
      SR(0) => \^count_out_i_reg[0]\,
      core_aclk => core_aclk,
      \out\ => trigger_in_sync,
      trigger_in => trigger_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC;
    slot_0_axi_aclk : in STD_LOGIC;
    slot_0_axi_aresetn : in STD_LOGIC;
    slot_0_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_0_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    slot_0_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_0_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_awvalid : in STD_LOGIC;
    slot_0_axi_awready : in STD_LOGIC;
    slot_0_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    slot_0_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_0_axi_wlast : in STD_LOGIC;
    slot_0_axi_wvalid : in STD_LOGIC;
    slot_0_axi_wready : in STD_LOGIC;
    slot_0_axi_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_0_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_bvalid : in STD_LOGIC;
    slot_0_axi_bready : in STD_LOGIC;
    slot_0_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_0_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    slot_0_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_0_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_arvalid : in STD_LOGIC;
    slot_0_axi_arready : in STD_LOGIC;
    slot_0_axi_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_0_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    slot_0_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_rlast : in STD_LOGIC;
    slot_0_axi_rvalid : in STD_LOGIC;
    slot_0_axi_rready : in STD_LOGIC;
    slot_0_axis_aclk : in STD_LOGIC;
    slot_0_axis_aresetn : in STD_LOGIC;
    slot_0_axis_tvalid : in STD_LOGIC;
    slot_0_axis_tready : in STD_LOGIC;
    slot_0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axis_tlast : in STD_LOGIC;
    slot_0_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_ext_trig : in STD_LOGIC;
    slot_0_ext_trig_stop : in STD_LOGIC;
    slot_1_axi_aclk : in STD_LOGIC;
    slot_1_axi_aresetn : in STD_LOGIC;
    slot_1_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_1_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_1_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_1_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_1_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_1_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_1_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_1_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_1_axi_awvalid : in STD_LOGIC;
    slot_1_axi_awready : in STD_LOGIC;
    slot_1_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_1_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_1_axi_wlast : in STD_LOGIC;
    slot_1_axi_wvalid : in STD_LOGIC;
    slot_1_axi_wready : in STD_LOGIC;
    slot_1_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_1_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_1_axi_bvalid : in STD_LOGIC;
    slot_1_axi_bready : in STD_LOGIC;
    slot_1_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_1_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_1_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_1_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_1_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_1_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_1_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_1_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_1_axi_arvalid : in STD_LOGIC;
    slot_1_axi_arready : in STD_LOGIC;
    slot_1_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_1_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_1_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_1_axi_rlast : in STD_LOGIC;
    slot_1_axi_rvalid : in STD_LOGIC;
    slot_1_axi_rready : in STD_LOGIC;
    slot_1_axis_aclk : in STD_LOGIC;
    slot_1_axis_aresetn : in STD_LOGIC;
    slot_1_axis_tvalid : in STD_LOGIC;
    slot_1_axis_tready : in STD_LOGIC;
    slot_1_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_1_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_1_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_1_axis_tlast : in STD_LOGIC;
    slot_1_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_1_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_1_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_1_ext_trig : in STD_LOGIC;
    slot_1_ext_trig_stop : in STD_LOGIC;
    slot_2_axi_aclk : in STD_LOGIC;
    slot_2_axi_aresetn : in STD_LOGIC;
    slot_2_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_2_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_2_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_awvalid : in STD_LOGIC;
    slot_2_axi_awready : in STD_LOGIC;
    slot_2_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_2_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_wlast : in STD_LOGIC;
    slot_2_axi_wvalid : in STD_LOGIC;
    slot_2_axi_wready : in STD_LOGIC;
    slot_2_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_bvalid : in STD_LOGIC;
    slot_2_axi_bready : in STD_LOGIC;
    slot_2_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_2_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_2_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_arvalid : in STD_LOGIC;
    slot_2_axi_arready : in STD_LOGIC;
    slot_2_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_2_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_rlast : in STD_LOGIC;
    slot_2_axi_rvalid : in STD_LOGIC;
    slot_2_axi_rready : in STD_LOGIC;
    slot_2_axis_aclk : in STD_LOGIC;
    slot_2_axis_aresetn : in STD_LOGIC;
    slot_2_axis_tvalid : in STD_LOGIC;
    slot_2_axis_tready : in STD_LOGIC;
    slot_2_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_2_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axis_tlast : in STD_LOGIC;
    slot_2_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_ext_trig : in STD_LOGIC;
    slot_2_ext_trig_stop : in STD_LOGIC;
    slot_3_axi_aclk : in STD_LOGIC;
    slot_3_axi_aresetn : in STD_LOGIC;
    slot_3_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_3_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_3_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_3_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_3_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_3_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_3_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_3_axi_awvalid : in STD_LOGIC;
    slot_3_axi_awready : in STD_LOGIC;
    slot_3_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_3_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axi_wlast : in STD_LOGIC;
    slot_3_axi_wvalid : in STD_LOGIC;
    slot_3_axi_wready : in STD_LOGIC;
    slot_3_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_3_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_3_axi_bvalid : in STD_LOGIC;
    slot_3_axi_bready : in STD_LOGIC;
    slot_3_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_3_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_3_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_3_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_3_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_3_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_3_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_3_axi_arvalid : in STD_LOGIC;
    slot_3_axi_arready : in STD_LOGIC;
    slot_3_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_3_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_3_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_3_axi_rlast : in STD_LOGIC;
    slot_3_axi_rvalid : in STD_LOGIC;
    slot_3_axi_rready : in STD_LOGIC;
    slot_3_axis_aclk : in STD_LOGIC;
    slot_3_axis_aresetn : in STD_LOGIC;
    slot_3_axis_tvalid : in STD_LOGIC;
    slot_3_axis_tready : in STD_LOGIC;
    slot_3_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_3_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axis_tlast : in STD_LOGIC;
    slot_3_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_3_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_3_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_3_ext_trig : in STD_LOGIC;
    slot_3_ext_trig_stop : in STD_LOGIC;
    slot_4_axi_aclk : in STD_LOGIC;
    slot_4_axi_aresetn : in STD_LOGIC;
    slot_4_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_4_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_4_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_4_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_4_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_4_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_4_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_4_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_4_axi_awvalid : in STD_LOGIC;
    slot_4_axi_awready : in STD_LOGIC;
    slot_4_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_4_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_4_axi_wlast : in STD_LOGIC;
    slot_4_axi_wvalid : in STD_LOGIC;
    slot_4_axi_wready : in STD_LOGIC;
    slot_4_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_4_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_4_axi_bvalid : in STD_LOGIC;
    slot_4_axi_bready : in STD_LOGIC;
    slot_4_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_4_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_4_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_4_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_4_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_4_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_4_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_4_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_4_axi_arvalid : in STD_LOGIC;
    slot_4_axi_arready : in STD_LOGIC;
    slot_4_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_4_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_4_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_4_axi_rlast : in STD_LOGIC;
    slot_4_axi_rvalid : in STD_LOGIC;
    slot_4_axi_rready : in STD_LOGIC;
    slot_4_axis_aclk : in STD_LOGIC;
    slot_4_axis_aresetn : in STD_LOGIC;
    slot_4_axis_tvalid : in STD_LOGIC;
    slot_4_axis_tready : in STD_LOGIC;
    slot_4_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_4_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_4_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_4_axis_tlast : in STD_LOGIC;
    slot_4_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_4_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_4_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_4_ext_trig : in STD_LOGIC;
    slot_4_ext_trig_stop : in STD_LOGIC;
    slot_5_axi_aclk : in STD_LOGIC;
    slot_5_axi_aresetn : in STD_LOGIC;
    slot_5_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_5_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_5_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_5_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_5_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_5_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_5_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_5_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_5_axi_awvalid : in STD_LOGIC;
    slot_5_axi_awready : in STD_LOGIC;
    slot_5_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_5_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_5_axi_wlast : in STD_LOGIC;
    slot_5_axi_wvalid : in STD_LOGIC;
    slot_5_axi_wready : in STD_LOGIC;
    slot_5_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_5_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_5_axi_bvalid : in STD_LOGIC;
    slot_5_axi_bready : in STD_LOGIC;
    slot_5_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_5_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_5_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_5_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_5_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_5_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_5_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_5_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_5_axi_arvalid : in STD_LOGIC;
    slot_5_axi_arready : in STD_LOGIC;
    slot_5_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_5_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_5_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_5_axi_rlast : in STD_LOGIC;
    slot_5_axi_rvalid : in STD_LOGIC;
    slot_5_axi_rready : in STD_LOGIC;
    slot_5_axis_aclk : in STD_LOGIC;
    slot_5_axis_aresetn : in STD_LOGIC;
    slot_5_axis_tvalid : in STD_LOGIC;
    slot_5_axis_tready : in STD_LOGIC;
    slot_5_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_5_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_5_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_5_axis_tlast : in STD_LOGIC;
    slot_5_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_5_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_5_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_5_ext_trig : in STD_LOGIC;
    slot_5_ext_trig_stop : in STD_LOGIC;
    slot_6_axi_aclk : in STD_LOGIC;
    slot_6_axi_aresetn : in STD_LOGIC;
    slot_6_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_6_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_6_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_6_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_6_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_6_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_6_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_6_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_6_axi_awvalid : in STD_LOGIC;
    slot_6_axi_awready : in STD_LOGIC;
    slot_6_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_6_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_6_axi_wlast : in STD_LOGIC;
    slot_6_axi_wvalid : in STD_LOGIC;
    slot_6_axi_wready : in STD_LOGIC;
    slot_6_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_6_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_6_axi_bvalid : in STD_LOGIC;
    slot_6_axi_bready : in STD_LOGIC;
    slot_6_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_6_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_6_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_6_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_6_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_6_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_6_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_6_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_6_axi_arvalid : in STD_LOGIC;
    slot_6_axi_arready : in STD_LOGIC;
    slot_6_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_6_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_6_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_6_axi_rlast : in STD_LOGIC;
    slot_6_axi_rvalid : in STD_LOGIC;
    slot_6_axi_rready : in STD_LOGIC;
    slot_6_axis_aclk : in STD_LOGIC;
    slot_6_axis_aresetn : in STD_LOGIC;
    slot_6_axis_tvalid : in STD_LOGIC;
    slot_6_axis_tready : in STD_LOGIC;
    slot_6_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_6_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_6_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_6_axis_tlast : in STD_LOGIC;
    slot_6_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_6_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_6_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_6_ext_trig : in STD_LOGIC;
    slot_6_ext_trig_stop : in STD_LOGIC;
    slot_7_axi_aclk : in STD_LOGIC;
    slot_7_axi_aresetn : in STD_LOGIC;
    slot_7_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_7_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_7_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_7_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_7_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_7_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_7_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_7_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_7_axi_awvalid : in STD_LOGIC;
    slot_7_axi_awready : in STD_LOGIC;
    slot_7_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_7_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_7_axi_wlast : in STD_LOGIC;
    slot_7_axi_wvalid : in STD_LOGIC;
    slot_7_axi_wready : in STD_LOGIC;
    slot_7_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_7_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_7_axi_bvalid : in STD_LOGIC;
    slot_7_axi_bready : in STD_LOGIC;
    slot_7_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_7_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_7_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_7_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_7_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_7_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_7_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_7_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_7_axi_arvalid : in STD_LOGIC;
    slot_7_axi_arready : in STD_LOGIC;
    slot_7_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_7_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_7_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_7_axi_rlast : in STD_LOGIC;
    slot_7_axi_rvalid : in STD_LOGIC;
    slot_7_axi_rready : in STD_LOGIC;
    slot_7_axis_aclk : in STD_LOGIC;
    slot_7_axis_aresetn : in STD_LOGIC;
    slot_7_axis_tvalid : in STD_LOGIC;
    slot_7_axis_tready : in STD_LOGIC;
    slot_7_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_7_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_7_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_7_axis_tlast : in STD_LOGIC;
    slot_7_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_7_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_7_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_7_ext_trig : in STD_LOGIC;
    slot_7_ext_trig_stop : in STD_LOGIC;
    ext_clk_0 : in STD_LOGIC;
    ext_rstn_0 : in STD_LOGIC;
    ext_event_0_cnt_start : in STD_LOGIC;
    ext_event_0_cnt_stop : in STD_LOGIC;
    ext_event_0 : in STD_LOGIC;
    ext_clk_1 : in STD_LOGIC;
    ext_rstn_1 : in STD_LOGIC;
    ext_event_1_cnt_start : in STD_LOGIC;
    ext_event_1_cnt_stop : in STD_LOGIC;
    ext_event_1 : in STD_LOGIC;
    ext_clk_2 : in STD_LOGIC;
    ext_rstn_2 : in STD_LOGIC;
    ext_event_2_cnt_start : in STD_LOGIC;
    ext_event_2_cnt_stop : in STD_LOGIC;
    ext_event_2 : in STD_LOGIC;
    ext_clk_3 : in STD_LOGIC;
    ext_rstn_3 : in STD_LOGIC;
    ext_event_3_cnt_start : in STD_LOGIC;
    ext_event_3_cnt_stop : in STD_LOGIC;
    ext_event_3 : in STD_LOGIC;
    ext_clk_4 : in STD_LOGIC;
    ext_rstn_4 : in STD_LOGIC;
    ext_event_4_cnt_start : in STD_LOGIC;
    ext_event_4_cnt_stop : in STD_LOGIC;
    ext_event_4 : in STD_LOGIC;
    ext_clk_5 : in STD_LOGIC;
    ext_rstn_5 : in STD_LOGIC;
    ext_event_5_cnt_start : in STD_LOGIC;
    ext_event_5_cnt_stop : in STD_LOGIC;
    ext_event_5 : in STD_LOGIC;
    ext_clk_6 : in STD_LOGIC;
    ext_rstn_6 : in STD_LOGIC;
    ext_event_6_cnt_start : in STD_LOGIC;
    ext_event_6_cnt_stop : in STD_LOGIC;
    ext_event_6 : in STD_LOGIC;
    ext_clk_7 : in STD_LOGIC;
    ext_rstn_7 : in STD_LOGIC;
    ext_event_7_cnt_start : in STD_LOGIC;
    ext_event_7_cnt_stop : in STD_LOGIC;
    ext_event_7 : in STD_LOGIC;
    capture_event : in STD_LOGIC;
    reset_event : in STD_LOGIC;
    core_aclk : in STD_LOGIC;
    core_aresetn : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC;
    s_axi_offld_aclk : in STD_LOGIC;
    s_axi_offld_aresetn : in STD_LOGIC;
    s_axi_offld_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_offld_arvalid : in STD_LOGIC;
    s_axi_offld_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_offld_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_offld_arready : out STD_LOGIC;
    s_axi_offld_rready : in STD_LOGIC;
    s_axi_offld_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_offld_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_offld_rvalid : out STD_LOGIC;
    s_axi_offld_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_offld_rlast : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    trigger_in : in STD_LOGIC;
    trigger_in_ack : out STD_LOGIC
  );
  attribute COUNTER_LOAD_VALUE : integer;
  attribute COUNTER_LOAD_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_AXI4LITE_CORE_CLK_ASYNC : integer;
  attribute C_AXI4LITE_CORE_CLK_ASYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_AXIS_DWIDTH_ROUND_TO_32 : integer;
  attribute C_AXIS_DWIDTH_ROUND_TO_32 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 64;
  attribute C_ENABLE_ADVANCED : integer;
  attribute C_ENABLE_ADVANCED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_ENABLE_EVENT_COUNT : integer;
  attribute C_ENABLE_EVENT_COUNT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_ENABLE_EVENT_LOG : integer;
  attribute C_ENABLE_EVENT_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_ENABLE_PROFILE : integer;
  attribute C_ENABLE_PROFILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_ENABLE_TRACE : integer;
  attribute C_ENABLE_TRACE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EN_ALL_TRACE : integer;
  attribute C_EN_ALL_TRACE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EN_AXI_DEBUG : integer;
  attribute C_EN_AXI_DEBUG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_EN_EXT_EVENTS_FLAG : integer;
  attribute C_EN_EXT_EVENTS_FLAG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_EN_FIRST_READ_FLAG : integer;
  attribute C_EN_FIRST_READ_FLAG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EN_FIRST_WRITE_FLAG : integer;
  attribute C_EN_FIRST_WRITE_FLAG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EN_LAST_READ_FLAG : integer;
  attribute C_EN_LAST_READ_FLAG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EN_LAST_WRITE_FLAG : integer;
  attribute C_EN_LAST_WRITE_FLAG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EN_RD_ADD_FLAG : integer;
  attribute C_EN_RD_ADD_FLAG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EN_RESPONSE_FLAG : integer;
  attribute C_EN_RESPONSE_FLAG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EN_SW_REG_WR_FLAG : integer;
  attribute C_EN_SW_REG_WR_FLAG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_EN_TRIGGER : integer;
  attribute C_EN_TRIGGER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_EN_WR_ADD_FLAG : integer;
  attribute C_EN_WR_ADD_FLAG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EXT_EVENT0_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT0_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_EXT_EVENT1_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT1_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EXT_EVENT2_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT2_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EXT_EVENT3_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT3_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EXT_EVENT4_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT4_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EXT_EVENT5_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT5_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EXT_EVENT6_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT6_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_EXT_EVENT7_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT7_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "zynquplus";
  attribute C_FIFO_AXIS_DEPTH : integer;
  attribute C_FIFO_AXIS_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 128;
  attribute C_FIFO_AXIS_SYNC : integer;
  attribute C_FIFO_AXIS_SYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_FIFO_AXIS_TDATA_WIDTH : integer;
  attribute C_FIFO_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 56;
  attribute C_FIFO_AXIS_TID_WIDTH : integer;
  attribute C_FIFO_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_GLOBAL_COUNT_WIDTH : integer;
  attribute C_GLOBAL_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_HAVE_SAMPLED_METRIC_CNT : integer;
  attribute C_HAVE_SAMPLED_METRIC_CNT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "design_1_axi_perf_mon_0_0";
  attribute C_LITE_ADDRESS_WIDTH : integer;
  attribute C_LITE_ADDRESS_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 16;
  attribute C_LOG_DATA_OFFLD : integer;
  attribute C_LOG_DATA_OFFLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_METRICS_SAMPLE_COUNT_WIDTH : integer;
  attribute C_METRICS_SAMPLE_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_METRIC_COUNT_SCALE : integer;
  attribute C_METRIC_COUNT_SCALE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_METRIC_COUNT_WIDTH : integer;
  attribute C_METRIC_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_NUM_MONITOR_SLOTS : integer;
  attribute C_NUM_MONITOR_SLOTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_NUM_OF_COUNTERS : integer;
  attribute C_NUM_OF_COUNTERS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_REG_ALL_MONITOR_SIGNALS : integer;
  attribute C_REG_ALL_MONITOR_SIGNALS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SHOW_AXIS_TDEST : integer;
  attribute C_SHOW_AXIS_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SHOW_AXIS_TID : integer;
  attribute C_SHOW_AXIS_TID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SHOW_AXIS_TUSER : integer;
  attribute C_SHOW_AXIS_TUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SHOW_AXI_IDS : integer;
  attribute C_SHOW_AXI_IDS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SHOW_AXI_LEN : integer;
  attribute C_SHOW_AXI_LEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SLOT_0_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_0_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_0_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_0_AXIS_TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_0_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_0_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_0_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_0_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_0_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_0_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 40;
  attribute C_SLOT_0_AXI_AWLEN : integer;
  attribute C_SLOT_0_AXI_AWLEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 7;
  attribute C_SLOT_0_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_0_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 128;
  attribute C_SLOT_0_AXI_ID_WIDTH : integer;
  attribute C_SLOT_0_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 16;
  attribute C_SLOT_0_AXI_LOCK : integer;
  attribute C_SLOT_0_AXI_LOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SLOT_0_AXI_PROTOCOL : string;
  attribute C_SLOT_0_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute C_SLOT_0_FIFO_ENABLE : integer;
  attribute C_SLOT_0_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SLOT_1_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_1_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_1_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_1_AXIS_TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_1_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_1_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_1_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_1_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_1_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_1_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_1_AXI_AWLEN : integer;
  attribute C_SLOT_1_AXI_AWLEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 7;
  attribute C_SLOT_1_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_1_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_1_AXI_ID_WIDTH : integer;
  attribute C_SLOT_1_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_1_AXI_LOCK : integer;
  attribute C_SLOT_1_AXI_LOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SLOT_1_AXI_PROTOCOL : string;
  attribute C_SLOT_1_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute C_SLOT_1_FIFO_ENABLE : integer;
  attribute C_SLOT_1_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_2_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_2_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_2_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_2_AXIS_TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_2_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_2_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_2_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_2_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_2_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_2_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_2_AXI_AWLEN : integer;
  attribute C_SLOT_2_AXI_AWLEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 7;
  attribute C_SLOT_2_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_2_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_2_AXI_ID_WIDTH : integer;
  attribute C_SLOT_2_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_2_AXI_LOCK : integer;
  attribute C_SLOT_2_AXI_LOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SLOT_2_AXI_PROTOCOL : string;
  attribute C_SLOT_2_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute C_SLOT_2_FIFO_ENABLE : integer;
  attribute C_SLOT_2_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_3_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_3_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_3_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_3_AXIS_TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_3_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_3_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_3_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_3_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_3_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_3_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_3_AXI_AWLEN : integer;
  attribute C_SLOT_3_AXI_AWLEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 7;
  attribute C_SLOT_3_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_3_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_3_AXI_ID_WIDTH : integer;
  attribute C_SLOT_3_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_3_AXI_LOCK : integer;
  attribute C_SLOT_3_AXI_LOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SLOT_3_AXI_PROTOCOL : string;
  attribute C_SLOT_3_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute C_SLOT_3_FIFO_ENABLE : integer;
  attribute C_SLOT_3_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_4_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_4_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_4_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_4_AXIS_TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_4_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_4_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_4_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_4_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_4_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_4_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_4_AXI_AWLEN : integer;
  attribute C_SLOT_4_AXI_AWLEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 7;
  attribute C_SLOT_4_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_4_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_4_AXI_ID_WIDTH : integer;
  attribute C_SLOT_4_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_4_AXI_LOCK : integer;
  attribute C_SLOT_4_AXI_LOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SLOT_4_AXI_PROTOCOL : string;
  attribute C_SLOT_4_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute C_SLOT_4_FIFO_ENABLE : integer;
  attribute C_SLOT_4_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_5_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_5_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_5_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_5_AXIS_TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_5_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_5_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_5_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_5_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_5_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_5_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_5_AXI_AWLEN : integer;
  attribute C_SLOT_5_AXI_AWLEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 7;
  attribute C_SLOT_5_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_5_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_5_AXI_ID_WIDTH : integer;
  attribute C_SLOT_5_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_5_AXI_LOCK : integer;
  attribute C_SLOT_5_AXI_LOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SLOT_5_AXI_PROTOCOL : string;
  attribute C_SLOT_5_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute C_SLOT_5_FIFO_ENABLE : integer;
  attribute C_SLOT_5_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_6_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_6_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_6_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_6_AXIS_TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_6_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_6_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_6_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_6_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_6_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_6_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_6_AXI_AWLEN : integer;
  attribute C_SLOT_6_AXI_AWLEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 7;
  attribute C_SLOT_6_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_6_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_6_AXI_ID_WIDTH : integer;
  attribute C_SLOT_6_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_6_AXI_LOCK : integer;
  attribute C_SLOT_6_AXI_LOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SLOT_6_AXI_PROTOCOL : string;
  attribute C_SLOT_6_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute C_SLOT_6_FIFO_ENABLE : integer;
  attribute C_SLOT_6_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_7_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_7_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_7_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_7_AXIS_TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_7_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_7_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_7_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_7_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_7_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_7_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_7_AXI_AWLEN : integer;
  attribute C_SLOT_7_AXI_AWLEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 7;
  attribute C_SLOT_7_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_7_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_SLOT_7_AXI_ID_WIDTH : integer;
  attribute C_SLOT_7_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SLOT_7_AXI_LOCK : integer;
  attribute C_SLOT_7_AXI_LOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_SLOT_7_AXI_PROTOCOL : string;
  attribute C_SLOT_7_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute C_SLOT_7_FIFO_ENABLE : integer;
  attribute C_SLOT_7_FIFO_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_SUPPORT_ID_REFLECTION : integer;
  attribute C_SUPPORT_ID_REFLECTION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_S_AXI4_BASEADDR : integer;
  attribute C_S_AXI4_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is -1;
  attribute C_S_AXI4_HIGHADDR : integer;
  attribute C_S_AXI4_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 16;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4LITE";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "yes";
  attribute ENABLE_EXT_EVENTS : integer;
  attribute ENABLE_EXT_EVENTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
  attribute SLOT_0_AXI_PROTOCOL : string;
  attribute SLOT_0_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute SLOT_0_AXI_SUB_PROTOCOL : string;
  attribute SLOT_0_AXI_SUB_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "NONE";
  attribute SLOT_1_AXI_PROTOCOL : string;
  attribute SLOT_1_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute SLOT_1_AXI_SUB_PROTOCOL : string;
  attribute SLOT_1_AXI_SUB_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "NONE";
  attribute SLOT_2_AXI_PROTOCOL : string;
  attribute SLOT_2_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute SLOT_2_AXI_SUB_PROTOCOL : string;
  attribute SLOT_2_AXI_SUB_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "NONE";
  attribute SLOT_3_AXI_PROTOCOL : string;
  attribute SLOT_3_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute SLOT_3_AXI_SUB_PROTOCOL : string;
  attribute SLOT_3_AXI_SUB_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "NONE";
  attribute SLOT_4_AXI_PROTOCOL : string;
  attribute SLOT_4_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute SLOT_4_AXI_SUB_PROTOCOL : string;
  attribute SLOT_4_AXI_SUB_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "NONE";
  attribute SLOT_5_AXI_PROTOCOL : string;
  attribute SLOT_5_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute SLOT_5_AXI_SUB_PROTOCOL : string;
  attribute SLOT_5_AXI_SUB_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "NONE";
  attribute SLOT_6_AXI_PROTOCOL : string;
  attribute SLOT_6_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute SLOT_6_AXI_SUB_PROTOCOL : string;
  attribute SLOT_6_AXI_SUB_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "NONE";
  attribute SLOT_7_AXI_PROTOCOL : string;
  attribute SLOT_7_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "AXI4";
  attribute SLOT_7_AXI_SUB_PROTOCOL : string;
  attribute SLOT_7_AXI_SUB_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is "NONE";
  attribute S_AXI_OFFLD_ID_WIDTH : integer;
  attribute S_AXI_OFFLD_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \GEN_PROFILE_Trace_Mode.profile_trace_mode_inst_n_56\ : STD_LOGIC;
  signal flop_fi_out : STD_LOGIC;
  signal flop_ze_out : STD_LOGIC;
  signal rst_flop_fi_out : STD_LOGIC;
  signal rst_flop_ze_out : STD_LOGIC;
begin
  m_axis_tid(0) <= \<const0>\;
  m_axis_tstrb(6) <= \<const1>\;
  m_axis_tstrb(5) <= \<const1>\;
  m_axis_tstrb(4) <= \<const1>\;
  m_axis_tstrb(3) <= \<const1>\;
  m_axis_tstrb(2) <= \<const1>\;
  m_axis_tstrb(1) <= \<const1>\;
  m_axis_tstrb(0) <= \<const1>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_offld_arready <= \<const0>\;
  s_axi_offld_rdata(31) <= \<const0>\;
  s_axi_offld_rdata(30) <= \<const0>\;
  s_axi_offld_rdata(29) <= \<const0>\;
  s_axi_offld_rdata(28) <= \<const0>\;
  s_axi_offld_rdata(27) <= \<const0>\;
  s_axi_offld_rdata(26) <= \<const0>\;
  s_axi_offld_rdata(25) <= \<const0>\;
  s_axi_offld_rdata(24) <= \<const0>\;
  s_axi_offld_rdata(23) <= \<const0>\;
  s_axi_offld_rdata(22) <= \<const0>\;
  s_axi_offld_rdata(21) <= \<const0>\;
  s_axi_offld_rdata(20) <= \<const0>\;
  s_axi_offld_rdata(19) <= \<const0>\;
  s_axi_offld_rdata(18) <= \<const0>\;
  s_axi_offld_rdata(17) <= \<const0>\;
  s_axi_offld_rdata(16) <= \<const0>\;
  s_axi_offld_rdata(15) <= \<const0>\;
  s_axi_offld_rdata(14) <= \<const0>\;
  s_axi_offld_rdata(13) <= \<const0>\;
  s_axi_offld_rdata(12) <= \<const0>\;
  s_axi_offld_rdata(11) <= \<const0>\;
  s_axi_offld_rdata(10) <= \<const0>\;
  s_axi_offld_rdata(9) <= \<const0>\;
  s_axi_offld_rdata(8) <= \<const0>\;
  s_axi_offld_rdata(7) <= \<const0>\;
  s_axi_offld_rdata(6) <= \<const0>\;
  s_axi_offld_rdata(5) <= \<const0>\;
  s_axi_offld_rdata(4) <= \<const0>\;
  s_axi_offld_rdata(3) <= \<const0>\;
  s_axi_offld_rdata(2) <= \<const0>\;
  s_axi_offld_rdata(1) <= \<const0>\;
  s_axi_offld_rdata(0) <= \<const0>\;
  s_axi_offld_rid(0) <= \<const0>\;
  s_axi_offld_rlast <= \<const0>\;
  s_axi_offld_rresp(1) <= \<const0>\;
  s_axi_offld_rresp(0) <= \<const0>\;
  s_axi_offld_rvalid <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
\GEN_PROFILE_Trace_Mode.profile_trace_mode_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_profile
     port map (
      \Count_Out_i_reg[0]\ => \GEN_PROFILE_Trace_Mode.profile_trace_mode_inst_n_56\,
      D(1) => slot_0_ext_trig_stop,
      D(0) => slot_0_ext_trig,
      core_aclk => core_aclk,
      core_aresetn => core_aresetn,
      interrupt => interrupt,
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(55 downto 0) => m_axis_tdata(55 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(15 downto 0) => s_axi_araddr(15 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(15 downto 0) => s_axi_awaddr(15 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      slot_0_axi_arready => slot_0_axi_arready,
      slot_0_axi_arvalid => slot_0_axi_arvalid,
      slot_0_axi_awready => slot_0_axi_awready,
      slot_0_axi_awvalid => slot_0_axi_awvalid,
      slot_0_axi_bready => slot_0_axi_bready,
      slot_0_axi_bvalid => slot_0_axi_bvalid,
      slot_0_axi_rlast => slot_0_axi_rlast,
      slot_0_axi_rready => slot_0_axi_rready,
      slot_0_axi_rvalid => slot_0_axi_rvalid,
      slot_0_axi_wlast => slot_0_axi_wlast,
      slot_0_axi_wready => slot_0_axi_wready,
      slot_0_axi_wvalid => slot_0_axi_wvalid,
      trigger_in => trigger_in,
      trigger_in_ack => trigger_in_ack
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
ext_sync_flop_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset
     port map (
      capture_event => capture_event,
      core_aclk => core_aclk,
      \out\ => flop_ze_out
    );
ext_sync_flop_00: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_0
     port map (
      core_aclk => core_aclk,
      \out\ => rst_flop_ze_out,
      reset_event => reset_event
    );
ext_sync_flop_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_1
     port map (
      capture_event => capture_event,
      core_aclk => core_aclk,
      \out\ => flop_fi_out,
      q_reg_0 => flop_ze_out
    );
ext_sync_flop_10: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_dff_async_reset_2
     port map (
      core_aclk => core_aclk,
      \out\ => rst_flop_fi_out,
      q_reg_0 => rst_flop_ze_out,
      reset_event => reset_event
    );
reset_event_cdc_sync: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2\
     port map (
      core_aclk => core_aclk,
      core_aresetn => \GEN_PROFILE_Trace_Mode.profile_trace_mode_inst_n_56\,
      \out\ => flop_fi_out
    );
reset_event_cdc_sync1: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_cdc_sync__parameterized2_3\
     port map (
      core_aclk => core_aclk,
      core_aresetn => \GEN_PROFILE_Trace_Mode.profile_trace_mode_inst_n_56\,
      \out\ => rst_flop_fi_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    slot_0_axi_aclk : in STD_LOGIC;
    slot_0_axi_aresetn : in STD_LOGIC;
    slot_0_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_0_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    slot_0_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_0_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_awvalid : in STD_LOGIC;
    slot_0_axi_awready : in STD_LOGIC;
    slot_0_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    slot_0_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_0_axi_wlast : in STD_LOGIC;
    slot_0_axi_wvalid : in STD_LOGIC;
    slot_0_axi_wready : in STD_LOGIC;
    slot_0_axi_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_0_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_bvalid : in STD_LOGIC;
    slot_0_axi_bready : in STD_LOGIC;
    slot_0_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_0_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    slot_0_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_0_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_arvalid : in STD_LOGIC;
    slot_0_axi_arready : in STD_LOGIC;
    slot_0_axi_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    slot_0_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    slot_0_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_rlast : in STD_LOGIC;
    slot_0_axi_rvalid : in STD_LOGIC;
    slot_0_axi_rready : in STD_LOGIC;
    slot_0_ext_trig : in STD_LOGIC;
    slot_0_ext_trig_stop : in STD_LOGIC;
    ext_clk_0 : in STD_LOGIC;
    ext_rstn_0 : in STD_LOGIC;
    ext_event_0_cnt_start : in STD_LOGIC;
    ext_event_0_cnt_stop : in STD_LOGIC;
    ext_event_0 : in STD_LOGIC;
    core_aclk : in STD_LOGIC;
    core_aresetn : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axi_perf_mon_0_0,axi_perf_mon_v5_0_17_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_perf_mon_v5_0_17_top,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_s_axi_offld_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_offld_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_offld_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trigger_in_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_offld_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_offld_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_offld_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute COUNTER_LOAD_VALUE : integer;
  attribute COUNTER_LOAD_VALUE of inst : label is 0;
  attribute C_AXI4LITE_CORE_CLK_ASYNC : integer;
  attribute C_AXI4LITE_CORE_CLK_ASYNC of inst : label is 0;
  attribute C_AXIS_DWIDTH_ROUND_TO_32 : integer;
  attribute C_AXIS_DWIDTH_ROUND_TO_32 of inst : label is 64;
  attribute C_ENABLE_ADVANCED : integer;
  attribute C_ENABLE_ADVANCED of inst : label is 0;
  attribute C_ENABLE_EVENT_COUNT : integer;
  attribute C_ENABLE_EVENT_COUNT of inst : label is 0;
  attribute C_ENABLE_EVENT_LOG : integer;
  attribute C_ENABLE_EVENT_LOG of inst : label is 0;
  attribute C_ENABLE_PROFILE : integer;
  attribute C_ENABLE_PROFILE of inst : label is 0;
  attribute C_ENABLE_TRACE : integer;
  attribute C_ENABLE_TRACE of inst : label is 1;
  attribute C_EN_ALL_TRACE : integer;
  attribute C_EN_ALL_TRACE of inst : label is 1;
  attribute C_EN_AXI_DEBUG : integer;
  attribute C_EN_AXI_DEBUG of inst : label is 0;
  attribute C_EN_EXT_EVENTS_FLAG : integer;
  attribute C_EN_EXT_EVENTS_FLAG of inst : label is 0;
  attribute C_EN_FIRST_READ_FLAG : integer;
  attribute C_EN_FIRST_READ_FLAG of inst : label is 1;
  attribute C_EN_FIRST_WRITE_FLAG : integer;
  attribute C_EN_FIRST_WRITE_FLAG of inst : label is 1;
  attribute C_EN_LAST_READ_FLAG : integer;
  attribute C_EN_LAST_READ_FLAG of inst : label is 1;
  attribute C_EN_LAST_WRITE_FLAG : integer;
  attribute C_EN_LAST_WRITE_FLAG of inst : label is 1;
  attribute C_EN_RD_ADD_FLAG : integer;
  attribute C_EN_RD_ADD_FLAG of inst : label is 1;
  attribute C_EN_RESPONSE_FLAG : integer;
  attribute C_EN_RESPONSE_FLAG of inst : label is 1;
  attribute C_EN_SW_REG_WR_FLAG : integer;
  attribute C_EN_SW_REG_WR_FLAG of inst : label is 0;
  attribute C_EN_TRIGGER : integer;
  attribute C_EN_TRIGGER of inst : label is 0;
  attribute C_EN_WR_ADD_FLAG : integer;
  attribute C_EN_WR_ADD_FLAG of inst : label is 1;
  attribute C_EXT_EVENT0_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT0_FIFO_ENABLE of inst : label is 0;
  attribute C_EXT_EVENT1_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT1_FIFO_ENABLE of inst : label is 1;
  attribute C_EXT_EVENT2_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT2_FIFO_ENABLE of inst : label is 1;
  attribute C_EXT_EVENT3_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT3_FIFO_ENABLE of inst : label is 1;
  attribute C_EXT_EVENT4_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT4_FIFO_ENABLE of inst : label is 1;
  attribute C_EXT_EVENT5_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT5_FIFO_ENABLE of inst : label is 1;
  attribute C_EXT_EVENT6_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT6_FIFO_ENABLE of inst : label is 1;
  attribute C_EXT_EVENT7_FIFO_ENABLE : integer;
  attribute C_EXT_EVENT7_FIFO_ENABLE of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynquplus";
  attribute C_FIFO_AXIS_DEPTH : integer;
  attribute C_FIFO_AXIS_DEPTH of inst : label is 128;
  attribute C_FIFO_AXIS_SYNC : integer;
  attribute C_FIFO_AXIS_SYNC of inst : label is 1;
  attribute C_FIFO_AXIS_TDATA_WIDTH : integer;
  attribute C_FIFO_AXIS_TDATA_WIDTH of inst : label is 56;
  attribute C_FIFO_AXIS_TID_WIDTH : integer;
  attribute C_FIFO_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_GLOBAL_COUNT_WIDTH : integer;
  attribute C_GLOBAL_COUNT_WIDTH of inst : label is 32;
  attribute C_HAVE_SAMPLED_METRIC_CNT : integer;
  attribute C_HAVE_SAMPLED_METRIC_CNT of inst : label is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of inst : label is "design_1_axi_perf_mon_0_0";
  attribute C_LITE_ADDRESS_WIDTH : integer;
  attribute C_LITE_ADDRESS_WIDTH of inst : label is 16;
  attribute C_LOG_DATA_OFFLD : integer;
  attribute C_LOG_DATA_OFFLD of inst : label is 0;
  attribute C_METRICS_SAMPLE_COUNT_WIDTH : integer;
  attribute C_METRICS_SAMPLE_COUNT_WIDTH of inst : label is 32;
  attribute C_METRIC_COUNT_SCALE : integer;
  attribute C_METRIC_COUNT_SCALE of inst : label is 1;
  attribute C_METRIC_COUNT_WIDTH : integer;
  attribute C_METRIC_COUNT_WIDTH of inst : label is 32;
  attribute C_NUM_MONITOR_SLOTS : integer;
  attribute C_NUM_MONITOR_SLOTS of inst : label is 1;
  attribute C_NUM_OF_COUNTERS : integer;
  attribute C_NUM_OF_COUNTERS of inst : label is 1;
  attribute C_REG_ALL_MONITOR_SIGNALS : integer;
  attribute C_REG_ALL_MONITOR_SIGNALS of inst : label is 0;
  attribute C_SHOW_AXIS_TDEST : integer;
  attribute C_SHOW_AXIS_TDEST of inst : label is 0;
  attribute C_SHOW_AXIS_TID : integer;
  attribute C_SHOW_AXIS_TID of inst : label is 0;
  attribute C_SHOW_AXIS_TUSER : integer;
  attribute C_SHOW_AXIS_TUSER of inst : label is 0;
  attribute C_SHOW_AXI_IDS : integer;
  attribute C_SHOW_AXI_IDS of inst : label is 0;
  attribute C_SHOW_AXI_LEN : integer;
  attribute C_SHOW_AXI_LEN of inst : label is 0;
  attribute C_SLOT_0_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_0_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_SLOT_0_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_0_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_SLOT_0_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_0_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_SLOT_0_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_0_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_SLOT_0_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_0_AXI_ADDR_WIDTH of inst : label is 40;
  attribute C_SLOT_0_AXI_AWLEN : integer;
  attribute C_SLOT_0_AXI_AWLEN of inst : label is 7;
  attribute C_SLOT_0_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_0_AXI_DATA_WIDTH of inst : label is 128;
  attribute C_SLOT_0_AXI_ID_WIDTH : integer;
  attribute C_SLOT_0_AXI_ID_WIDTH of inst : label is 16;
  attribute C_SLOT_0_AXI_LOCK : integer;
  attribute C_SLOT_0_AXI_LOCK of inst : label is 0;
  attribute C_SLOT_0_AXI_PROTOCOL : string;
  attribute C_SLOT_0_AXI_PROTOCOL of inst : label is "AXI4";
  attribute C_SLOT_0_FIFO_ENABLE : integer;
  attribute C_SLOT_0_FIFO_ENABLE of inst : label is 0;
  attribute C_SLOT_1_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_1_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_SLOT_1_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_1_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_SLOT_1_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_1_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_SLOT_1_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_1_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_SLOT_1_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_1_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_SLOT_1_AXI_AWLEN : integer;
  attribute C_SLOT_1_AXI_AWLEN of inst : label is 7;
  attribute C_SLOT_1_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_1_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_SLOT_1_AXI_ID_WIDTH : integer;
  attribute C_SLOT_1_AXI_ID_WIDTH of inst : label is 1;
  attribute C_SLOT_1_AXI_LOCK : integer;
  attribute C_SLOT_1_AXI_LOCK of inst : label is 0;
  attribute C_SLOT_1_AXI_PROTOCOL : string;
  attribute C_SLOT_1_AXI_PROTOCOL of inst : label is "AXI4";
  attribute C_SLOT_1_FIFO_ENABLE : integer;
  attribute C_SLOT_1_FIFO_ENABLE of inst : label is 1;
  attribute C_SLOT_2_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_2_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_SLOT_2_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_2_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_SLOT_2_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_2_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_SLOT_2_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_2_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_SLOT_2_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_2_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_SLOT_2_AXI_AWLEN : integer;
  attribute C_SLOT_2_AXI_AWLEN of inst : label is 7;
  attribute C_SLOT_2_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_2_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_SLOT_2_AXI_ID_WIDTH : integer;
  attribute C_SLOT_2_AXI_ID_WIDTH of inst : label is 1;
  attribute C_SLOT_2_AXI_LOCK : integer;
  attribute C_SLOT_2_AXI_LOCK of inst : label is 0;
  attribute C_SLOT_2_AXI_PROTOCOL : string;
  attribute C_SLOT_2_AXI_PROTOCOL of inst : label is "AXI4";
  attribute C_SLOT_2_FIFO_ENABLE : integer;
  attribute C_SLOT_2_FIFO_ENABLE of inst : label is 1;
  attribute C_SLOT_3_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_3_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_SLOT_3_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_3_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_SLOT_3_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_3_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_SLOT_3_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_3_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_SLOT_3_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_3_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_SLOT_3_AXI_AWLEN : integer;
  attribute C_SLOT_3_AXI_AWLEN of inst : label is 7;
  attribute C_SLOT_3_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_3_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_SLOT_3_AXI_ID_WIDTH : integer;
  attribute C_SLOT_3_AXI_ID_WIDTH of inst : label is 1;
  attribute C_SLOT_3_AXI_LOCK : integer;
  attribute C_SLOT_3_AXI_LOCK of inst : label is 0;
  attribute C_SLOT_3_AXI_PROTOCOL : string;
  attribute C_SLOT_3_AXI_PROTOCOL of inst : label is "AXI4";
  attribute C_SLOT_3_FIFO_ENABLE : integer;
  attribute C_SLOT_3_FIFO_ENABLE of inst : label is 1;
  attribute C_SLOT_4_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_4_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_SLOT_4_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_4_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_SLOT_4_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_4_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_SLOT_4_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_4_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_SLOT_4_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_4_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_SLOT_4_AXI_AWLEN : integer;
  attribute C_SLOT_4_AXI_AWLEN of inst : label is 7;
  attribute C_SLOT_4_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_4_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_SLOT_4_AXI_ID_WIDTH : integer;
  attribute C_SLOT_4_AXI_ID_WIDTH of inst : label is 1;
  attribute C_SLOT_4_AXI_LOCK : integer;
  attribute C_SLOT_4_AXI_LOCK of inst : label is 0;
  attribute C_SLOT_4_AXI_PROTOCOL : string;
  attribute C_SLOT_4_AXI_PROTOCOL of inst : label is "AXI4";
  attribute C_SLOT_4_FIFO_ENABLE : integer;
  attribute C_SLOT_4_FIFO_ENABLE of inst : label is 1;
  attribute C_SLOT_5_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_5_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_SLOT_5_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_5_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_SLOT_5_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_5_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_SLOT_5_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_5_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_SLOT_5_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_5_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_SLOT_5_AXI_AWLEN : integer;
  attribute C_SLOT_5_AXI_AWLEN of inst : label is 7;
  attribute C_SLOT_5_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_5_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_SLOT_5_AXI_ID_WIDTH : integer;
  attribute C_SLOT_5_AXI_ID_WIDTH of inst : label is 1;
  attribute C_SLOT_5_AXI_LOCK : integer;
  attribute C_SLOT_5_AXI_LOCK of inst : label is 0;
  attribute C_SLOT_5_AXI_PROTOCOL : string;
  attribute C_SLOT_5_AXI_PROTOCOL of inst : label is "AXI4";
  attribute C_SLOT_5_FIFO_ENABLE : integer;
  attribute C_SLOT_5_FIFO_ENABLE of inst : label is 1;
  attribute C_SLOT_6_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_6_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_SLOT_6_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_6_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_SLOT_6_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_6_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_SLOT_6_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_6_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_SLOT_6_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_6_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_SLOT_6_AXI_AWLEN : integer;
  attribute C_SLOT_6_AXI_AWLEN of inst : label is 7;
  attribute C_SLOT_6_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_6_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_SLOT_6_AXI_ID_WIDTH : integer;
  attribute C_SLOT_6_AXI_ID_WIDTH of inst : label is 1;
  attribute C_SLOT_6_AXI_LOCK : integer;
  attribute C_SLOT_6_AXI_LOCK of inst : label is 0;
  attribute C_SLOT_6_AXI_PROTOCOL : string;
  attribute C_SLOT_6_AXI_PROTOCOL of inst : label is "AXI4";
  attribute C_SLOT_6_FIFO_ENABLE : integer;
  attribute C_SLOT_6_FIFO_ENABLE of inst : label is 1;
  attribute C_SLOT_7_AXIS_TDATA_WIDTH : integer;
  attribute C_SLOT_7_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_SLOT_7_AXIS_TDEST_WIDTH : integer;
  attribute C_SLOT_7_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_SLOT_7_AXIS_TID_WIDTH : integer;
  attribute C_SLOT_7_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_SLOT_7_AXIS_TUSER_WIDTH : integer;
  attribute C_SLOT_7_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_SLOT_7_AXI_ADDR_WIDTH : integer;
  attribute C_SLOT_7_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_SLOT_7_AXI_AWLEN : integer;
  attribute C_SLOT_7_AXI_AWLEN of inst : label is 7;
  attribute C_SLOT_7_AXI_DATA_WIDTH : integer;
  attribute C_SLOT_7_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_SLOT_7_AXI_ID_WIDTH : integer;
  attribute C_SLOT_7_AXI_ID_WIDTH of inst : label is 1;
  attribute C_SLOT_7_AXI_LOCK : integer;
  attribute C_SLOT_7_AXI_LOCK of inst : label is 0;
  attribute C_SLOT_7_AXI_PROTOCOL : string;
  attribute C_SLOT_7_AXI_PROTOCOL of inst : label is "AXI4";
  attribute C_SLOT_7_FIFO_ENABLE : integer;
  attribute C_SLOT_7_FIFO_ENABLE of inst : label is 1;
  attribute C_SUPPORT_ID_REFLECTION : integer;
  attribute C_SUPPORT_ID_REFLECTION of inst : label is 0;
  attribute C_S_AXI4_BASEADDR : integer;
  attribute C_S_AXI4_BASEADDR of inst : label is -1;
  attribute C_S_AXI4_HIGHADDR : integer;
  attribute C_S_AXI4_HIGHADDR of inst : label is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 16;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of inst : label is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of inst : label is "AXI4LITE";
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute ENABLE_EXT_EVENTS : integer;
  attribute ENABLE_EXT_EVENTS of inst : label is 1;
  attribute SLOT_0_AXI_PROTOCOL : string;
  attribute SLOT_0_AXI_PROTOCOL of inst : label is "AXI4";
  attribute SLOT_0_AXI_SUB_PROTOCOL : string;
  attribute SLOT_0_AXI_SUB_PROTOCOL of inst : label is "NONE";
  attribute SLOT_1_AXI_PROTOCOL : string;
  attribute SLOT_1_AXI_PROTOCOL of inst : label is "AXI4";
  attribute SLOT_1_AXI_SUB_PROTOCOL : string;
  attribute SLOT_1_AXI_SUB_PROTOCOL of inst : label is "NONE";
  attribute SLOT_2_AXI_PROTOCOL : string;
  attribute SLOT_2_AXI_PROTOCOL of inst : label is "AXI4";
  attribute SLOT_2_AXI_SUB_PROTOCOL : string;
  attribute SLOT_2_AXI_SUB_PROTOCOL of inst : label is "NONE";
  attribute SLOT_3_AXI_PROTOCOL : string;
  attribute SLOT_3_AXI_PROTOCOL of inst : label is "AXI4";
  attribute SLOT_3_AXI_SUB_PROTOCOL : string;
  attribute SLOT_3_AXI_SUB_PROTOCOL of inst : label is "NONE";
  attribute SLOT_4_AXI_PROTOCOL : string;
  attribute SLOT_4_AXI_PROTOCOL of inst : label is "AXI4";
  attribute SLOT_4_AXI_SUB_PROTOCOL : string;
  attribute SLOT_4_AXI_SUB_PROTOCOL of inst : label is "NONE";
  attribute SLOT_5_AXI_PROTOCOL : string;
  attribute SLOT_5_AXI_PROTOCOL of inst : label is "AXI4";
  attribute SLOT_5_AXI_SUB_PROTOCOL : string;
  attribute SLOT_5_AXI_SUB_PROTOCOL of inst : label is "NONE";
  attribute SLOT_6_AXI_PROTOCOL : string;
  attribute SLOT_6_AXI_PROTOCOL of inst : label is "AXI4";
  attribute SLOT_6_AXI_SUB_PROTOCOL : string;
  attribute SLOT_6_AXI_SUB_PROTOCOL of inst : label is "NONE";
  attribute SLOT_7_AXI_PROTOCOL : string;
  attribute SLOT_7_AXI_PROTOCOL of inst : label is "AXI4";
  attribute SLOT_7_AXI_SUB_PROTOCOL : string;
  attribute SLOT_7_AXI_SUB_PROTOCOL of inst : label is "NONE";
  attribute S_AXI_OFFLD_ID_WIDTH : integer;
  attribute S_AXI_OFFLD_ID_WIDTH of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of core_aclk : signal is "xilinx.com:signal:clock:1.0 CORE_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of core_aclk : signal is "XIL_INTERFACENAME CORE_ACLK, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0";
  attribute X_INTERFACE_INFO of core_aresetn : signal is "xilinx.com:signal:reset:1.0 CORE_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of core_aresetn : signal is "XIL_INTERFACENAME CORE_ARESETN, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of ext_clk_0 : signal is "xilinx.com:signal:clock:1.0 EXT_CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER of ext_clk_0 : signal is "XIL_INTERFACENAME EXT_CLK_0, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0";
  attribute X_INTERFACE_INFO of ext_rstn_0 : signal is "xilinx.com:signal:reset:1.0 EXT_RSTN_0 RST";
  attribute X_INTERFACE_PARAMETER of ext_rstn_0 : signal is "XIL_INTERFACENAME EXT_RSTN_0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTR INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME INTR, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXIS_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of m_axis_aclk : signal is "XIL_INTERFACENAME M_AXIS_ACLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0";
  attribute X_INTERFACE_INFO of m_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXIS_ARESET RST";
  attribute X_INTERFACE_PARAMETER of m_axis_aresetn : signal is "XIL_INTERFACENAME M_AXIS_ARESET, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 7, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_RESET s_axi_aresetn, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of slot_0_axi_aclk : signal is "xilinx.com:signal:clock:1.0 slot0_axi_clk CLK";
  attribute X_INTERFACE_PARAMETER of slot_0_axi_aclk : signal is "XIL_INTERFACENAME slot0_axi_clk, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_0_AXI4LITE, ASSOCIATED_RESET slot_0_axi_aresetn, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0";
  attribute X_INTERFACE_INFO of slot_0_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 SLOT0_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of slot_0_axi_aresetn : signal is "XIL_INTERFACENAME SLOT0_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of slot_0_axi_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY";
  attribute X_INTERFACE_INFO of slot_0_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID";
  attribute X_INTERFACE_INFO of slot_0_axi_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY";
  attribute X_INTERFACE_INFO of slot_0_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID";
  attribute X_INTERFACE_INFO of slot_0_axi_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY";
  attribute X_INTERFACE_INFO of slot_0_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID";
  attribute X_INTERFACE_INFO of slot_0_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST";
  attribute X_INTERFACE_INFO of slot_0_axi_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of slot_0_axi_rready : signal is "XIL_INTERFACENAME SLOT_0_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of slot_0_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID";
  attribute X_INTERFACE_INFO of slot_0_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST";
  attribute X_INTERFACE_INFO of slot_0_axi_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY";
  attribute X_INTERFACE_INFO of slot_0_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TID";
  attribute X_INTERFACE_INFO of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M_AXIS TSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of slot_0_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR";
  attribute X_INTERFACE_INFO of slot_0_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST";
  attribute X_INTERFACE_INFO of slot_0_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE";
  attribute X_INTERFACE_INFO of slot_0_axi_arid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARID";
  attribute X_INTERFACE_INFO of slot_0_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN";
  attribute X_INTERFACE_INFO of slot_0_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK";
  attribute X_INTERFACE_INFO of slot_0_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT";
  attribute X_INTERFACE_INFO of slot_0_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE";
  attribute X_INTERFACE_INFO of slot_0_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR";
  attribute X_INTERFACE_INFO of slot_0_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST";
  attribute X_INTERFACE_INFO of slot_0_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE";
  attribute X_INTERFACE_INFO of slot_0_axi_awid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWID";
  attribute X_INTERFACE_INFO of slot_0_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN";
  attribute X_INTERFACE_INFO of slot_0_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK";
  attribute X_INTERFACE_INFO of slot_0_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT";
  attribute X_INTERFACE_INFO of slot_0_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE";
  attribute X_INTERFACE_INFO of slot_0_axi_bid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BID";
  attribute X_INTERFACE_INFO of slot_0_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP";
  attribute X_INTERFACE_INFO of slot_0_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA";
  attribute X_INTERFACE_INFO of slot_0_axi_rid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RID";
  attribute X_INTERFACE_INFO of slot_0_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP";
  attribute X_INTERFACE_INFO of slot_0_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA";
  attribute X_INTERFACE_INFO of slot_0_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_perf_mon_v5_0_17_top
     port map (
      capture_event => '0',
      core_aclk => core_aclk,
      core_aresetn => core_aresetn,
      ext_clk_0 => ext_clk_0,
      ext_clk_1 => '0',
      ext_clk_2 => '0',
      ext_clk_3 => '0',
      ext_clk_4 => '0',
      ext_clk_5 => '0',
      ext_clk_6 => '0',
      ext_clk_7 => '0',
      ext_event_0 => ext_event_0,
      ext_event_0_cnt_start => ext_event_0_cnt_start,
      ext_event_0_cnt_stop => ext_event_0_cnt_stop,
      ext_event_1 => '0',
      ext_event_1_cnt_start => '0',
      ext_event_1_cnt_stop => '0',
      ext_event_2 => '0',
      ext_event_2_cnt_start => '0',
      ext_event_2_cnt_stop => '0',
      ext_event_3 => '0',
      ext_event_3_cnt_start => '0',
      ext_event_3_cnt_stop => '0',
      ext_event_4 => '0',
      ext_event_4_cnt_start => '0',
      ext_event_4_cnt_stop => '0',
      ext_event_5 => '0',
      ext_event_5_cnt_start => '0',
      ext_event_5_cnt_stop => '0',
      ext_event_6 => '0',
      ext_event_6_cnt_start => '0',
      ext_event_6_cnt_stop => '0',
      ext_event_7 => '0',
      ext_event_7_cnt_start => '0',
      ext_event_7_cnt_stop => '0',
      ext_rstn_0 => ext_rstn_0,
      ext_rstn_1 => '1',
      ext_rstn_2 => '1',
      ext_rstn_3 => '1',
      ext_rstn_4 => '1',
      ext_rstn_5 => '1',
      ext_rstn_6 => '1',
      ext_rstn_7 => '1',
      interrupt => interrupt,
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(55 downto 0) => m_axis_tdata(55 downto 0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(6 downto 0) => m_axis_tstrb(6 downto 0),
      m_axis_tvalid => m_axis_tvalid,
      reset_event => '0',
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(15 downto 0) => s_axi_araddr(15 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => '0',
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(15 downto 0) => s_axi_awaddr(15 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_offld_aclk => '0',
      s_axi_offld_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_offld_aresetn => '1',
      s_axi_offld_arid(0) => '0',
      s_axi_offld_arlen(7 downto 0) => B"00000000",
      s_axi_offld_arready => NLW_inst_s_axi_offld_arready_UNCONNECTED,
      s_axi_offld_arvalid => '0',
      s_axi_offld_rdata(31 downto 0) => NLW_inst_s_axi_offld_rdata_UNCONNECTED(31 downto 0),
      s_axi_offld_rid(0) => NLW_inst_s_axi_offld_rid_UNCONNECTED(0),
      s_axi_offld_rlast => NLW_inst_s_axi_offld_rlast_UNCONNECTED,
      s_axi_offld_rready => '0',
      s_axi_offld_rresp(1 downto 0) => NLW_inst_s_axi_offld_rresp_UNCONNECTED(1 downto 0),
      s_axi_offld_rvalid => NLW_inst_s_axi_offld_rvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      slot_0_axi_aclk => slot_0_axi_aclk,
      slot_0_axi_araddr(39 downto 0) => slot_0_axi_araddr(39 downto 0),
      slot_0_axi_arburst(1 downto 0) => slot_0_axi_arburst(1 downto 0),
      slot_0_axi_arcache(3 downto 0) => slot_0_axi_arcache(3 downto 0),
      slot_0_axi_aresetn => slot_0_axi_aresetn,
      slot_0_axi_arid(15 downto 0) => slot_0_axi_arid(15 downto 0),
      slot_0_axi_arlen(7 downto 0) => slot_0_axi_arlen(7 downto 0),
      slot_0_axi_arlock(0) => slot_0_axi_arlock(0),
      slot_0_axi_arprot(2 downto 0) => slot_0_axi_arprot(2 downto 0),
      slot_0_axi_arready => slot_0_axi_arready,
      slot_0_axi_arsize(2 downto 0) => slot_0_axi_arsize(2 downto 0),
      slot_0_axi_arvalid => slot_0_axi_arvalid,
      slot_0_axi_awaddr(39 downto 0) => slot_0_axi_awaddr(39 downto 0),
      slot_0_axi_awburst(1 downto 0) => slot_0_axi_awburst(1 downto 0),
      slot_0_axi_awcache(3 downto 0) => slot_0_axi_awcache(3 downto 0),
      slot_0_axi_awid(15 downto 0) => slot_0_axi_awid(15 downto 0),
      slot_0_axi_awlen(7 downto 0) => slot_0_axi_awlen(7 downto 0),
      slot_0_axi_awlock(0) => slot_0_axi_awlock(0),
      slot_0_axi_awprot(2 downto 0) => slot_0_axi_awprot(2 downto 0),
      slot_0_axi_awready => slot_0_axi_awready,
      slot_0_axi_awsize(2 downto 0) => slot_0_axi_awsize(2 downto 0),
      slot_0_axi_awvalid => slot_0_axi_awvalid,
      slot_0_axi_bid(15 downto 0) => slot_0_axi_bid(15 downto 0),
      slot_0_axi_bready => slot_0_axi_bready,
      slot_0_axi_bresp(1 downto 0) => slot_0_axi_bresp(1 downto 0),
      slot_0_axi_bvalid => slot_0_axi_bvalid,
      slot_0_axi_rdata(127 downto 0) => slot_0_axi_rdata(127 downto 0),
      slot_0_axi_rid(15 downto 0) => slot_0_axi_rid(15 downto 0),
      slot_0_axi_rlast => slot_0_axi_rlast,
      slot_0_axi_rready => slot_0_axi_rready,
      slot_0_axi_rresp(1 downto 0) => slot_0_axi_rresp(1 downto 0),
      slot_0_axi_rvalid => slot_0_axi_rvalid,
      slot_0_axi_wdata(127 downto 0) => slot_0_axi_wdata(127 downto 0),
      slot_0_axi_wlast => slot_0_axi_wlast,
      slot_0_axi_wready => slot_0_axi_wready,
      slot_0_axi_wstrb(15 downto 0) => slot_0_axi_wstrb(15 downto 0),
      slot_0_axi_wvalid => slot_0_axi_wvalid,
      slot_0_axis_aclk => '0',
      slot_0_axis_aresetn => '1',
      slot_0_axis_tdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_0_axis_tdest(0) => '0',
      slot_0_axis_tid(0) => '0',
      slot_0_axis_tkeep(3 downto 0) => B"1111",
      slot_0_axis_tlast => '0',
      slot_0_axis_tready => '0',
      slot_0_axis_tstrb(3 downto 0) => B"1111",
      slot_0_axis_tuser(0) => '0',
      slot_0_axis_tvalid => '0',
      slot_0_ext_trig => slot_0_ext_trig,
      slot_0_ext_trig_stop => slot_0_ext_trig_stop,
      slot_1_axi_aclk => '0',
      slot_1_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_1_axi_arburst(1 downto 0) => B"00",
      slot_1_axi_arcache(3 downto 0) => B"0000",
      slot_1_axi_aresetn => '1',
      slot_1_axi_arid(0) => '0',
      slot_1_axi_arlen(7 downto 0) => B"00000000",
      slot_1_axi_arlock(0) => '0',
      slot_1_axi_arprot(2 downto 0) => B"000",
      slot_1_axi_arready => '0',
      slot_1_axi_arsize(2 downto 0) => B"000",
      slot_1_axi_arvalid => '0',
      slot_1_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_1_axi_awburst(1 downto 0) => B"00",
      slot_1_axi_awcache(3 downto 0) => B"0000",
      slot_1_axi_awid(0) => '0',
      slot_1_axi_awlen(7 downto 0) => B"00000000",
      slot_1_axi_awlock(0) => '0',
      slot_1_axi_awprot(2 downto 0) => B"000",
      slot_1_axi_awready => '0',
      slot_1_axi_awsize(2 downto 0) => B"000",
      slot_1_axi_awvalid => '0',
      slot_1_axi_bid(0) => '0',
      slot_1_axi_bready => '0',
      slot_1_axi_bresp(1 downto 0) => B"00",
      slot_1_axi_bvalid => '0',
      slot_1_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_1_axi_rid(0) => '0',
      slot_1_axi_rlast => '0',
      slot_1_axi_rready => '0',
      slot_1_axi_rresp(1 downto 0) => B"00",
      slot_1_axi_rvalid => '0',
      slot_1_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_1_axi_wlast => '0',
      slot_1_axi_wready => '0',
      slot_1_axi_wstrb(3 downto 0) => B"0000",
      slot_1_axi_wvalid => '0',
      slot_1_axis_aclk => '0',
      slot_1_axis_aresetn => '1',
      slot_1_axis_tdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_1_axis_tdest(0) => '0',
      slot_1_axis_tid(0) => '0',
      slot_1_axis_tkeep(3 downto 0) => B"1111",
      slot_1_axis_tlast => '0',
      slot_1_axis_tready => '0',
      slot_1_axis_tstrb(3 downto 0) => B"1111",
      slot_1_axis_tuser(0) => '0',
      slot_1_axis_tvalid => '0',
      slot_1_ext_trig => '0',
      slot_1_ext_trig_stop => '0',
      slot_2_axi_aclk => '0',
      slot_2_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_2_axi_arburst(1 downto 0) => B"00",
      slot_2_axi_arcache(3 downto 0) => B"0000",
      slot_2_axi_aresetn => '1',
      slot_2_axi_arid(0) => '0',
      slot_2_axi_arlen(7 downto 0) => B"00000000",
      slot_2_axi_arlock(0) => '0',
      slot_2_axi_arprot(2 downto 0) => B"000",
      slot_2_axi_arready => '0',
      slot_2_axi_arsize(2 downto 0) => B"000",
      slot_2_axi_arvalid => '0',
      slot_2_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_2_axi_awburst(1 downto 0) => B"00",
      slot_2_axi_awcache(3 downto 0) => B"0000",
      slot_2_axi_awid(0) => '0',
      slot_2_axi_awlen(7 downto 0) => B"00000000",
      slot_2_axi_awlock(0) => '0',
      slot_2_axi_awprot(2 downto 0) => B"000",
      slot_2_axi_awready => '0',
      slot_2_axi_awsize(2 downto 0) => B"000",
      slot_2_axi_awvalid => '0',
      slot_2_axi_bid(0) => '0',
      slot_2_axi_bready => '0',
      slot_2_axi_bresp(1 downto 0) => B"00",
      slot_2_axi_bvalid => '0',
      slot_2_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_2_axi_rid(0) => '0',
      slot_2_axi_rlast => '0',
      slot_2_axi_rready => '0',
      slot_2_axi_rresp(1 downto 0) => B"00",
      slot_2_axi_rvalid => '0',
      slot_2_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_2_axi_wlast => '0',
      slot_2_axi_wready => '0',
      slot_2_axi_wstrb(3 downto 0) => B"0000",
      slot_2_axi_wvalid => '0',
      slot_2_axis_aclk => '0',
      slot_2_axis_aresetn => '1',
      slot_2_axis_tdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_2_axis_tdest(0) => '0',
      slot_2_axis_tid(0) => '0',
      slot_2_axis_tkeep(3 downto 0) => B"1111",
      slot_2_axis_tlast => '0',
      slot_2_axis_tready => '0',
      slot_2_axis_tstrb(3 downto 0) => B"1111",
      slot_2_axis_tuser(0) => '0',
      slot_2_axis_tvalid => '0',
      slot_2_ext_trig => '0',
      slot_2_ext_trig_stop => '0',
      slot_3_axi_aclk => '0',
      slot_3_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_3_axi_arburst(1 downto 0) => B"00",
      slot_3_axi_arcache(3 downto 0) => B"0000",
      slot_3_axi_aresetn => '1',
      slot_3_axi_arid(0) => '0',
      slot_3_axi_arlen(7 downto 0) => B"00000000",
      slot_3_axi_arlock(0) => '0',
      slot_3_axi_arprot(2 downto 0) => B"000",
      slot_3_axi_arready => '0',
      slot_3_axi_arsize(2 downto 0) => B"000",
      slot_3_axi_arvalid => '0',
      slot_3_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_3_axi_awburst(1 downto 0) => B"00",
      slot_3_axi_awcache(3 downto 0) => B"0000",
      slot_3_axi_awid(0) => '0',
      slot_3_axi_awlen(7 downto 0) => B"00000000",
      slot_3_axi_awlock(0) => '0',
      slot_3_axi_awprot(2 downto 0) => B"000",
      slot_3_axi_awready => '0',
      slot_3_axi_awsize(2 downto 0) => B"000",
      slot_3_axi_awvalid => '0',
      slot_3_axi_bid(0) => '0',
      slot_3_axi_bready => '0',
      slot_3_axi_bresp(1 downto 0) => B"00",
      slot_3_axi_bvalid => '0',
      slot_3_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_3_axi_rid(0) => '0',
      slot_3_axi_rlast => '0',
      slot_3_axi_rready => '0',
      slot_3_axi_rresp(1 downto 0) => B"00",
      slot_3_axi_rvalid => '0',
      slot_3_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_3_axi_wlast => '0',
      slot_3_axi_wready => '0',
      slot_3_axi_wstrb(3 downto 0) => B"0000",
      slot_3_axi_wvalid => '0',
      slot_3_axis_aclk => '0',
      slot_3_axis_aresetn => '1',
      slot_3_axis_tdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_3_axis_tdest(0) => '0',
      slot_3_axis_tid(0) => '0',
      slot_3_axis_tkeep(3 downto 0) => B"1111",
      slot_3_axis_tlast => '0',
      slot_3_axis_tready => '0',
      slot_3_axis_tstrb(3 downto 0) => B"1111",
      slot_3_axis_tuser(0) => '0',
      slot_3_axis_tvalid => '0',
      slot_3_ext_trig => '0',
      slot_3_ext_trig_stop => '0',
      slot_4_axi_aclk => '0',
      slot_4_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_4_axi_arburst(1 downto 0) => B"00",
      slot_4_axi_arcache(3 downto 0) => B"0000",
      slot_4_axi_aresetn => '1',
      slot_4_axi_arid(0) => '0',
      slot_4_axi_arlen(7 downto 0) => B"00000000",
      slot_4_axi_arlock(0) => '0',
      slot_4_axi_arprot(2 downto 0) => B"000",
      slot_4_axi_arready => '0',
      slot_4_axi_arsize(2 downto 0) => B"000",
      slot_4_axi_arvalid => '0',
      slot_4_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_4_axi_awburst(1 downto 0) => B"00",
      slot_4_axi_awcache(3 downto 0) => B"0000",
      slot_4_axi_awid(0) => '0',
      slot_4_axi_awlen(7 downto 0) => B"00000000",
      slot_4_axi_awlock(0) => '0',
      slot_4_axi_awprot(2 downto 0) => B"000",
      slot_4_axi_awready => '0',
      slot_4_axi_awsize(2 downto 0) => B"000",
      slot_4_axi_awvalid => '0',
      slot_4_axi_bid(0) => '0',
      slot_4_axi_bready => '0',
      slot_4_axi_bresp(1 downto 0) => B"00",
      slot_4_axi_bvalid => '0',
      slot_4_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_4_axi_rid(0) => '0',
      slot_4_axi_rlast => '0',
      slot_4_axi_rready => '0',
      slot_4_axi_rresp(1 downto 0) => B"00",
      slot_4_axi_rvalid => '0',
      slot_4_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_4_axi_wlast => '0',
      slot_4_axi_wready => '0',
      slot_4_axi_wstrb(3 downto 0) => B"0000",
      slot_4_axi_wvalid => '0',
      slot_4_axis_aclk => '0',
      slot_4_axis_aresetn => '1',
      slot_4_axis_tdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_4_axis_tdest(0) => '0',
      slot_4_axis_tid(0) => '0',
      slot_4_axis_tkeep(3 downto 0) => B"1111",
      slot_4_axis_tlast => '0',
      slot_4_axis_tready => '0',
      slot_4_axis_tstrb(3 downto 0) => B"1111",
      slot_4_axis_tuser(0) => '0',
      slot_4_axis_tvalid => '0',
      slot_4_ext_trig => '0',
      slot_4_ext_trig_stop => '0',
      slot_5_axi_aclk => '0',
      slot_5_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_5_axi_arburst(1 downto 0) => B"00",
      slot_5_axi_arcache(3 downto 0) => B"0000",
      slot_5_axi_aresetn => '0',
      slot_5_axi_arid(0) => '0',
      slot_5_axi_arlen(7 downto 0) => B"00000000",
      slot_5_axi_arlock(0) => '0',
      slot_5_axi_arprot(2 downto 0) => B"000",
      slot_5_axi_arready => '0',
      slot_5_axi_arsize(2 downto 0) => B"000",
      slot_5_axi_arvalid => '0',
      slot_5_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_5_axi_awburst(1 downto 0) => B"00",
      slot_5_axi_awcache(3 downto 0) => B"0000",
      slot_5_axi_awid(0) => '0',
      slot_5_axi_awlen(7 downto 0) => B"00000000",
      slot_5_axi_awlock(0) => '0',
      slot_5_axi_awprot(2 downto 0) => B"000",
      slot_5_axi_awready => '0',
      slot_5_axi_awsize(2 downto 0) => B"000",
      slot_5_axi_awvalid => '0',
      slot_5_axi_bid(0) => '0',
      slot_5_axi_bready => '0',
      slot_5_axi_bresp(1 downto 0) => B"00",
      slot_5_axi_bvalid => '0',
      slot_5_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_5_axi_rid(0) => '0',
      slot_5_axi_rlast => '0',
      slot_5_axi_rready => '0',
      slot_5_axi_rresp(1 downto 0) => B"00",
      slot_5_axi_rvalid => '0',
      slot_5_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_5_axi_wlast => '0',
      slot_5_axi_wready => '0',
      slot_5_axi_wstrb(3 downto 0) => B"0000",
      slot_5_axi_wvalid => '0',
      slot_5_axis_aclk => '0',
      slot_5_axis_aresetn => '1',
      slot_5_axis_tdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_5_axis_tdest(0) => '0',
      slot_5_axis_tid(0) => '0',
      slot_5_axis_tkeep(3 downto 0) => B"1111",
      slot_5_axis_tlast => '0',
      slot_5_axis_tready => '0',
      slot_5_axis_tstrb(3 downto 0) => B"1111",
      slot_5_axis_tuser(0) => '0',
      slot_5_axis_tvalid => '0',
      slot_5_ext_trig => '0',
      slot_5_ext_trig_stop => '0',
      slot_6_axi_aclk => '0',
      slot_6_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_6_axi_arburst(1 downto 0) => B"00",
      slot_6_axi_arcache(3 downto 0) => B"0000",
      slot_6_axi_aresetn => '1',
      slot_6_axi_arid(0) => '0',
      slot_6_axi_arlen(7 downto 0) => B"00000000",
      slot_6_axi_arlock(0) => '0',
      slot_6_axi_arprot(2 downto 0) => B"000",
      slot_6_axi_arready => '0',
      slot_6_axi_arsize(2 downto 0) => B"000",
      slot_6_axi_arvalid => '0',
      slot_6_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_6_axi_awburst(1 downto 0) => B"00",
      slot_6_axi_awcache(3 downto 0) => B"0000",
      slot_6_axi_awid(0) => '0',
      slot_6_axi_awlen(7 downto 0) => B"00000000",
      slot_6_axi_awlock(0) => '0',
      slot_6_axi_awprot(2 downto 0) => B"000",
      slot_6_axi_awready => '0',
      slot_6_axi_awsize(2 downto 0) => B"000",
      slot_6_axi_awvalid => '0',
      slot_6_axi_bid(0) => '0',
      slot_6_axi_bready => '0',
      slot_6_axi_bresp(1 downto 0) => B"00",
      slot_6_axi_bvalid => '0',
      slot_6_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_6_axi_rid(0) => '0',
      slot_6_axi_rlast => '0',
      slot_6_axi_rready => '0',
      slot_6_axi_rresp(1 downto 0) => B"00",
      slot_6_axi_rvalid => '0',
      slot_6_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_6_axi_wlast => '0',
      slot_6_axi_wready => '0',
      slot_6_axi_wstrb(3 downto 0) => B"0000",
      slot_6_axi_wvalid => '0',
      slot_6_axis_aclk => '0',
      slot_6_axis_aresetn => '1',
      slot_6_axis_tdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_6_axis_tdest(0) => '0',
      slot_6_axis_tid(0) => '0',
      slot_6_axis_tkeep(3 downto 0) => B"1111",
      slot_6_axis_tlast => '0',
      slot_6_axis_tready => '0',
      slot_6_axis_tstrb(3 downto 0) => B"1111",
      slot_6_axis_tuser(0) => '0',
      slot_6_axis_tvalid => '0',
      slot_6_ext_trig => '0',
      slot_6_ext_trig_stop => '0',
      slot_7_axi_aclk => '0',
      slot_7_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_7_axi_arburst(1 downto 0) => B"00",
      slot_7_axi_arcache(3 downto 0) => B"0000",
      slot_7_axi_aresetn => '1',
      slot_7_axi_arid(0) => '0',
      slot_7_axi_arlen(7 downto 0) => B"00000000",
      slot_7_axi_arlock(0) => '0',
      slot_7_axi_arprot(2 downto 0) => B"000",
      slot_7_axi_arready => '0',
      slot_7_axi_arsize(2 downto 0) => B"000",
      slot_7_axi_arvalid => '0',
      slot_7_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      slot_7_axi_awburst(1 downto 0) => B"00",
      slot_7_axi_awcache(3 downto 0) => B"0000",
      slot_7_axi_awid(0) => '0',
      slot_7_axi_awlen(7 downto 0) => B"00000000",
      slot_7_axi_awlock(0) => '0',
      slot_7_axi_awprot(2 downto 0) => B"000",
      slot_7_axi_awready => '0',
      slot_7_axi_awsize(2 downto 0) => B"000",
      slot_7_axi_awvalid => '0',
      slot_7_axi_bid(0) => '0',
      slot_7_axi_bready => '0',
      slot_7_axi_bresp(1 downto 0) => B"00",
      slot_7_axi_bvalid => '0',
      slot_7_axi_rdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_7_axi_rid(0) => '0',
      slot_7_axi_rlast => '0',
      slot_7_axi_rready => '0',
      slot_7_axi_rresp(1 downto 0) => B"00",
      slot_7_axi_rvalid => '0',
      slot_7_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_7_axi_wlast => '0',
      slot_7_axi_wready => '0',
      slot_7_axi_wstrb(3 downto 0) => B"0000",
      slot_7_axi_wvalid => '0',
      slot_7_axis_aclk => '0',
      slot_7_axis_aresetn => '1',
      slot_7_axis_tdata(31 downto 0) => B"00000000000000000000000000000000",
      slot_7_axis_tdest(0) => '0',
      slot_7_axis_tid(0) => '0',
      slot_7_axis_tkeep(3 downto 0) => B"1111",
      slot_7_axis_tlast => '0',
      slot_7_axis_tready => '0',
      slot_7_axis_tstrb(3 downto 0) => B"1111",
      slot_7_axis_tuser(0) => '0',
      slot_7_axis_tvalid => '0',
      slot_7_ext_trig => '0',
      slot_7_ext_trig_stop => '0',
      trigger_in => '0',
      trigger_in_ack => NLW_inst_trigger_in_ack_UNCONNECTED
    );
end STRUCTURE;
