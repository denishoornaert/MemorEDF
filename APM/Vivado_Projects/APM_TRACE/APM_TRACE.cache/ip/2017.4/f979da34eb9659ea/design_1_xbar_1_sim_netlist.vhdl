-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed May 13 14:47:33 2020
-- Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_xbar_1_sim_netlist.vhdl
-- Design      : design_1_xbar_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_addr_arbiter is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_arvalid : out STD_LOGIC;
    \gen_axi.s_axi_rid_i_reg[0]\ : out STD_LOGIC;
    \m_axi_arqos[7]\ : out STD_LOGIC_VECTOR ( 57 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_master_slots[2].r_issuing_cnt_reg[16]\ : out STD_LOGIC;
    \gen_axi.s_axi_rid_i\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : out STD_LOGIC;
    \s_axi_arready[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.any_grant_reg_0\ : out STD_LOGIC;
    match : out STD_LOGIC;
    match_0 : out STD_LOGIC;
    \gen_single_thread.active_target_hot_reg[0]\ : out STD_LOGIC;
    \gen_arbiter.any_grant_reg_1\ : out STD_LOGIC;
    \gen_arbiter.any_grant_reg_2\ : out STD_LOGIC;
    \gen_axi.s_axi_rlast_i_reg\ : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    mi_arready_2 : in STD_LOGIC;
    p_15_in : in STD_LOGIC;
    p_20_in : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[34]\ : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_single_thread.accept_cnt_reg[1]\ : in STD_LOGIC;
    \gen_arbiter.qual_reg_reg[0]_0\ : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    \m_payload_i_reg[34]_0\ : in STD_LOGIC;
    \gen_master_slots[2].r_issuing_cnt_reg[16]_0\ : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[1]_0\ : in STD_LOGIC;
    \gen_master_slots[2].r_issuing_cnt_reg[16]_1\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[4]\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_addr_arbiter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_addr_arbiter is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aa_mi_arvalid\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_reg_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.m_valid_i_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_4_n_0\ : STD_LOGIC;
  signal \^gen_master_slots[0].r_issuing_cnt_reg[0]\ : STD_LOGIC;
  signal \gen_single_thread.active_target_hot[0]_i_2__2_n_0\ : STD_LOGIC;
  signal \^gen_single_thread.active_target_hot_reg[0]\ : STD_LOGIC;
  signal grant_hot : STD_LOGIC;
  signal \^m_axi_arqos[7]\ : STD_LOGIC_VECTOR ( 57 downto 0 );
  signal m_mesg_mux : STD_LOGIC_VECTOR ( 62 downto 1 );
  signal m_target_hot_mux : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^match\ : STD_LOGIC;
  signal \^match_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal qual_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_arready[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.any_grant_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_arbiter.any_grant_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_3__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[10]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[11]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[12]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[13]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[14]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[15]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[16]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[17]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[18]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[19]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[20]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[21]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[22]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[23]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[24]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[25]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[26]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[27]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[28]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[29]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[2]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[30]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[31]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[32]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[33]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[34]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[35]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[36]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[37]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[38]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[39]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[3]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[40]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[41]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[42]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[43]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[44]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[46]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[47]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[48]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[4]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[53]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[54]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[55]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[56]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[57]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[58]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[59]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[5]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[60]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[61]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[62]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[6]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[7]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[8]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[9]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gen_arbiter.m_target_hot_i[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_arbiter.m_target_hot_i[2]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_axi.s_axi_arready_i_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[4]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_single_thread.active_target_hot[0]_i_1__1\ : label is "soft_lutpair1";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  SR(0) <= \^sr\(0);
  aa_mi_arvalid <= \^aa_mi_arvalid\;
  \gen_master_slots[0].r_issuing_cnt_reg[0]\ <= \^gen_master_slots[0].r_issuing_cnt_reg[0]\;
  \gen_single_thread.active_target_hot_reg[0]\ <= \^gen_single_thread.active_target_hot_reg[0]\;
  \m_axi_arqos[7]\(57 downto 0) <= \^m_axi_arqos[7]\(57 downto 0);
  match <= \^match\;
  match_0 <= \^match_0\;
  \s_axi_arready[1]\(1 downto 0) <= \^s_axi_arready[1]\(1 downto 0);
\gen_arbiter.any_grant_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => s_axi_araddr(31),
      I1 => s_axi_araddr(30),
      I2 => s_axi_araddr(29),
      I3 => s_axi_araddr(28),
      O => \gen_arbiter.any_grant_reg_1\
    );
\gen_arbiter.any_grant_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF00FFF8"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg[1]\,
      I1 => \gen_arbiter.any_grant_i_2__0_n_0\,
      I2 => \gen_arbiter.qual_reg_reg[0]_0\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      I4 => \^aa_mi_arvalid\,
      I5 => \gen_arbiter.grant_hot[1]_i_1__0_n_0\,
      O => \gen_arbiter.any_grant_i_1__0_n_0\
    );
\gen_arbiter.any_grant_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2202AA8A"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i[0]_i_2__0_n_0\,
      I1 => \^match\,
      I2 => r_issuing_cnt(5),
      I3 => \m_payload_i_reg[34]\,
      I4 => \gen_master_slots[0].r_issuing_cnt_reg[4]\,
      O => \gen_arbiter.any_grant_i_2__0_n_0\
    );
\gen_arbiter.any_grant_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => r_issuing_cnt(4),
      I1 => r_issuing_cnt(2),
      I2 => r_issuing_cnt(3),
      I3 => r_issuing_cnt(0),
      I4 => r_issuing_cnt(1),
      O => \gen_arbiter.any_grant_reg_2\
    );
\gen_arbiter.any_grant_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.any_grant_i_1__0_n_0\,
      Q => \gen_arbiter.any_grant_reg_n_0\,
      R => '0'
    );
\gen_arbiter.grant_hot[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0808080FFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_axi_arready(0),
      I2 => \^aa_mi_arvalid\,
      I3 => \^q\(1),
      I4 => mi_arready_2,
      I5 => aresetn_d,
      O => \gen_arbiter.grant_hot[1]_i_1__0_n_0\
    );
\gen_arbiter.grant_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \gen_arbiter.last_rr_hot[0]_i_1__0_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      R => \gen_arbiter.grant_hot[1]_i_1__0_n_0\
    );
\gen_arbiter.grant_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \gen_arbiter.m_grant_enc_i[0]_i_2__0_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      R => \gen_arbiter.grant_hot[1]_i_1__0_n_0\
    );
\gen_arbiter.last_rr_hot[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EA000000000000"
    )
        port map (
      I0 => p_2_in,
      I1 => \gen_arbiter.m_grant_enc_i[0]_i_8__0_n_0\,
      I2 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I3 => \^s_axi_arready[1]\(0),
      I4 => s_axi_arvalid(0),
      I5 => qual_reg(0),
      O => \gen_arbiter.last_rr_hot[0]_i_1__0_n_0\
    );
\gen_arbiter.last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \gen_arbiter.last_rr_hot[0]_i_1__0_n_0\,
      Q => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\gen_arbiter.last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \gen_arbiter.m_grant_enc_i[0]_i_2__0_n_0\,
      Q => p_2_in,
      S => \^sr\(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AA808080808080"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i[0]_i_3__0_n_0\,
      I1 => \gen_master_slots[2].r_issuing_cnt_reg[16]_0\,
      I2 => \gen_single_thread.accept_cnt_reg[1]_0\,
      I3 => \gen_master_slots[2].r_issuing_cnt_reg[16]_1\,
      I4 => \gen_arbiter.m_grant_enc_i[0]_i_2__0_n_0\,
      I5 => \gen_single_thread.accept_cnt_reg[1]\,
      O => grant_hot
    );
\gen_arbiter.m_grant_enc_i[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00008AAA"
    )
        port map (
      I0 => p_2_in,
      I1 => \^s_axi_arready[1]\(0),
      I2 => s_axi_arvalid(0),
      I3 => qual_reg(0),
      I4 => \gen_arbiter.m_grant_enc_i[0]_i_8__0_n_0\,
      I5 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      O => \gen_arbiter.m_grant_enc_i[0]_i_2__0_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_arbiter.any_grant_reg_n_0\,
      I1 => \^aa_mi_arvalid\,
      O => \gen_arbiter.m_grant_enc_i[0]_i_3__0_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => qual_reg(1),
      I1 => s_axi_arvalid(1),
      I2 => \^s_axi_arready[1]\(1),
      O => \gen_arbiter.m_grant_enc_i[0]_i_8__0_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F7F7F7FFFFFF"
    )
        port map (
      I0 => qual_reg(0),
      I1 => s_axi_arvalid(0),
      I2 => \^s_axi_arready[1]\(0),
      I3 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I4 => \gen_arbiter.m_grant_enc_i[0]_i_8__0_n_0\,
      I5 => p_2_in,
      O => \gen_arbiter.any_grant_reg_0\
    );
\gen_arbiter.m_grant_enc_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \gen_arbiter.m_grant_enc_i[0]_i_2__0_n_0\,
      Q => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_d,
      O => \^sr\(0)
    );
\gen_arbiter.m_mesg_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      O => p_1_in
    );
\gen_arbiter.m_mesg_i[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(41),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(9),
      O => m_mesg_mux(10)
    );
\gen_arbiter.m_mesg_i[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(42),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(10),
      O => m_mesg_mux(11)
    );
\gen_arbiter.m_mesg_i[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(43),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(11),
      O => m_mesg_mux(12)
    );
\gen_arbiter.m_mesg_i[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(44),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(12),
      O => m_mesg_mux(13)
    );
\gen_arbiter.m_mesg_i[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(45),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(13),
      O => m_mesg_mux(14)
    );
\gen_arbiter.m_mesg_i[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(46),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(14),
      O => m_mesg_mux(15)
    );
\gen_arbiter.m_mesg_i[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(47),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(15),
      O => m_mesg_mux(16)
    );
\gen_arbiter.m_mesg_i[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(48),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(16),
      O => m_mesg_mux(17)
    );
\gen_arbiter.m_mesg_i[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(49),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(17),
      O => m_mesg_mux(18)
    );
\gen_arbiter.m_mesg_i[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(50),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(18),
      O => m_mesg_mux(19)
    );
\gen_arbiter.m_mesg_i[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(32),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(0),
      O => m_mesg_mux(1)
    );
\gen_arbiter.m_mesg_i[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(51),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(19),
      O => m_mesg_mux(20)
    );
\gen_arbiter.m_mesg_i[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(52),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(20),
      O => m_mesg_mux(21)
    );
\gen_arbiter.m_mesg_i[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(53),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(21),
      O => m_mesg_mux(22)
    );
\gen_arbiter.m_mesg_i[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(54),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(22),
      O => m_mesg_mux(23)
    );
\gen_arbiter.m_mesg_i[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(55),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(23),
      O => m_mesg_mux(24)
    );
\gen_arbiter.m_mesg_i[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(56),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(24),
      O => m_mesg_mux(25)
    );
\gen_arbiter.m_mesg_i[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(57),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(25),
      O => m_mesg_mux(26)
    );
\gen_arbiter.m_mesg_i[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(58),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(26),
      O => m_mesg_mux(27)
    );
\gen_arbiter.m_mesg_i[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(59),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(27),
      O => m_mesg_mux(28)
    );
\gen_arbiter.m_mesg_i[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(60),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(28),
      O => m_mesg_mux(29)
    );
\gen_arbiter.m_mesg_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(33),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(1),
      O => m_mesg_mux(2)
    );
\gen_arbiter.m_mesg_i[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(61),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(29),
      O => m_mesg_mux(30)
    );
\gen_arbiter.m_mesg_i[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(62),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(30),
      O => m_mesg_mux(31)
    );
\gen_arbiter.m_mesg_i[32]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(63),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(31),
      O => m_mesg_mux(32)
    );
\gen_arbiter.m_mesg_i[33]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(8),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arlen(0),
      O => m_mesg_mux(33)
    );
\gen_arbiter.m_mesg_i[34]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(9),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arlen(1),
      O => m_mesg_mux(34)
    );
\gen_arbiter.m_mesg_i[35]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(10),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arlen(2),
      O => m_mesg_mux(35)
    );
\gen_arbiter.m_mesg_i[36]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(11),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arlen(3),
      O => m_mesg_mux(36)
    );
\gen_arbiter.m_mesg_i[37]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(12),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arlen(4),
      O => m_mesg_mux(37)
    );
\gen_arbiter.m_mesg_i[38]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(13),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arlen(5),
      O => m_mesg_mux(38)
    );
\gen_arbiter.m_mesg_i[39]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(14),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arlen(6),
      O => m_mesg_mux(39)
    );
\gen_arbiter.m_mesg_i[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(34),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(2),
      O => m_mesg_mux(3)
    );
\gen_arbiter.m_mesg_i[40]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(15),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arlen(7),
      O => m_mesg_mux(40)
    );
\gen_arbiter.m_mesg_i[41]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arsize(3),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arsize(0),
      O => m_mesg_mux(41)
    );
\gen_arbiter.m_mesg_i[42]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arsize(4),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arsize(1),
      O => m_mesg_mux(42)
    );
\gen_arbiter.m_mesg_i[43]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arsize(5),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arsize(2),
      O => m_mesg_mux(43)
    );
\gen_arbiter.m_mesg_i[44]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlock(1),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arlock(0),
      O => m_mesg_mux(44)
    );
\gen_arbiter.m_mesg_i[46]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arprot(3),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arprot(0),
      O => m_mesg_mux(46)
    );
\gen_arbiter.m_mesg_i[47]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arprot(4),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arprot(1),
      O => m_mesg_mux(47)
    );
\gen_arbiter.m_mesg_i[48]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arprot(5),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arprot(2),
      O => m_mesg_mux(48)
    );
\gen_arbiter.m_mesg_i[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(35),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(3),
      O => m_mesg_mux(4)
    );
\gen_arbiter.m_mesg_i[53]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arburst(2),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arburst(0),
      O => m_mesg_mux(53)
    );
\gen_arbiter.m_mesg_i[54]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arburst(3),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arburst(1),
      O => m_mesg_mux(54)
    );
\gen_arbiter.m_mesg_i[55]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arcache(4),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arcache(0),
      O => m_mesg_mux(55)
    );
\gen_arbiter.m_mesg_i[56]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arcache(5),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arcache(1),
      O => m_mesg_mux(56)
    );
\gen_arbiter.m_mesg_i[57]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arcache(6),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arcache(2),
      O => m_mesg_mux(57)
    );
\gen_arbiter.m_mesg_i[58]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arcache(7),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arcache(3),
      O => m_mesg_mux(58)
    );
\gen_arbiter.m_mesg_i[59]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arqos(4),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arqos(0),
      O => m_mesg_mux(59)
    );
\gen_arbiter.m_mesg_i[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(36),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(4),
      O => m_mesg_mux(5)
    );
\gen_arbiter.m_mesg_i[60]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arqos(5),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arqos(1),
      O => m_mesg_mux(60)
    );
\gen_arbiter.m_mesg_i[61]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arqos(6),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arqos(2),
      O => m_mesg_mux(61)
    );
\gen_arbiter.m_mesg_i[62]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arqos(7),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_arqos(3),
      O => m_mesg_mux(62)
    );
\gen_arbiter.m_mesg_i[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(37),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(5),
      O => m_mesg_mux(6)
    );
\gen_arbiter.m_mesg_i[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(38),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(6),
      O => m_mesg_mux(7)
    );
\gen_arbiter.m_mesg_i[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(39),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(7),
      O => m_mesg_mux(8)
    );
\gen_arbiter.m_mesg_i[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(40),
      I1 => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      I2 => s_axi_araddr(8),
      O => m_mesg_mux(9)
    );
\gen_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_arbiter.m_grant_enc_i_reg_n_0_[0]\,
      Q => \^m_axi_arqos[7]\(0),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(10),
      Q => \^m_axi_arqos[7]\(10),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(11),
      Q => \^m_axi_arqos[7]\(11),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(12),
      Q => \^m_axi_arqos[7]\(12),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(13),
      Q => \^m_axi_arqos[7]\(13),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(14),
      Q => \^m_axi_arqos[7]\(14),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(15),
      Q => \^m_axi_arqos[7]\(15),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(16),
      Q => \^m_axi_arqos[7]\(16),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(17),
      Q => \^m_axi_arqos[7]\(17),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(18),
      Q => \^m_axi_arqos[7]\(18),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(19),
      Q => \^m_axi_arqos[7]\(19),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(1),
      Q => \^m_axi_arqos[7]\(1),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(20),
      Q => \^m_axi_arqos[7]\(20),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(21),
      Q => \^m_axi_arqos[7]\(21),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(22),
      Q => \^m_axi_arqos[7]\(22),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(23),
      Q => \^m_axi_arqos[7]\(23),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(24),
      Q => \^m_axi_arqos[7]\(24),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(25),
      Q => \^m_axi_arqos[7]\(25),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(26),
      Q => \^m_axi_arqos[7]\(26),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(27),
      Q => \^m_axi_arqos[7]\(27),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(28),
      Q => \^m_axi_arqos[7]\(28),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(29),
      Q => \^m_axi_arqos[7]\(29),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(2),
      Q => \^m_axi_arqos[7]\(2),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(30),
      Q => \^m_axi_arqos[7]\(30),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(31),
      Q => \^m_axi_arqos[7]\(31),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(32),
      Q => \^m_axi_arqos[7]\(32),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(33),
      Q => \^m_axi_arqos[7]\(33),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(34),
      Q => \^m_axi_arqos[7]\(34),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(35),
      Q => \^m_axi_arqos[7]\(35),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(36),
      Q => \^m_axi_arqos[7]\(36),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(37),
      Q => \^m_axi_arqos[7]\(37),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(38),
      Q => \^m_axi_arqos[7]\(38),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(39),
      Q => \^m_axi_arqos[7]\(39),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(3),
      Q => \^m_axi_arqos[7]\(3),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(40),
      Q => \^m_axi_arqos[7]\(40),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(41),
      Q => \^m_axi_arqos[7]\(41),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(42),
      Q => \^m_axi_arqos[7]\(42),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(43),
      Q => \^m_axi_arqos[7]\(43),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(44),
      Q => \^m_axi_arqos[7]\(44),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(46),
      Q => \^m_axi_arqos[7]\(45),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(47),
      Q => \^m_axi_arqos[7]\(46),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(48),
      Q => \^m_axi_arqos[7]\(47),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(4),
      Q => \^m_axi_arqos[7]\(4),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(53),
      Q => \^m_axi_arqos[7]\(48),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(54),
      Q => \^m_axi_arqos[7]\(49),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(55),
      Q => \^m_axi_arqos[7]\(50),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(56),
      Q => \^m_axi_arqos[7]\(51),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(57),
      Q => \^m_axi_arqos[7]\(52),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(58),
      Q => \^m_axi_arqos[7]\(53),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(59),
      Q => \^m_axi_arqos[7]\(54),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(5),
      Q => \^m_axi_arqos[7]\(5),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(60),
      Q => \^m_axi_arqos[7]\(55),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(61),
      Q => \^m_axi_arqos[7]\(56),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(62),
      Q => \^m_axi_arqos[7]\(57),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(6),
      Q => \^m_axi_arqos[7]\(6),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(7),
      Q => \^m_axi_arqos[7]\(7),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(8),
      Q => \^m_axi_arqos[7]\(8),
      R => \^sr\(0)
    );
\gen_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(9),
      Q => \^m_axi_arqos[7]\(9),
      R => \^sr\(0)
    );
\gen_arbiter.m_target_hot_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \^match_0\,
      I1 => \gen_arbiter.m_grant_enc_i[0]_i_2__0_n_0\,
      I2 => \^match\,
      O => m_target_hot_mux(0)
    );
\gen_arbiter.m_target_hot_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^match\,
      I1 => \gen_arbiter.m_grant_enc_i[0]_i_2__0_n_0\,
      I2 => \^match_0\,
      O => m_target_hot_mux(2)
    );
\gen_arbiter.m_target_hot_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => m_target_hot_mux(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\gen_arbiter.m_target_hot_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => m_target_hot_mux(2),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\gen_arbiter.m_valid_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0777FFFF07770000"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_axi_arready(0),
      I2 => \^q\(1),
      I3 => mi_arready_2,
      I4 => \^aa_mi_arvalid\,
      I5 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.m_valid_i_i_1__0_n_0\
    );
\gen_arbiter.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_valid_i_i_1__0_n_0\,
      Q => \^aa_mi_arvalid\,
      R => \^sr\(0)
    );
\gen_arbiter.qual_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => qual_reg(0),
      R => \^sr\(0)
    );
\gen_arbiter.qual_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => qual_reg(1),
      R => \^sr\(0)
    );
\gen_arbiter.s_ready_i[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => aresetn_d,
      I1 => \^aa_mi_arvalid\,
      I2 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[1]_i_1__0_n_0\
    );
\gen_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      Q => \^s_axi_arready[1]\(0),
      R => \gen_arbiter.s_ready_i[1]_i_1__0_n_0\
    );
\gen_arbiter.s_ready_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      Q => \^s_axi_arready[1]\(1),
      R => \gen_arbiter.s_ready_i[1]_i_1__0_n_0\
    );
\gen_axi.s_axi_arready_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => mi_arready_2,
      I2 => \^q\(1),
      I3 => p_15_in,
      O => \gen_axi.s_axi_rid_i\
    );
\gen_axi.s_axi_rid_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => \^m_axi_arqos[7]\(0),
      I1 => \^aa_mi_arvalid\,
      I2 => mi_arready_2,
      I3 => \^q\(1),
      I4 => p_15_in,
      I5 => p_20_in,
      O => \gen_axi.s_axi_rid_i_reg[0]\
    );
\gen_axi.s_axi_rlast_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \gen_axi.s_axi_rlast_i_i_4_n_0\,
      I1 => p_15_in,
      I2 => \^m_axi_arqos[7]\(33),
      I3 => \^m_axi_arqos[7]\(34),
      O => \gen_axi.s_axi_rlast_i_reg\
    );
\gen_axi.s_axi_rlast_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^m_axi_arqos[7]\(35),
      I1 => \^m_axi_arqos[7]\(36),
      I2 => \^m_axi_arqos[7]\(37),
      I3 => \^m_axi_arqos[7]\(38),
      I4 => \^m_axi_arqos[7]\(40),
      I5 => \^m_axi_arqos[7]\(39),
      O => \gen_axi.s_axi_rlast_i_i_4_n_0\
    );
\gen_master_slots[0].r_issuing_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA54545454545454"
    )
        port map (
      I0 => \m_payload_i_reg[34]_0\,
      I1 => r_issuing_cnt(4),
      I2 => \^gen_master_slots[0].r_issuing_cnt_reg[0]\,
      I3 => \^aa_mi_arvalid\,
      I4 => m_axi_arready(0),
      I5 => \^q\(0),
      O => E(0)
    );
\gen_master_slots[0].r_issuing_cnt[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_issuing_cnt(1),
      I1 => r_issuing_cnt(0),
      I2 => r_issuing_cnt(3),
      I3 => r_issuing_cnt(2),
      O => \^gen_master_slots[0].r_issuing_cnt_reg[0]\
    );
\gen_master_slots[2].r_issuing_cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"807F0080"
    )
        port map (
      I0 => \^q\(1),
      I1 => mi_arready_2,
      I2 => \^aa_mi_arvalid\,
      I3 => \m_payload_i_reg[34]\,
      I4 => r_issuing_cnt(5),
      O => \gen_master_slots[2].r_issuing_cnt_reg[16]\
    );
\gen_single_thread.active_target_hot[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => s_axi_araddr(28),
      I1 => s_axi_araddr(29),
      I2 => s_axi_araddr(30),
      I3 => s_axi_araddr(31),
      I4 => \^gen_single_thread.active_target_hot_reg[0]\,
      O => \^match_0\
    );
\gen_single_thread.active_target_hot[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => s_axi_araddr(60),
      I1 => s_axi_araddr(61),
      I2 => s_axi_araddr(62),
      I3 => s_axi_araddr(63),
      I4 => \gen_single_thread.active_target_hot[0]_i_2__2_n_0\,
      O => \^match\
    );
\gen_single_thread.active_target_hot[0]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_araddr(25),
      I1 => s_axi_araddr(24),
      I2 => s_axi_araddr(27),
      I3 => s_axi_araddr(26),
      O => \^gen_single_thread.active_target_hot_reg[0]\
    );
\gen_single_thread.active_target_hot[0]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_araddr(57),
      I1 => s_axi_araddr(56),
      I2 => s_axi_araddr(59),
      I3 => s_axi_araddr(58),
      O => \gen_single_thread.active_target_hot[0]_i_2__2_n_0\
    );
\m_axi_arvalid[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => \^q\(0),
      O => m_axi_arvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_addr_arbiter_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : out STD_LOGIC;
    \storage_data1_reg[0]\ : out STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[16]\ : out STD_LOGIC;
    \m_ready_d_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_master_slots[0].w_issuing_cnt_reg[4]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    match : out STD_LOGIC;
    match_0 : out STD_LOGIC;
    \m_ready_d_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_axi.s_axi_awready_i_reg\ : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.any_grant_reg_0\ : out STD_LOGIC;
    \m_ready_d_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot_reg[0]\ : out STD_LOGIC;
    \gen_arbiter.any_grant_reg_1\ : out STD_LOGIC;
    \gen_arbiter.any_grant_reg_2\ : out STD_LOGIC;
    push : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sa_wm_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    \m_ready_d_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_awqos[7]\ : out STD_LOGIC_VECTOR ( 57 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \gen_axi.s_axi_awready_i_reg_0\ : in STD_LOGIC;
    \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \storage_data1_reg[0]_1\ : in STD_LOGIC;
    m_select_enc : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mi_awready_2 : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_single_thread.accept_cnt_reg[1]\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc_reg[1]\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    \m_payload_i_reg[2]\ : in STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[16]_0\ : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[1]_0\ : in STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[16]_1\ : in STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[1]\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_ready_d_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[0]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    out0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \m_ready_d_reg[0]_4\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_addr_arbiter_0 : entity is "axi_crossbar_v2_1_16_addr_arbiter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_addr_arbiter_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_addr_arbiter_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aa_sa_awvalid\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_i_2_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_reg_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_8_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_9_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_valid_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_master_slots[0].w_issuing_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \gen_single_thread.active_target_hot[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \^gen_single_thread.active_target_hot_reg[0]\ : STD_LOGIC;
  signal grant_hot : STD_LOGIC;
  signal m_mesg_mux : STD_LOGIC_VECTOR ( 62 downto 1 );
  signal \^m_ready_d_reg[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_ready_d_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_target_hot_mux : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^match\ : STD_LOGIC;
  signal \^match_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal qual_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \storage_data1[0]_i_3_n_0\ : STD_LOGIC;
  signal \storage_data1[0]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.any_grant_i_8\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_10\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_8\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_9\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[10]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[11]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[12]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[13]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[14]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[15]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[16]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[17]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[18]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[19]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[20]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[21]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[22]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[23]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[24]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[25]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[26]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[27]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[28]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[29]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[30]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[31]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[32]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[33]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[34]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[35]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[36]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[37]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[38]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[39]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[40]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[41]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[42]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[43]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[44]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[46]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[47]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[48]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[4]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[53]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[54]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[55]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[56]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[57]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[58]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[59]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[5]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[60]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[61]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[62]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[6]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[8]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[9]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gen_arbiter.m_target_hot_i[0]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gen_arbiter.m_target_hot_i[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gen_axi.write_cs[1]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[4]_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gen_single_thread.active_target_hot[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axi_awvalid[0]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_ready_d[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_ready_d[0]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_ready_d[0]_i_1__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_valid_i_i_1__3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_valid_i_i_2__3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \storage_data1[0]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \storage_data1[0]_i_3__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \storage_data1[0]_i_4\ : label is "soft_lutpair41";
begin
  D(0) <= \^d\(0);
  aa_sa_awvalid <= \^aa_sa_awvalid\;
  \gen_single_thread.active_target_hot_reg[0]\ <= \^gen_single_thread.active_target_hot_reg[0]\;
  \m_ready_d_reg[0]\(1 downto 0) <= \^m_ready_d_reg[0]\(1 downto 0);
  \m_ready_d_reg[1]\(1 downto 0) <= \^m_ready_d_reg[1]\(1 downto 0);
  match <= \^match\;
  match_0 <= \^match_0\;
\gen_arbiter.any_grant_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF00FFF8"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt_reg[1]\,
      I1 => \gen_arbiter.any_grant_i_2_n_0\,
      I2 => \gen_single_thread.active_target_enc_reg[1]\,
      I3 => \gen_arbiter.any_grant_reg_n_0\,
      I4 => \^aa_sa_awvalid\,
      I5 => \gen_arbiter.grant_hot[1]_i_1_n_0\,
      O => \gen_arbiter.any_grant_i_1_n_0\
    );
\gen_arbiter.any_grant_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008AAA8A"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i[0]_i_2_n_0\,
      I1 => m_valid_i_reg,
      I2 => w_issuing_cnt(5),
      I3 => \^match\,
      I4 => \gen_master_slots[0].w_issuing_cnt_reg[1]\,
      O => \gen_arbiter.any_grant_i_2_n_0\
    );
\gen_arbiter.any_grant_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => w_issuing_cnt(4),
      I1 => w_issuing_cnt(2),
      I2 => w_issuing_cnt(3),
      I3 => w_issuing_cnt(0),
      I4 => w_issuing_cnt(1),
      O => \gen_arbiter.any_grant_reg_2\
    );
\gen_arbiter.any_grant_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => s_axi_awaddr(31),
      I1 => s_axi_awaddr(30),
      I2 => s_axi_awaddr(29),
      I3 => s_axi_awaddr(28),
      O => \gen_arbiter.any_grant_reg_1\
    );
\gen_arbiter.any_grant_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.any_grant_i_1_n_0\,
      Q => \gen_arbiter.any_grant_reg_n_0\,
      R => '0'
    );
\gen_arbiter.grant_hot[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => \gen_axi.s_axi_awready_i_reg_0\,
      I2 => aresetn_d,
      O => \gen_arbiter.grant_hot[1]_i_1_n_0\
    );
\gen_arbiter.grant_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \gen_arbiter.last_rr_hot[0]_i_1_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      R => \gen_arbiter.grant_hot[1]_i_1_n_0\
    );
\gen_arbiter.grant_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \gen_arbiter.m_grant_enc_i[0]_i_2_n_0\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      R => \gen_arbiter.grant_hot[1]_i_1_n_0\
    );
\gen_arbiter.last_rr_hot[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => p_2_in,
      I1 => \gen_arbiter.m_grant_enc_i[0]_i_9_n_0\,
      I2 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I3 => \gen_arbiter.m_grant_enc_i[0]_i_8_n_0\,
      O => \gen_arbiter.last_rr_hot[0]_i_1_n_0\
    );
\gen_arbiter.last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \gen_arbiter.last_rr_hot[0]_i_1_n_0\,
      Q => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      R => SR(0)
    );
\gen_arbiter.last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \gen_arbiter.m_grant_enc_i[0]_i_2_n_0\,
      Q => p_2_in,
      S => SR(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AA808080808080"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i[0]_i_3_n_0\,
      I1 => \gen_master_slots[2].w_issuing_cnt_reg[16]_0\,
      I2 => \gen_single_thread.accept_cnt_reg[1]_0\,
      I3 => \gen_master_slots[2].w_issuing_cnt_reg[16]_1\,
      I4 => \gen_arbiter.m_grant_enc_i[0]_i_2_n_0\,
      I5 => \gen_single_thread.accept_cnt_reg[1]\,
      O => grant_hot
    );
\gen_arbiter.m_grant_enc_i[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"557F"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i[0]_i_8_n_0\,
      I1 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I2 => \gen_arbiter.m_grant_enc_i[0]_i_9_n_0\,
      I3 => p_2_in,
      O => \gen_arbiter.any_grant_reg_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F02"
    )
        port map (
      I0 => p_2_in,
      I1 => \gen_arbiter.m_grant_enc_i[0]_i_8_n_0\,
      I2 => \gen_arbiter.m_grant_enc_i[0]_i_9_n_0\,
      I3 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      O => \gen_arbiter.m_grant_enc_i[0]_i_2_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_arbiter.any_grant_reg_n_0\,
      I1 => \^aa_sa_awvalid\,
      O => \gen_arbiter.m_grant_enc_i[0]_i_3_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \m_ready_d_reg[0]_3\(0),
      I1 => s_axi_awvalid(0),
      I2 => \^m_ready_d_reg[0]\(0),
      I3 => qual_reg(0),
      O => \gen_arbiter.m_grant_enc_i[0]_i_8_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => qual_reg(1),
      I1 => \^m_ready_d_reg[0]\(1),
      I2 => s_axi_awvalid(1),
      I3 => \m_ready_d_reg[0]_2\(0),
      O => \gen_arbiter.m_grant_enc_i[0]_i_9_n_0\
    );
\gen_arbiter.m_grant_enc_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \gen_arbiter.m_grant_enc_i[0]_i_2_n_0\,
      Q => \^d\(0),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      O => p_1_in
    );
\gen_arbiter.m_mesg_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(41),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(9),
      O => m_mesg_mux(10)
    );
\gen_arbiter.m_mesg_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(42),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(10),
      O => m_mesg_mux(11)
    );
\gen_arbiter.m_mesg_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(43),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(11),
      O => m_mesg_mux(12)
    );
\gen_arbiter.m_mesg_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(44),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(12),
      O => m_mesg_mux(13)
    );
\gen_arbiter.m_mesg_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(45),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(13),
      O => m_mesg_mux(14)
    );
\gen_arbiter.m_mesg_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(46),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(14),
      O => m_mesg_mux(15)
    );
\gen_arbiter.m_mesg_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(47),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(15),
      O => m_mesg_mux(16)
    );
\gen_arbiter.m_mesg_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(48),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(16),
      O => m_mesg_mux(17)
    );
\gen_arbiter.m_mesg_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(49),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(17),
      O => m_mesg_mux(18)
    );
\gen_arbiter.m_mesg_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(50),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(18),
      O => m_mesg_mux(19)
    );
\gen_arbiter.m_mesg_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(32),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(0),
      O => m_mesg_mux(1)
    );
\gen_arbiter.m_mesg_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(51),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(19),
      O => m_mesg_mux(20)
    );
\gen_arbiter.m_mesg_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(52),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(20),
      O => m_mesg_mux(21)
    );
\gen_arbiter.m_mesg_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(53),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(21),
      O => m_mesg_mux(22)
    );
\gen_arbiter.m_mesg_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(54),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(22),
      O => m_mesg_mux(23)
    );
\gen_arbiter.m_mesg_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(55),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(23),
      O => m_mesg_mux(24)
    );
\gen_arbiter.m_mesg_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(56),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(24),
      O => m_mesg_mux(25)
    );
\gen_arbiter.m_mesg_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(57),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(25),
      O => m_mesg_mux(26)
    );
\gen_arbiter.m_mesg_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(58),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(26),
      O => m_mesg_mux(27)
    );
\gen_arbiter.m_mesg_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(59),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(27),
      O => m_mesg_mux(28)
    );
\gen_arbiter.m_mesg_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(60),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(28),
      O => m_mesg_mux(29)
    );
\gen_arbiter.m_mesg_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(33),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(1),
      O => m_mesg_mux(2)
    );
\gen_arbiter.m_mesg_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(61),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(29),
      O => m_mesg_mux(30)
    );
\gen_arbiter.m_mesg_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(62),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(30),
      O => m_mesg_mux(31)
    );
\gen_arbiter.m_mesg_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(63),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(31),
      O => m_mesg_mux(32)
    );
\gen_arbiter.m_mesg_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(8),
      I1 => \^d\(0),
      I2 => s_axi_awlen(0),
      O => m_mesg_mux(33)
    );
\gen_arbiter.m_mesg_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(9),
      I1 => \^d\(0),
      I2 => s_axi_awlen(1),
      O => m_mesg_mux(34)
    );
\gen_arbiter.m_mesg_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(10),
      I1 => \^d\(0),
      I2 => s_axi_awlen(2),
      O => m_mesg_mux(35)
    );
\gen_arbiter.m_mesg_i[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(11),
      I1 => \^d\(0),
      I2 => s_axi_awlen(3),
      O => m_mesg_mux(36)
    );
\gen_arbiter.m_mesg_i[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(12),
      I1 => \^d\(0),
      I2 => s_axi_awlen(4),
      O => m_mesg_mux(37)
    );
\gen_arbiter.m_mesg_i[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(13),
      I1 => \^d\(0),
      I2 => s_axi_awlen(5),
      O => m_mesg_mux(38)
    );
\gen_arbiter.m_mesg_i[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(14),
      I1 => \^d\(0),
      I2 => s_axi_awlen(6),
      O => m_mesg_mux(39)
    );
\gen_arbiter.m_mesg_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(34),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(2),
      O => m_mesg_mux(3)
    );
\gen_arbiter.m_mesg_i[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(15),
      I1 => \^d\(0),
      I2 => s_axi_awlen(7),
      O => m_mesg_mux(40)
    );
\gen_arbiter.m_mesg_i[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awsize(3),
      I1 => \^d\(0),
      I2 => s_axi_awsize(0),
      O => m_mesg_mux(41)
    );
\gen_arbiter.m_mesg_i[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awsize(4),
      I1 => \^d\(0),
      I2 => s_axi_awsize(1),
      O => m_mesg_mux(42)
    );
\gen_arbiter.m_mesg_i[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awsize(5),
      I1 => \^d\(0),
      I2 => s_axi_awsize(2),
      O => m_mesg_mux(43)
    );
\gen_arbiter.m_mesg_i[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlock(1),
      I1 => \^d\(0),
      I2 => s_axi_awlock(0),
      O => m_mesg_mux(44)
    );
\gen_arbiter.m_mesg_i[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(3),
      I1 => \^d\(0),
      I2 => s_axi_awprot(0),
      O => m_mesg_mux(46)
    );
\gen_arbiter.m_mesg_i[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(4),
      I1 => \^d\(0),
      I2 => s_axi_awprot(1),
      O => m_mesg_mux(47)
    );
\gen_arbiter.m_mesg_i[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(5),
      I1 => \^d\(0),
      I2 => s_axi_awprot(2),
      O => m_mesg_mux(48)
    );
\gen_arbiter.m_mesg_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(35),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(3),
      O => m_mesg_mux(4)
    );
\gen_arbiter.m_mesg_i[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awburst(2),
      I1 => \^d\(0),
      I2 => s_axi_awburst(0),
      O => m_mesg_mux(53)
    );
\gen_arbiter.m_mesg_i[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awburst(3),
      I1 => \^d\(0),
      I2 => s_axi_awburst(1),
      O => m_mesg_mux(54)
    );
\gen_arbiter.m_mesg_i[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awcache(4),
      I1 => \^d\(0),
      I2 => s_axi_awcache(0),
      O => m_mesg_mux(55)
    );
\gen_arbiter.m_mesg_i[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awcache(5),
      I1 => \^d\(0),
      I2 => s_axi_awcache(1),
      O => m_mesg_mux(56)
    );
\gen_arbiter.m_mesg_i[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awcache(6),
      I1 => \^d\(0),
      I2 => s_axi_awcache(2),
      O => m_mesg_mux(57)
    );
\gen_arbiter.m_mesg_i[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awcache(7),
      I1 => \^d\(0),
      I2 => s_axi_awcache(3),
      O => m_mesg_mux(58)
    );
\gen_arbiter.m_mesg_i[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awqos(4),
      I1 => \^d\(0),
      I2 => s_axi_awqos(0),
      O => m_mesg_mux(59)
    );
\gen_arbiter.m_mesg_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(36),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(4),
      O => m_mesg_mux(5)
    );
\gen_arbiter.m_mesg_i[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awqos(5),
      I1 => \^d\(0),
      I2 => s_axi_awqos(1),
      O => m_mesg_mux(60)
    );
\gen_arbiter.m_mesg_i[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awqos(6),
      I1 => \^d\(0),
      I2 => s_axi_awqos(2),
      O => m_mesg_mux(61)
    );
\gen_arbiter.m_mesg_i[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awqos(7),
      I1 => \^d\(0),
      I2 => s_axi_awqos(3),
      O => m_mesg_mux(62)
    );
\gen_arbiter.m_mesg_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(37),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(5),
      O => m_mesg_mux(6)
    );
\gen_arbiter.m_mesg_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(38),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(6),
      O => m_mesg_mux(7)
    );
\gen_arbiter.m_mesg_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(39),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(7),
      O => m_mesg_mux(8)
    );
\gen_arbiter.m_mesg_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(40),
      I1 => \^d\(0),
      I2 => s_axi_awaddr(8),
      O => m_mesg_mux(9)
    );
\gen_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \^d\(0),
      Q => \m_axi_awqos[7]\(0),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(10),
      Q => \m_axi_awqos[7]\(10),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(11),
      Q => \m_axi_awqos[7]\(11),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(12),
      Q => \m_axi_awqos[7]\(12),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(13),
      Q => \m_axi_awqos[7]\(13),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(14),
      Q => \m_axi_awqos[7]\(14),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(15),
      Q => \m_axi_awqos[7]\(15),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(16),
      Q => \m_axi_awqos[7]\(16),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(17),
      Q => \m_axi_awqos[7]\(17),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(18),
      Q => \m_axi_awqos[7]\(18),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(19),
      Q => \m_axi_awqos[7]\(19),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(1),
      Q => \m_axi_awqos[7]\(1),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(20),
      Q => \m_axi_awqos[7]\(20),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(21),
      Q => \m_axi_awqos[7]\(21),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(22),
      Q => \m_axi_awqos[7]\(22),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(23),
      Q => \m_axi_awqos[7]\(23),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(24),
      Q => \m_axi_awqos[7]\(24),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(25),
      Q => \m_axi_awqos[7]\(25),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(26),
      Q => \m_axi_awqos[7]\(26),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(27),
      Q => \m_axi_awqos[7]\(27),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(28),
      Q => \m_axi_awqos[7]\(28),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(29),
      Q => \m_axi_awqos[7]\(29),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(2),
      Q => \m_axi_awqos[7]\(2),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(30),
      Q => \m_axi_awqos[7]\(30),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(31),
      Q => \m_axi_awqos[7]\(31),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(32),
      Q => \m_axi_awqos[7]\(32),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(33),
      Q => \m_axi_awqos[7]\(33),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(34),
      Q => \m_axi_awqos[7]\(34),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(35),
      Q => \m_axi_awqos[7]\(35),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(36),
      Q => \m_axi_awqos[7]\(36),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(37),
      Q => \m_axi_awqos[7]\(37),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(38),
      Q => \m_axi_awqos[7]\(38),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(39),
      Q => \m_axi_awqos[7]\(39),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(3),
      Q => \m_axi_awqos[7]\(3),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(40),
      Q => \m_axi_awqos[7]\(40),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(41),
      Q => \m_axi_awqos[7]\(41),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(42),
      Q => \m_axi_awqos[7]\(42),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(43),
      Q => \m_axi_awqos[7]\(43),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(44),
      Q => \m_axi_awqos[7]\(44),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(46),
      Q => \m_axi_awqos[7]\(45),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(47),
      Q => \m_axi_awqos[7]\(46),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(48),
      Q => \m_axi_awqos[7]\(47),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(4),
      Q => \m_axi_awqos[7]\(4),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(53),
      Q => \m_axi_awqos[7]\(48),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(54),
      Q => \m_axi_awqos[7]\(49),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(55),
      Q => \m_axi_awqos[7]\(50),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(56),
      Q => \m_axi_awqos[7]\(51),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(57),
      Q => \m_axi_awqos[7]\(52),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(58),
      Q => \m_axi_awqos[7]\(53),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(59),
      Q => \m_axi_awqos[7]\(54),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(5),
      Q => \m_axi_awqos[7]\(5),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(60),
      Q => \m_axi_awqos[7]\(55),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(61),
      Q => \m_axi_awqos[7]\(56),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(62),
      Q => \m_axi_awqos[7]\(57),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(6),
      Q => \m_axi_awqos[7]\(6),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(7),
      Q => \m_axi_awqos[7]\(7),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(8),
      Q => \m_axi_awqos[7]\(8),
      R => SR(0)
    );
\gen_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => m_mesg_mux(9),
      Q => \m_axi_awqos[7]\(9),
      R => SR(0)
    );
\gen_arbiter.m_target_hot_i[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^match\,
      I1 => \gen_arbiter.m_grant_enc_i[0]_i_2_n_0\,
      I2 => \^match_0\,
      O => m_target_hot_mux(0)
    );
\gen_arbiter.m_target_hot_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^match\,
      I1 => \gen_arbiter.m_grant_enc_i[0]_i_2_n_0\,
      I2 => \^match_0\,
      O => m_target_hot_mux(2)
    );
\gen_arbiter.m_target_hot_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => m_target_hot_mux(0),
      Q => \^m_ready_d_reg[1]\(0),
      R => SR(0)
    );
\gen_arbiter.m_target_hot_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => m_target_hot_mux(2),
      Q => \^m_ready_d_reg[1]\(1),
      R => SR(0)
    );
\gen_arbiter.m_valid_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \gen_axi.s_axi_awready_i_reg_0\,
      I1 => \^aa_sa_awvalid\,
      I2 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.m_valid_i_i_1_n_0\
    );
\gen_arbiter.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_valid_i_i_1_n_0\,
      Q => \^aa_sa_awvalid\,
      R => SR(0)
    );
\gen_arbiter.qual_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d_reg[0]_4\(0),
      Q => qual_reg(0),
      R => SR(0)
    );
\gen_arbiter.qual_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d_reg[0]_4\(1),
      Q => qual_reg(1),
      R => SR(0)
    );
\gen_arbiter.s_ready_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => aresetn_d,
      I1 => \^aa_sa_awvalid\,
      I2 => \gen_arbiter.any_grant_reg_n_0\,
      O => \gen_arbiter.s_ready_i[1]_i_1_n_0\
    );
\gen_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      Q => \^m_ready_d_reg[0]\(0),
      R => \gen_arbiter.s_ready_i[1]_i_1_n_0\
    );
\gen_arbiter.s_ready_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      Q => \^m_ready_d_reg[0]\(1),
      R => \gen_arbiter.s_ready_i[1]_i_1_n_0\
    );
\gen_axi.write_cs[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => Q(1),
      I2 => \^m_ready_d_reg[1]\(1),
      I3 => mi_awready_2,
      O => \gen_axi.s_axi_awready_i_reg\
    );
\gen_master_slots[0].w_issuing_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gen_master_slots[0].w_issuing_cnt[4]_i_5_n_0\,
      I1 => w_issuing_cnt(1),
      I2 => w_issuing_cnt(0),
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(0)
    );
\gen_master_slots[0].w_issuing_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => w_issuing_cnt(2),
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(1),
      I3 => \gen_master_slots[0].w_issuing_cnt[4]_i_5_n_0\,
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(1)
    );
\gen_master_slots[0].w_issuing_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => w_issuing_cnt(2),
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(1),
      I3 => \gen_master_slots[0].w_issuing_cnt[4]_i_5_n_0\,
      I4 => w_issuing_cnt(3),
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(2)
    );
\gen_master_slots[0].w_issuing_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFE80000001"
    )
        port map (
      I0 => w_issuing_cnt(2),
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(1),
      I3 => \gen_master_slots[0].w_issuing_cnt[4]_i_5_n_0\,
      I4 => w_issuing_cnt(3),
      I5 => w_issuing_cnt(4),
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(3)
    );
\gen_master_slots[0].w_issuing_cnt[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \m_payload_i_reg[2]\,
      I1 => m_axi_awready(0),
      I2 => \^m_ready_d_reg[1]\(0),
      I3 => Q(1),
      I4 => \^aa_sa_awvalid\,
      O => \gen_master_slots[0].w_issuing_cnt[4]_i_5_n_0\
    );
\gen_master_slots[2].w_issuing_cnt[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000DFFF00002000"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => Q(1),
      I2 => \^m_ready_d_reg[1]\(1),
      I3 => mi_awready_2,
      I4 => m_valid_i_reg,
      I5 => w_issuing_cnt(5),
      O => \gen_master_slots[2].w_issuing_cnt_reg[16]\
    );
\gen_rep[0].fifoaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808F7000800F700"
    )
        port map (
      I0 => \^m_ready_d_reg[1]\(0),
      I1 => \^aa_sa_awvalid\,
      I2 => Q(0),
      I3 => \out\(2),
      I4 => \storage_data1_reg[0]_1\,
      I5 => \out\(1),
      O => E(0)
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808000000"
    )
        port map (
      I0 => \^m_ready_d_reg[1]\(0),
      I1 => \^aa_sa_awvalid\,
      I2 => Q(0),
      I3 => \out\(1),
      I4 => \storage_data1_reg[0]_1\,
      I5 => \out\(2),
      O => push
    );
\gen_single_thread.active_target_hot[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => s_axi_awaddr(28),
      I1 => s_axi_awaddr(29),
      I2 => s_axi_awaddr(30),
      I3 => s_axi_awaddr(31),
      I4 => \^gen_single_thread.active_target_hot_reg[0]\,
      O => \^match_0\
    );
\gen_single_thread.active_target_hot[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => s_axi_awaddr(60),
      I1 => s_axi_awaddr(61),
      I2 => s_axi_awaddr(62),
      I3 => s_axi_awaddr(63),
      I4 => \gen_single_thread.active_target_hot[0]_i_2__0_n_0\,
      O => \^match\
    );
\gen_single_thread.active_target_hot[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_awaddr(25),
      I1 => s_axi_awaddr(24),
      I2 => s_axi_awaddr(27),
      I3 => s_axi_awaddr(26),
      O => \^gen_single_thread.active_target_hot_reg[0]\
    );
\gen_single_thread.active_target_hot[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_awaddr(57),
      I1 => s_axi_awaddr(56),
      I2 => s_axi_awaddr(59),
      I3 => s_axi_awaddr(58),
      O => \gen_single_thread.active_target_hot[0]_i_2__0_n_0\
    );
\m_axi_awvalid[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^m_ready_d_reg[1]\(0),
      I1 => \^aa_sa_awvalid\,
      I2 => Q(1),
      O => m_axi_awvalid(0)
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEC"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => Q(0),
      I2 => \^m_ready_d_reg[1]\(1),
      I3 => \^m_ready_d_reg[1]\(0),
      O => \m_ready_d_reg[1]_0\(0)
    );
\m_ready_d[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d_reg[0]\(0),
      I2 => \m_ready_d_reg[0]_3\(0),
      O => \m_ready_d_reg[0]_0\(0)
    );
\m_ready_d[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_awvalid(1),
      I1 => \^m_ready_d_reg[0]\(1),
      I2 => \m_ready_d_reg[0]_2\(0),
      O => \m_ready_d_reg[0]_1\(0)
    );
\m_ready_d[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8880000"
    )
        port map (
      I0 => \^m_ready_d_reg[1]\(1),
      I1 => mi_awready_2,
      I2 => \^m_ready_d_reg[1]\(0),
      I3 => m_axi_awready(0),
      I4 => \^aa_sa_awvalid\,
      I5 => Q(1),
      O => \m_ready_d_reg[1]_0\(1)
    );
\m_valid_i_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^m_ready_d_reg[1]\(0),
      I1 => \^aa_sa_awvalid\,
      I2 => Q(0),
      O => sa_wm_awvalid(0)
    );
\m_valid_i_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^m_ready_d_reg[1]\(1),
      I1 => \^aa_sa_awvalid\,
      I2 => Q(0),
      O => sa_wm_awvalid(1)
    );
\storage_data1[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAABBAB88AA88A8"
    )
        port map (
      I0 => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\,
      I1 => \storage_data1[0]_i_3_n_0\,
      I2 => \out\(2),
      I3 => \storage_data1_reg[0]_1\,
      I4 => \storage_data1[0]_i_4_n_0\,
      I5 => m_select_enc,
      O => \storage_data1_reg[0]\
    );
\storage_data1[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => Q(0),
      I1 => \^aa_sa_awvalid\,
      I2 => \^m_ready_d_reg[1]\(0),
      I3 => \out\(0),
      O => \storage_data1[0]_i_3_n_0\
    );
\storage_data1[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F7FF"
    )
        port map (
      I0 => \^m_ready_d_reg[1]\(1),
      I1 => \^aa_sa_awvalid\,
      I2 => Q(0),
      I3 => out0(1),
      I4 => out0(0),
      O => \storage_data1_reg[0]_0\
    );
\storage_data1[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => Q(0),
      I1 => \^aa_sa_awvalid\,
      I2 => \^m_ready_d_reg[1]\(0),
      I3 => \out\(1),
      O => \storage_data1[0]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_decerr_slave is
  port (
    mi_awready_2 : out STD_LOGIC;
    p_14_in : out STD_LOGIC;
    p_24_in : out STD_LOGIC;
    p_21_in : out STD_LOGIC;
    p_15_in : out STD_LOGIC;
    mi_arready_2 : out STD_LOGIC;
    p_20_in : out STD_LOGIC;
    p_17_in : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[0]\ : in STD_LOGIC;
    \gen_arbiter.m_valid_i_reg\ : in STD_LOGIC;
    mi_bready_2 : in STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    mi_rready_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_arvalid : in STD_LOGIC;
    \gen_axi.read_cs_reg[0]_0\ : in STD_LOGIC;
    m_avalid : in STD_LOGIC;
    \storage_data1_reg[1]\ : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    \gen_axi.s_axi_rid_i\ : in STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[40]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_single_thread.active_target_enc_reg[1]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_decerr_slave;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_decerr_slave is
  signal \gen_axi.read_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt_reg\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \gen_axi.read_cnt_reg__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_axi.read_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_arready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_awready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_bid_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_bvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_wready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.write_cs\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_axi.write_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.write_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \^mi_arready_2\ : STD_LOGIC;
  signal \^mi_awready_2\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^p_14_in\ : STD_LOGIC;
  signal \^p_15_in\ : STD_LOGIC;
  signal \^p_17_in\ : STD_LOGIC;
  signal \^p_21_in\ : STD_LOGIC;
  signal \^p_24_in\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[1]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[7]_i_3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[7]_i_4\ : label is "soft_lutpair71";
begin
  mi_arready_2 <= \^mi_arready_2\;
  mi_awready_2 <= \^mi_awready_2\;
  p_14_in <= \^p_14_in\;
  p_15_in <= \^p_15_in\;
  p_17_in <= \^p_17_in\;
  p_21_in <= \^p_21_in\;
  p_24_in <= \^p_24_in\;
\gen_axi.read_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(0),
      I1 => \^p_15_in\,
      I2 => \gen_arbiter.m_mesg_i_reg[40]\(0),
      O => p_0_in(0)
    );
\gen_axi.read_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E22E"
    )
        port map (
      I0 => \gen_arbiter.m_mesg_i_reg[40]\(1),
      I1 => \^p_15_in\,
      I2 => \gen_axi.read_cnt_reg__0\(0),
      I3 => \gen_axi.read_cnt_reg\(1),
      O => p_0_in(1)
    );
\gen_axi.read_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC03AAAA"
    )
        port map (
      I0 => \gen_arbiter.m_mesg_i_reg[40]\(2),
      I1 => \gen_axi.read_cnt_reg\(1),
      I2 => \gen_axi.read_cnt_reg__0\(0),
      I3 => \gen_axi.read_cnt_reg\(2),
      I4 => \^p_15_in\,
      O => p_0_in(2)
    );
\gen_axi.read_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg\(3),
      I1 => \gen_axi.read_cnt_reg\(1),
      I2 => \gen_axi.read_cnt_reg__0\(0),
      I3 => \gen_axi.read_cnt_reg\(2),
      I4 => \^p_15_in\,
      I5 => \gen_arbiter.m_mesg_i_reg[40]\(3),
      O => p_0_in(3)
    );
\gen_axi.read_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3AA"
    )
        port map (
      I0 => \gen_arbiter.m_mesg_i_reg[40]\(4),
      I1 => \gen_axi.read_cnt_reg\(4),
      I2 => \gen_axi.read_cnt[6]_i_2_n_0\,
      I3 => \^p_15_in\,
      O => p_0_in(4)
    );
\gen_axi.read_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAA03AA"
    )
        port map (
      I0 => \gen_arbiter.m_mesg_i_reg[40]\(5),
      I1 => \gen_axi.read_cnt_reg\(4),
      I2 => \gen_axi.read_cnt[6]_i_2_n_0\,
      I3 => \^p_15_in\,
      I4 => \gen_axi.read_cnt_reg\(5),
      O => p_0_in(5)
    );
\gen_axi.read_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCC3AAAAAAAA"
    )
        port map (
      I0 => \gen_arbiter.m_mesg_i_reg[40]\(6),
      I1 => \gen_axi.read_cnt_reg\(6),
      I2 => \gen_axi.read_cnt[6]_i_2_n_0\,
      I3 => \gen_axi.read_cnt_reg\(4),
      I4 => \gen_axi.read_cnt_reg\(5),
      I5 => \^p_15_in\,
      O => p_0_in(6)
    );
\gen_axi.read_cnt[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg\(2),
      I1 => \gen_axi.read_cnt_reg__0\(0),
      I2 => \gen_axi.read_cnt_reg\(1),
      I3 => \gen_axi.read_cnt_reg\(3),
      O => \gen_axi.read_cnt[6]_i_2_n_0\
    );
\gen_axi.read_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80808080808080"
    )
        port map (
      I0 => \gen_axi.read_cnt[7]_i_3_n_0\,
      I1 => mi_rready_2,
      I2 => \^p_15_in\,
      I3 => Q(0),
      I4 => \^mi_arready_2\,
      I5 => aa_mi_arvalid,
      O => \gen_axi.read_cnt[7]_i_1_n_0\
    );
\gen_axi.read_cnt[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA3A"
    )
        port map (
      I0 => \gen_arbiter.m_mesg_i_reg[40]\(7),
      I1 => \gen_axi.read_cnt[7]_i_4_n_0\,
      I2 => \^p_15_in\,
      I3 => \gen_axi.read_cnt_reg\(7),
      O => p_0_in(7)
    );
\gen_axi.read_cnt[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg\(5),
      I1 => \gen_axi.read_cnt_reg\(4),
      I2 => \gen_axi.read_cnt[6]_i_2_n_0\,
      I3 => \gen_axi.read_cnt_reg\(6),
      I4 => \gen_axi.read_cnt_reg\(7),
      O => \gen_axi.read_cnt[7]_i_3_n_0\
    );
\gen_axi.read_cnt[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg\(6),
      I1 => \gen_axi.read_cnt[6]_i_2_n_0\,
      I2 => \gen_axi.read_cnt_reg\(4),
      I3 => \gen_axi.read_cnt_reg\(5),
      O => \gen_axi.read_cnt[7]_i_4_n_0\
    );
\gen_axi.read_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \gen_axi.read_cnt_reg__0\(0),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \gen_axi.read_cnt_reg\(1),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \gen_axi.read_cnt_reg\(2),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \gen_axi.read_cnt_reg\(3),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \gen_axi.read_cnt_reg\(4),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \gen_axi.read_cnt_reg\(5),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \gen_axi.read_cnt_reg\(6),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \gen_axi.read_cnt_reg\(7),
      R => SR(0)
    );
\gen_axi.read_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0B0B0B0B0B0B0"
    )
        port map (
      I0 => \gen_axi.read_cnt[7]_i_3_n_0\,
      I1 => mi_rready_2,
      I2 => \^p_15_in\,
      I3 => Q(0),
      I4 => \^mi_arready_2\,
      I5 => aa_mi_arvalid,
      O => \gen_axi.read_cs[0]_i_1_n_0\
    );
\gen_axi.read_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.read_cs[0]_i_1_n_0\,
      Q => \^p_15_in\,
      R => SR(0)
    );
\gen_axi.s_axi_arready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA08AA"
    )
        port map (
      I0 => aresetn_d,
      I1 => mi_rready_2,
      I2 => \gen_axi.read_cnt[7]_i_3_n_0\,
      I3 => \^p_15_in\,
      I4 => \^mi_arready_2\,
      I5 => \gen_axi.s_axi_rid_i\,
      O => \gen_axi.s_axi_arready_i_i_1_n_0\
    );
\gen_axi.s_axi_arready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_arready_i_i_1_n_0\,
      Q => \^mi_arready_2\,
      R => '0'
    );
\gen_axi.s_axi_awready_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF50C05"
    )
        port map (
      I0 => \gen_arbiter.m_valid_i_reg\,
      I1 => mi_bready_2,
      I2 => \gen_axi.write_cs\(0),
      I3 => \gen_axi.write_cs\(1),
      I4 => \^mi_awready_2\,
      O => \gen_axi.s_axi_awready_i_i_1_n_0\
    );
\gen_axi.s_axi_awready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_awready_i_i_1_n_0\,
      Q => \^mi_awready_2\,
      R => SR(0)
    );
\gen_axi.s_axi_bid_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => \gen_arbiter.m_mesg_i_reg[0]_0\(0),
      I1 => \gen_axi.write_cs\(0),
      I2 => \gen_axi.write_cs\(1),
      I3 => \gen_arbiter.m_valid_i_reg\,
      I4 => \^p_24_in\,
      O => \gen_axi.s_axi_bid_i[0]_i_1_n_0\
    );
\gen_axi.s_axi_bid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_bid_i[0]_i_1_n_0\,
      Q => \^p_24_in\,
      R => SR(0)
    );
\gen_axi.s_axi_bvalid_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF55FF04040000"
    )
        port map (
      I0 => \gen_axi.write_cs\(1),
      I1 => m_avalid,
      I2 => \storage_data1_reg[1]\,
      I3 => mi_bready_2,
      I4 => \gen_axi.write_cs\(0),
      I5 => \^p_21_in\,
      O => \gen_axi.s_axi_bvalid_i_i_1_n_0\
    );
\gen_axi.s_axi_bvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_bvalid_i_i_1_n_0\,
      Q => \^p_21_in\,
      R => SR(0)
    );
\gen_axi.s_axi_rid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_mesg_i_reg[0]\,
      Q => p_20_in,
      R => SR(0)
    );
\gen_axi.s_axi_rlast_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => \^p_15_in\,
      I1 => \gen_axi.read_cnt[7]_i_3_n_0\,
      I2 => \gen_axi.read_cs_reg[0]_0\,
      I3 => \gen_axi.s_axi_rlast_i_i_3_n_0\,
      I4 => \^p_17_in\,
      O => \gen_axi.s_axi_rlast_i_i_1_n_0\
    );
\gen_axi.s_axi_rlast_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg\(2),
      I1 => \gen_axi.read_cnt_reg\(1),
      I2 => mi_rready_2,
      I3 => \gen_axi.s_axi_rlast_i_i_5_n_0\,
      I4 => \gen_axi.s_axi_rid_i\,
      O => \gen_axi.s_axi_rlast_i_i_3_n_0\
    );
\gen_axi.s_axi_rlast_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg\(3),
      I1 => \gen_axi.read_cnt_reg\(4),
      I2 => \gen_axi.read_cnt_reg\(5),
      I3 => \gen_axi.read_cnt_reg\(6),
      I4 => \gen_axi.read_cnt_reg\(7),
      I5 => \^p_15_in\,
      O => \gen_axi.s_axi_rlast_i_i_5_n_0\
    );
\gen_axi.s_axi_rlast_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_rlast_i_i_1_n_0\,
      Q => \^p_17_in\,
      R => SR(0)
    );
\gen_axi.s_axi_wready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFFFF00005500"
    )
        port map (
      I0 => \gen_axi.write_cs\(1),
      I1 => m_avalid,
      I2 => \storage_data1_reg[1]\,
      I3 => \gen_arbiter.m_valid_i_reg\,
      I4 => \gen_axi.write_cs\(0),
      I5 => \^p_14_in\,
      O => \gen_axi.s_axi_wready_i_i_1_n_0\
    );
\gen_axi.s_axi_wready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_wready_i_i_1_n_0\,
      Q => \^p_14_in\,
      R => SR(0)
    );
\gen_axi.write_cs[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_axi.write_cs\(1),
      I1 => \gen_axi.write_cs\(0),
      O => \gen_axi.write_cs[0]_i_1_n_0\
    );
\gen_axi.write_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404FFAA04045500"
    )
        port map (
      I0 => \gen_axi.write_cs\(1),
      I1 => m_avalid,
      I2 => \storage_data1_reg[1]\,
      I3 => \gen_arbiter.m_valid_i_reg\,
      I4 => \gen_axi.write_cs\(0),
      I5 => mi_bready_2,
      O => \gen_axi.write_cs[1]_i_1_n_0\
    );
\gen_axi.write_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.write_cs[1]_i_1_n_0\,
      D => \gen_axi.write_cs[0]_i_1_n_0\,
      Q => \gen_axi.write_cs\(0),
      R => SR(0)
    );
\gen_axi.write_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.write_cs[1]_i_1_n_0\,
      D => \gen_axi.write_cs\(0),
      Q => \gen_axi.write_cs\(1),
      R => SR(0)
    );
m_valid_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^p_21_in\,
      I1 => mi_bready_2,
      I2 => \gen_single_thread.active_target_enc_reg[1]\,
      O => m_valid_i_reg
    );
\s_axi_wready[1]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_14_in\,
      I1 => m_avalid,
      O => \FSM_onehot_state_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor is
  port (
    \gen_single_thread.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.any_grant_reg\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[0]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.s_ready_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    match : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \m_payload_i_reg[33]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.qual_reg_reg[0]_0\ : in STD_LOGIC;
    \m_payload_i_reg[34]\ : in STD_LOGIC;
    \gen_master_slots[2].r_issuing_cnt_reg[16]\ : in STD_LOGIC;
    \m_payload_i_reg[34]_0\ : in STD_LOGIC;
    \s_axi_araddr[28]\ : in STD_LOGIC;
    \s_axi_araddr[26]\ : in STD_LOGIC;
    \m_payload_i_reg[34]_1\ : in STD_LOGIC;
    \m_payload_i_reg[35]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor is
  signal \gen_arbiter.any_grant_i_6__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_i_7__0_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_i_8__0_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.accept_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \^gen_single_thread.active_target_enc\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_thread.active_target_enc[1]_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.any_grant_i_8__0\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_5\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[0]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[1]_i_2__1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \s_axi_rresp[0]_INST_0\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_INST_0\ : label is "soft_lutpair153";
begin
  \gen_single_thread.active_target_enc\(0) <= \^gen_single_thread.active_target_enc\(0);
\gen_arbiter.any_grant_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010101010100"
    )
        port map (
      I0 => \gen_arbiter.qual_reg_reg[0]_0\,
      I1 => \m_payload_i_reg[34]\,
      I2 => \gen_master_slots[2].r_issuing_cnt_reg[16]\,
      I3 => \gen_arbiter.any_grant_i_6__0_n_0\,
      I4 => \gen_arbiter.any_grant_i_7__0_n_0\,
      I5 => \gen_arbiter.any_grant_i_8__0_n_0\,
      O => \gen_arbiter.any_grant_reg\
    );
\gen_arbiter.any_grant_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040000000"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\(0),
      I1 => \s_axi_araddr[28]\,
      I2 => \s_axi_araddr[26]\,
      I3 => \m_payload_i_reg[34]_1\,
      I4 => \m_payload_i_reg[35]\,
      I5 => \gen_single_thread.accept_cnt\(0),
      O => \gen_arbiter.any_grant_i_6__0_n_0\
    );
\gen_arbiter.any_grant_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070707070000000"
    )
        port map (
      I0 => \s_axi_araddr[28]\,
      I1 => \s_axi_araddr[26]\,
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => \m_payload_i_reg[34]_1\,
      I4 => \m_payload_i_reg[35]\,
      I5 => \gen_single_thread.accept_cnt\(0),
      O => \gen_arbiter.any_grant_i_7__0_n_0\
    );
\gen_arbiter.any_grant_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(1),
      I1 => \gen_single_thread.accept_cnt\(0),
      O => \gen_arbiter.any_grant_i_8__0_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11FDFD11"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(1),
      I1 => \gen_single_thread.accept_cnt\(0),
      I2 => \m_payload_i_reg[34]_0\,
      I3 => match,
      I4 => \^gen_single_thread.active_target_enc\(0),
      O => \gen_arbiter.qual_reg_reg[0]\
    );
\gen_single_thread.accept_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(0),
      O => \gen_single_thread.accept_cnt[0]_i_1_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55A8"
    )
        port map (
      I0 => \m_payload_i_reg[34]_0\,
      I1 => \gen_single_thread.accept_cnt\(0),
      I2 => \gen_single_thread.accept_cnt\(1),
      I3 => \gen_arbiter.s_ready_i_reg[0]\(0),
      O => \gen_single_thread.accept_cnt[1]_i_1__1_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(0),
      I1 => \gen_single_thread.accept_cnt\(1),
      I2 => \gen_arbiter.s_ready_i_reg[0]\(0),
      O => \gen_single_thread.accept_cnt[1]_i_2__1_n_0\
    );
\gen_single_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[1]_i_1__1_n_0\,
      D => \gen_single_thread.accept_cnt[0]_i_1_n_0\,
      Q => \gen_single_thread.accept_cnt\(0),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[1]_i_1__1_n_0\,
      D => \gen_single_thread.accept_cnt[1]_i_2__1_n_0\,
      Q => \gen_single_thread.accept_cnt\(1),
      R => SR(0)
    );
\gen_single_thread.active_target_enc[1]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => match,
      O => \gen_single_thread.active_target_enc[1]_i_1__1_n_0\
    );
\gen_single_thread.active_target_enc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_arbiter.s_ready_i_reg[0]\(0),
      D => \gen_single_thread.active_target_enc[1]_i_1__1_n_0\,
      Q => \^gen_single_thread.active_target_enc\(0),
      R => SR(0)
    );
\gen_single_thread.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_arbiter.s_ready_i_reg[0]\(0),
      D => match,
      Q => \gen_single_thread.active_target_hot\(0),
      R => SR(0)
    );
\s_axi_rresp[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\(0),
      I1 => \m_payload_i_reg[33]\(0),
      O => s_axi_rresp(0)
    );
\s_axi_rresp[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\(0),
      I1 => \m_payload_i_reg[33]\(1),
      O => s_axi_rresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized0\ is
  port (
    \gen_single_thread.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.qual_reg_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.any_grant_reg\ : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]\ : in STD_LOGIC;
    match : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \s_axi_awaddr[26]\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[2]\ : in STD_LOGIC;
    \gen_arbiter.last_rr_hot_reg[0]\ : in STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[16]\ : in STD_LOGIC;
    \gen_single_thread.active_target_hot_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_single_thread.active_target_enc_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized0\ : entity is "axi_crossbar_v2_1_16_si_transactor";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_arbiter.any_grant_i_5_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_i_6_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_single_thread.active_target_enc\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gen_single_thread.active_target_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.any_grant_i_5\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \gen_arbiter.any_grant_i_6\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \s_axi_bresp[0]_INST_0\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_INST_0\ : label is "soft_lutpair155";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \gen_single_thread.active_target_enc\(0) <= \^gen_single_thread.active_target_enc\(0);
  \gen_single_thread.active_target_hot\(0) <= \^gen_single_thread.active_target_hot\(0);
\gen_arbiter.any_grant_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111101100000"
    )
        port map (
      I0 => \gen_arbiter.last_rr_hot_reg[0]\,
      I1 => \gen_master_slots[2].w_issuing_cnt_reg[16]\,
      I2 => \^gen_single_thread.active_target_enc\(0),
      I3 => match,
      I4 => \gen_arbiter.any_grant_i_5_n_0\,
      I5 => \gen_arbiter.any_grant_i_6_n_0\,
      O => \gen_arbiter.any_grant_reg\
    );
\gen_arbiter.any_grant_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \m_payload_i_reg[2]\,
      I2 => s_axi_bready(0),
      O => \gen_arbiter.any_grant_i_5_n_0\
    );
\gen_arbiter.any_grant_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \gen_arbiter.any_grant_i_6_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FFF2FFF2F000F"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => \m_payload_i_reg[2]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => match,
      I5 => \^gen_single_thread.active_target_enc\(0),
      O => \gen_arbiter.qual_reg_reg[0]\
    );
\gen_single_thread.accept_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \gen_single_thread.accept_cnt[0]_i_1__0_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A9A9A8A"
    )
        port map (
      I0 => \m_ready_d_reg[1]\,
      I1 => \m_payload_i_reg[2]\,
      I2 => s_axi_bready(0),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \gen_single_thread.accept_cnt[1]_i_1_n_0\
    );
\gen_single_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[1]_i_1_n_0\,
      D => \gen_single_thread.accept_cnt[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[1]_i_1_n_0\,
      D => D(0),
      Q => \^q\(1),
      R => SR(0)
    );
\gen_single_thread.active_target_enc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \m_ready_d_reg[1]\,
      D => \s_axi_awaddr[26]\,
      Q => \^gen_single_thread.active_target_enc\(0),
      R => SR(0)
    );
\gen_single_thread.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \m_ready_d_reg[1]\,
      D => match,
      Q => \^gen_single_thread.active_target_hot\(0),
      R => SR(0)
    );
\m_valid_i_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF7777"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\(0),
      I1 => s_axi_bready(0),
      I2 => s_axi_bready(1),
      I3 => \gen_single_thread.active_target_enc_1\(0),
      I4 => st_mr_bid(0),
      O => m_valid_i_reg_0
    );
m_valid_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF7777"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => \^gen_single_thread.active_target_hot\(0),
      I2 => s_axi_bready(1),
      I3 => \gen_single_thread.active_target_hot_0\(0),
      I4 => \m_payload_i_reg[2]_0\(2),
      O => m_valid_i_reg
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\(0),
      I1 => \m_payload_i_reg[2]_0\(0),
      O => s_axi_bresp(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\(0),
      I1 => \m_payload_i_reg[2]_0\(1),
      O => s_axi_bresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized1\ is
  port (
    \gen_single_thread.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.qual_reg_reg[0]\ : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[1]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.s_ready_i_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    match : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \m_payload_i_reg[35]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_hot_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[34]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized1\ : entity is "axi_crossbar_v2_1_16_si_transactor";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized1\ is
  signal \gen_single_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.accept_cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_2__2_n_0\ : STD_LOGIC;
  signal \^gen_single_thread.active_target_enc\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_thread.active_target_enc[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \^gen_single_thread.active_target_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_7\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[0]_i_1__1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \s_axi_rresp[2]_INST_0\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \s_axi_rresp[3]_INST_0\ : label is "soft_lutpair162";
begin
  \gen_single_thread.active_target_enc\(0) <= \^gen_single_thread.active_target_enc\(0);
  \gen_single_thread.active_target_hot\(0) <= \^gen_single_thread.active_target_hot\(0);
\gen_arbiter.m_grant_enc_i[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11FDFD11"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(1),
      I1 => \gen_single_thread.accept_cnt\(0),
      I2 => \m_payload_i_reg[34]\,
      I3 => match,
      I4 => \^gen_single_thread.active_target_enc\(0),
      O => \gen_arbiter.qual_reg_reg[1]\
    );
\gen_arbiter.qual_reg[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => s_axi_rready(1),
      I1 => \^gen_single_thread.active_target_hot\(0),
      I2 => \m_payload_i_reg[35]\(2),
      I3 => \gen_single_thread.active_target_hot_1\(0),
      I4 => s_axi_rready(0),
      O => \gen_master_slots[0].r_issuing_cnt_reg[0]\
    );
\gen_arbiter.qual_reg[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => s_axi_rready(1),
      I1 => \^gen_single_thread.active_target_enc\(0),
      I2 => Q(0),
      I3 => \gen_single_thread.active_target_enc_0\(0),
      I4 => s_axi_rready(0),
      O => \gen_arbiter.qual_reg_reg[0]\
    );
\gen_single_thread.accept_cnt[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(0),
      O => \gen_single_thread.accept_cnt[0]_i_1__1_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55A8"
    )
        port map (
      I0 => \m_payload_i_reg[34]\,
      I1 => \gen_single_thread.accept_cnt\(0),
      I2 => \gen_single_thread.accept_cnt\(1),
      I3 => \gen_arbiter.s_ready_i_reg[1]\(0),
      O => \gen_single_thread.accept_cnt[1]_i_1__2_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(0),
      I1 => \gen_single_thread.accept_cnt\(1),
      I2 => \gen_arbiter.s_ready_i_reg[1]\(0),
      O => \gen_single_thread.accept_cnt[1]_i_2__2_n_0\
    );
\gen_single_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[1]_i_1__2_n_0\,
      D => \gen_single_thread.accept_cnt[0]_i_1__1_n_0\,
      Q => \gen_single_thread.accept_cnt\(0),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[1]_i_1__2_n_0\,
      D => \gen_single_thread.accept_cnt[1]_i_2__2_n_0\,
      Q => \gen_single_thread.accept_cnt\(1),
      R => SR(0)
    );
\gen_single_thread.active_target_enc[1]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => match,
      O => \gen_single_thread.active_target_enc[1]_i_1__2_n_0\
    );
\gen_single_thread.active_target_enc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_arbiter.s_ready_i_reg[1]\(0),
      D => \gen_single_thread.active_target_enc[1]_i_1__2_n_0\,
      Q => \^gen_single_thread.active_target_enc\(0),
      R => SR(0)
    );
\gen_single_thread.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_arbiter.s_ready_i_reg[1]\(0),
      D => match,
      Q => \^gen_single_thread.active_target_hot\(0),
      R => SR(0)
    );
\s_axi_rresp[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\(0),
      I1 => \m_payload_i_reg[35]\(0),
      O => s_axi_rresp(0)
    );
\s_axi_rresp[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\(0),
      I1 => \m_payload_i_reg[35]\(1),
      O => s_axi_rresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized2\ is
  port (
    \gen_single_thread.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.qual_reg_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]\ : in STD_LOGIC;
    match : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \s_axi_awaddr[58]\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    st_mr_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized2\ : entity is "axi_crossbar_v2_1_16_si_transactor";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.accept_cnt[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \^gen_single_thread.active_target_enc\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gen_single_thread.active_target_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_axi_bresp[2]_INST_0\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \s_axi_bresp[3]_INST_0\ : label is "soft_lutpair163";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \gen_single_thread.active_target_enc\(0) <= \^gen_single_thread.active_target_enc\(0);
  \gen_single_thread.active_target_hot\(0) <= \^gen_single_thread.active_target_hot\(0);
\gen_arbiter.m_grant_enc_i[0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FFF2FFF2F000F"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => \gen_single_thread.accept_cnt[1]_i_3__0_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => match,
      I5 => \^gen_single_thread.active_target_enc\(0),
      O => \gen_arbiter.qual_reg_reg[1]\
    );
\gen_single_thread.accept_cnt[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \gen_single_thread.accept_cnt[0]_i_1__2_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A9A9A8A"
    )
        port map (
      I0 => \m_ready_d_reg[1]\,
      I1 => \gen_single_thread.accept_cnt[1]_i_3__0_n_0\,
      I2 => s_axi_bready(0),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \gen_single_thread.accept_cnt[1]_i_1__0_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F7F7F7F7F7F7F"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\(0),
      I1 => st_mr_bid(1),
      I2 => st_mr_bvalid(1),
      I3 => st_mr_bvalid(0),
      I4 => \^gen_single_thread.active_target_hot\(0),
      I5 => st_mr_bid(0),
      O => \gen_single_thread.accept_cnt[1]_i_3__0_n_0\
    );
\gen_single_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[1]_i_1__0_n_0\,
      D => \gen_single_thread.accept_cnt[0]_i_1__2_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\gen_single_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[1]_i_1__0_n_0\,
      D => D(0),
      Q => \^q\(1),
      R => SR(0)
    );
\gen_single_thread.active_target_enc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \m_ready_d_reg[1]\,
      D => \s_axi_awaddr[58]\,
      Q => \^gen_single_thread.active_target_enc\(0),
      R => SR(0)
    );
\gen_single_thread.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \m_ready_d_reg[1]\,
      D => match,
      Q => \^gen_single_thread.active_target_hot\(0),
      R => SR(0)
    );
\s_axi_bresp[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\(0),
      I1 => \m_payload_i_reg[1]\(0),
      O => s_axi_bresp(0)
    );
\s_axi_bresp[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\(0),
      I1 => \m_payload_i_reg[1]\(1),
      O => s_axi_bresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_awready[0]\ : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    ss_wr_awvalid_0 : out STD_LOGIC;
    ss_wr_awready_0 : in STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    out0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_ready_i_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[1]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_4\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \s_axi_awready[0]_INST_0\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_3\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_4\ : label is "soft_lutpair157";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^q\(1),
      O => ss_wr_awvalid_0
    );
\gen_single_thread.accept_cnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0357FCA8FCA80357"
    )
        port map (
      I0 => ss_wr_awready_0,
      I1 => \^q\(0),
      I2 => \gen_arbiter.s_ready_i_reg[0]\(0),
      I3 => \^q\(1),
      I4 => \gen_single_thread.accept_cnt_reg[1]\(0),
      I5 => \gen_single_thread.accept_cnt_reg[1]\(1),
      O => D(0)
    );
\m_ready_d[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCA8FFFF"
    )
        port map (
      I0 => ss_wr_awready_0,
      I1 => \^q\(0),
      I2 => \gen_arbiter.s_ready_i_reg[0]\(0),
      I3 => \^q\(1),
      I4 => aresetn_d,
      O => \m_ready_d[1]_i_1__0_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_reg(0),
      Q => \^q\(0),
      R => \m_ready_d[1]_i_1__0_n_0\
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_reg(1),
      Q => \^q\(1),
      R => \m_ready_d[1]_i_1__0_n_0\
    );
\s_axi_awready[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCA8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_arbiter.s_ready_i_reg[0]\(0),
      I2 => \^q\(0),
      I3 => ss_wr_awready_0,
      O => \s_axi_awready[0]\
    );
\storage_data1[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_awvalid(0),
      I2 => out0(1),
      O => \storage_data1_reg[1]_0\
    );
\storage_data1[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_awvalid(0),
      I2 => out0(0),
      O => \storage_data1_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter_3 is
  port (
    \gen_arbiter.qual_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_awready[1]\ : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    ss_wr_awvalid_1 : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[2].w_issuing_cnt_reg[16]\ : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[1]\ : in STD_LOGIC;
    ss_wr_awready_1 : in STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    out0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_ready_i_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter_3 : entity is "axi_crossbar_v2_1_16_splitter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter_3 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[1]_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_4__0\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \s_axi_awready[1]_INST_0\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_3__0\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_4__0\ : label is "soft_lutpair165";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\gen_arbiter.qual_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^q\(0),
      I2 => \gen_master_slots[2].w_issuing_cnt_reg[16]\,
      I3 => \gen_single_thread.accept_cnt_reg[1]\,
      O => \gen_arbiter.qual_reg_reg[1]\(0)
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^q\(1),
      O => ss_wr_awvalid_1
    );
\gen_single_thread.accept_cnt[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0357FCA8FCA80357"
    )
        port map (
      I0 => ss_wr_awready_1,
      I1 => \^q\(0),
      I2 => \gen_arbiter.s_ready_i_reg[1]\(0),
      I3 => \^q\(1),
      I4 => \gen_single_thread.accept_cnt_reg[1]_0\(0),
      I5 => \gen_single_thread.accept_cnt_reg[1]_0\(1),
      O => D(0)
    );
\m_ready_d[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCA8FFFF"
    )
        port map (
      I0 => ss_wr_awready_1,
      I1 => \^q\(0),
      I2 => \gen_arbiter.s_ready_i_reg[1]\(0),
      I3 => \^q\(1),
      I4 => aresetn_d,
      O => \m_ready_d[1]_i_1__1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_reg(0),
      Q => \^q\(0),
      R => \m_ready_d[1]_i_1__1_n_0\
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_reg(1),
      Q => \^q\(1),
      R => \m_ready_d[1]_i_1__1_n_0\
    );
\s_axi_awready[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCA8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_arbiter.s_ready_i_reg[1]\(0),
      I2 => \^q\(0),
      I3 => ss_wr_awready_1,
      O => \s_axi_awready[1]\
    );
\storage_data1[1]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_awvalid(0),
      I2 => out0(1),
      O => \storage_data1_reg[1]_0\
    );
\storage_data1[1]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_awvalid(0),
      I2 => out0(0),
      O => \storage_data1_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter_5 is
  port (
    \m_ready_d_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    mi_awready_2 : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_target_hot_i_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_master_slots[0].w_issuing_cnt_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].w_issuing_cnt_reg[1]\ : in STD_LOGIC;
    \m_payload_i_reg[2]\ : in STD_LOGIC;
    aa_sa_awvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter_5 : entity is "axi_crossbar_v2_1_16_splitter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter_5 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_master_slots[0].w_issuing_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \^m_ready_d_reg[0]_0\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \m_ready_d_reg[0]_0\ <= \^m_ready_d_reg[0]_0\;
\gen_arbiter.grant_hot[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFCFAF0FEFCFA00"
    )
        port map (
      I0 => mi_awready_2,
      I1 => m_axi_awready(0),
      I2 => \^q\(1),
      I3 => \gen_arbiter.m_target_hot_i_reg[2]\(1),
      I4 => \gen_arbiter.m_target_hot_i_reg[2]\(0),
      I5 => \^q\(0),
      O => \^m_ready_d_reg[0]_0\
    );
\gen_master_slots[0].w_issuing_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000000E0EEEEEE"
    )
        port map (
      I0 => \gen_master_slots[0].w_issuing_cnt_reg[4]\(0),
      I1 => \gen_master_slots[0].w_issuing_cnt_reg[1]\,
      I2 => \gen_master_slots[0].w_issuing_cnt[4]_i_4_n_0\,
      I3 => \gen_arbiter.m_target_hot_i_reg[2]\(0),
      I4 => m_axi_awready(0),
      I5 => \m_payload_i_reg[2]\,
      O => E(0)
    );
\gen_master_slots[0].w_issuing_cnt[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(1),
      I1 => aa_sa_awvalid,
      O => \gen_master_slots[0].w_issuing_cnt[4]_i_4_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^m_ready_d_reg[0]_0\,
      I1 => aresetn_d,
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => \m_ready_d[1]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[1]_0\ : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wready[0]\ : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]_1\ : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sa_wm_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    in1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]_0\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_avalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.s_axi_wready_i_reg\ : in STD_LOGIC;
    \storage_data1_reg[1]_1\ : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC;
    \storage_data1_reg[1]_2\ : in STD_LOGIC;
    m_valid_i_reg_0 : in STD_LOGIC;
    storage_data2 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_target_hot_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized0\ : entity is "axi_data_fifo_v2_1_14_axic_reg_srl_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[3]_i_3_n_0\ : STD_LOGIC;
  signal \^gen_rep[0].fifoaddr_reg[1]_0\ : STD_LOGIC;
  signal m_avalid_0 : STD_LOGIC;
  signal \^m_axi_wlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_valid_i_i_3__1_n_0\ : STD_LOGIC;
  signal m_valid_i_n_0 : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  signal \^storage_data1_reg[1]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/FSM_onehot_state[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \/FSM_onehot_state[2]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_1__2\ : label is "soft_lutpair74";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[2]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[3]\ : label is "1";
  attribute SOFT_HLUTNM of \m_axi_wdata[0]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_axi_wdata[10]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_axi_wdata[11]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_axi_wdata[12]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_axi_wdata[13]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_axi_wdata[14]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_axi_wdata[15]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_axi_wdata[16]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_axi_wdata[17]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_axi_wdata[18]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_axi_wdata[19]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_axi_wdata[1]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_axi_wdata[20]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_axi_wdata[21]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_axi_wdata[22]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_axi_wdata[23]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_axi_wdata[24]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_axi_wdata[25]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_axi_wdata[26]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_axi_wdata[27]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_axi_wdata[28]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_axi_wdata[29]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_axi_wdata[30]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_axi_wdata[31]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_axi_wdata[3]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_axi_wdata[4]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_axi_wdata[5]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_axi_wdata[6]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_axi_wdata[7]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_axi_wdata[8]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_axi_wdata[9]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_axi_wlast[0]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_axi_wstrb[0]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_axi_wstrb[1]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_axi_wstrb[2]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_axi_wstrb[3]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_axi_wvalid[0]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \m_valid_i_i_3__1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \s_axi_wready[1]_INST_0_i_2\ : label is "soft_lutpair93";
begin
  E(0) <= \^e\(0);
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gen_rep[0].fifoaddr_reg[1]_0\ <= \^gen_rep[0].fifoaddr_reg[1]_0\;
  m_axi_wlast(0) <= \^m_axi_wlast\(0);
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
  \storage_data1_reg[1]_0\ <= \^storage_data1_reg[1]_0\;
\/FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000455500000000"
    )
        port map (
      I0 => \out\(0),
      I1 => \m_ready_d_reg[0]\(0),
      I2 => aa_sa_awvalid,
      I3 => \gen_arbiter.m_target_hot_i_reg[0]_0\(0),
      I4 => \^gen_rep[0].fifoaddr_reg[1]_0\,
      I5 => \out\(1),
      O => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\(0)
    );
\/FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00AA10"
    )
        port map (
      I0 => \out\(0),
      I1 => \^gen_rep[0].fifoaddr_reg[1]_0\,
      I2 => \m_valid_i_i_3__1_n_0\,
      I3 => sa_wm_awvalid(0),
      I4 => \out\(1),
      O => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\(1)
    );
\/FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA55EF"
    )
        port map (
      I0 => \out\(0),
      I1 => \^gen_rep[0].fifoaddr_reg[1]_0\,
      I2 => \m_valid_i_i_3__1_n_0\,
      I3 => sa_wm_awvalid(0),
      I4 => \out\(1),
      O => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\(2)
    );
\/FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA2000"
    )
        port map (
      I0 => \out\(1),
      I1 => \m_ready_d_reg[0]\(0),
      I2 => aa_sa_awvalid,
      I3 => \gen_arbiter.m_target_hot_i_reg[0]_0\(0),
      I4 => \^gen_rep[0].fifoaddr_reg[1]_0\,
      I5 => \out\(0),
      O => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\(3)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0CFCAE0E0CACA"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => sa_wm_awvalid(0),
      I3 => \out\(2),
      I4 => \^gen_rep[0].fifoaddr_reg[1]_0\,
      I5 => \m_valid_i_i_3__1_n_0\,
      O => \^e\(0)
    );
\FSM_onehot_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \^storage_data1_reg[1]_0\,
      I1 => s_axi_wlast(1),
      I2 => m_avalid,
      I3 => s_axi_wvalid(0),
      O => \storage_data1_reg[1]\
    );
\gen_rep[0].fifoaddr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__2_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"557FAA80AA80557F"
    )
        port map (
      I0 => sa_wm_awvalid(0),
      I1 => \out\(1),
      I2 => \^gen_rep[0].fifoaddr_reg[1]_0\,
      I3 => \out\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \gen_rep[0].fifoaddr[1]_i_1__2_n_0\
    );
\gen_rep[0].fifoaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EE7E1181"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => sa_wm_awvalid(0),
      I3 => \gen_rep[0].fifoaddr[3]_i_3_n_0\,
      I4 => \^q\(2),
      O => \gen_rep[0].fifoaddr[2]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAA65"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_rep[0].fifoaddr[3]_i_3_n_0\,
      I2 => sa_wm_awvalid(0),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \gen_rep[0].fifoaddr[3]_i_2_n_0\
    );
\gen_rep[0].fifoaddr[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555D555"
    )
        port map (
      I0 => \out\(1),
      I1 => \^m_axi_wlast\(0),
      I2 => m_axi_wready(0),
      I3 => m_avalid_0,
      I4 => m_valid_i_reg_0,
      I5 => \out\(2),
      O => \gen_rep[0].fifoaddr[3]_i_3_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_arbiter.m_target_hot_i_reg[0]\(0),
      D => \gen_rep[0].fifoaddr[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => SS(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_arbiter.m_target_hot_i_reg[0]\(0),
      D => \gen_rep[0].fifoaddr[1]_i_1__2_n_0\,
      Q => \^q\(1),
      S => SS(0)
    );
\gen_rep[0].fifoaddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_arbiter.m_target_hot_i_reg[0]\(0),
      D => \gen_rep[0].fifoaddr[2]_i_1_n_0\,
      Q => \^q\(2),
      S => SS(0)
    );
\gen_rep[0].fifoaddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_arbiter.m_target_hot_i_reg[0]\(0),
      D => \gen_rep[0].fifoaddr[3]_i_2_n_0\,
      Q => \^q\(3),
      S => SS(0)
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF7F7FFFFF7F7F"
    )
        port map (
      I0 => m_axi_wready(0),
      I1 => m_avalid_0,
      I2 => \^storage_data1_reg[0]_0\,
      I3 => \gen_axi.s_axi_wready_i_reg\,
      I4 => \storage_data1_reg[1]_1\,
      I5 => m_select_enc_0,
      O => \^storage_data1_reg[1]_0\
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7F700FFF7F7"
    )
        port map (
      I0 => m_axi_wready(0),
      I1 => m_avalid_0,
      I2 => \^storage_data1_reg[0]_0\,
      I3 => \gen_axi.s_axi_wready_i_reg\,
      I4 => \storage_data1_reg[1]_2\,
      I5 => m_select_enc_0,
      O => \gen_rep[0].fifoaddr_reg[1]_1\
    );
\m_axi_wdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(32),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(0),
      O => m_axi_wdata(0)
    );
\m_axi_wdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(42),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(10),
      O => m_axi_wdata(10)
    );
\m_axi_wdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(43),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(11),
      O => m_axi_wdata(11)
    );
\m_axi_wdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(44),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(12),
      O => m_axi_wdata(12)
    );
\m_axi_wdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(45),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(13),
      O => m_axi_wdata(13)
    );
\m_axi_wdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(46),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(14),
      O => m_axi_wdata(14)
    );
\m_axi_wdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(47),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(15),
      O => m_axi_wdata(15)
    );
\m_axi_wdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(48),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(16),
      O => m_axi_wdata(16)
    );
\m_axi_wdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(49),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(17),
      O => m_axi_wdata(17)
    );
\m_axi_wdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(50),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(18),
      O => m_axi_wdata(18)
    );
\m_axi_wdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(51),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(19),
      O => m_axi_wdata(19)
    );
\m_axi_wdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(33),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(1),
      O => m_axi_wdata(1)
    );
\m_axi_wdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(52),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(20),
      O => m_axi_wdata(20)
    );
\m_axi_wdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(53),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(21),
      O => m_axi_wdata(21)
    );
\m_axi_wdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(54),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(22),
      O => m_axi_wdata(22)
    );
\m_axi_wdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(55),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(23),
      O => m_axi_wdata(23)
    );
\m_axi_wdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(56),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(24),
      O => m_axi_wdata(24)
    );
\m_axi_wdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(57),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(25),
      O => m_axi_wdata(25)
    );
\m_axi_wdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(58),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(26),
      O => m_axi_wdata(26)
    );
\m_axi_wdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(59),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(27),
      O => m_axi_wdata(27)
    );
\m_axi_wdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(60),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(28),
      O => m_axi_wdata(28)
    );
\m_axi_wdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(61),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(29),
      O => m_axi_wdata(29)
    );
\m_axi_wdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(34),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(2),
      O => m_axi_wdata(2)
    );
\m_axi_wdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(62),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(30),
      O => m_axi_wdata(30)
    );
\m_axi_wdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(63),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(31),
      O => m_axi_wdata(31)
    );
\m_axi_wdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(35),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(3),
      O => m_axi_wdata(3)
    );
\m_axi_wdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(36),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(4),
      O => m_axi_wdata(4)
    );
\m_axi_wdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(37),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(5),
      O => m_axi_wdata(5)
    );
\m_axi_wdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(38),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(6),
      O => m_axi_wdata(6)
    );
\m_axi_wdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(39),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(7),
      O => m_axi_wdata(7)
    );
\m_axi_wdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(40),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(8),
      O => m_axi_wdata(8)
    );
\m_axi_wdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(41),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(9),
      O => m_axi_wdata(9)
    );
\m_axi_wlast[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wlast(1),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wlast(0),
      O => \^m_axi_wlast\(0)
    );
\m_axi_wstrb[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(4),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(0),
      O => m_axi_wstrb(0)
    );
\m_axi_wstrb[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(5),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(1),
      O => m_axi_wstrb(1)
    );
\m_axi_wstrb[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(6),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(2),
      O => m_axi_wstrb(2)
    );
\m_axi_wstrb[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(7),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(3),
      O => m_axi_wstrb(3)
    );
\m_axi_wvalid[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_avalid_0,
      I1 => m_valid_i_reg_0,
      O => m_axi_wvalid(0)
    );
m_valid_i: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0CFC0E0E0C0C0"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => sa_wm_awvalid(0),
      I3 => \out\(2),
      I4 => \^gen_rep[0].fifoaddr_reg[1]_0\,
      I5 => \m_valid_i_i_3__1_n_0\,
      O => m_valid_i_n_0
    );
\m_valid_i_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF47FFFFFF"
    )
        port map (
      I0 => s_axi_wlast(1),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wlast(0),
      I3 => m_axi_wready(0),
      I4 => m_avalid_0,
      I5 => m_valid_i_reg_0,
      O => \^gen_rep[0].fifoaddr_reg[1]_0\
    );
\m_valid_i_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \out\(2),
      O => \m_valid_i_i_3__1_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => m_valid_i_n_0,
      Q => m_avalid_0,
      R => in1
    );
\s_axi_wready[1]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => m_axi_wready(0),
      I1 => m_avalid_0,
      O => \s_axi_wready[0]\
    );
\storage_data1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_data2,
      I1 => \out\(2),
      I2 => D(0),
      O => \storage_data1_reg[0]_1\
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]_0\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized1\ is
  port (
    in1 : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized1\ : entity is "axi_data_fifo_v2_1_14_axic_reg_srl_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized1\ is
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
begin
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => in1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => in1
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => in1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => in1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl is
  port (
    push : out STD_LOGIC;
    \gen_single_thread.active_target_enc_reg[1]\ : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    out0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_ready_d_reg[1]\ : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC;
    \m_ready_d_reg[1]_0\ : in STD_LOGIC;
    \storage_data1_reg[1]_0\ : in STD_LOGIC;
    match : in STD_LOGIC;
    m_valid_i_reg_0 : in STD_LOGIC;
    m_valid_i_reg_1 : in STD_LOGIC;
    ss_wr_awvalid_1 : in STD_LOGIC;
    s_ready_i_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl is
  signal \^gen_single_thread.active_target_enc_reg[1]\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \storage_data1[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_single_thread.active_target_enc[1]_i_1__0\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_2__0\ : label is "soft_lutpair166";
begin
  \gen_single_thread.active_target_enc_reg[1]\ <= \^gen_single_thread.active_target_enc_reg[1]\;
  push <= \^push\;
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => Q(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => \^gen_single_thread.active_target_enc_reg[1]\,
      Q => p_2_out,
      Q31 => \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_Q31_UNCONNECTED\
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00E000E000E000"
    )
        port map (
      I0 => m_valid_i_reg_0,
      I1 => m_valid_i_reg_1,
      I2 => out0(1),
      I3 => ss_wr_awvalid_1,
      I4 => out0(0),
      I5 => s_ready_i_reg,
      O => \^push\
    );
\gen_single_thread.active_target_enc[1]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => match,
      O => \^gen_single_thread.active_target_enc_reg[1]\
    );
\storage_data1[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAAAFABA0AAA0A8"
    )
        port map (
      I0 => \storage_data1[1]_i_2__0_n_0\,
      I1 => out0(0),
      I2 => \m_ready_d_reg[1]\,
      I3 => m_valid_i_reg,
      I4 => \m_ready_d_reg[1]_0\,
      I5 => \storage_data1_reg[1]_0\,
      O => \storage_data1_reg[1]\
    );
\storage_data1[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_2_out,
      I1 => out0(0),
      I2 => match,
      O => \storage_data1[1]_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl_7 is
  port (
    push : out STD_LOGIC;
    \gen_single_thread.active_target_enc_reg[1]\ : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    out0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_ready_d_reg[1]\ : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC;
    \m_ready_d_reg[1]_0\ : in STD_LOGIC;
    \storage_data1_reg[1]_0\ : in STD_LOGIC;
    match : in STD_LOGIC;
    m_valid_i_reg_0 : in STD_LOGIC;
    m_valid_i_reg_1 : in STD_LOGIC;
    ss_wr_awvalid_0 : in STD_LOGIC;
    s_ready_i_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl_7 : entity is "axi_data_fifo_v2_1_14_ndeep_srl";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl_7 is
  signal \^gen_single_thread.active_target_enc_reg[1]\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \storage_data1[1]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_single_thread.active_target_enc[1]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_2\ : label is "soft_lutpair158";
begin
  \gen_single_thread.active_target_enc_reg[1]\ <= \^gen_single_thread.active_target_enc_reg[1]\;
  push <= \^push\;
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => Q(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => \^gen_single_thread.active_target_enc_reg[1]\,
      Q => p_2_out,
      Q31 => \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_Q31_UNCONNECTED\
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00E000E000E000"
    )
        port map (
      I0 => m_valid_i_reg_0,
      I1 => m_valid_i_reg_1,
      I2 => out0(1),
      I3 => ss_wr_awvalid_0,
      I4 => out0(0),
      I5 => s_ready_i_reg,
      O => \^push\
    );
\gen_single_thread.active_target_enc[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => match,
      O => \^gen_single_thread.active_target_enc_reg[1]\
    );
\storage_data1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAAAFABA0AAA0A8"
    )
        port map (
      I0 => \storage_data1[1]_i_2_n_0\,
      I1 => out0(0),
      I2 => \m_ready_d_reg[1]\,
      I3 => m_valid_i_reg,
      I4 => \m_ready_d_reg[1]_0\,
      I5 => \storage_data1_reg[1]_0\,
      O => \storage_data1_reg[1]\
    );
\storage_data1[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_2_out,
      I1 => out0(0),
      I2 => match,
      O => \storage_data1[1]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl_8 is
  port (
    \storage_data1_reg[0]\ : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    sa_wm_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    out0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_arbiter.m_target_hot_i_reg[2]\ : in STD_LOGIC;
    m_select_enc : in STD_LOGIC;
    \m_ready_d_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid : in STD_LOGIC;
    p_14_in : in STD_LOGIC;
    \storage_data1_reg[1]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl_8 : entity is "axi_data_fifo_v2_1_14_ndeep_srl";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl_8 is
  signal push : STD_LOGIC;
  signal \storage_data1[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  signal storage_data2 : STD_LOGIC;
  signal \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1 ";
begin
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => Q(1 downto 0),
      CE => push,
      CLK => aclk,
      D => D(0),
      Q => storage_data2,
      Q31 => \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_Q31_UNCONNECTED\
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300000002000"
    )
        port map (
      I0 => out0(1),
      I1 => \m_ready_d_reg[0]\(0),
      I2 => aa_sa_awvalid,
      I3 => \gen_arbiter.m_target_hot_i_reg[2]_0\(0),
      I4 => \^storage_data1_reg[0]_0\,
      I5 => out0(0),
      O => push
    );
\m_valid_i_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m_avalid,
      I1 => p_14_in,
      I2 => \storage_data1_reg[1]\,
      O => \^storage_data1_reg[0]_0\
    );
\storage_data1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAABFBF80AA8080"
    )
        port map (
      I0 => \storage_data1[0]_i_2__0_n_0\,
      I1 => sa_wm_awvalid(0),
      I2 => out0(2),
      I3 => \gen_arbiter.m_target_hot_i_reg[2]\,
      I4 => \^storage_data1_reg[0]_0\,
      I5 => m_select_enc,
      O => \storage_data1_reg[0]\
    );
\storage_data1[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => storage_data2,
      I1 => out0(0),
      I2 => D(0),
      O => \storage_data1[0]_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1\ is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    mi_bready_2 : out STD_LOGIC;
    s_ready_i_reg_1 : out STD_LOGIC;
    \m_payload_i_reg[2]_0\ : out STD_LOGIC;
    s_ready_i_reg_2 : out STD_LOGIC;
    \gen_arbiter.m_grant_enc_i_reg[0]\ : out STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[0]\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[0]\ : out STD_LOGIC;
    \gen_axi.s_axi_bvalid_i_reg\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    reset : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_24_in : in STD_LOGIC;
    p_21_in : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    match : in STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[1]\ : in STD_LOGIC;
    \gen_arbiter.last_rr_hot_reg[0]\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1\ : entity is "axi_register_slice_v2_1_15_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1\ is
  signal \m_payload_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[2]_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \s_ready_i_i_1__3_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_1\ : STD_LOGIC;
  signal \^s_ready_i_reg_2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_4\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[0]_i_3\ : label is "soft_lutpair147";
begin
  \m_payload_i_reg[2]_0\ <= \^m_payload_i_reg[2]_0\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  s_ready_i_reg_1 <= \^s_ready_i_reg_1\;
  s_ready_i_reg_2 <= \^s_ready_i_reg_2\;
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in(0),
      Q => \^s_ready_i_reg_1\,
      R => reset
    );
\gen_arbiter.m_grant_enc_i[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000BFB"
    )
        port map (
      I0 => \^s_ready_i_reg_2\,
      I1 => w_issuing_cnt(0),
      I2 => match,
      I3 => \gen_master_slots[0].w_issuing_cnt_reg[1]\,
      I4 => \gen_arbiter.last_rr_hot_reg[0]\,
      O => \gen_arbiter.m_grant_enc_i_reg[0]\
    );
\gen_arbiter.qual_reg[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => w_issuing_cnt(0),
      I1 => \^s_ready_i_reg_2\,
      O => \gen_arbiter.qual_reg_reg[0]\
    );
\gen_single_thread.accept_cnt[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBF00BFBFBF"
    )
        port map (
      I0 => \^m_payload_i_reg[2]_0\,
      I1 => \gen_single_thread.active_target_enc\(0),
      I2 => \^s_ready_i_reg_0\,
      I3 => st_mr_bvalid(0),
      I4 => \gen_single_thread.active_target_hot\(0),
      I5 => \m_payload_i_reg[2]_1\(0),
      O => \gen_single_thread.accept_cnt_reg[0]\
    );
\m_payload_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^m_payload_i_reg[2]_0\,
      I1 => \^s_ready_i_reg_0\,
      I2 => p_24_in,
      O => \m_payload_i[2]_i_1__1_n_0\
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[2]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[2]_0\,
      R => '0'
    );
\m_valid_i_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_ready_i_reg_1\,
      O => \^m_valid_i_reg_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_bvalid_i_reg\,
      Q => \^s_ready_i_reg_0\,
      R => \^m_valid_i_reg_0\
    );
\s_ready_i_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFF"
    )
        port map (
      I0 => \^s_ready_i_reg_2\,
      I1 => p_21_in,
      I2 => \^s_ready_i_reg_0\,
      I3 => \^s_ready_i_reg_1\,
      O => \s_ready_i_i_1__3_n_0\
    );
\s_ready_i_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A222800080008000"
    )
        port map (
      I0 => \^s_ready_i_reg_0\,
      I1 => \^m_payload_i_reg[2]_0\,
      I2 => \gen_single_thread.active_target_enc_0\(0),
      I3 => s_axi_bready(1),
      I4 => s_axi_bready(0),
      I5 => \gen_single_thread.active_target_enc\(0),
      O => \^s_ready_i_reg_2\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__3_n_0\,
      Q => mi_bready_2,
      R => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_11\ is
  port (
    \m_payload_i_reg[0]_0\ : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.qual_reg_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.qual_reg_reg[0]_0\ : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[1]\ : out STD_LOGIC;
    \gen_arbiter.any_grant_reg\ : out STD_LOGIC;
    s_ready_i_reg_1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \aresetn_d_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    match : in STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[16]\ : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[1]_0\ : in STD_LOGIC;
    \gen_single_thread.active_target_hot_reg[0]\ : in STD_LOGIC;
    match_2 : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_valid_i_reg_0 : in STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[4]\ : in STD_LOGIC;
    \s_axi_awaddr[28]\ : in STD_LOGIC;
    \s_axi_awaddr[26]\ : in STD_LOGIC;
    \gen_single_thread.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_bid[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_11\ : entity is "axi_register_slice_v2_1_15_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_11\ is
  signal \^gen_arbiter.qual_reg_reg[0]_0\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_payload_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[0]_0\ : STD_LOGIC;
  signal m_valid_i_i_2_n_0 : STD_LOGIC;
  signal \s_ready_i_i_1__2_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  \gen_arbiter.qual_reg_reg[0]_0\ <= \^gen_arbiter.qual_reg_reg[0]_0\;
  m_axi_bready(0) <= \^m_axi_bready\(0);
  \m_payload_i_reg[0]_0\ <= \^m_payload_i_reg[0]_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  s_ready_i_reg_1(2 downto 0) <= \^s_ready_i_reg_1\(2 downto 0);
\gen_arbiter.any_grant_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800080008FFF8000"
    )
        port map (
      I0 => \gen_master_slots[0].w_issuing_cnt_reg[4]\,
      I1 => \^s_ready_i_reg_0\,
      I2 => \s_axi_awaddr[28]\,
      I3 => \s_axi_awaddr[26]\,
      I4 => w_issuing_cnt(5),
      I5 => m_valid_i_reg_0,
      O => \gen_arbiter.any_grant_reg\
    );
\gen_arbiter.m_grant_enc_i[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^gen_arbiter.qual_reg_reg[0]_0\,
      I1 => match_2,
      I2 => w_issuing_cnt(5),
      I3 => m_valid_i_reg_0,
      O => \gen_arbiter.qual_reg_reg[1]\
    );
\gen_arbiter.qual_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4700FFFFFFFF"
    )
        port map (
      I0 => \^gen_arbiter.qual_reg_reg[0]_0\,
      I1 => match,
      I2 => \gen_master_slots[2].w_issuing_cnt_reg[16]\,
      I3 => \gen_single_thread.accept_cnt_reg[1]\,
      I4 => Q(0),
      I5 => s_axi_awvalid(0),
      O => \gen_arbiter.qual_reg_reg[0]\(0)
    );
\gen_arbiter.qual_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => w_issuing_cnt(1),
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(3),
      I3 => w_issuing_cnt(2),
      I4 => w_issuing_cnt(4),
      I5 => \^s_ready_i_reg_0\,
      O => \^gen_arbiter.qual_reg_reg[0]_0\
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_payload_i_reg[0]_0\,
      O => \m_payload_i[2]_i_1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[2]_i_1_n_0\,
      D => \m_axi_bid[0]\(0),
      Q => \^s_ready_i_reg_1\(0),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[2]_i_1_n_0\,
      D => \m_axi_bid[0]\(1),
      Q => \^s_ready_i_reg_1\(1),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[2]_i_1_n_0\,
      D => \m_axi_bid[0]\(2),
      Q => \^s_ready_i_reg_1\(2),
      R => '0'
    );
m_valid_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_axi_bready\(0),
      I2 => \gen_single_thread.active_target_hot_reg[0]\,
      O => m_valid_i_i_2_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_i_2_n_0,
      Q => \^m_payload_i_reg[0]_0\,
      R => \aresetn_d_reg[1]\
    );
\s_axi_bvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40404040FF404040"
    )
        port map (
      I0 => \^s_ready_i_reg_1\(2),
      I1 => \gen_single_thread.active_target_hot_3\(0),
      I2 => \^m_payload_i_reg[0]_0\,
      I3 => m_valid_i_reg_1(0),
      I4 => \gen_single_thread.active_target_enc_4\(0),
      I5 => st_mr_bid(0),
      O => s_axi_bvalid(0)
    );
\s_axi_bvalid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \^s_ready_i_reg_1\(2),
      I1 => \gen_single_thread.active_target_hot\(0),
      I2 => \^m_payload_i_reg[0]_0\,
      I3 => m_valid_i_reg_1(0),
      I4 => st_mr_bid(0),
      I5 => \gen_single_thread.active_target_enc_5\(0),
      O => s_axi_bvalid(1)
    );
\s_ready_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FF"
    )
        port map (
      I0 => \^s_ready_i_reg_0\,
      I1 => m_axi_bvalid(0),
      I2 => \^m_payload_i_reg[0]_0\,
      I3 => \aresetn_d_reg[1]_0\,
      O => \s_ready_i_i_1__2_n_0\
    );
s_ready_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A7F7F7FFFFFFFFF"
    )
        port map (
      I0 => \^s_ready_i_reg_1\(2),
      I1 => \gen_single_thread.active_target_hot\(0),
      I2 => s_axi_bready(1),
      I3 => \gen_single_thread.active_target_hot_3\(0),
      I4 => s_axi_bready(0),
      I5 => \^m_payload_i_reg[0]_0\,
      O => \^s_ready_i_reg_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__2_n_0\,
      Q => \^m_axi_bready\(0),
      R => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_9\ is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \aresetn_d_reg[1]\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_9\ : entity is "axi_register_slice_v2_1_15_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_9\ is
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_valid_i_i_1__5_n_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^p_1_in\ : STD_LOGIC;
  signal \^reset\ : STD_LOGIC;
  signal \s_ready_i_i_2__2_n_0\ : STD_LOGIC;
  signal st_mr_bvalid : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  m_axi_bready(0) <= \^m_axi_bready\(0);
  p_0_in(0) <= \^p_0_in\(0);
  p_1_in <= \^p_1_in\;
  reset <= \^reset\;
\aresetn_d[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^reset\
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \^p_0_in\(0),
      R => \^reset\
    );
\m_valid_i_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_axi_bready\(0),
      O => \m_valid_i_i_1__5_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_1__5_n_0\,
      Q => st_mr_bvalid(1),
      R => \aresetn_d_reg[1]\
    );
s_ready_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_0_in\(0),
      O => \^p_1_in\
    );
\s_ready_i_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => st_mr_bvalid(1),
      I2 => \aresetn_d_reg[1]_0\,
      O => \s_ready_i_i_2__2_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_2__2_n_0\,
      Q => \^m_axi_bready\(0),
      R => \^p_1_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2\ is
  port (
    \m_payload_i_reg[34]_0\ : out STD_LOGIC;
    \m_payload_i_reg[34]_1\ : out STD_LOGIC;
    \gen_arbiter.m_grant_enc_i_reg[0]\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[0]\ : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.any_grant_reg\ : out STD_LOGIC;
    \aresetn_d_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    p_15_in : in STD_LOGIC;
    match_1 : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[4]\ : in STD_LOGIC;
    \gen_arbiter.qual_reg_reg[0]_0\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[34]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_araddr[28]\ : in STD_LOGIC;
    \s_axi_araddr[26]\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc_reg[1]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_enc_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_20_in : in STD_LOGIC;
    p_17_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2\ : entity is "axi_register_slice_v2_1_15_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gen_arbiter.qual_reg_reg[0]\ : STD_LOGIC;
  signal \^m_payload_i_reg[34]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[34]_1\ : STD_LOGIC;
  signal m_valid_i0 : STD_LOGIC;
  signal \m_valid_i_i_2__1_n_0\ : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal \s_ready_i_i_1__4_n_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 35 downto 34 );
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[0]_i_3__0\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \m_valid_i_i_1__0\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \s_axi_rlast[0]_INST_0\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \s_ready_i_i_1__4\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \skid_buffer[34]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \skid_buffer[35]_i_1\ : label is "soft_lutpair148";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \gen_arbiter.qual_reg_reg[0]\ <= \^gen_arbiter.qual_reg_reg[0]\;
  \m_payload_i_reg[34]_0\ <= \^m_payload_i_reg[34]_0\;
  \m_payload_i_reg[34]_1\ <= \^m_payload_i_reg[34]_1\;
\gen_arbiter.any_grant_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070707070707070"
    )
        port map (
      I0 => \s_axi_araddr[28]\,
      I1 => \s_axi_araddr[26]\,
      I2 => r_issuing_cnt(0),
      I3 => \gen_single_thread.active_target_enc_reg[1]\,
      I4 => \^m_payload_i_reg[34]_0\,
      I5 => \^q\(0),
      O => \gen_arbiter.any_grant_reg\
    );
\gen_arbiter.m_grant_enc_i[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000051FB"
    )
        port map (
      I0 => match_1,
      I1 => r_issuing_cnt(0),
      I2 => \^gen_arbiter.qual_reg_reg[0]\,
      I3 => \gen_master_slots[0].r_issuing_cnt_reg[4]\,
      I4 => \gen_arbiter.qual_reg_reg[0]_0\,
      O => \gen_arbiter.m_grant_enc_i_reg[0]\
    );
\gen_arbiter.qual_reg[0]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^m_payload_i_reg[34]_0\,
      I2 => \gen_single_thread.active_target_enc_reg[1]\,
      O => \^gen_arbiter.qual_reg_reg[0]\
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808080FFFFFFFF"
    )
        port map (
      I0 => s_axi_rready(1),
      I1 => \gen_single_thread.active_target_enc_3\(0),
      I2 => \^q\(1),
      I3 => \gen_single_thread.active_target_enc_2\(0),
      I4 => s_axi_rready(0),
      I5 => \^m_payload_i_reg[34]_0\,
      O => p_1_in_0
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(34),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(35),
      Q => \^q\(1),
      R => '0'
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^m_payload_i_reg[34]_1\,
      I1 => p_15_in,
      I2 => \m_valid_i_i_2__1_n_0\,
      O => m_valid_i0
    );
\m_valid_i_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AAA2AAA2AAA2A"
    )
        port map (
      I0 => \^m_payload_i_reg[34]_0\,
      I1 => s_axi_rready(0),
      I2 => \gen_single_thread.active_target_enc_2\(0),
      I3 => \^q\(1),
      I4 => \gen_single_thread.active_target_enc_3\(0),
      I5 => s_axi_rready(1),
      O => \m_valid_i_i_2__1_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_payload_i_reg[34]_0\,
      R => \aresetn_d_reg[1]\
    );
\s_axi_rlast[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_single_thread.active_target_enc_2\(0),
      I2 => \m_payload_i_reg[34]_2\(0),
      O => s_axi_rlast(0)
    );
\s_axi_rlast[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_single_thread.active_target_enc_3\(0),
      I2 => \m_payload_i_reg[34]_2\(0),
      O => s_axi_rlast(1)
    );
\s_ready_i_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => \^m_payload_i_reg[34]_1\,
      I1 => p_15_in,
      I2 => \m_valid_i_i_2__1_n_0\,
      O => \s_ready_i_i_1__4_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__4_n_0\,
      Q => \^m_payload_i_reg[34]_1\,
      R => p_1_in
    );
\skid_buffer[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_17_in,
      I1 => \^m_payload_i_reg[34]_1\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\skid_buffer[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_20_in,
      I1 => \^m_payload_i_reg[34]_1\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => skid_buffer(34),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => skid_buffer(35),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2_10\ is
  port (
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2_10\ : entity is "axi_register_slice_v2_1_15_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2_10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2_10\ is
  signal \^m_axi_rready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_valid_i0__0\ : STD_LOGIC;
  signal \s_ready_i_i_1__6_n_0\ : STD_LOGIC;
  signal st_mr_rvalid : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  m_axi_rready(0) <= \^m_axi_rready\(0);
m_valid_i0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^m_axi_rready\(0),
      I1 => st_mr_rvalid(1),
      I2 => m_axi_rvalid(0),
      O => \m_valid_i0__0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i0__0\,
      Q => st_mr_rvalid(1),
      R => \aresetn_d_reg[1]\
    );
\s_ready_i_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => m_axi_rvalid(0),
      I1 => \^m_axi_rready\(0),
      I2 => st_mr_rvalid(1),
      O => \s_ready_i_i_1__6_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__6_n_0\,
      Q => \^m_axi_rready\(0),
      R => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2_12\ is
  port (
    \m_axi_rready[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \gen_arbiter.qual_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.qual_reg_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_single_thread.accept_cnt_reg[0]\ : out STD_LOGIC;
    s_axi_rvalid_0_sp_1 : out STD_LOGIC;
    \gen_arbiter.any_grant_reg\ : out STD_LOGIC;
    \gen_arbiter.any_grant_reg_0\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[1]_0\ : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : out STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[0]_0\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[34]_0\ : in STD_LOGIC;
    match_1 : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[1]\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot_reg[0]\ : in STD_LOGIC;
    aa_mi_arvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_target_hot_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[35]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[4]\ : in STD_LOGIC;
    \s_axi_araddr[26]\ : in STD_LOGIC;
    \s_axi_araddr[28]\ : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[1]_0\ : in STD_LOGIC;
    match_7 : in STD_LOGIC;
    \gen_single_thread.active_target_hot_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[1]\ : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2_12\ : entity is "axi_register_slice_v2_1_15_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2_12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2_12\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gen_arbiter.qual_reg_reg[0]\ : STD_LOGIC;
  signal \^gen_arbiter.qual_reg_reg[1]_0\ : STD_LOGIC;
  signal \gen_master_slots[0].r_issuing_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \^m_axi_rready[0]\ : STD_LOGIC;
  signal m_valid_i0 : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_rvalid_0_sn_1 : STD_LOGIC;
  signal \s_ready_i_i_1__5_n_0\ : STD_LOGIC;
  signal \s_ready_i_i_2__1_n_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal st_mr_rmesg : STD_LOGIC_VECTOR ( 34 downto 3 );
  signal st_mr_rvalid : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.any_grant_i_11\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \gen_arbiter.qual_reg[0]_i_2__0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[2]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[3]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[4]_i_3\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[1]_i_3__1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \m_payload_i[0]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1__0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_2\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_INST_0\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \s_axi_rdata[10]_INST_0\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \s_axi_rdata[11]_INST_0\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \s_axi_rdata[12]_INST_0\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \s_axi_rdata[13]_INST_0\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \s_axi_rdata[14]_INST_0\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \s_axi_rdata[15]_INST_0\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_INST_0\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_INST_0\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_INST_0\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \s_axi_rdata[19]_INST_0\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_INST_0\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \s_axi_rdata[20]_INST_0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \s_axi_rdata[21]_INST_0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \s_axi_rdata[22]_INST_0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \s_axi_rdata[23]_INST_0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \s_axi_rdata[24]_INST_0\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \s_axi_rdata[25]_INST_0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \s_axi_rdata[26]_INST_0\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \s_axi_rdata[27]_INST_0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \s_axi_rdata[28]_INST_0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \s_axi_rdata[29]_INST_0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_INST_0\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \s_axi_rdata[30]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_INST_0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \s_axi_rdata[32]_INST_0\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \s_axi_rdata[33]_INST_0\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \s_axi_rdata[34]_INST_0\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \s_axi_rdata[35]_INST_0\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \s_axi_rdata[36]_INST_0\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \s_axi_rdata[37]_INST_0\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \s_axi_rdata[38]_INST_0\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \s_axi_rdata[39]_INST_0\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_INST_0\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \s_axi_rdata[40]_INST_0\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \s_axi_rdata[41]_INST_0\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \s_axi_rdata[42]_INST_0\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \s_axi_rdata[43]_INST_0\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \s_axi_rdata[44]_INST_0\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \s_axi_rdata[45]_INST_0\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \s_axi_rdata[46]_INST_0\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \s_axi_rdata[47]_INST_0\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \s_axi_rdata[48]_INST_0\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \s_axi_rdata[49]_INST_0\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \s_axi_rdata[4]_INST_0\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \s_axi_rdata[50]_INST_0\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \s_axi_rdata[51]_INST_0\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \s_axi_rdata[52]_INST_0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \s_axi_rdata[53]_INST_0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \s_axi_rdata[54]_INST_0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \s_axi_rdata[55]_INST_0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \s_axi_rdata[56]_INST_0\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \s_axi_rdata[57]_INST_0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \s_axi_rdata[58]_INST_0\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \s_axi_rdata[59]_INST_0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \s_axi_rdata[5]_INST_0\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \s_axi_rdata[60]_INST_0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \s_axi_rdata[61]_INST_0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \s_axi_rdata[62]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \s_axi_rdata[63]_INST_0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_INST_0\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_INST_0\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \s_axi_rdata[8]_INST_0\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \s_axi_rdata[9]_INST_0\ : label is "soft_lutpair137";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gen_arbiter.qual_reg_reg[0]\ <= \^gen_arbiter.qual_reg_reg[0]\;
  \gen_arbiter.qual_reg_reg[1]_0\ <= \^gen_arbiter.qual_reg_reg[1]_0\;
  \m_axi_rready[0]\ <= \^m_axi_rready[0]\;
  s_axi_rvalid(0) <= \^s_axi_rvalid\(0);
  s_axi_rvalid_0_sp_1 <= s_axi_rvalid_0_sn_1;
\gen_arbiter.any_grant_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      I2 => \m_payload_i_reg[35]_0\(0),
      I3 => s_axi_rready(0),
      O => \gen_arbiter.any_grant_reg\
    );
\gen_arbiter.any_grant_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00000000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => st_mr_rvalid(0),
      I2 => \gen_single_thread.active_target_hot_reg[0]\,
      I3 => \gen_master_slots[0].r_issuing_cnt_reg[4]\,
      I4 => \s_axi_araddr[26]\,
      I5 => \s_axi_araddr[28]\,
      O => \gen_arbiter.any_grant_reg_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA30"
    )
        port map (
      I0 => \^gen_arbiter.qual_reg_reg[0]\,
      I1 => \m_payload_i_reg[34]_0\,
      I2 => r_issuing_cnt(5),
      I3 => match_7,
      O => \^gen_arbiter.qual_reg_reg[1]_0\
    );
\gen_arbiter.qual_reg[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55CF0000FFFFFFFF"
    )
        port map (
      I0 => \^gen_arbiter.qual_reg_reg[0]\,
      I1 => \m_payload_i_reg[34]_0\,
      I2 => r_issuing_cnt(5),
      I3 => match_1,
      I4 => \gen_single_thread.accept_cnt_reg[1]\,
      I5 => s_axi_arvalid(0),
      O => \gen_arbiter.qual_reg_reg[1]\(0)
    );
\gen_arbiter.qual_reg[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444444"
    )
        port map (
      I0 => \gen_master_slots[0].r_issuing_cnt_reg[1]\,
      I1 => r_issuing_cnt(4),
      I2 => \gen_single_thread.active_target_hot_reg[0]\,
      I3 => st_mr_rvalid(0),
      I4 => \^q\(2),
      O => \^gen_arbiter.qual_reg_reg[0]\
    );
\gen_arbiter.qual_reg[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^gen_arbiter.qual_reg_reg[1]_0\,
      I1 => \gen_single_thread.accept_cnt_reg[1]_0\,
      I2 => s_axi_arvalid(1),
      O => \gen_arbiter.qual_reg_reg[1]\(1)
    );
\gen_master_slots[0].r_issuing_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gen_master_slots[0].r_issuing_cnt[4]_i_5_n_0\,
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      O => D(0)
    );
\gen_master_slots[0].r_issuing_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => r_issuing_cnt(2),
      I1 => r_issuing_cnt(0),
      I2 => r_issuing_cnt(1),
      I3 => \gen_master_slots[0].r_issuing_cnt[4]_i_5_n_0\,
      O => D(1)
    );
\gen_master_slots[0].r_issuing_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => r_issuing_cnt(2),
      I1 => r_issuing_cnt(0),
      I2 => r_issuing_cnt(1),
      I3 => \gen_master_slots[0].r_issuing_cnt[4]_i_5_n_0\,
      I4 => r_issuing_cnt(3),
      O => D(2)
    );
\gen_master_slots[0].r_issuing_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFE80000001"
    )
        port map (
      I0 => r_issuing_cnt(2),
      I1 => r_issuing_cnt(0),
      I2 => r_issuing_cnt(1),
      I3 => \gen_master_slots[0].r_issuing_cnt[4]_i_5_n_0\,
      I4 => r_issuing_cnt(3),
      I5 => r_issuing_cnt(4),
      O => D(3)
    );
\gen_master_slots[0].r_issuing_cnt[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => st_mr_rvalid(0),
      I2 => \gen_single_thread.active_target_hot_reg[0]\,
      O => \gen_master_slots[0].r_issuing_cnt_reg[0]\
    );
\gen_master_slots[0].r_issuing_cnt[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00000000000000"
    )
        port map (
      I0 => \gen_single_thread.active_target_hot_reg[0]\,
      I1 => st_mr_rvalid(0),
      I2 => \^q\(2),
      I3 => aa_mi_arvalid,
      I4 => m_axi_arready(0),
      I5 => \gen_arbiter.m_target_hot_i_reg[0]\(0),
      O => \gen_master_slots[0].r_issuing_cnt[4]_i_5_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => \m_payload_i_reg[35]_0\(0),
      I2 => \gen_single_thread.active_target_enc_0\(0),
      I3 => \^q\(2),
      I4 => s_axi_rvalid_0_sn_1,
      O => \gen_single_thread.accept_cnt_reg[0]\
    );
\gen_single_thread.accept_cnt[1]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => s_axi_rready(1),
      I1 => \m_payload_i_reg[35]_0\(0),
      I2 => \gen_single_thread.active_target_enc\(0),
      I3 => \^q\(2),
      I4 => \^s_axi_rvalid\(0),
      O => \gen_single_thread.accept_cnt_reg[0]_0\
    );
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => skid_buffer(0)
    );
\m_payload_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => skid_buffer(10)
    );
\m_payload_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => skid_buffer(11)
    );
\m_payload_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => skid_buffer(12)
    );
\m_payload_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => skid_buffer(13)
    );
\m_payload_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => skid_buffer(14)
    );
\m_payload_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => skid_buffer(15)
    );
\m_payload_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => skid_buffer(16)
    );
\m_payload_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => skid_buffer(17)
    );
\m_payload_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => skid_buffer(18)
    );
\m_payload_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => skid_buffer(19)
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => skid_buffer(1)
    );
\m_payload_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => skid_buffer(20)
    );
\m_payload_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => skid_buffer(21)
    );
\m_payload_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => skid_buffer(22)
    );
\m_payload_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => skid_buffer(23)
    );
\m_payload_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => skid_buffer(24)
    );
\m_payload_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => skid_buffer(25)
    );
\m_payload_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => skid_buffer(26)
    );
\m_payload_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => skid_buffer(27)
    );
\m_payload_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => skid_buffer(28)
    );
\m_payload_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => skid_buffer(29)
    );
\m_payload_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => skid_buffer(2)
    );
\m_payload_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => skid_buffer(30)
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => skid_buffer(31)
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => skid_buffer(32)
    );
\m_payload_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => skid_buffer(33)
    );
\m_payload_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rlast(0),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\m_payload_i[35]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808080FFFFFFFF"
    )
        port map (
      I0 => s_axi_rready(1),
      I1 => \gen_single_thread.active_target_hot_8\(0),
      I2 => \^q\(3),
      I3 => \gen_single_thread.active_target_hot_6\(0),
      I4 => s_axi_rready(0),
      I5 => st_mr_rvalid(0),
      O => p_1_in_0
    );
\m_payload_i[35]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(0),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => skid_buffer(3)
    );
\m_payload_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => skid_buffer(4)
    );
\m_payload_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => skid_buffer(5)
    );
\m_payload_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => skid_buffer(6)
    );
\m_payload_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => skid_buffer(7)
    );
\m_payload_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => skid_buffer(8)
    );
\m_payload_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^m_axi_rready[0]\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => skid_buffer(9)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(0),
      Q => st_mr_rmesg(3),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(10),
      Q => st_mr_rmesg(13),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(11),
      Q => st_mr_rmesg(14),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(12),
      Q => st_mr_rmesg(15),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(13),
      Q => st_mr_rmesg(16),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(14),
      Q => st_mr_rmesg(17),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(15),
      Q => st_mr_rmesg(18),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(16),
      Q => st_mr_rmesg(19),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(17),
      Q => st_mr_rmesg(20),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(18),
      Q => st_mr_rmesg(21),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(19),
      Q => st_mr_rmesg(22),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(1),
      Q => st_mr_rmesg(4),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(20),
      Q => st_mr_rmesg(23),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(21),
      Q => st_mr_rmesg(24),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(22),
      Q => st_mr_rmesg(25),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(23),
      Q => st_mr_rmesg(26),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(24),
      Q => st_mr_rmesg(27),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(25),
      Q => st_mr_rmesg(28),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(26),
      Q => st_mr_rmesg(29),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(27),
      Q => st_mr_rmesg(30),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(28),
      Q => st_mr_rmesg(31),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(29),
      Q => st_mr_rmesg(32),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(2),
      Q => st_mr_rmesg(5),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(30),
      Q => st_mr_rmesg(33),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(31),
      Q => st_mr_rmesg(34),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(32),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(33),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(34),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(35),
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(3),
      Q => st_mr_rmesg(6),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(4),
      Q => st_mr_rmesg(7),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(5),
      Q => st_mr_rmesg(8),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(6),
      Q => st_mr_rmesg(9),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(7),
      Q => st_mr_rmesg(10),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(8),
      Q => st_mr_rmesg(11),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in_0,
      D => skid_buffer(9),
      Q => st_mr_rmesg(12),
      R => '0'
    );
\m_valid_i_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^m_axi_rready[0]\,
      I1 => m_axi_rvalid(0),
      I2 => \s_ready_i_i_2__1_n_0\,
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => st_mr_rvalid(0),
      R => \aresetn_d_reg[1]\
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(3),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(13),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(14),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(15),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(16),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(17),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(18),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(19),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(20),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(21),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(22),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(4),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(23),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(24),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(25),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(26),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(27),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(28),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(29),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(30),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(31),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(32),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(29)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(5),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(33),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(34),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(31)
    );
\s_axi_rdata[32]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(3),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(32)
    );
\s_axi_rdata[33]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(4),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(33)
    );
\s_axi_rdata[34]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(5),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(34)
    );
\s_axi_rdata[35]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(6),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(35)
    );
\s_axi_rdata[36]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(7),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(36)
    );
\s_axi_rdata[37]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(8),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(37)
    );
\s_axi_rdata[38]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(9),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(38)
    );
\s_axi_rdata[39]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(10),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(39)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(6),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(3)
    );
\s_axi_rdata[40]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(11),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(40)
    );
\s_axi_rdata[41]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(12),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(41)
    );
\s_axi_rdata[42]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(13),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(42)
    );
\s_axi_rdata[43]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(14),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(43)
    );
\s_axi_rdata[44]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(15),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(44)
    );
\s_axi_rdata[45]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(16),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(45)
    );
\s_axi_rdata[46]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(17),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(46)
    );
\s_axi_rdata[47]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(18),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(47)
    );
\s_axi_rdata[48]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(19),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(48)
    );
\s_axi_rdata[49]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(20),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(49)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(7),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[50]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(21),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(50)
    );
\s_axi_rdata[51]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(22),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(51)
    );
\s_axi_rdata[52]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(23),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(52)
    );
\s_axi_rdata[53]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(24),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(53)
    );
\s_axi_rdata[54]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(25),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(54)
    );
\s_axi_rdata[55]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(26),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(55)
    );
\s_axi_rdata[56]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(27),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(56)
    );
\s_axi_rdata[57]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(28),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(57)
    );
\s_axi_rdata[58]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(29),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(58)
    );
\s_axi_rdata[59]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(30),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(59)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(8),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[60]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(31),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(60)
    );
\s_axi_rdata[61]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(32),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(61)
    );
\s_axi_rdata[62]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(33),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(62)
    );
\s_axi_rdata[63]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(34),
      I1 => \gen_single_thread.active_target_enc\(0),
      O => s_axi_rdata(63)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(9),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(10),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(11),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st_mr_rmesg(12),
      I1 => \gen_single_thread.active_target_enc_0\(0),
      O => s_axi_rdata(9)
    );
\s_axi_rvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40404040FF404040"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_single_thread.active_target_hot_6\(0),
      I2 => st_mr_rvalid(0),
      I3 => \gen_single_thread.active_target_enc_0\(0),
      I4 => m_valid_i_reg_0(0),
      I5 => \m_payload_i_reg[35]_0\(1),
      O => s_axi_rvalid_0_sn_1
    );
\s_axi_rvalid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_single_thread.active_target_hot_8\(0),
      I2 => st_mr_rvalid(0),
      I3 => \gen_single_thread.active_target_enc\(0),
      I4 => m_valid_i_reg_0(0),
      I5 => \m_payload_i_reg[35]_0\(1),
      O => \^s_axi_rvalid\(0)
    );
\s_ready_i_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => \^m_axi_rready[0]\,
      I1 => m_axi_rvalid(0),
      I2 => \s_ready_i_i_2__1_n_0\,
      O => \s_ready_i_i_1__5_n_0\
    );
\s_ready_i_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002AAA2AAA2AAA2A"
    )
        port map (
      I0 => st_mr_rvalid(0),
      I1 => s_axi_rready(0),
      I2 => \gen_single_thread.active_target_hot_6\(0),
      I3 => \^q\(3),
      I4 => \gen_single_thread.active_target_hot_8\(0),
      I5 => s_axi_rready(1),
      O => \s_ready_i_i_2__1_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__5_n_0\,
      Q => \^m_axi_rready[0]\,
      R => p_1_in
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rresp(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rresp(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rlast(0),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rid(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^m_axi_rready[0]\,
      D => m_axi_rdata(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[1]\ : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wready[0]\ : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sa_wm_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    in1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]_0\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_avalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.s_axi_wready_i_reg\ : in STD_LOGIC;
    \storage_data1_reg[1]_1\ : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC;
    \storage_data1_reg[1]_2\ : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC;
    storage_data2 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_target_hot_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux is
begin
\gen_wmux.wmux_aw_fifo\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized0\
     port map (
      D(0) => D(0),
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      SS(0) => SS(0),
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      \gen_arbiter.m_target_hot_i_reg[0]\(0) => \gen_arbiter.m_target_hot_i_reg[0]\(0),
      \gen_arbiter.m_target_hot_i_reg[0]_0\(0) => \gen_arbiter.m_target_hot_i_reg[0]_0\(0),
      \gen_axi.s_axi_wready_i_reg\ => \gen_axi.s_axi_wready_i_reg\,
      \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\(3 downto 0) => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\(3 downto 0),
      \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]_0\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]_0\,
      \gen_rep[0].fifoaddr_reg[1]_0\ => \gen_rep[0].fifoaddr_reg[1]\,
      \gen_rep[0].fifoaddr_reg[1]_1\ => \gen_rep[0].fifoaddr_reg[1]_0\,
      in1 => in1,
      m_avalid => m_avalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid(0) => m_axi_wvalid(0),
      \m_ready_d_reg[0]\(0) => \m_ready_d_reg[0]\(0),
      m_select_enc_0 => m_select_enc_0,
      m_valid_i_reg_0 => m_valid_i_reg,
      \out\(2 downto 0) => \out\(2 downto 0),
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      \s_axi_wready[0]\ => \s_axi_wready[0]\,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      sa_wm_awvalid(0) => sa_wm_awvalid(0),
      \storage_data1_reg[0]_0\ => m_select_enc,
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]\,
      \storage_data1_reg[1]\ => \storage_data1_reg[1]\,
      \storage_data1_reg[1]_0\ => \storage_data1_reg[1]_0\,
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]_1\,
      \storage_data1_reg[1]_2\ => \storage_data1_reg[1]_2\,
      storage_data2 => storage_data2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux__parameterized0\ is
  port (
    in1 : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux__parameterized0\ : entity is "axi_crossbar_v2_1_16_wdata_mux";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux__parameterized0\ is
begin
\gen_wmux.wmux_aw_fifo\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized1\
     port map (
      aclk => aclk,
      in1 => in1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo is
  port (
    \gen_single_thread.active_target_enc_reg[1]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : out STD_LOGIC;
    \m_ready_d_reg[1]\ : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    out0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_rep[0].fifoaddr_reg[1]_0\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[1]_1\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn_d_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]_1\ : in STD_LOGIC;
    m_valid_i_reg_0 : in STD_LOGIC;
    \m_ready_d_reg[1]_2\ : in STD_LOGIC;
    match : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    ss_wr_awvalid_1 : in STD_LOGIC;
    m_select_enc : in STD_LOGIC;
    \gen_axi.s_axi_wready_i_reg\ : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC;
    m_valid_i_reg_2 : in STD_LOGIC;
    m_valid_i_reg_3 : in STD_LOGIC;
    \storage_data1_reg[1]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo is
  signal \/FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fifoaddr_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_rep[0].fifoaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_rep[0].fifoaddr_reg[1]_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[1].srl_nx1_n_2\ : STD_LOGIC;
  signal \^m_ready_d_reg[1]\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal m_valid_i_i_2_n_0 : STD_LOGIC;
  signal \^out0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \^out0\ : signal is "yes";
  signal p_0_out : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_i_1__1_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \^storage_data1_reg[1]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_5__0\ : label is "soft_lutpair167";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_2__1\ : label is "soft_lutpair167";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
begin
  SR(0) <= \^sr\(0);
  \gen_rep[0].fifoaddr_reg[1]_0\ <= \^gen_rep[0].fifoaddr_reg[1]_0\;
  \m_ready_d_reg[1]\ <= \^m_ready_d_reg[1]\;
  out0(1 downto 0) <= \^out0\(1 downto 0);
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  \storage_data1_reg[1]_0\ <= \^storage_data1_reg[1]_0\;
\/FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
        port map (
      I0 => \^out0\(1),
      I1 => m_valid_i_reg_0,
      I2 => Q(0),
      I3 => s_axi_awvalid(0),
      I4 => \^out0\(0),
      O => \/FSM_onehot_state[0]_i_1_n_0\
    );
\/FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888B888888"
    )
        port map (
      I0 => ss_wr_awvalid_1,
      I1 => \^out0\(1),
      I2 => push,
      I3 => \FSM_onehot_state[3]_i_5__0_n_0\,
      I4 => \FSM_onehot_state[2]_i_2_n_0\,
      I5 => \^out0\(0),
      O => \/FSM_onehot_state[1]_i_1_n_0\
    );
\/FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444474777777"
    )
        port map (
      I0 => ss_wr_awvalid_1,
      I1 => \^out0\(1),
      I2 => push,
      I3 => \FSM_onehot_state[3]_i_5__0_n_0\,
      I4 => \FSM_onehot_state[2]_i_2_n_0\,
      I5 => \^out0\(0),
      O => \/FSM_onehot_state[2]_i_1_n_0\
    );
\/FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A88"
    )
        port map (
      I0 => \^out0\(0),
      I1 => m_valid_i_reg_0,
      I2 => Q(0),
      I3 => s_axi_awvalid(0),
      I4 => \^out0\(1),
      O => \/FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => s_axi_wvalid(0),
      I2 => \^s_ready_i_reg_0\,
      I3 => s_axi_wlast(0),
      I4 => m_valid_i_reg_1,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEFEEEEEEEEEE"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_3__0_n_0\,
      I1 => \FSM_onehot_state[3]_i_4__0_n_0\,
      I2 => push,
      I3 => \FSM_onehot_state[3]_i_5__0_n_0\,
      I4 => m_valid_i_reg_0,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8288888888888888"
    )
        port map (
      I0 => \^out0\(0),
      I1 => ss_wr_awvalid_1,
      I2 => m_valid_i_reg_1,
      I3 => s_axi_wlast(0),
      I4 => \^s_ready_i_reg_0\,
      I5 => s_axi_wvalid(0),
      O => \FSM_onehot_state[3]_i_3__0_n_0\
    );
\FSM_onehot_state[3]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^out0\(1),
      I1 => Q(0),
      I2 => s_axi_awvalid(0),
      O => \FSM_onehot_state[3]_i_4__0_n_0\
    );
\FSM_onehot_state[3]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => fifoaddr(1),
      O => \FSM_onehot_state[3]_i_5__0_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \/FSM_onehot_state[0]_i_1_n_0\,
      Q => \^out0\(1),
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \/FSM_onehot_state[1]_i_1_n_0\,
      Q => \^out0\(0),
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \/FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \/FSM_onehot_state[3]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \^sr\(0)
    );
areset_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => aresetn_d_reg(0),
      Q => \^sr\(0),
      R => '0'
    );
\gen_rep[0].fifoaddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000800C4CCC4CC"
    )
        port map (
      I0 => \^m_ready_d_reg[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => Q(0),
      I3 => s_axi_awvalid(0),
      I4 => \^out0\(0),
      I5 => m_valid_i_reg_0,
      O => p_0_out
    );
\gen_rep[0].fifoaddr[1]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => push,
      I1 => fifoaddr(0),
      I2 => fifoaddr(1),
      O => fifoaddr_i(1)
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[0]_i_1_n_0\,
      Q => fifoaddr(0),
      S => aresetn_d_reg(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => fifoaddr_i(1),
      Q => fifoaddr(1),
      S => aresetn_d_reg(0)
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => s_axi_wlast(0),
      O => \^gen_rep[0].fifoaddr_reg[1]_0\
    );
\gen_srls[0].gen_rep[1].srl_nx1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl
     port map (
      Q(1 downto 0) => fifoaddr(1 downto 0),
      aclk => aclk,
      \gen_single_thread.active_target_enc_reg[1]\ => \gen_single_thread.active_target_enc_reg[1]\,
      \m_ready_d_reg[1]\ => \m_ready_d_reg[1]_1\,
      \m_ready_d_reg[1]_0\ => \m_ready_d_reg[1]_2\,
      m_valid_i_reg => m_valid_i_reg_0,
      m_valid_i_reg_0 => m_valid_i_reg_1,
      m_valid_i_reg_1 => \^gen_rep[0].fifoaddr_reg[1]_0\,
      match => match,
      out0(1) => \^out0\(0),
      out0(0) => \FSM_onehot_state_reg_n_0_[3]\,
      push => push,
      s_ready_i_reg => \^m_ready_d_reg[1]\,
      ss_wr_awvalid_1 => ss_wr_awvalid_1,
      \storage_data1_reg[1]\ => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      \storage_data1_reg[1]_0\ => \^storage_data1_reg[1]_0\
    );
\m_axi_wvalid[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF7FFF7FFF700"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \^storage_data1_reg[1]_0\,
      I3 => m_select_enc_0,
      I4 => m_valid_i_reg_3,
      I5 => \storage_data1_reg[1]_1\,
      O => \gen_rep[0].fifoaddr_reg[1]_1\
    );
\m_ready_d[1]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d_reg[1]\,
      I2 => Q(0),
      O => \m_ready_d_reg[1]_0\(0)
    );
m_valid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEFEEEEEEEEEE"
    )
        port map (
      I0 => m_valid_i_i_2_n_0,
      I1 => \FSM_onehot_state[3]_i_4__0_n_0\,
      I2 => push,
      I3 => \FSM_onehot_state[3]_i_5__0_n_0\,
      I4 => m_valid_i_reg_0,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => m_valid_i_i_1_n_0
    );
m_valid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA00000000"
    )
        port map (
      I0 => \^out0\(0),
      I1 => m_valid_i_reg_1,
      I2 => s_axi_wlast(0),
      I3 => \^s_ready_i_reg_0\,
      I4 => s_axi_wvalid(0),
      I5 => ss_wr_awvalid_1,
      O => m_valid_i_i_2_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => m_valid_i_i_1_n_0,
      Q => \^s_ready_i_reg_0\,
      R => \^sr\(0)
    );
\s_axi_wready[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800080008A0A8000"
    )
        port map (
      I0 => \^s_ready_i_reg_0\,
      I1 => m_select_enc,
      I2 => \^storage_data1_reg[1]_0\,
      I3 => \gen_axi.s_axi_wready_i_reg\,
      I4 => m_select_enc_0,
      I5 => m_valid_i_reg_2,
      O => s_axi_wready(0)
    );
\s_ready_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFEEEEEEEE"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \^sr\(0),
      I2 => push,
      I3 => fifoaddr(1),
      I4 => fifoaddr(0),
      I5 => \^m_ready_d_reg[1]\,
      O => \s_ready_i_i_1__1_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__1_n_0\,
      Q => \^m_ready_d_reg[1]\,
      R => aresetn_d_reg(0)
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      Q => \^storage_data1_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo_6 is
  port (
    \gen_single_thread.active_target_enc_reg[1]\ : out STD_LOGIC;
    \m_ready_d_reg[1]\ : out STD_LOGIC;
    \storage_data1_reg[1]_0\ : out STD_LOGIC;
    out0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_ready_d_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.write_cs_reg[0]\ : out STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    in1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]_1\ : in STD_LOGIC;
    \m_ready_d_reg[1]_2\ : in STD_LOGIC;
    match : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : in STD_LOGIC;
    ss_wr_awvalid_0 : in STD_LOGIC;
    m_select_enc : in STD_LOGIC;
    \gen_axi.s_axi_wready_i_reg\ : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC;
    m_valid_i_reg_1 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_2 : in STD_LOGIC;
    \storage_data1_reg[1]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo_6 : entity is "axi_data_fifo_v2_1_14_axic_reg_srl_fifo";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo_6 is
  signal \/FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fifoaddr_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_rep[0].fifoaddr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[1].srl_nx1_n_2\ : STD_LOGIC;
  signal m_avalid : STD_LOGIC;
  signal \^m_ready_d_reg[1]\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal m_valid_i_i_2_n_0 : STD_LOGIC;
  signal \^out0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \^out0\ : signal is "yes";
  signal p_0_out : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_i_1__0_n_0\ : STD_LOGIC;
  signal \^storage_data1_reg[1]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_5\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_6__0\ : label is "soft_lutpair159";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_2\ : label is "soft_lutpair160";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute SOFT_HLUTNM of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_2__0\ : label is "soft_lutpair159";
begin
  \m_ready_d_reg[1]\ <= \^m_ready_d_reg[1]\;
  out0(1 downto 0) <= \^out0\(1 downto 0);
  \storage_data1_reg[1]_0\ <= \^storage_data1_reg[1]_0\;
\/FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
        port map (
      I0 => \^out0\(1),
      I1 => \FSM_onehot_state[3]_i_6__0_n_0\,
      I2 => Q(0),
      I3 => s_axi_awvalid(0),
      I4 => \^out0\(0),
      O => \/FSM_onehot_state[0]_i_1_n_0\
    );
\/FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888B888888"
    )
        port map (
      I0 => ss_wr_awvalid_0,
      I1 => \^out0\(1),
      I2 => push,
      I3 => \FSM_onehot_state[3]_i_5_n_0\,
      I4 => \FSM_onehot_state[2]_i_2__0_n_0\,
      I5 => \^out0\(0),
      O => \/FSM_onehot_state[1]_i_1_n_0\
    );
\/FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444474777777"
    )
        port map (
      I0 => ss_wr_awvalid_0,
      I1 => \^out0\(1),
      I2 => push,
      I3 => \FSM_onehot_state[3]_i_5_n_0\,
      I4 => \FSM_onehot_state[2]_i_2__0_n_0\,
      I5 => \^out0\(0),
      O => \/FSM_onehot_state[2]_i_1_n_0\
    );
\/FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A88"
    )
        port map (
      I0 => \^out0\(0),
      I1 => \FSM_onehot_state[3]_i_6__0_n_0\,
      I2 => Q(0),
      I3 => s_axi_awvalid(0),
      I4 => \^out0\(1),
      O => \/FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => m_valid_i_reg_0,
      I2 => s_axi_wvalid(0),
      I3 => m_avalid,
      I4 => s_axi_wlast(0),
      O => \FSM_onehot_state[2]_i_2__0_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEFEEEEEEEEEE"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_3_n_0\,
      I1 => \FSM_onehot_state[3]_i_4_n_0\,
      I2 => push,
      I3 => \FSM_onehot_state[3]_i_5_n_0\,
      I4 => \FSM_onehot_state[3]_i_6__0_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888828888888"
    )
        port map (
      I0 => \^out0\(0),
      I1 => ss_wr_awvalid_0,
      I2 => s_axi_wlast(0),
      I3 => m_avalid,
      I4 => s_axi_wvalid(0),
      I5 => m_valid_i_reg_0,
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^out0\(1),
      I1 => Q(0),
      I2 => s_axi_awvalid(0),
      O => \FSM_onehot_state[3]_i_4_n_0\
    );
\FSM_onehot_state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => fifoaddr(1),
      O => \FSM_onehot_state[3]_i_5_n_0\
    );
\FSM_onehot_state[3]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => s_axi_wlast(0),
      I1 => m_avalid,
      I2 => s_axi_wvalid(0),
      I3 => m_valid_i_reg_0,
      O => \FSM_onehot_state[3]_i_6__0_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \/FSM_onehot_state[0]_i_1_n_0\,
      Q => \^out0\(1),
      S => in1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \/FSM_onehot_state[1]_i_1_n_0\,
      Q => \^out0\(0),
      R => in1
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \/FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => in1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \/FSM_onehot_state[3]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => in1
    );
\gen_axi.write_cs[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FFDDDD"
    )
        port map (
      I0 => \^storage_data1_reg[1]_0\,
      I1 => \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_2__0_n_0\,
      I2 => m_valid_i_reg_2,
      I3 => \storage_data1_reg[1]_1\,
      I4 => m_select_enc,
      O => \gen_axi.write_cs_reg[0]\
    );
\gen_rep[0].fifoaddr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000800C4CCC4CC"
    )
        port map (
      I0 => \^m_ready_d_reg[1]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => Q(0),
      I3 => s_axi_awvalid(0),
      I4 => \^out0\(0),
      I5 => \FSM_onehot_state[3]_i_6__0_n_0\,
      O => p_0_out
    );
\gen_rep[0].fifoaddr[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => push,
      I1 => fifoaddr(0),
      I2 => fifoaddr(1),
      O => fifoaddr_i(1)
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[0]_i_1__0_n_0\,
      Q => fifoaddr(0),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => fifoaddr_i(1),
      Q => fifoaddr(1),
      S => SR(0)
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => m_avalid,
      I2 => s_axi_wlast(0),
      O => \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_2__0_n_0\
    );
\gen_srls[0].gen_rep[1].srl_nx1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl_7
     port map (
      Q(1 downto 0) => fifoaddr(1 downto 0),
      aclk => aclk,
      \gen_single_thread.active_target_enc_reg[1]\ => \gen_single_thread.active_target_enc_reg[1]\,
      \m_ready_d_reg[1]\ => \m_ready_d_reg[1]_1\,
      \m_ready_d_reg[1]_0\ => \m_ready_d_reg[1]_2\,
      m_valid_i_reg => \FSM_onehot_state[3]_i_6__0_n_0\,
      m_valid_i_reg_0 => \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_i_2__0_n_0\,
      m_valid_i_reg_1 => m_valid_i_reg_0,
      match => match,
      out0(1) => \^out0\(0),
      out0(0) => \FSM_onehot_state_reg_n_0_[3]\,
      push => push,
      s_ready_i_reg => \^m_ready_d_reg[1]\,
      ss_wr_awvalid_0 => ss_wr_awvalid_0,
      \storage_data1_reg[1]\ => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      \storage_data1_reg[1]_0\ => \^storage_data1_reg[1]_0\
    );
\m_axi_wvalid[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => m_avalid,
      I1 => s_axi_wvalid(0),
      O => \gen_rep[0].fifoaddr_reg[1]_0\
    );
\m_ready_d[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d_reg[1]\,
      I2 => Q(0),
      O => \m_ready_d_reg[1]_0\(0)
    );
m_valid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEFEEEEEEEEEE"
    )
        port map (
      I0 => m_valid_i_i_2_n_0,
      I1 => \FSM_onehot_state[3]_i_4_n_0\,
      I2 => push,
      I3 => \FSM_onehot_state[3]_i_5_n_0\,
      I4 => \FSM_onehot_state[3]_i_6__0_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => m_valid_i_i_1_n_0
    );
m_valid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA2AAA00000000"
    )
        port map (
      I0 => \^out0\(0),
      I1 => s_axi_wlast(0),
      I2 => m_avalid,
      I3 => s_axi_wvalid(0),
      I4 => m_valid_i_reg_0,
      I5 => ss_wr_awvalid_0,
      O => m_valid_i_i_2_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => m_valid_i_i_1_n_0,
      Q => m_avalid,
      R => in1
    );
\s_axi_wready[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000200020002A0A"
    )
        port map (
      I0 => m_avalid,
      I1 => m_select_enc,
      I2 => \^storage_data1_reg[1]_0\,
      I3 => \gen_axi.s_axi_wready_i_reg\,
      I4 => m_select_enc_0,
      I5 => m_valid_i_reg_1,
      O => s_axi_wready(0)
    );
\s_ready_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFEEEEEEEE"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2__0_n_0\,
      I1 => in1,
      I2 => push,
      I3 => fifoaddr(1),
      I4 => fifoaddr(0),
      I5 => \^m_ready_d_reg[1]\,
      O => \s_ready_i_i_1__0_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__0_n_0\,
      Q => \^m_ready_d_reg[1]\,
      R => SR(0)
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[1].srl_nx1_n_2\,
      Q => \^storage_data1_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized2\ is
  port (
    m_avalid : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    out0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    in1 : in STD_LOGIC;
    sa_wm_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_target_hot_i_reg[2]\ : in STD_LOGIC;
    \storage_data1_reg[1]\ : in STD_LOGIC;
    \gen_axi.s_axi_wready_i_reg\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_14_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized2\ : entity is "axi_data_fifo_v2_1_14_axic_reg_srl_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized2\ is
  signal \/FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \/FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fifoaddr_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_rep[0].fifoaddr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_1\ : STD_LOGIC;
  signal \^m_avalid\ : STD_LOGIC;
  signal \^m_select_enc\ : STD_LOGIC;
  signal \m_valid_i__0\ : STD_LOGIC;
  signal m_valid_i_n_0 : STD_LOGIC;
  signal \^out0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \^out0\ : signal is "yes";
  signal p_0_in3_out : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  attribute RTL_KEEP of p_7_in : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
begin
  m_avalid <= \^m_avalid\;
  m_select_enc <= \^m_select_enc\;
  out0(1 downto 0) <= \^out0\(1 downto 0);
\/FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044444400000000"
    )
        port map (
      I0 => p_7_in,
      I1 => \gen_srls[0].gen_rep[0].srl_nx1_n_1\,
      I2 => Q(0),
      I3 => aa_sa_awvalid,
      I4 => \gen_arbiter.m_target_hot_i_reg[2]_0\(0),
      I5 => \^out0\(1),
      O => \/FSM_onehot_state[0]_i_1_n_0\
    );
\/FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080008FF0800"
    )
        port map (
      I0 => \gen_arbiter.m_target_hot_i_reg[2]_0\(0),
      I1 => aa_sa_awvalid,
      I2 => Q(0),
      I3 => p_7_in,
      I4 => p_0_in3_out,
      I5 => \^out0\(1),
      O => \/FSM_onehot_state[1]_i_1_n_0\
    );
\/FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF00BF00BF00BFFF"
    )
        port map (
      I0 => Q(0),
      I1 => aa_sa_awvalid,
      I2 => \gen_arbiter.m_target_hot_i_reg[2]_0\(0),
      I3 => p_7_in,
      I4 => p_0_in3_out,
      I5 => \^out0\(1),
      O => \/FSM_onehot_state[2]_i_1_n_0\
    );
\/FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002A222222"
    )
        port map (
      I0 => \^out0\(1),
      I1 => \gen_srls[0].gen_rep[0].srl_nx1_n_1\,
      I2 => Q(0),
      I3 => aa_sa_awvalid,
      I4 => \gen_arbiter.m_target_hot_i_reg[2]_0\(0),
      I5 => p_7_in,
      O => \/FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF488F488F488"
    )
        port map (
      I0 => \gen_srls[0].gen_rep[0].srl_nx1_n_1\,
      I1 => \^out0\(1),
      I2 => p_7_in,
      I3 => sa_wm_awvalid(0),
      I4 => \^out0\(0),
      I5 => p_0_in3_out,
      O => \m_valid_i__0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \m_valid_i__0\,
      D => \/FSM_onehot_state[0]_i_1_n_0\,
      Q => p_7_in,
      S => in1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \m_valid_i__0\,
      D => \/FSM_onehot_state[1]_i_1_n_0\,
      Q => \^out0\(1),
      R => in1
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \m_valid_i__0\,
      D => \/FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => in1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \m_valid_i__0\,
      D => \/FSM_onehot_state[3]_i_2_n_0\,
      Q => \^out0\(0),
      R => in1
    );
\gen_rep[0].fifoaddr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8854888888888888"
    )
        port map (
      I0 => \gen_srls[0].gen_rep[0].srl_nx1_n_1\,
      I1 => \^out0\(0),
      I2 => \^out0\(1),
      I3 => Q(0),
      I4 => aa_sa_awvalid,
      I5 => \gen_arbiter.m_target_hot_i_reg[2]_0\(0),
      O => p_0_out
    );
\gen_rep[0].fifoaddr[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33F7CC08CC0833F7"
    )
        port map (
      I0 => \^out0\(1),
      I1 => sa_wm_awvalid(0),
      I2 => \gen_srls[0].gen_rep[0].srl_nx1_n_1\,
      I3 => \^out0\(0),
      I4 => fifoaddr(0),
      I5 => fifoaddr(1),
      O => fifoaddr_i(1)
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => \gen_rep[0].fifoaddr[0]_i_1__1_n_0\,
      Q => fifoaddr(0),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => p_0_out,
      D => fifoaddr_i(1),
      Q => fifoaddr(1),
      S => SR(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_ndeep_srl_8
     port map (
      D(0) => D(0),
      Q(1 downto 0) => fifoaddr(1 downto 0),
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      \gen_arbiter.m_target_hot_i_reg[2]\ => \gen_arbiter.m_target_hot_i_reg[2]\,
      \gen_arbiter.m_target_hot_i_reg[2]_0\(0) => \gen_arbiter.m_target_hot_i_reg[2]_0\(0),
      m_avalid => \^m_avalid\,
      \m_ready_d_reg[0]\(0) => Q(0),
      m_select_enc => \^m_select_enc\,
      out0(2) => p_7_in,
      out0(1 downto 0) => \^out0\(1 downto 0),
      p_14_in => p_14_in,
      sa_wm_awvalid(0) => sa_wm_awvalid(0),
      \storage_data1_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      \storage_data1_reg[0]_0\ => \gen_srls[0].gen_rep[0].srl_nx1_n_1\,
      \storage_data1_reg[1]\ => \storage_data1_reg[1]\
    );
m_valid_i: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF400F400F400"
    )
        port map (
      I0 => \gen_srls[0].gen_rep[0].srl_nx1_n_1\,
      I1 => \^out0\(1),
      I2 => p_7_in,
      I3 => sa_wm_awvalid(0),
      I4 => \^out0\(0),
      I5 => p_0_in3_out,
      O => m_valid_i_n_0
    );
\m_valid_i_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => sa_wm_awvalid(0),
      I1 => fifoaddr(1),
      I2 => \^out0\(0),
      I3 => fifoaddr(0),
      I4 => \storage_data1_reg[1]\,
      I5 => \gen_axi.s_axi_wready_i_reg\,
      O => p_0_in3_out
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \m_valid_i__0\,
      D => m_valid_i_n_0,
      Q => \^m_avalid\,
      R => in1
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      Q => \^m_select_enc\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice is
  port (
    st_mr_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axi_rready[0]\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.qual_reg_reg[0]_0\ : out STD_LOGIC;
    s_ready_i_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \m_payload_i_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_arbiter.qual_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.qual_reg_reg[0]_1\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[1]_0\ : out STD_LOGIC;
    \gen_arbiter.any_grant_reg\ : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.accept_cnt_reg[0]\ : out STD_LOGIC;
    s_axi_rvalid_0_sp_1 : out STD_LOGIC;
    \gen_arbiter.any_grant_reg_0\ : out STD_LOGIC;
    \gen_arbiter.any_grant_reg_1\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[1]_1\ : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : out STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[0]_0\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    match : in STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[16]\ : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[1]_0\ : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[34]\ : in STD_LOGIC;
    match_1 : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[1]_0\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot_reg[0]\ : in STD_LOGIC;
    match_2 : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_valid_i_reg_0 : in STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[4]\ : in STD_LOGIC;
    \s_axi_awaddr[28]\ : in STD_LOGIC;
    \s_axi_awaddr[26]\ : in STD_LOGIC;
    \gen_single_thread.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_hot_reg[0]_0\ : in STD_LOGIC;
    aa_mi_arvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_target_hot_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[35]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[4]\ : in STD_LOGIC;
    \s_axi_araddr[26]\ : in STD_LOGIC;
    \s_axi_araddr[28]\ : in STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[1]_1\ : in STD_LOGIC;
    match_7 : in STD_LOGIC;
    \gen_single_thread.active_target_hot_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[1]\ : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \m_axi_bid[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice is
  signal s_axi_rvalid_0_sn_1 : STD_LOGIC;
begin
  s_axi_rvalid_0_sp_1 <= s_axi_rvalid_0_sn_1;
\b.b_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_11\
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      \aresetn_d_reg[1]\ => \aresetn_d_reg[1]\,
      \aresetn_d_reg[1]_0\ => \aresetn_d_reg[1]_0\,
      \gen_arbiter.any_grant_reg\ => \gen_arbiter.any_grant_reg\,
      \gen_arbiter.qual_reg_reg[0]\(0) => \gen_arbiter.qual_reg_reg[0]\(0),
      \gen_arbiter.qual_reg_reg[0]_0\ => \gen_arbiter.qual_reg_reg[0]_0\,
      \gen_arbiter.qual_reg_reg[1]\ => \gen_arbiter.qual_reg_reg[1]_0\,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\ => \gen_master_slots[0].w_issuing_cnt_reg[4]\,
      \gen_master_slots[2].w_issuing_cnt_reg[16]\ => \gen_master_slots[2].w_issuing_cnt_reg[16]\,
      \gen_single_thread.accept_cnt_reg[1]\ => \gen_single_thread.accept_cnt_reg[1]\,
      \gen_single_thread.active_target_enc_4\(0) => \gen_single_thread.active_target_enc_4\(0),
      \gen_single_thread.active_target_enc_5\(0) => \gen_single_thread.active_target_enc_5\(0),
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot\(0),
      \gen_single_thread.active_target_hot_3\(0) => \gen_single_thread.active_target_hot_3\(0),
      \gen_single_thread.active_target_hot_reg[0]\ => \gen_single_thread.active_target_hot_reg[0]\,
      \m_axi_bid[0]\(2 downto 0) => \m_axi_bid[0]\(2 downto 0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      \m_payload_i_reg[0]_0\ => st_mr_bvalid(0),
      m_valid_i_reg_0 => m_valid_i_reg_0,
      m_valid_i_reg_1(0) => m_valid_i_reg_1(0),
      match => match,
      match_2 => match_2,
      p_1_in => p_1_in,
      \s_axi_awaddr[26]\ => \s_axi_awaddr[26]\,
      \s_axi_awaddr[28]\ => \s_axi_awaddr[28]\,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      s_ready_i_reg_0 => s_ready_i_reg,
      s_ready_i_reg_1(2 downto 0) => s_ready_i_reg_0(2 downto 0),
      st_mr_bid(0) => st_mr_bid(0),
      w_issuing_cnt(5 downto 0) => w_issuing_cnt(5 downto 0)
    );
\r.r_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2_12\
     port map (
      D(3 downto 0) => D(3 downto 0),
      Q(3 downto 0) => \m_payload_i_reg[0]\(3 downto 0),
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      \aresetn_d_reg[1]\ => \aresetn_d_reg[1]\,
      \gen_arbiter.any_grant_reg\ => \gen_arbiter.any_grant_reg_0\,
      \gen_arbiter.any_grant_reg_0\ => \gen_arbiter.any_grant_reg_1\,
      \gen_arbiter.m_target_hot_i_reg[0]\(0) => \gen_arbiter.m_target_hot_i_reg[0]\(0),
      \gen_arbiter.qual_reg_reg[0]\ => \gen_arbiter.qual_reg_reg[0]_1\,
      \gen_arbiter.qual_reg_reg[1]\(1 downto 0) => \gen_arbiter.qual_reg_reg[1]\(1 downto 0),
      \gen_arbiter.qual_reg_reg[1]_0\ => \gen_arbiter.qual_reg_reg[1]_1\,
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => \gen_master_slots[0].r_issuing_cnt_reg[0]\,
      \gen_master_slots[0].r_issuing_cnt_reg[1]\ => \gen_master_slots[0].r_issuing_cnt_reg[1]\,
      \gen_master_slots[0].r_issuing_cnt_reg[4]\ => \gen_master_slots[0].r_issuing_cnt_reg[4]\,
      \gen_single_thread.accept_cnt_reg[0]\ => \gen_single_thread.accept_cnt_reg[0]\,
      \gen_single_thread.accept_cnt_reg[0]_0\ => \gen_single_thread.accept_cnt_reg[0]_0\,
      \gen_single_thread.accept_cnt_reg[1]\ => \gen_single_thread.accept_cnt_reg[1]_0\,
      \gen_single_thread.accept_cnt_reg[1]_0\ => \gen_single_thread.accept_cnt_reg[1]_1\,
      \gen_single_thread.active_target_enc\(0) => \gen_single_thread.active_target_enc\(0),
      \gen_single_thread.active_target_enc_0\(0) => \gen_single_thread.active_target_enc_0\(0),
      \gen_single_thread.active_target_hot_6\(0) => \gen_single_thread.active_target_hot_6\(0),
      \gen_single_thread.active_target_hot_8\(0) => \gen_single_thread.active_target_hot_8\(0),
      \gen_single_thread.active_target_hot_reg[0]\ => \gen_single_thread.active_target_hot_reg[0]_0\,
      m_axi_arready(0) => m_axi_arready(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast(0) => m_axi_rlast(0),
      \m_axi_rready[0]\ => \m_axi_rready[0]\,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[34]_0\ => \m_payload_i_reg[34]\,
      \m_payload_i_reg[35]_0\(1 downto 0) => \m_payload_i_reg[35]\(1 downto 0),
      m_valid_i_reg_0(0) => m_valid_i_reg(0),
      match_1 => match_1,
      match_7 => match_7,
      p_1_in => p_1_in,
      r_issuing_cnt(5 downto 0) => r_issuing_cnt(5 downto 0),
      \s_axi_araddr[26]\ => \s_axi_araddr[26]\,
      \s_axi_araddr[28]\ => \s_axi_araddr[28]\,
      s_axi_arvalid(1 downto 0) => s_axi_arvalid(1 downto 0),
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      s_axi_rvalid(0) => s_axi_rvalid(0),
      s_axi_rvalid_0_sp_1 => s_axi_rvalid_0_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice_1 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[1]\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice_1 : entity is "axi_register_slice_v2_1_15_axi_register_slice";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice_1 is
  signal \^p_1_in\ : STD_LOGIC;
begin
  p_1_in <= \^p_1_in\;
\b.b_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_9\
     port map (
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[1]\ => \aresetn_d_reg[1]_0\,
      \aresetn_d_reg[1]_0\ => \aresetn_d_reg[1]\,
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      p_0_in(0) => p_0_in(0),
      p_1_in => \^p_1_in\,
      reset => reset
    );
\r.r_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2_10\
     port map (
      aclk => aclk,
      \aresetn_d_reg[1]\ => \aresetn_d_reg[1]_0\,
      m_axi_rready(0) => m_axi_rready(0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      p_1_in => \^p_1_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice_2 is
  port (
    s_ready_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg : out STD_LOGIC;
    mi_bready_2 : out STD_LOGIC;
    \m_payload_i_reg[34]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    mi_rready_2 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    st_mr_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_1 : out STD_LOGIC;
    \gen_arbiter.m_grant_enc_i_reg[0]\ : out STD_LOGIC;
    \gen_single_thread.accept_cnt_reg[0]\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[0]\ : out STD_LOGIC;
    \gen_arbiter.m_grant_enc_i_reg[0]_0\ : out STD_LOGIC;
    \gen_arbiter.qual_reg_reg[0]_0\ : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.any_grant_reg\ : out STD_LOGIC;
    \gen_axi.s_axi_bvalid_i_reg\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    reset : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_24_in : in STD_LOGIC;
    p_21_in : in STD_LOGIC;
    p_15_in : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    match : in STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[1]\ : in STD_LOGIC;
    \gen_arbiter.last_rr_hot_reg[0]\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    match_1 : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].r_issuing_cnt_reg[4]\ : in STD_LOGIC;
    \gen_arbiter.qual_reg_reg[0]_1\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[34]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_araddr[28]\ : in STD_LOGIC;
    \s_axi_araddr[26]\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc_reg[1]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_enc_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_20_in : in STD_LOGIC;
    p_17_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice_2 : entity is "axi_register_slice_v2_1_15_axi_register_slice";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice_2 is
  signal \^m_valid_i_reg\ : STD_LOGIC;
begin
  m_valid_i_reg <= \^m_valid_i_reg\;
\b.b_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1\
     port map (
      aclk => aclk,
      \gen_arbiter.last_rr_hot_reg[0]\ => \gen_arbiter.last_rr_hot_reg[0]\,
      \gen_arbiter.m_grant_enc_i_reg[0]\ => \gen_arbiter.m_grant_enc_i_reg[0]\,
      \gen_arbiter.qual_reg_reg[0]\ => \gen_arbiter.qual_reg_reg[0]\,
      \gen_axi.s_axi_bvalid_i_reg\ => \gen_axi.s_axi_bvalid_i_reg\,
      \gen_master_slots[0].w_issuing_cnt_reg[1]\ => \gen_master_slots[0].w_issuing_cnt_reg[1]\,
      \gen_single_thread.accept_cnt_reg[0]\ => \gen_single_thread.accept_cnt_reg[0]\,
      \gen_single_thread.active_target_enc\(0) => \gen_single_thread.active_target_enc\(0),
      \gen_single_thread.active_target_enc_0\(0) => \gen_single_thread.active_target_enc_0\(0),
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot\(0),
      \m_payload_i_reg[2]_0\ => st_mr_bid(0),
      \m_payload_i_reg[2]_1\(0) => \m_payload_i_reg[2]\(0),
      m_valid_i_reg_0 => \^m_valid_i_reg\,
      match => match,
      mi_bready_2 => mi_bready_2,
      p_0_in(0) => p_0_in(0),
      p_1_in => p_1_in,
      p_21_in => p_21_in,
      p_24_in => p_24_in,
      reset => reset,
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_ready_i_reg_0 => s_ready_i_reg(0),
      s_ready_i_reg_1 => s_ready_i_reg_0,
      s_ready_i_reg_2 => s_ready_i_reg_1,
      st_mr_bvalid(0) => st_mr_bvalid(0),
      w_issuing_cnt(0) => w_issuing_cnt(0)
    );
\r.r_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized2\
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      aclk => aclk,
      \aresetn_d_reg[1]\ => \^m_valid_i_reg\,
      \gen_arbiter.any_grant_reg\ => \gen_arbiter.any_grant_reg\,
      \gen_arbiter.m_grant_enc_i_reg[0]\ => \gen_arbiter.m_grant_enc_i_reg[0]_0\,
      \gen_arbiter.qual_reg_reg[0]\ => \gen_arbiter.qual_reg_reg[0]_0\,
      \gen_arbiter.qual_reg_reg[0]_0\ => \gen_arbiter.qual_reg_reg[0]_1\,
      \gen_master_slots[0].r_issuing_cnt_reg[4]\ => \gen_master_slots[0].r_issuing_cnt_reg[4]\,
      \gen_single_thread.active_target_enc_2\(0) => \gen_single_thread.active_target_enc_2\(0),
      \gen_single_thread.active_target_enc_3\(0) => \gen_single_thread.active_target_enc_3\(0),
      \gen_single_thread.active_target_enc_reg[1]\ => \gen_single_thread.active_target_enc_reg[1]\,
      \m_payload_i_reg[34]_0\ => \m_payload_i_reg[34]\(0),
      \m_payload_i_reg[34]_1\ => mi_rready_2,
      \m_payload_i_reg[34]_2\(0) => \m_payload_i_reg[34]_0\(0),
      match_1 => match_1,
      p_15_in => p_15_in,
      p_17_in => p_17_in,
      p_1_in => p_1_in,
      p_20_in => p_20_in,
      r_issuing_cnt(0) => r_issuing_cnt(0),
      \s_axi_araddr[26]\ => \s_axi_araddr[26]\,
      \s_axi_araddr[28]\ => \s_axi_araddr[28]\,
      s_axi_rlast(1 downto 0) => s_axi_rlast(1 downto 0),
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux__parameterized1\ is
  port (
    m_avalid : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    out0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    in1 : in STD_LOGIC;
    sa_wm_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_target_hot_i_reg[2]\ : in STD_LOGIC;
    \storage_data1_reg[1]\ : in STD_LOGIC;
    \gen_axi.s_axi_wready_i_reg\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    \gen_arbiter.m_target_hot_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_14_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux__parameterized1\ : entity is "axi_crossbar_v2_1_16_wdata_mux";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux__parameterized1\ is
begin
\gen_wmux.wmux_aw_fifo\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo__parameterized2\
     port map (
      D(0) => D(0),
      Q(0) => Q(0),
      SR(0) => SR(0),
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      \gen_arbiter.m_target_hot_i_reg[2]\ => \gen_arbiter.m_target_hot_i_reg[2]\,
      \gen_arbiter.m_target_hot_i_reg[2]_0\(0) => \gen_arbiter.m_target_hot_i_reg[2]_0\(0),
      \gen_axi.s_axi_wready_i_reg\ => \gen_axi.s_axi_wready_i_reg\,
      in1 => in1,
      m_avalid => m_avalid,
      m_select_enc => m_select_enc,
      out0(1 downto 0) => out0(1 downto 0),
      p_14_in => p_14_in,
      sa_wm_awvalid(0) => sa_wm_awvalid(0),
      \storage_data1_reg[1]\ => \storage_data1_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_router is
  port (
    \gen_single_thread.active_target_enc_reg[1]\ : out STD_LOGIC;
    ss_wr_awready_0 : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    out0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_ready_d_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.write_cs_reg[0]\ : out STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    in1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]_0\ : in STD_LOGIC;
    \m_ready_d_reg[1]_1\ : in STD_LOGIC;
    match : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg : in STD_LOGIC;
    ss_wr_awvalid_0 : in STD_LOGIC;
    m_select_enc : in STD_LOGIC;
    \gen_axi.s_axi_wready_i_reg\ : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC;
    m_valid_i_reg_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    \storage_data1_reg[1]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_router;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_router is
begin
wrouter_aw_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo_6
     port map (
      Q(0) => Q(0),
      SR(0) => SR(0),
      aclk => aclk,
      \gen_axi.s_axi_wready_i_reg\ => \gen_axi.s_axi_wready_i_reg\,
      \gen_axi.write_cs_reg[0]\ => \gen_axi.write_cs_reg[0]\,
      \gen_rep[0].fifoaddr_reg[1]_0\ => \gen_rep[0].fifoaddr_reg[1]\,
      \gen_single_thread.active_target_enc_reg[1]\ => \gen_single_thread.active_target_enc_reg[1]\,
      in1 => in1,
      \m_ready_d_reg[1]\ => ss_wr_awready_0,
      \m_ready_d_reg[1]_0\(0) => \m_ready_d_reg[1]\(0),
      \m_ready_d_reg[1]_1\ => \m_ready_d_reg[1]_0\,
      \m_ready_d_reg[1]_2\ => \m_ready_d_reg[1]_1\,
      m_select_enc => m_select_enc,
      m_select_enc_0 => m_select_enc_0,
      m_valid_i_reg_0 => m_valid_i_reg,
      m_valid_i_reg_1 => m_valid_i_reg_0,
      m_valid_i_reg_2 => m_valid_i_reg_1,
      match => match,
      out0(1 downto 0) => out0(1 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awvalid_0 => ss_wr_awvalid_0,
      \storage_data1_reg[1]_0\ => \storage_data1_reg[1]\,
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_router_4 is
  port (
    \gen_single_thread.active_target_enc_reg[1]\ : out STD_LOGIC;
    in1 : out STD_LOGIC;
    m_avalid : out STD_LOGIC;
    ss_wr_awready_1 : out STD_LOGIC;
    \storage_data1_reg[1]\ : out STD_LOGIC;
    out0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_rep[0].fifoaddr_reg[1]\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[1]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]_0\ : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC;
    \m_ready_d_reg[1]_1\ : in STD_LOGIC;
    match : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : in STD_LOGIC;
    ss_wr_awvalid_1 : in STD_LOGIC;
    m_select_enc : in STD_LOGIC;
    \gen_axi.s_axi_wready_i_reg\ : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC;
    m_valid_i_reg_1 : in STD_LOGIC;
    m_valid_i_reg_2 : in STD_LOGIC;
    \storage_data1_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_router_4 : entity is "axi_crossbar_v2_1_16_wdata_router";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_router_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_router_4 is
begin
wrouter_aw_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_reg_srl_fifo
     port map (
      Q(0) => Q(0),
      SR(0) => in1,
      aclk => aclk,
      aresetn_d_reg(0) => SR(0),
      \gen_axi.s_axi_wready_i_reg\ => \gen_axi.s_axi_wready_i_reg\,
      \gen_rep[0].fifoaddr_reg[1]_0\ => \gen_rep[0].fifoaddr_reg[1]\,
      \gen_rep[0].fifoaddr_reg[1]_1\ => \gen_rep[0].fifoaddr_reg[1]_0\,
      \gen_single_thread.active_target_enc_reg[1]\ => \gen_single_thread.active_target_enc_reg[1]\,
      \m_ready_d_reg[1]\ => ss_wr_awready_1,
      \m_ready_d_reg[1]_0\(0) => \m_ready_d_reg[1]\(0),
      \m_ready_d_reg[1]_1\ => \m_ready_d_reg[1]_0\,
      \m_ready_d_reg[1]_2\ => \m_ready_d_reg[1]_1\,
      m_select_enc => m_select_enc,
      m_select_enc_0 => m_select_enc_0,
      m_valid_i_reg_0 => m_valid_i_reg,
      m_valid_i_reg_1 => m_valid_i_reg_0,
      m_valid_i_reg_2 => m_valid_i_reg_1,
      m_valid_i_reg_3 => m_valid_i_reg_2,
      match => match,
      out0(1 downto 0) => out0(1 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_ready_i_reg_0 => m_avalid,
      ss_wr_awvalid_1 => ss_wr_awvalid_1,
      \storage_data1_reg[1]_0\ => \storage_data1_reg[1]\,
      \storage_data1_reg[1]_1\ => \storage_data1_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_crossbar is
  port (
    aa_wm_awgrant_enc : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi_awready[0]\ : out STD_LOGIC;
    \s_axi_awready[1]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready_0_sp_1 : out STD_LOGIC;
    areset_d1 : out STD_LOGIC;
    \m_axi_awqos[7]\ : out STD_LOGIC_VECTOR ( 57 downto 0 );
    \m_axi_arqos[7]\ : out STD_LOGIC_VECTOR ( 57 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_rep[0].fifoaddr_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid_0_sp_1 : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    push : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aresetn : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    storage_data2 : in STD_LOGIC;
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_crossbar;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_crossbar is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aa_mi_artarget_hot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal aa_mi_arvalid : STD_LOGIC;
  signal aa_mi_awtarget_hot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal aa_sa_awvalid : STD_LOGIC;
  signal \^aa_wm_awgrant_enc\ : STD_LOGIC;
  signal addr_arbiter_ar_n_2 : STD_LOGIC;
  signal addr_arbiter_ar_n_63 : STD_LOGIC;
  signal addr_arbiter_ar_n_65 : STD_LOGIC;
  signal addr_arbiter_ar_n_66 : STD_LOGIC;
  signal addr_arbiter_ar_n_69 : STD_LOGIC;
  signal addr_arbiter_ar_n_72 : STD_LOGIC;
  signal addr_arbiter_ar_n_73 : STD_LOGIC;
  signal addr_arbiter_ar_n_74 : STD_LOGIC;
  signal addr_arbiter_ar_n_75 : STD_LOGIC;
  signal addr_arbiter_aw_n_14 : STD_LOGIC;
  signal addr_arbiter_aw_n_16 : STD_LOGIC;
  signal addr_arbiter_aw_n_19 : STD_LOGIC;
  signal addr_arbiter_aw_n_2 : STD_LOGIC;
  signal addr_arbiter_aw_n_20 : STD_LOGIC;
  signal addr_arbiter_aw_n_21 : STD_LOGIC;
  signal addr_arbiter_aw_n_26 : STD_LOGIC;
  signal addr_arbiter_aw_n_3 : STD_LOGIC;
  signal addr_arbiter_aw_n_6 : STD_LOGIC;
  signal addr_arbiter_aw_n_7 : STD_LOGIC;
  signal addr_arbiter_aw_n_8 : STD_LOGIC;
  signal addr_arbiter_aw_n_9 : STD_LOGIC;
  signal \^areset_d1\ : STD_LOGIC;
  signal aresetn_d : STD_LOGIC;
  signal \gen_axi.s_axi_rid_i\ : STD_LOGIC;
  signal \gen_decerr_slave.decerr_slave_inst_n_8\ : STD_LOGIC;
  signal \gen_decerr_slave.decerr_slave_inst_n_9\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_1\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_11\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_13\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_3\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_4\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_5\ : STD_LOGIC;
  signal \gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_3\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_4\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_5\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_6\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_7\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_78\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_79\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_8\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_80\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_81\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_82\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_88\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_9\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_90\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_91\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_92\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_93\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_94\ : STD_LOGIC;
  signal \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_master_slots[0].w_issuing_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_3\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_1\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_10\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_11\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_12\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_17\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_5\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_7\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_8\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_9\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.accept_cnt_11\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.active_target_enc\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_single_thread.active_target_enc_12\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_single_thread.active_target_enc_7\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_single_thread.active_target_enc_9\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_single_thread.active_target_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_thread.active_target_hot_10\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_thread.active_target_hot_13\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_thread.active_target_hot_8\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_6\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_7\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_2\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.wdata_router_w_n_0\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.wdata_router_w_n_2\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.wdata_router_w_n_7\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.wdata_router_w_n_8\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_6\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_2\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_0\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_6\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w_n_0\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w_n_10\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w_n_7\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_0_in6_in\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_0_out\ : STD_LOGIC;
  signal m_avalid : STD_LOGIC;
  signal m_avalid_17 : STD_LOGIC;
  signal \^m_axi_arqos[7]\ : STD_LOGIC_VECTOR ( 57 downto 0 );
  signal \^m_axi_awqos[7]\ : STD_LOGIC_VECTOR ( 57 downto 0 );
  signal m_axi_rready_0_sn_1 : STD_LOGIC;
  signal m_ready_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d0_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d0_2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d_14 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d_18 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_select_enc : STD_LOGIC;
  signal m_select_enc_6 : STD_LOGIC;
  signal match : STD_LOGIC;
  signal match_0 : STD_LOGIC;
  signal match_3 : STD_LOGIC;
  signal match_4 : STD_LOGIC;
  signal mi_arready_2 : STD_LOGIC;
  signal mi_awready_2 : STD_LOGIC;
  signal mi_bready_2 : STD_LOGIC;
  signal mi_rready_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal r_issuing_cnt : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal reset : STD_LOGIC;
  signal reset_5 : STD_LOGIC;
  signal \^s_axi_awready[0]\ : STD_LOGIC;
  signal \^s_axi_awready[1]\ : STD_LOGIC;
  signal s_axi_rvalid_0_sn_1 : STD_LOGIC;
  signal sa_wm_awvalid : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal splitter_aw_mi_n_0 : STD_LOGIC;
  signal splitter_aw_mi_n_3 : STD_LOGIC;
  signal ss_aa_awready : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ss_wr_awready_0 : STD_LOGIC;
  signal ss_wr_awready_1 : STD_LOGIC;
  signal ss_wr_awvalid_0 : STD_LOGIC;
  signal ss_wr_awvalid_1 : STD_LOGIC;
  signal st_mr_bid : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal st_mr_bmesg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_mr_bvalid : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal st_mr_rid : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal st_mr_rlast : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal st_mr_rmesg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_mr_rvalid : STD_LOGIC_VECTOR ( 2 to 2 );
  signal w_issuing_cnt : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \wrouter_aw_fifo/p_0_in8_in\ : STD_LOGIC;
  signal \wrouter_aw_fifo/p_0_in8_in_15\ : STD_LOGIC;
  signal \wrouter_aw_fifo/p_9_in\ : STD_LOGIC;
  signal \wrouter_aw_fifo/p_9_in_16\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[0]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[4]_i_3\ : label is "soft_lutpair168";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  aa_wm_awgrant_enc <= \^aa_wm_awgrant_enc\;
  areset_d1 <= \^areset_d1\;
  \m_axi_arqos[7]\(57 downto 0) <= \^m_axi_arqos[7]\(57 downto 0);
  \m_axi_awqos[7]\(57 downto 0) <= \^m_axi_awqos[7]\(57 downto 0);
  m_axi_rready_0_sp_1 <= m_axi_rready_0_sn_1;
  \s_axi_awready[0]\ <= \^s_axi_awready[0]\;
  \s_axi_awready[1]\ <= \^s_axi_awready[1]\;
  s_axi_rvalid_0_sp_1 <= s_axi_rvalid_0_sn_1;
addr_arbiter_ar: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_addr_arbiter
     port map (
      D(1) => \gen_master_slots[0].reg_slice_mi_n_78\,
      D(0) => \gen_master_slots[0].reg_slice_mi_n_79\,
      E(0) => addr_arbiter_ar_n_65,
      Q(1) => aa_mi_artarget_hot(2),
      Q(0) => aa_mi_artarget_hot(0),
      SR(0) => reset,
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.any_grant_reg_0\ => addr_arbiter_ar_n_69,
      \gen_arbiter.any_grant_reg_1\ => addr_arbiter_ar_n_73,
      \gen_arbiter.any_grant_reg_2\ => addr_arbiter_ar_n_74,
      \gen_arbiter.qual_reg_reg[0]_0\ => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_4\,
      \gen_axi.s_axi_rid_i\ => \gen_axi.s_axi_rid_i\,
      \gen_axi.s_axi_rid_i_reg[0]\ => addr_arbiter_ar_n_2,
      \gen_axi.s_axi_rlast_i_reg\ => addr_arbiter_ar_n_75,
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => addr_arbiter_ar_n_66,
      \gen_master_slots[0].r_issuing_cnt_reg[4]\ => \gen_master_slots[0].reg_slice_mi_n_80\,
      \gen_master_slots[2].r_issuing_cnt_reg[16]\ => addr_arbiter_ar_n_63,
      \gen_master_slots[2].r_issuing_cnt_reg[16]_0\ => \gen_master_slots[2].reg_slice_mi_n_11\,
      \gen_master_slots[2].r_issuing_cnt_reg[16]_1\ => \gen_master_slots[0].reg_slice_mi_n_92\,
      \gen_single_thread.accept_cnt_reg[1]\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_6\,
      \gen_single_thread.accept_cnt_reg[1]_0\ => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_5\,
      \gen_single_thread.active_target_hot_reg[0]\ => addr_arbiter_ar_n_72,
      \m_axi_arqos[7]\(57 downto 0) => \^m_axi_arqos[7]\(57 downto 0),
      m_axi_arready(0) => m_axi_arready(0),
      m_axi_arvalid(0) => m_axi_arvalid(0),
      \m_payload_i_reg[34]\ => \gen_master_slots[2].reg_slice_mi_n_12\,
      \m_payload_i_reg[34]_0\ => \gen_master_slots[0].reg_slice_mi_n_93\,
      match => match_0,
      match_0 => match,
      mi_arready_2 => mi_arready_2,
      p_15_in => p_15_in,
      p_20_in => p_20_in,
      r_issuing_cnt(5) => r_issuing_cnt(16),
      r_issuing_cnt(4 downto 0) => r_issuing_cnt(4 downto 0),
      s_axi_araddr(63 downto 0) => s_axi_araddr(63 downto 0),
      s_axi_arburst(3 downto 0) => s_axi_arburst(3 downto 0),
      s_axi_arcache(7 downto 0) => s_axi_arcache(7 downto 0),
      s_axi_arlen(15 downto 0) => s_axi_arlen(15 downto 0),
      s_axi_arlock(1 downto 0) => s_axi_arlock(1 downto 0),
      s_axi_arprot(5 downto 0) => s_axi_arprot(5 downto 0),
      s_axi_arqos(7 downto 0) => s_axi_arqos(7 downto 0),
      \s_axi_arready[1]\(1 downto 0) => \^q\(1 downto 0),
      s_axi_arsize(5 downto 0) => s_axi_arsize(5 downto 0),
      s_axi_arvalid(1 downto 0) => s_axi_arvalid(1 downto 0)
    );
addr_arbiter_aw: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_addr_arbiter_0
     port map (
      D(0) => \^aa_wm_awgrant_enc\,
      E(0) => \gen_wmux.wmux_aw_fifo/p_0_out\,
      Q(1 downto 0) => m_ready_d_18(1 downto 0),
      SR(0) => reset,
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.any_grant_reg_0\ => addr_arbiter_aw_n_16,
      \gen_arbiter.any_grant_reg_1\ => addr_arbiter_aw_n_20,
      \gen_arbiter.any_grant_reg_2\ => addr_arbiter_aw_n_21,
      \gen_axi.s_axi_awready_i_reg\ => addr_arbiter_aw_n_14,
      \gen_axi.s_axi_awready_i_reg_0\ => splitter_aw_mi_n_0,
      \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_13\,
      \gen_master_slots[0].w_issuing_cnt_reg[1]\ => \gen_master_slots[0].reg_slice_mi_n_4\,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(3) => addr_arbiter_aw_n_6,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(2) => addr_arbiter_aw_n_7,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(1) => addr_arbiter_aw_n_8,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(0) => addr_arbiter_aw_n_9,
      \gen_master_slots[2].w_issuing_cnt_reg[16]\ => addr_arbiter_aw_n_3,
      \gen_master_slots[2].w_issuing_cnt_reg[16]_0\ => \gen_master_slots[2].reg_slice_mi_n_8\,
      \gen_master_slots[2].w_issuing_cnt_reg[16]_1\ => \gen_master_slots[0].reg_slice_mi_n_81\,
      \gen_single_thread.accept_cnt_reg[1]\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_2\,
      \gen_single_thread.accept_cnt_reg[1]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2\,
      \gen_single_thread.active_target_enc_reg[1]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5\,
      \gen_single_thread.active_target_hot_reg[0]\ => addr_arbiter_aw_n_19,
      \m_axi_awqos[7]\(57 downto 0) => \^m_axi_awqos[7]\(57 downto 0),
      m_axi_awready(0) => m_axi_awready(0),
      m_axi_awvalid(0) => m_axi_awvalid(0),
      \m_payload_i_reg[2]\ => \gen_master_slots[0].reg_slice_mi_n_5\,
      \m_ready_d_reg[0]\(1 downto 0) => ss_aa_awready(1 downto 0),
      \m_ready_d_reg[0]_0\(0) => m_ready_d0_1(0),
      \m_ready_d_reg[0]_1\(0) => m_ready_d0(0),
      \m_ready_d_reg[0]_2\(0) => m_ready_d_14(0),
      \m_ready_d_reg[0]_3\(0) => m_ready_d(0),
      \m_ready_d_reg[0]_4\(1) => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_0\,
      \m_ready_d_reg[0]_4\(0) => \gen_master_slots[0].reg_slice_mi_n_3\,
      \m_ready_d_reg[1]\(1) => aa_mi_awtarget_hot(2),
      \m_ready_d_reg[1]\(0) => aa_mi_awtarget_hot(0),
      \m_ready_d_reg[1]_0\(1 downto 0) => m_ready_d0_2(1 downto 0),
      m_select_enc => m_select_enc,
      m_valid_i_reg => \gen_master_slots[2].reg_slice_mi_n_7\,
      match => match_4,
      match_0 => match_3,
      mi_awready_2 => mi_awready_2,
      \out\(2 downto 0) => \out\(2 downto 0),
      out0(1) => \gen_wmux.wmux_aw_fifo/p_0_in6_in\,
      out0(0) => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_3\,
      push => push,
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(3 downto 0) => s_axi_awburst(3 downto 0),
      s_axi_awcache(7 downto 0) => s_axi_awcache(7 downto 0),
      s_axi_awlen(15 downto 0) => s_axi_awlen(15 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(5 downto 0) => s_axi_awprot(5 downto 0),
      s_axi_awqos(7 downto 0) => s_axi_awqos(7 downto 0),
      s_axi_awsize(5 downto 0) => s_axi_awsize(5 downto 0),
      s_axi_awvalid(1 downto 0) => s_axi_awvalid(1 downto 0),
      sa_wm_awvalid(1) => sa_wm_awvalid(2),
      sa_wm_awvalid(0) => sa_wm_awvalid(0),
      \storage_data1_reg[0]\ => addr_arbiter_aw_n_2,
      \storage_data1_reg[0]_0\ => addr_arbiter_aw_n_26,
      \storage_data1_reg[0]_1\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_1\,
      w_issuing_cnt(5) => w_issuing_cnt(16),
      w_issuing_cnt(4 downto 0) => w_issuing_cnt(4 downto 0)
    );
aresetn_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => aresetn_d,
      R => '0'
    );
\gen_decerr_slave.decerr_slave_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_decerr_slave
     port map (
      \FSM_onehot_state_reg[2]\ => \gen_decerr_slave.decerr_slave_inst_n_9\,
      Q(0) => aa_mi_artarget_hot(2),
      SR(0) => reset,
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.m_mesg_i_reg[0]\ => addr_arbiter_ar_n_2,
      \gen_arbiter.m_mesg_i_reg[0]_0\(0) => \^m_axi_awqos[7]\(0),
      \gen_arbiter.m_mesg_i_reg[40]\(7 downto 0) => \^m_axi_arqos[7]\(40 downto 33),
      \gen_arbiter.m_valid_i_reg\ => addr_arbiter_aw_n_14,
      \gen_axi.read_cs_reg[0]_0\ => addr_arbiter_ar_n_75,
      \gen_axi.s_axi_rid_i\ => \gen_axi.s_axi_rid_i\,
      \gen_single_thread.active_target_enc_reg[1]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_7\,
      m_avalid => m_avalid,
      m_valid_i_reg => \gen_decerr_slave.decerr_slave_inst_n_8\,
      mi_arready_2 => mi_arready_2,
      mi_awready_2 => mi_awready_2,
      mi_bready_2 => mi_bready_2,
      mi_rready_2 => mi_rready_2,
      p_14_in => p_14_in,
      p_15_in => p_15_in,
      p_17_in => p_17_in,
      p_20_in => p_20_in,
      p_21_in => p_21_in,
      p_24_in => p_24_in,
      \storage_data1_reg[1]\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_7\
    );
\gen_master_slots[0].gen_mi_write.wdata_mux_w\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux
     port map (
      D(0) => \^aa_wm_awgrant_enc\,
      E(0) => E(0),
      Q(3 downto 0) => \gen_rep[0].fifoaddr_reg[3]\(3 downto 0),
      SS(0) => reset,
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      \gen_arbiter.m_target_hot_i_reg[0]\(0) => \gen_wmux.wmux_aw_fifo/p_0_out\,
      \gen_arbiter.m_target_hot_i_reg[0]_0\(0) => aa_mi_awtarget_hot(0),
      \gen_axi.s_axi_wready_i_reg\ => \gen_decerr_slave.decerr_slave_inst_n_9\,
      \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\(3 downto 0) => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\(3 downto 0),
      \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]_0\ => addr_arbiter_aw_n_2,
      \gen_rep[0].fifoaddr_reg[1]\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_1\,
      \gen_rep[0].fifoaddr_reg[1]_0\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_5\,
      in1 => \^areset_d1\,
      m_avalid => m_avalid_17,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid(0) => m_axi_wvalid(0),
      \m_ready_d_reg[0]\(0) => m_ready_d_18(0),
      m_select_enc => m_select_enc,
      m_select_enc_0 => m_select_enc_6,
      m_valid_i_reg => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_10\,
      \out\(2 downto 0) => \out\(2 downto 0),
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      \s_axi_wready[0]\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_11\,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wvalid(0) => s_axi_wvalid(1),
      sa_wm_awvalid(0) => sa_wm_awvalid(0),
      \storage_data1_reg[0]\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_13\,
      \storage_data1_reg[1]\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_3\,
      \storage_data1_reg[1]_0\ => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_4\,
      \storage_data1_reg[1]_1\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\,
      \storage_data1_reg[1]_2\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_2\,
      storage_data2 => storage_data2
    );
\gen_master_slots[0].r_issuing_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_issuing_cnt(0),
      O => \gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0\
    );
\gen_master_slots[0].r_issuing_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_ar_n_65,
      D => \gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0\,
      Q => r_issuing_cnt(0),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_ar_n_65,
      D => \gen_master_slots[0].reg_slice_mi_n_9\,
      Q => r_issuing_cnt(1),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_ar_n_65,
      D => \gen_master_slots[0].reg_slice_mi_n_8\,
      Q => r_issuing_cnt(2),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_ar_n_65,
      D => \gen_master_slots[0].reg_slice_mi_n_7\,
      Q => r_issuing_cnt(3),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_ar_n_65,
      D => \gen_master_slots[0].reg_slice_mi_n_6\,
      Q => r_issuing_cnt(4),
      R => reset
    );
\gen_master_slots[0].reg_slice_mi\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice
     port map (
      D(3) => \gen_master_slots[0].reg_slice_mi_n_6\,
      D(2) => \gen_master_slots[0].reg_slice_mi_n_7\,
      D(1) => \gen_master_slots[0].reg_slice_mi_n_8\,
      D(0) => \gen_master_slots[0].reg_slice_mi_n_9\,
      Q(0) => m_ready_d(0),
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      \aresetn_d_reg[1]\ => \gen_master_slots[2].reg_slice_mi_n_1\,
      \aresetn_d_reg[1]_0\ => \gen_master_slots[2].reg_slice_mi_n_5\,
      \gen_arbiter.any_grant_reg\ => \gen_master_slots[0].reg_slice_mi_n_82\,
      \gen_arbiter.any_grant_reg_0\ => \gen_master_slots[0].reg_slice_mi_n_90\,
      \gen_arbiter.any_grant_reg_1\ => \gen_master_slots[0].reg_slice_mi_n_91\,
      \gen_arbiter.m_target_hot_i_reg[0]\(0) => aa_mi_artarget_hot(0),
      \gen_arbiter.qual_reg_reg[0]\(0) => \gen_master_slots[0].reg_slice_mi_n_3\,
      \gen_arbiter.qual_reg_reg[0]_0\ => \gen_master_slots[0].reg_slice_mi_n_4\,
      \gen_arbiter.qual_reg_reg[0]_1\ => \gen_master_slots[0].reg_slice_mi_n_80\,
      \gen_arbiter.qual_reg_reg[1]\(1) => \gen_master_slots[0].reg_slice_mi_n_78\,
      \gen_arbiter.qual_reg_reg[1]\(0) => \gen_master_slots[0].reg_slice_mi_n_79\,
      \gen_arbiter.qual_reg_reg[1]_0\ => \gen_master_slots[0].reg_slice_mi_n_81\,
      \gen_arbiter.qual_reg_reg[1]_1\ => \gen_master_slots[0].reg_slice_mi_n_92\,
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_93\,
      \gen_master_slots[0].r_issuing_cnt_reg[1]\ => addr_arbiter_ar_n_66,
      \gen_master_slots[0].r_issuing_cnt_reg[4]\ => addr_arbiter_ar_n_74,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\ => addr_arbiter_aw_n_21,
      \gen_master_slots[2].w_issuing_cnt_reg[16]\ => \gen_master_slots[2].reg_slice_mi_n_10\,
      \gen_single_thread.accept_cnt_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_88\,
      \gen_single_thread.accept_cnt_reg[0]_0\ => \gen_master_slots[0].reg_slice_mi_n_94\,
      \gen_single_thread.accept_cnt_reg[1]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2\,
      \gen_single_thread.accept_cnt_reg[1]_0\ => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_5\,
      \gen_single_thread.accept_cnt_reg[1]_1\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_6\,
      \gen_single_thread.active_target_enc\(0) => \gen_single_thread.active_target_enc_9\(1),
      \gen_single_thread.active_target_enc_0\(0) => \gen_single_thread.active_target_enc\(1),
      \gen_single_thread.active_target_enc_4\(0) => \gen_single_thread.active_target_enc_7\(1),
      \gen_single_thread.active_target_enc_5\(0) => \gen_single_thread.active_target_enc_12\(1),
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot_13\(0),
      \gen_single_thread.active_target_hot_3\(0) => \gen_single_thread.active_target_hot_8\(0),
      \gen_single_thread.active_target_hot_6\(0) => \gen_single_thread.active_target_hot\(0),
      \gen_single_thread.active_target_hot_8\(0) => \gen_single_thread.active_target_hot_10\(0),
      \gen_single_thread.active_target_hot_reg[0]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_6\,
      \gen_single_thread.active_target_hot_reg[0]_0\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_5\,
      m_axi_arready(0) => m_axi_arready(0),
      \m_axi_bid[0]\(2 downto 0) => D(2 downto 0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast(0) => m_axi_rlast(0),
      \m_axi_rready[0]\ => m_axi_rready_0_sn_1,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[0]\(3) => st_mr_rid(0),
      \m_payload_i_reg[0]\(2) => st_mr_rlast(0),
      \m_payload_i_reg[0]\(1 downto 0) => st_mr_rmesg(1 downto 0),
      \m_payload_i_reg[34]\ => \gen_master_slots[2].reg_slice_mi_n_12\,
      \m_payload_i_reg[35]\(1) => st_mr_rid(2),
      \m_payload_i_reg[35]\(0) => st_mr_rlast(2),
      m_valid_i_reg(0) => st_mr_rvalid(2),
      m_valid_i_reg_0 => \gen_master_slots[2].reg_slice_mi_n_7\,
      m_valid_i_reg_1(0) => st_mr_bvalid(2),
      match => match_3,
      match_1 => match,
      match_2 => match_4,
      match_7 => match_0,
      p_1_in => p_1_in,
      r_issuing_cnt(5) => r_issuing_cnt(16),
      r_issuing_cnt(4 downto 0) => r_issuing_cnt(4 downto 0),
      \s_axi_araddr[26]\ => addr_arbiter_ar_n_72,
      \s_axi_araddr[28]\ => addr_arbiter_ar_n_73,
      s_axi_arvalid(1 downto 0) => s_axi_arvalid(1 downto 0),
      \s_axi_awaddr[26]\ => addr_arbiter_aw_n_19,
      \s_axi_awaddr[28]\ => addr_arbiter_aw_n_20,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      s_axi_rvalid(0) => s_axi_rvalid(0),
      s_axi_rvalid_0_sp_1 => s_axi_rvalid_0_sn_1,
      s_ready_i_reg => \gen_master_slots[0].reg_slice_mi_n_5\,
      s_ready_i_reg_0(2) => st_mr_bid(0),
      s_ready_i_reg_0(1 downto 0) => st_mr_bmesg(1 downto 0),
      st_mr_bid(0) => st_mr_bid(2),
      st_mr_bvalid(0) => st_mr_bvalid(0),
      w_issuing_cnt(5) => w_issuing_cnt(16),
      w_issuing_cnt(4 downto 0) => w_issuing_cnt(4 downto 0)
    );
\gen_master_slots[0].w_issuing_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_issuing_cnt(0),
      O => \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0\
    );
\gen_master_slots[0].w_issuing_cnt[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => w_issuing_cnt(1),
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(3),
      I3 => w_issuing_cnt(2),
      O => \gen_master_slots[0].w_issuing_cnt[4]_i_3_n_0\
    );
\gen_master_slots[0].w_issuing_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => splitter_aw_mi_n_3,
      D => \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0\,
      Q => w_issuing_cnt(0),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => splitter_aw_mi_n_3,
      D => addr_arbiter_aw_n_9,
      Q => w_issuing_cnt(1),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => splitter_aw_mi_n_3,
      D => addr_arbiter_aw_n_8,
      Q => w_issuing_cnt(2),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => splitter_aw_mi_n_3,
      D => addr_arbiter_aw_n_7,
      Q => w_issuing_cnt(3),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => splitter_aw_mi_n_3,
      D => addr_arbiter_aw_n_6,
      Q => w_issuing_cnt(4),
      R => reset
    );
\gen_master_slots[1].gen_mi_write.wdata_mux_w\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux__parameterized0\
     port map (
      aclk => aclk,
      in1 => \^areset_d1\
    );
\gen_master_slots[1].reg_slice_mi\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice_1
     port map (
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[1]\ => \gen_master_slots[2].reg_slice_mi_n_5\,
      \aresetn_d_reg[1]_0\ => \gen_master_slots[2].reg_slice_mi_n_1\,
      m_axi_bready(0) => m_axi_bready(1),
      m_axi_bvalid(0) => m_axi_bvalid(1),
      m_axi_rready(0) => m_axi_rready(0),
      m_axi_rvalid(0) => m_axi_rvalid(1),
      p_0_in(0) => p_0_in(1),
      p_1_in => p_1_in,
      reset => reset_5
    );
\gen_master_slots[2].gen_mi_write.wdata_mux_w\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_mux__parameterized1\
     port map (
      D(0) => \^aa_wm_awgrant_enc\,
      Q(0) => m_ready_d_18(0),
      SR(0) => reset,
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      \gen_arbiter.m_target_hot_i_reg[2]\ => addr_arbiter_aw_n_26,
      \gen_arbiter.m_target_hot_i_reg[2]_0\(0) => aa_mi_awtarget_hot(2),
      \gen_axi.s_axi_wready_i_reg\ => \gen_decerr_slave.decerr_slave_inst_n_9\,
      in1 => \^areset_d1\,
      m_avalid => m_avalid,
      m_select_enc => m_select_enc_6,
      out0(1) => \gen_wmux.wmux_aw_fifo/p_0_in6_in\,
      out0(0) => \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_3\,
      p_14_in => p_14_in,
      sa_wm_awvalid(0) => sa_wm_awvalid(2),
      \storage_data1_reg[1]\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_7\
    );
\gen_master_slots[2].r_issuing_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_ar_n_63,
      Q => r_issuing_cnt(16),
      R => reset
    );
\gen_master_slots[2].reg_slice_mi\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice_2
     port map (
      Q(1) => st_mr_rid(2),
      Q(0) => st_mr_rlast(2),
      aclk => aclk,
      \gen_arbiter.any_grant_reg\ => \gen_master_slots[2].reg_slice_mi_n_17\,
      \gen_arbiter.last_rr_hot_reg[0]\ => addr_arbiter_aw_n_16,
      \gen_arbiter.m_grant_enc_i_reg[0]\ => \gen_master_slots[2].reg_slice_mi_n_8\,
      \gen_arbiter.m_grant_enc_i_reg[0]_0\ => \gen_master_slots[2].reg_slice_mi_n_11\,
      \gen_arbiter.qual_reg_reg[0]\ => \gen_master_slots[2].reg_slice_mi_n_10\,
      \gen_arbiter.qual_reg_reg[0]_0\ => \gen_master_slots[2].reg_slice_mi_n_12\,
      \gen_arbiter.qual_reg_reg[0]_1\ => addr_arbiter_ar_n_69,
      \gen_axi.s_axi_bvalid_i_reg\ => \gen_decerr_slave.decerr_slave_inst_n_8\,
      \gen_master_slots[0].r_issuing_cnt_reg[4]\ => \gen_master_slots[0].reg_slice_mi_n_80\,
      \gen_master_slots[0].w_issuing_cnt_reg[1]\ => \gen_master_slots[0].reg_slice_mi_n_4\,
      \gen_single_thread.accept_cnt_reg[0]\ => \gen_master_slots[2].reg_slice_mi_n_9\,
      \gen_single_thread.active_target_enc\(0) => \gen_single_thread.active_target_enc_7\(1),
      \gen_single_thread.active_target_enc_0\(0) => \gen_single_thread.active_target_enc_12\(1),
      \gen_single_thread.active_target_enc_2\(0) => \gen_single_thread.active_target_enc\(1),
      \gen_single_thread.active_target_enc_3\(0) => \gen_single_thread.active_target_enc_9\(1),
      \gen_single_thread.active_target_enc_reg[1]\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_4\,
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot_8\(0),
      \m_payload_i_reg[2]\(0) => st_mr_bid(0),
      \m_payload_i_reg[34]\(0) => st_mr_rvalid(2),
      \m_payload_i_reg[34]_0\(0) => st_mr_rlast(0),
      m_valid_i_reg => \gen_master_slots[2].reg_slice_mi_n_1\,
      match => match_3,
      match_1 => match,
      mi_bready_2 => mi_bready_2,
      mi_rready_2 => mi_rready_2,
      p_0_in(0) => p_0_in(1),
      p_15_in => p_15_in,
      p_17_in => p_17_in,
      p_1_in => p_1_in,
      p_20_in => p_20_in,
      p_21_in => p_21_in,
      p_24_in => p_24_in,
      r_issuing_cnt(0) => r_issuing_cnt(16),
      reset => reset_5,
      \s_axi_araddr[26]\ => addr_arbiter_ar_n_72,
      \s_axi_araddr[28]\ => addr_arbiter_ar_n_73,
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_rlast(1 downto 0) => s_axi_rlast(1 downto 0),
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      s_ready_i_reg(0) => st_mr_bvalid(2),
      s_ready_i_reg_0 => \gen_master_slots[2].reg_slice_mi_n_5\,
      s_ready_i_reg_1 => \gen_master_slots[2].reg_slice_mi_n_7\,
      st_mr_bid(0) => st_mr_bid(2),
      st_mr_bvalid(0) => st_mr_bvalid(0),
      w_issuing_cnt(0) => w_issuing_cnt(16)
    );
\gen_master_slots[2].w_issuing_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_3,
      Q => w_issuing_cnt(16),
      R => reset
    );
\gen_slave_slots[0].gen_si_read.si_transactor_ar\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor
     port map (
      SR(0) => reset,
      aclk => aclk,
      \gen_arbiter.any_grant_reg\ => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_4\,
      \gen_arbiter.qual_reg_reg[0]\ => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_5\,
      \gen_arbiter.qual_reg_reg[0]_0\ => addr_arbiter_ar_n_69,
      \gen_arbiter.s_ready_i_reg[0]\(0) => \^q\(0),
      \gen_master_slots[2].r_issuing_cnt_reg[16]\ => \gen_master_slots[2].reg_slice_mi_n_17\,
      \gen_single_thread.active_target_enc\(0) => \gen_single_thread.active_target_enc\(1),
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot\(0),
      \m_payload_i_reg[33]\(1 downto 0) => st_mr_rmesg(1 downto 0),
      \m_payload_i_reg[34]\ => \gen_master_slots[0].reg_slice_mi_n_91\,
      \m_payload_i_reg[34]_0\ => \gen_master_slots[0].reg_slice_mi_n_88\,
      \m_payload_i_reg[34]_1\ => \gen_master_slots[0].reg_slice_mi_n_90\,
      \m_payload_i_reg[35]\ => s_axi_rvalid_0_sn_1,
      match => match,
      \s_axi_araddr[26]\ => addr_arbiter_ar_n_72,
      \s_axi_araddr[28]\ => addr_arbiter_ar_n_73,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0)
    );
\gen_slave_slots[0].gen_si_write.si_transactor_aw\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized0\
     port map (
      D(0) => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_2\,
      Q(1 downto 0) => \gen_single_thread.accept_cnt\(1 downto 0),
      SR(0) => reset,
      aclk => aclk,
      \gen_arbiter.any_grant_reg\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5\,
      \gen_arbiter.last_rr_hot_reg[0]\ => addr_arbiter_aw_n_16,
      \gen_arbiter.qual_reg_reg[0]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2\,
      \gen_master_slots[2].w_issuing_cnt_reg[16]\ => \gen_master_slots[0].reg_slice_mi_n_82\,
      \gen_single_thread.active_target_enc\(0) => \gen_single_thread.active_target_enc_7\(1),
      \gen_single_thread.active_target_enc_1\(0) => \gen_single_thread.active_target_enc_12\(1),
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot_8\(0),
      \gen_single_thread.active_target_hot_0\(0) => \gen_single_thread.active_target_hot_13\(0),
      \m_payload_i_reg[2]\ => \gen_master_slots[2].reg_slice_mi_n_9\,
      \m_payload_i_reg[2]_0\(2) => st_mr_bid(0),
      \m_payload_i_reg[2]_0\(1 downto 0) => st_mr_bmesg(1 downto 0),
      \m_ready_d_reg[1]\ => \^s_axi_awready[0]\,
      m_valid_i_reg => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_6\,
      m_valid_i_reg_0 => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_7\,
      match => match_3,
      \s_axi_awaddr[26]\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_0\,
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      st_mr_bid(0) => st_mr_bid(2)
    );
\gen_slave_slots[0].gen_si_write.splitter_aw_si\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter
     port map (
      D(0) => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_2\,
      Q(1 downto 0) => m_ready_d(1 downto 0),
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.s_ready_i_reg[0]\(0) => ss_aa_awready(0),
      \gen_single_thread.accept_cnt_reg[1]\(1 downto 0) => \gen_single_thread.accept_cnt\(1 downto 0),
      out0(1) => \wrouter_aw_fifo/p_9_in\,
      out0(0) => \wrouter_aw_fifo/p_0_in8_in\,
      \s_axi_awready[0]\ => \^s_axi_awready[0]\,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_ready_i_reg(1 downto 0) => m_ready_d0_1(1 downto 0),
      ss_wr_awready_0 => ss_wr_awready_0,
      ss_wr_awvalid_0 => ss_wr_awvalid_0,
      \storage_data1_reg[1]\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_4\,
      \storage_data1_reg[1]_0\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5\
    );
\gen_slave_slots[0].gen_si_write.wdata_router_w\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_router
     port map (
      Q(0) => m_ready_d(1),
      SR(0) => reset,
      aclk => aclk,
      \gen_axi.s_axi_wready_i_reg\ => \gen_decerr_slave.decerr_slave_inst_n_9\,
      \gen_axi.write_cs_reg[0]\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_7\,
      \gen_rep[0].fifoaddr_reg[1]\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_8\,
      \gen_single_thread.active_target_enc_reg[1]\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_0\,
      in1 => \^areset_d1\,
      \m_ready_d_reg[1]\(0) => m_ready_d0_1(1),
      \m_ready_d_reg[1]_0\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5\,
      \m_ready_d_reg[1]_1\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_4\,
      m_select_enc => m_select_enc_6,
      m_select_enc_0 => m_select_enc,
      m_valid_i_reg => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_5\,
      m_valid_i_reg_0 => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_11\,
      m_valid_i_reg_1 => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_7\,
      match => match_3,
      out0(1) => \wrouter_aw_fifo/p_9_in\,
      out0(0) => \wrouter_aw_fifo/p_0_in8_in\,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready_0 => ss_wr_awready_0,
      ss_wr_awvalid_0 => ss_wr_awvalid_0,
      \storage_data1_reg[1]\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_2\,
      \storage_data1_reg[1]_0\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\
    );
\gen_slave_slots[1].gen_si_read.si_transactor_ar\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized1\
     port map (
      Q(0) => st_mr_rid(2),
      SR(0) => reset,
      aclk => aclk,
      \gen_arbiter.qual_reg_reg[0]\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_4\,
      \gen_arbiter.qual_reg_reg[1]\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_6\,
      \gen_arbiter.s_ready_i_reg[1]\(0) => \^q\(1),
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_5\,
      \gen_single_thread.active_target_enc\(0) => \gen_single_thread.active_target_enc_9\(1),
      \gen_single_thread.active_target_enc_0\(0) => \gen_single_thread.active_target_enc\(1),
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot_10\(0),
      \gen_single_thread.active_target_hot_1\(0) => \gen_single_thread.active_target_hot\(0),
      \m_payload_i_reg[34]\ => \gen_master_slots[0].reg_slice_mi_n_94\,
      \m_payload_i_reg[35]\(2) => st_mr_rid(0),
      \m_payload_i_reg[35]\(1 downto 0) => st_mr_rmesg(1 downto 0),
      match => match_0,
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(3 downto 2)
    );
\gen_slave_slots[1].gen_si_write.si_transactor_aw\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_si_transactor__parameterized2\
     port map (
      D(0) => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3\,
      Q(1 downto 0) => \gen_single_thread.accept_cnt_11\(1 downto 0),
      SR(0) => reset,
      aclk => aclk,
      \gen_arbiter.qual_reg_reg[1]\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_2\,
      \gen_single_thread.active_target_enc\(0) => \gen_single_thread.active_target_enc_12\(1),
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot_13\(0),
      \m_payload_i_reg[1]\(1 downto 0) => st_mr_bmesg(1 downto 0),
      \m_ready_d_reg[1]\ => \^s_axi_awready[1]\,
      match => match_4,
      \s_axi_awaddr[58]\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_0\,
      s_axi_bready(0) => s_axi_bready(1),
      s_axi_bresp(1 downto 0) => s_axi_bresp(3 downto 2),
      st_mr_bid(1) => st_mr_bid(2),
      st_mr_bid(0) => st_mr_bid(0),
      st_mr_bvalid(1) => st_mr_bvalid(2),
      st_mr_bvalid(0) => st_mr_bvalid(0)
    );
\gen_slave_slots[1].gen_si_write.splitter_aw_si\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter_3
     port map (
      D(0) => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3\,
      Q(1 downto 0) => m_ready_d_14(1 downto 0),
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.qual_reg_reg[1]\(0) => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_0\,
      \gen_arbiter.s_ready_i_reg[1]\(0) => ss_aa_awready(1),
      \gen_master_slots[2].w_issuing_cnt_reg[16]\ => \gen_master_slots[0].reg_slice_mi_n_81\,
      \gen_single_thread.accept_cnt_reg[1]\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_2\,
      \gen_single_thread.accept_cnt_reg[1]_0\(1 downto 0) => \gen_single_thread.accept_cnt_11\(1 downto 0),
      out0(1) => \wrouter_aw_fifo/p_9_in_16\,
      out0(0) => \wrouter_aw_fifo/p_0_in8_in_15\,
      \s_axi_awready[1]\ => \^s_axi_awready[1]\,
      s_axi_awvalid(0) => s_axi_awvalid(1),
      s_ready_i_reg(1 downto 0) => m_ready_d0(1 downto 0),
      ss_wr_awready_1 => ss_wr_awready_1,
      ss_wr_awvalid_1 => ss_wr_awvalid_1,
      \storage_data1_reg[1]\ => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_5\,
      \storage_data1_reg[1]_0\ => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_6\
    );
\gen_slave_slots[1].gen_si_write.wdata_router_w\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_wdata_router_4
     port map (
      Q(0) => m_ready_d_14(1),
      SR(0) => reset,
      aclk => aclk,
      \gen_axi.s_axi_wready_i_reg\ => \gen_decerr_slave.decerr_slave_inst_n_9\,
      \gen_rep[0].fifoaddr_reg[1]\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_7\,
      \gen_rep[0].fifoaddr_reg[1]_0\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_10\,
      \gen_single_thread.active_target_enc_reg[1]\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_0\,
      in1 => \^areset_d1\,
      m_avalid => m_avalid_17,
      \m_ready_d_reg[1]\(0) => m_ready_d0(1),
      \m_ready_d_reg[1]_0\ => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_6\,
      \m_ready_d_reg[1]_1\ => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_5\,
      m_select_enc => m_select_enc_6,
      m_select_enc_0 => m_select_enc,
      m_valid_i_reg => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_3\,
      m_valid_i_reg_0 => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_4\,
      m_valid_i_reg_1 => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_11\,
      m_valid_i_reg_2 => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_8\,
      match => match_4,
      out0(1) => \wrouter_aw_fifo/p_9_in_16\,
      out0(0) => \wrouter_aw_fifo/p_0_in8_in_15\,
      s_axi_awvalid(0) => s_axi_awvalid(1),
      s_axi_wlast(0) => s_axi_wlast(1),
      s_axi_wready(0) => s_axi_wready(1),
      s_axi_wvalid(0) => s_axi_wvalid(1),
      ss_wr_awready_1 => ss_wr_awready_1,
      ss_wr_awvalid_1 => ss_wr_awvalid_1,
      \storage_data1_reg[1]\ => \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4\,
      \storage_data1_reg[1]_0\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_2\
    );
splitter_aw_mi: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_splitter_5
     port map (
      D(1 downto 0) => m_ready_d0_2(1 downto 0),
      E(0) => splitter_aw_mi_n_3,
      Q(1 downto 0) => m_ready_d_18(1 downto 0),
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_arbiter.m_target_hot_i_reg[2]\(1) => aa_mi_awtarget_hot(2),
      \gen_arbiter.m_target_hot_i_reg[2]\(0) => aa_mi_awtarget_hot(0),
      \gen_master_slots[0].w_issuing_cnt_reg[1]\ => \gen_master_slots[0].w_issuing_cnt[4]_i_3_n_0\,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(0) => w_issuing_cnt(4),
      m_axi_awready(0) => m_axi_awready(0),
      \m_payload_i_reg[2]\ => \gen_master_slots[0].reg_slice_mi_n_5\,
      \m_ready_d_reg[0]_0\ => splitter_aw_mi_n_0,
      mi_awready_2 => mi_awready_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ruser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wuser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "zynquplus";
  attribute C_M_AXI_ADDR_WIDTH : string;
  attribute C_M_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000011000";
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "128'b11111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000001110001000000000000000000000000";
  attribute C_M_AXI_READ_CONNECTIVITY : string;
  attribute C_M_AXI_READ_CONNECTIVITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000001100000000000000000000000000000011";
  attribute C_M_AXI_READ_ISSUING : string;
  attribute C_M_AXI_READ_ISSUING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000001000000000000000000000000000010000";
  attribute C_M_AXI_SECURE : string;
  attribute C_M_AXI_SECURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_WRITE_CONNECTIVITY : string;
  attribute C_M_AXI_WRITE_CONNECTIVITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000001100000000000000000000000000000011";
  attribute C_M_AXI_WRITE_ISSUING : string;
  attribute C_M_AXI_WRITE_ISSUING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000001000000000000000000000000000010000";
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 2;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 2;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 0;
  attribute C_S_AXI_ARB_PRIORITY : string;
  attribute C_S_AXI_ARB_PRIORITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_BASE_ID : string;
  attribute C_S_AXI_BASE_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000000100000000000000000000000000000000";
  attribute C_S_AXI_READ_ACCEPTANCE : string;
  attribute C_S_AXI_READ_ACCEPTANCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000001000000000000000000000000000000010";
  attribute C_S_AXI_SINGLE_THREAD : string;
  attribute C_S_AXI_SINGLE_THREAD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_THREAD_ID_WIDTH : string;
  attribute C_S_AXI_THREAD_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_WRITE_ACCEPTANCE : string;
  attribute C_S_AXI_WRITE_ACCEPTANCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000001000000000000000000000000000000010";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "yes";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "rtl";
  attribute P_INCR : string;
  attribute P_INCR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 8;
  attribute P_LOCK : integer;
  attribute P_LOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "2'b11";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "2'b11";
  attribute P_ONES : string;
  attribute P_ONES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "2'b11";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar : entity is "2'b11";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar is
  signal \<const0>\ : STD_LOGIC;
  signal aa_wm_awgrant_enc : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/fifoaddr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/p_0_in6_in\ : STD_LOGIC;
  attribute RTL_KEEP of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/p_0_in6_in\ : signal is "yes";
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/p_7_in\ : STD_LOGIC;
  attribute RTL_KEEP of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/p_7_in\ : signal is "yes";
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/push\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data2\ : STD_LOGIC;
  signal \gen_samd.crossbar_samd_n_199\ : STD_LOGIC;
  signal \gen_samd.crossbar_samd_n_200\ : STD_LOGIC;
  signal \gen_samd.crossbar_samd_n_201\ : STD_LOGIC;
  signal \gen_samd.crossbar_samd_n_202\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/areset_d1\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal \^m_axi_arburst\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^m_axi_arcache\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^m_axi_arid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axi_arlock\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^m_axi_arprot\ : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \^m_axi_arqos\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^m_axi_arsize\ : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \^m_axi_arvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal \^m_axi_awburst\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^m_axi_awcache\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^m_axi_awid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awlen\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \^m_axi_awlock\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^m_axi_awprot\ : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \^m_axi_awqos\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \^m_axi_awsize\ : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \^m_axi_awvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_wlast\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[0]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP : string;
  attribute KEEP of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[1]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[2]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\ : label is "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100";
  attribute KEEP of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\ : label is "yes";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1\ : label is "inst/\gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1\ : label is "inst/\gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1 ";
begin
  \^s_axi_wdata\(63 downto 0) <= s_axi_wdata(63 downto 0);
  \^s_axi_wlast\(1 downto 0) <= s_axi_wlast(1 downto 0);
  \^s_axi_wstrb\(7 downto 0) <= s_axi_wstrb(7 downto 0);
  m_axi_araddr(63 downto 32) <= \^m_axi_araddr\(63 downto 32);
  m_axi_araddr(31 downto 0) <= \^m_axi_araddr\(63 downto 32);
  m_axi_arburst(3 downto 2) <= \^m_axi_arburst\(3 downto 2);
  m_axi_arburst(1 downto 0) <= \^m_axi_arburst\(3 downto 2);
  m_axi_arcache(7 downto 4) <= \^m_axi_arcache\(7 downto 4);
  m_axi_arcache(3 downto 0) <= \^m_axi_arcache\(7 downto 4);
  m_axi_arid(1) <= \^m_axi_arid\(0);
  m_axi_arid(0) <= \^m_axi_arid\(0);
  m_axi_arlen(15 downto 8) <= \^m_axi_arlen\(7 downto 0);
  m_axi_arlen(7 downto 0) <= \^m_axi_arlen\(7 downto 0);
  m_axi_arlock(1) <= \^m_axi_arlock\(1);
  m_axi_arlock(0) <= \^m_axi_arlock\(1);
  m_axi_arprot(5 downto 3) <= \^m_axi_arprot\(5 downto 3);
  m_axi_arprot(2 downto 0) <= \^m_axi_arprot\(5 downto 3);
  m_axi_arqos(7 downto 4) <= \^m_axi_arqos\(7 downto 4);
  m_axi_arqos(3 downto 0) <= \^m_axi_arqos\(7 downto 4);
  m_axi_arregion(7) <= \<const0>\;
  m_axi_arregion(6) <= \<const0>\;
  m_axi_arregion(5) <= \<const0>\;
  m_axi_arregion(4) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(5 downto 3) <= \^m_axi_arsize\(5 downto 3);
  m_axi_arsize(2 downto 0) <= \^m_axi_arsize\(5 downto 3);
  m_axi_aruser(1) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid(1) <= \<const0>\;
  m_axi_arvalid(0) <= \^m_axi_arvalid\(0);
  m_axi_awaddr(63 downto 32) <= \^m_axi_awaddr\(63 downto 32);
  m_axi_awaddr(31 downto 0) <= \^m_axi_awaddr\(63 downto 32);
  m_axi_awburst(3 downto 2) <= \^m_axi_awburst\(3 downto 2);
  m_axi_awburst(1 downto 0) <= \^m_axi_awburst\(3 downto 2);
  m_axi_awcache(7 downto 4) <= \^m_axi_awcache\(7 downto 4);
  m_axi_awcache(3 downto 0) <= \^m_axi_awcache\(7 downto 4);
  m_axi_awid(1) <= \^m_axi_awid\(0);
  m_axi_awid(0) <= \^m_axi_awid\(0);
  m_axi_awlen(15 downto 8) <= \^m_axi_awlen\(15 downto 8);
  m_axi_awlen(7 downto 0) <= \^m_axi_awlen\(15 downto 8);
  m_axi_awlock(1) <= \^m_axi_awlock\(1);
  m_axi_awlock(0) <= \^m_axi_awlock\(1);
  m_axi_awprot(5 downto 3) <= \^m_axi_awprot\(5 downto 3);
  m_axi_awprot(2 downto 0) <= \^m_axi_awprot\(5 downto 3);
  m_axi_awqos(7 downto 4) <= \^m_axi_awqos\(7 downto 4);
  m_axi_awqos(3 downto 0) <= \^m_axi_awqos\(7 downto 4);
  m_axi_awregion(7) <= \<const0>\;
  m_axi_awregion(6) <= \<const0>\;
  m_axi_awregion(5) <= \<const0>\;
  m_axi_awregion(4) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(5 downto 3) <= \^m_axi_awsize\(5 downto 3);
  m_axi_awsize(2 downto 0) <= \^m_axi_awsize\(5 downto 3);
  m_axi_awuser(1) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid(1) <= \<const0>\;
  m_axi_awvalid(0) <= \^m_axi_awvalid\(0);
  m_axi_wdata(63 downto 32) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast(1) <= \^s_axi_wlast\(0);
  m_axi_wlast(0) <= \^m_axi_wlast\(0);
  m_axi_wstrb(7 downto 4) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wstrb(3 downto 0) <= \^m_axi_wstrb\(3 downto 0);
  m_axi_wuser(1) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid(1) <= \<const0>\;
  m_axi_wvalid(0) <= \^m_axi_wvalid\(0);
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_buser(1) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_ruser(1) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i\,
      D => \gen_samd.crossbar_samd_n_202\,
      Q => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/p_7_in\,
      S => \gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/areset_d1\
    );
\gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i\,
      D => \gen_samd.crossbar_samd_n_201\,
      Q => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/p_0_in6_in\,
      R => \gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/areset_d1\
    );
\gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i\,
      D => \gen_samd.crossbar_samd_n_200\,
      Q => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg_n_0_[2]\,
      R => \gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/areset_d1\
    );
\gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i\,
      D => \gen_samd.crossbar_samd_n_199\,
      Q => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg_n_0_[3]\,
      R => \gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/areset_d1\
    );
\gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => '0',
      A(3 downto 0) => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/fifoaddr\(3 downto 0),
      CE => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/push\,
      CLK => aclk,
      D => aa_wm_awgrant_enc,
      Q => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data2\,
      Q31 => \NLW_gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl1_Q31_UNCONNECTED\
    );
\gen_samd.crossbar_samd\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_crossbar
     port map (
      D(2) => m_axi_bid(0),
      D(1 downto 0) => m_axi_bresp(1 downto 0),
      E(0) => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/m_valid_i\,
      Q(1 downto 0) => s_axi_arready(1 downto 0),
      aa_wm_awgrant_enc => aa_wm_awgrant_enc,
      aclk => aclk,
      areset_d1 => \gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/areset_d1\,
      aresetn => aresetn,
      \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\(3) => \gen_samd.crossbar_samd_n_199\,
      \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\(2) => \gen_samd.crossbar_samd_n_200\,
      \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\(1) => \gen_samd.crossbar_samd_n_201\,
      \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg[3]\(0) => \gen_samd.crossbar_samd_n_202\,
      \gen_rep[0].fifoaddr_reg[3]\(3 downto 0) => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/fifoaddr\(3 downto 0),
      \m_axi_arqos[7]\(57 downto 54) => \^m_axi_arqos\(7 downto 4),
      \m_axi_arqos[7]\(53 downto 50) => \^m_axi_arcache\(7 downto 4),
      \m_axi_arqos[7]\(49 downto 48) => \^m_axi_arburst\(3 downto 2),
      \m_axi_arqos[7]\(47 downto 45) => \^m_axi_arprot\(5 downto 3),
      \m_axi_arqos[7]\(44) => \^m_axi_arlock\(1),
      \m_axi_arqos[7]\(43 downto 41) => \^m_axi_arsize\(5 downto 3),
      \m_axi_arqos[7]\(40 downto 33) => \^m_axi_arlen\(7 downto 0),
      \m_axi_arqos[7]\(32 downto 1) => \^m_axi_araddr\(63 downto 32),
      \m_axi_arqos[7]\(0) => \^m_axi_arid\(0),
      m_axi_arready(0) => m_axi_arready(0),
      m_axi_arvalid(0) => \^m_axi_arvalid\(0),
      \m_axi_awqos[7]\(57 downto 54) => \^m_axi_awqos\(7 downto 4),
      \m_axi_awqos[7]\(53 downto 50) => \^m_axi_awcache\(7 downto 4),
      \m_axi_awqos[7]\(49 downto 48) => \^m_axi_awburst\(3 downto 2),
      \m_axi_awqos[7]\(47 downto 45) => \^m_axi_awprot\(5 downto 3),
      \m_axi_awqos[7]\(44) => \^m_axi_awlock\(1),
      \m_axi_awqos[7]\(43 downto 41) => \^m_axi_awsize\(5 downto 3),
      \m_axi_awqos[7]\(40 downto 33) => \^m_axi_awlen\(15 downto 8),
      \m_axi_awqos[7]\(32 downto 1) => \^m_axi_awaddr\(63 downto 32),
      \m_axi_awqos[7]\(0) => \^m_axi_awid\(0),
      m_axi_awready(0) => m_axi_awready(0),
      m_axi_awvalid(0) => \^m_axi_awvalid\(0),
      m_axi_bready(1 downto 0) => m_axi_bready(1 downto 0),
      m_axi_bvalid(1 downto 0) => m_axi_bvalid(1 downto 0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rready(0) => m_axi_rready(1),
      m_axi_rready_0_sp_1 => m_axi_rready(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(1 downto 0) => m_axi_rvalid(1 downto 0),
      m_axi_wdata(31 downto 0) => \^m_axi_wdata\(31 downto 0),
      m_axi_wlast(0) => \^m_axi_wlast\(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(3 downto 0) => \^m_axi_wstrb\(3 downto 0),
      m_axi_wvalid(0) => \^m_axi_wvalid\(0),
      \out\(2) => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/FSM_onehot_state_reg_n_0_[3]\,
      \out\(1) => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/p_0_in6_in\,
      \out\(0) => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/p_7_in\,
      push => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/push\,
      s_axi_araddr(63 downto 0) => s_axi_araddr(63 downto 0),
      s_axi_arburst(3 downto 0) => s_axi_arburst(3 downto 0),
      s_axi_arcache(7 downto 0) => s_axi_arcache(7 downto 0),
      s_axi_arlen(15 downto 0) => s_axi_arlen(15 downto 0),
      s_axi_arlock(1 downto 0) => s_axi_arlock(1 downto 0),
      s_axi_arprot(5 downto 0) => s_axi_arprot(5 downto 0),
      s_axi_arqos(7 downto 0) => s_axi_arqos(7 downto 0),
      s_axi_arsize(5 downto 0) => s_axi_arsize(5 downto 0),
      s_axi_arvalid(1 downto 0) => s_axi_arvalid(1 downto 0),
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(3 downto 0) => s_axi_awburst(3 downto 0),
      s_axi_awcache(7 downto 0) => s_axi_awcache(7 downto 0),
      s_axi_awlen(15 downto 0) => s_axi_awlen(15 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(5 downto 0) => s_axi_awprot(5 downto 0),
      s_axi_awqos(7 downto 0) => s_axi_awqos(7 downto 0),
      \s_axi_awready[0]\ => s_axi_awready(0),
      \s_axi_awready[1]\ => s_axi_awready(1),
      s_axi_awsize(5 downto 0) => s_axi_awsize(5 downto 0),
      s_axi_awvalid(1 downto 0) => s_axi_awvalid(1 downto 0),
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bresp(3 downto 0) => s_axi_bresp(3 downto 0),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rlast(1 downto 0) => s_axi_rlast(1 downto 0),
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      s_axi_rresp(3 downto 0) => s_axi_rresp(3 downto 0),
      s_axi_rvalid(0) => s_axi_rvalid(1),
      s_axi_rvalid_0_sp_1 => s_axi_rvalid(0),
      s_axi_wdata(63 downto 0) => \^s_axi_wdata\(63 downto 0),
      s_axi_wlast(1 downto 0) => \^s_axi_wlast\(1 downto 0),
      s_axi_wready(1 downto 0) => s_axi_wready(1 downto 0),
      s_axi_wstrb(7 downto 0) => \^s_axi_wstrb\(7 downto 0),
      s_axi_wvalid(1 downto 0) => s_axi_wvalid(1 downto 0),
      storage_data2 => \gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/storage_data2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_xbar_1,axi_crossbar_v2_1_16_axi_crossbar,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_crossbar_v2_1_16_axi_crossbar,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of inst : label is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynquplus";
  attribute C_M_AXI_ADDR_WIDTH : string;
  attribute C_M_AXI_ADDR_WIDTH of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000011000";
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of inst : label is "128'b11111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000001110001000000000000000000000000";
  attribute C_M_AXI_READ_CONNECTIVITY : string;
  attribute C_M_AXI_READ_CONNECTIVITY of inst : label is "64'b0000000000000000000000000000001100000000000000000000000000000011";
  attribute C_M_AXI_READ_ISSUING : string;
  attribute C_M_AXI_READ_ISSUING of inst : label is "64'b0000000000000000000000000000001000000000000000000000000000010000";
  attribute C_M_AXI_SECURE : string;
  attribute C_M_AXI_SECURE of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_WRITE_CONNECTIVITY : string;
  attribute C_M_AXI_WRITE_CONNECTIVITY of inst : label is "64'b0000000000000000000000000000001100000000000000000000000000000011";
  attribute C_M_AXI_WRITE_ISSUING : string;
  attribute C_M_AXI_WRITE_ISSUING of inst : label is "64'b0000000000000000000000000000001000000000000000000000000000010000";
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of inst : label is 1;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of inst : label is 2;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of inst : label is 2;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of inst : label is 0;
  attribute C_S_AXI_ARB_PRIORITY : string;
  attribute C_S_AXI_ARB_PRIORITY of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_BASE_ID : string;
  attribute C_S_AXI_BASE_ID of inst : label is "64'b0000000000000000000000000000000100000000000000000000000000000000";
  attribute C_S_AXI_READ_ACCEPTANCE : string;
  attribute C_S_AXI_READ_ACCEPTANCE of inst : label is "64'b0000000000000000000000000000001000000000000000000000000000000010";
  attribute C_S_AXI_SINGLE_THREAD : string;
  attribute C_S_AXI_SINGLE_THREAD of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_THREAD_ID_WIDTH : string;
  attribute C_S_AXI_THREAD_ID_WIDTH of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_WRITE_ACCEPTANCE : string;
  attribute C_S_AXI_WRITE_ACCEPTANCE of inst : label is "64'b0000000000000000000000000000001000000000000000000000000000000010";
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of inst : label is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of inst : label is "rtl";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of inst : label is 8;
  attribute P_LOCK : integer;
  attribute P_LOCK of inst : label is 1;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of inst : label is "2'b11";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of inst : label is "2'b11";
  attribute P_ONES : string;
  attribute P_ONES of inst : label is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of inst : label is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of inst : label is "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of inst : label is "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of inst : label is "2'b11";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of inst : label is "2'b11";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET ARESETN";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [31:0] [63:32]";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARBURST [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLEN [7:0] [15:8]";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3]";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARQOS [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREGION [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE [2:0] [5:3]";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [31:0] [63:32]";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWBURST [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLEN [7:0] [15:8]";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3]";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWQOS [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREGION [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE [2:0] [5:3]";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [31:0] [63:32]";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1]";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, XIL_INTERFACENAME M01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2]";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [31:0] [63:32]";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [3:0] [7:4]";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI ARADDR [31:0] [63:32]";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARBURST [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLEN [7:0] [15:8]";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARPROT [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARQOS [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI AWADDR [31:0] [63:32]";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWBURST [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLEN [7:0] [15:8]";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWPROT [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWQOS [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BRESP [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI RDATA [31:0] [63:32]";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RREADY [0:0] [1:1]";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RRESP [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI WDATA [31:0] [63:32]";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI WSTRB [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WVALID [0:0] [1:1]";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_crossbar_v2_1_16_axi_crossbar
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(63 downto 0) => m_axi_araddr(63 downto 0),
      m_axi_arburst(3 downto 0) => m_axi_arburst(3 downto 0),
      m_axi_arcache(7 downto 0) => m_axi_arcache(7 downto 0),
      m_axi_arid(1 downto 0) => m_axi_arid(1 downto 0),
      m_axi_arlen(15 downto 0) => m_axi_arlen(15 downto 0),
      m_axi_arlock(1 downto 0) => m_axi_arlock(1 downto 0),
      m_axi_arprot(5 downto 0) => m_axi_arprot(5 downto 0),
      m_axi_arqos(7 downto 0) => m_axi_arqos(7 downto 0),
      m_axi_arready(1 downto 0) => m_axi_arready(1 downto 0),
      m_axi_arregion(7 downto 0) => m_axi_arregion(7 downto 0),
      m_axi_arsize(5 downto 0) => m_axi_arsize(5 downto 0),
      m_axi_aruser(1 downto 0) => NLW_inst_m_axi_aruser_UNCONNECTED(1 downto 0),
      m_axi_arvalid(1 downto 0) => m_axi_arvalid(1 downto 0),
      m_axi_awaddr(63 downto 0) => m_axi_awaddr(63 downto 0),
      m_axi_awburst(3 downto 0) => m_axi_awburst(3 downto 0),
      m_axi_awcache(7 downto 0) => m_axi_awcache(7 downto 0),
      m_axi_awid(1 downto 0) => m_axi_awid(1 downto 0),
      m_axi_awlen(15 downto 0) => m_axi_awlen(15 downto 0),
      m_axi_awlock(1 downto 0) => m_axi_awlock(1 downto 0),
      m_axi_awprot(5 downto 0) => m_axi_awprot(5 downto 0),
      m_axi_awqos(7 downto 0) => m_axi_awqos(7 downto 0),
      m_axi_awready(1 downto 0) => m_axi_awready(1 downto 0),
      m_axi_awregion(7 downto 0) => m_axi_awregion(7 downto 0),
      m_axi_awsize(5 downto 0) => m_axi_awsize(5 downto 0),
      m_axi_awuser(1 downto 0) => NLW_inst_m_axi_awuser_UNCONNECTED(1 downto 0),
      m_axi_awvalid(1 downto 0) => m_axi_awvalid(1 downto 0),
      m_axi_bid(1 downto 0) => m_axi_bid(1 downto 0),
      m_axi_bready(1 downto 0) => m_axi_bready(1 downto 0),
      m_axi_bresp(3 downto 0) => m_axi_bresp(3 downto 0),
      m_axi_buser(1 downto 0) => B"00",
      m_axi_bvalid(1 downto 0) => m_axi_bvalid(1 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(1 downto 0) => m_axi_rid(1 downto 0),
      m_axi_rlast(1 downto 0) => m_axi_rlast(1 downto 0),
      m_axi_rready(1 downto 0) => m_axi_rready(1 downto 0),
      m_axi_rresp(3 downto 0) => m_axi_rresp(3 downto 0),
      m_axi_ruser(1 downto 0) => B"00",
      m_axi_rvalid(1 downto 0) => m_axi_rvalid(1 downto 0),
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wid(1 downto 0) => NLW_inst_m_axi_wid_UNCONNECTED(1 downto 0),
      m_axi_wlast(1 downto 0) => m_axi_wlast(1 downto 0),
      m_axi_wready(1 downto 0) => m_axi_wready(1 downto 0),
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wuser(1 downto 0) => NLW_inst_m_axi_wuser_UNCONNECTED(1 downto 0),
      m_axi_wvalid(1 downto 0) => m_axi_wvalid(1 downto 0),
      s_axi_araddr(63 downto 0) => s_axi_araddr(63 downto 0),
      s_axi_arburst(3 downto 0) => s_axi_arburst(3 downto 0),
      s_axi_arcache(7 downto 0) => s_axi_arcache(7 downto 0),
      s_axi_arid(1 downto 0) => s_axi_arid(1 downto 0),
      s_axi_arlen(15 downto 0) => s_axi_arlen(15 downto 0),
      s_axi_arlock(1 downto 0) => s_axi_arlock(1 downto 0),
      s_axi_arprot(5 downto 0) => s_axi_arprot(5 downto 0),
      s_axi_arqos(7 downto 0) => s_axi_arqos(7 downto 0),
      s_axi_arready(1 downto 0) => s_axi_arready(1 downto 0),
      s_axi_arsize(5 downto 0) => s_axi_arsize(5 downto 0),
      s_axi_aruser(1 downto 0) => B"00",
      s_axi_arvalid(1 downto 0) => s_axi_arvalid(1 downto 0),
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(3 downto 0) => s_axi_awburst(3 downto 0),
      s_axi_awcache(7 downto 0) => s_axi_awcache(7 downto 0),
      s_axi_awid(1 downto 0) => s_axi_awid(1 downto 0),
      s_axi_awlen(15 downto 0) => s_axi_awlen(15 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(5 downto 0) => s_axi_awprot(5 downto 0),
      s_axi_awqos(7 downto 0) => s_axi_awqos(7 downto 0),
      s_axi_awready(1 downto 0) => s_axi_awready(1 downto 0),
      s_axi_awsize(5 downto 0) => s_axi_awsize(5 downto 0),
      s_axi_awuser(1 downto 0) => B"00",
      s_axi_awvalid(1 downto 0) => s_axi_awvalid(1 downto 0),
      s_axi_bid(1 downto 0) => s_axi_bid(1 downto 0),
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bresp(3 downto 0) => s_axi_bresp(3 downto 0),
      s_axi_buser(1 downto 0) => NLW_inst_s_axi_buser_UNCONNECTED(1 downto 0),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(1 downto 0) => s_axi_rid(1 downto 0),
      s_axi_rlast(1 downto 0) => s_axi_rlast(1 downto 0),
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      s_axi_rresp(3 downto 0) => s_axi_rresp(3 downto 0),
      s_axi_ruser(1 downto 0) => NLW_inst_s_axi_ruser_UNCONNECTED(1 downto 0),
      s_axi_rvalid(1 downto 0) => s_axi_rvalid(1 downto 0),
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wid(1 downto 0) => B"00",
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      s_axi_wready(1 downto 0) => s_axi_wready(1 downto 0),
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wuser(1 downto 0) => B"00",
      s_axi_wvalid(1 downto 0) => s_axi_wvalid(1 downto 0)
    );
end STRUCTURE;
