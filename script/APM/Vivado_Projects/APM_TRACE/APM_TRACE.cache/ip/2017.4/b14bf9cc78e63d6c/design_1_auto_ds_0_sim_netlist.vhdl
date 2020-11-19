-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Tue May  5 13:04:20 2020
-- Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_auto_ds_0_sim_netlist.vhdl
-- Design      : design_1_auto_ds_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_b_downsizer is
  port (
    rd_en : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    empty : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_b_downsizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_b_downsizer is
  signal S_AXI_BRESP_ACC : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal first_mi_word : STD_LOGIC;
  signal last_word : STD_LOGIC;
  signal next_repeat_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal \repeat_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \repeat_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \repeat_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \repeat_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \repeat_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \repeat_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \repeat_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \repeat_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_bvalid_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_axi_bvalid_INST_0_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fifo_gen_inst_i_7 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of first_mi_word_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_axi_bready_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \repeat_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \repeat_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \repeat_cnt[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \repeat_cnt[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axi_bvalid_INST_0 : label is "soft_lutpair1";
begin
  s_axi_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
\S_AXI_BRESP_ACC_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => \^s_axi_bresp\(0),
      Q => S_AXI_BRESP_ACC(0),
      R => SR(0)
    );
\S_AXI_BRESP_ACC_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => \^s_axi_bresp\(1),
      Q => S_AXI_BRESP_ACC(1),
      R => SR(0)
    );
fifo_gen_inst_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => s_axi_bvalid_INST_0_i_1_n_0,
      I1 => m_axi_bvalid,
      I2 => s_axi_bready,
      I3 => empty,
      O => rd_en
    );
first_mi_word_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => s_axi_bvalid_INST_0_i_1_n_0,
      I2 => s_axi_bready,
      O => p_1_in
    );
first_mi_word_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_bvalid_INST_0_i_1_n_0,
      O => last_word
    );
first_mi_word_reg: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => p_1_in,
      D => last_word,
      Q => first_mi_word,
      S => SR(0)
    );
m_axi_bready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_bvalid_INST_0_i_1_n_0,
      I1 => s_axi_bready,
      O => m_axi_bready
    );
\repeat_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \repeat_cnt_reg__0\(0),
      I1 => first_mi_word,
      I2 => dout(0),
      O => next_repeat_cnt(0)
    );
\repeat_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => \repeat_cnt_reg__0\(0),
      I1 => dout(0),
      I2 => \repeat_cnt_reg__0\(1),
      I3 => first_mi_word,
      I4 => dout(1),
      O => \repeat_cnt[1]_i_1_n_0\
    );
\repeat_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFC030505FC03"
    )
        port map (
      I0 => dout(1),
      I1 => \repeat_cnt_reg__0\(1),
      I2 => \repeat_cnt[2]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(2),
      I4 => first_mi_word,
      I5 => dout(2),
      O => next_repeat_cnt(2)
    );
\repeat_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(0),
      I1 => first_mi_word,
      I2 => \repeat_cnt_reg__0\(0),
      O => \repeat_cnt[2]_i_2_n_0\
    );
\repeat_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(2),
      I1 => \repeat_cnt_reg__0\(2),
      I2 => \repeat_cnt[3]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(3),
      I4 => first_mi_word,
      I5 => dout(3),
      O => next_repeat_cnt(3)
    );
\repeat_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \repeat_cnt_reg__0\(0),
      I1 => dout(0),
      I2 => \repeat_cnt_reg__0\(1),
      I3 => first_mi_word,
      I4 => dout(1),
      O => \repeat_cnt[3]_i_2_n_0\
    );
\repeat_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(3),
      I1 => \repeat_cnt_reg__0\(3),
      I2 => \repeat_cnt[4]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(4),
      I4 => first_mi_word,
      I5 => dout(4),
      O => next_repeat_cnt(4)
    );
\repeat_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000305050003"
    )
        port map (
      I0 => dout(1),
      I1 => \repeat_cnt_reg__0\(1),
      I2 => \repeat_cnt[2]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(2),
      I4 => first_mi_word,
      I5 => dout(2),
      O => \repeat_cnt[4]_i_2_n_0\
    );
\repeat_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(4),
      I1 => \repeat_cnt_reg__0\(4),
      I2 => \repeat_cnt[5]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(5),
      I4 => first_mi_word,
      I5 => dout(5),
      O => next_repeat_cnt(5)
    );
\repeat_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => dout(2),
      I1 => \repeat_cnt_reg__0\(2),
      I2 => \repeat_cnt[3]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(3),
      I4 => first_mi_word,
      I5 => dout(3),
      O => \repeat_cnt[5]_i_2_n_0\
    );
\repeat_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(5),
      I1 => \repeat_cnt_reg__0\(5),
      I2 => \repeat_cnt[6]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(6),
      I4 => first_mi_word,
      I5 => dout(6),
      O => next_repeat_cnt(6)
    );
\repeat_cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => dout(3),
      I1 => \repeat_cnt_reg__0\(3),
      I2 => \repeat_cnt[4]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(4),
      I4 => first_mi_word,
      I5 => dout(4),
      O => \repeat_cnt[6]_i_2_n_0\
    );
\repeat_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(6),
      I1 => \repeat_cnt_reg__0\(6),
      I2 => \repeat_cnt[7]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(7),
      I4 => first_mi_word,
      I5 => dout(7),
      O => next_repeat_cnt(7)
    );
\repeat_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => dout(4),
      I1 => \repeat_cnt_reg__0\(4),
      I2 => \repeat_cnt[5]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(5),
      I4 => first_mi_word,
      I5 => dout(5),
      O => \repeat_cnt[7]_i_2_n_0\
    );
\repeat_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(0),
      Q => \repeat_cnt_reg__0\(0),
      R => SR(0)
    );
\repeat_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => \repeat_cnt[1]_i_1_n_0\,
      Q => \repeat_cnt_reg__0\(1),
      R => SR(0)
    );
\repeat_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(2),
      Q => \repeat_cnt_reg__0\(2),
      R => SR(0)
    );
\repeat_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(3),
      Q => \repeat_cnt_reg__0\(3),
      R => SR(0)
    );
\repeat_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(4),
      Q => \repeat_cnt_reg__0\(4),
      R => SR(0)
    );
\repeat_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(5),
      Q => \repeat_cnt_reg__0\(5),
      R => SR(0)
    );
\repeat_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(6),
      Q => \repeat_cnt_reg__0\(6),
      R => SR(0)
    );
\repeat_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(7),
      Q => \repeat_cnt_reg__0\(7),
      R => SR(0)
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAECAEAAAA"
    )
        port map (
      I0 => m_axi_bresp(0),
      I1 => S_AXI_BRESP_ACC(0),
      I2 => m_axi_bresp(1),
      I3 => S_AXI_BRESP_ACC(1),
      I4 => dout(8),
      I5 => first_mi_word,
      O => \^s_axi_bresp\(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => m_axi_bresp(1),
      I1 => dout(8),
      I2 => first_mi_word,
      I3 => S_AXI_BRESP_ACC(1),
      O => \^s_axi_bresp\(1)
    );
s_axi_bvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => s_axi_bvalid_INST_0_i_1_n_0,
      O => s_axi_bvalid
    );
s_axi_bvalid_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => dout(8),
      I1 => s_axi_bvalid_INST_0_i_2_n_0,
      I2 => \repeat_cnt_reg__0\(1),
      I3 => \repeat_cnt_reg__0\(7),
      I4 => \repeat_cnt_reg__0\(5),
      O => s_axi_bvalid_INST_0_i_1_n_0
    );
s_axi_bvalid_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \repeat_cnt_reg__0\(2),
      I1 => first_mi_word,
      I2 => \repeat_cnt_reg__0\(6),
      I3 => \repeat_cnt_reg__0\(4),
      I4 => \repeat_cnt_reg__0\(0),
      I5 => \repeat_cnt_reg__0\(3),
      O => s_axi_bvalid_INST_0_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_w_downsizer is
  port (
    first_mi_word : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC;
    \current_word_1_reg[6]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \goreg_dm.dout_i_reg[37]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_w_downsizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_w_downsizer is
  signal \^first_mi_word\ : STD_LOGIC;
  signal \length_counter_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \length_counter_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \length_counter_1[4]_i_2_n_0\ : STD_LOGIC;
  signal \length_counter_1[6]_i_2_n_0\ : STD_LOGIC;
  signal length_counter_1_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axi_wlast\ : STD_LOGIC;
  signal m_axi_wlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal m_axi_wlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal next_length_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \length_counter_1[0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \length_counter_1[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \length_counter_1[2]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \length_counter_1[3]_i_2\ : label is "soft_lutpair58";
begin
  first_mi_word <= \^first_mi_word\;
  m_axi_wlast <= \^m_axi_wlast\;
\current_word_1[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^first_mi_word\,
      I1 => \goreg_dm.dout_i_reg[37]\(8),
      O => \current_word_1_reg[6]_0\
    );
\current_word_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\current_word_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\current_word_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\current_word_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\current_word_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\current_word_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => SR(0)
    );
\current_word_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => SR(0)
    );
first_word_reg: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => E(0),
      D => \^m_axi_wlast\,
      Q => \^first_mi_word\,
      S => SR(0)
    );
\length_counter_1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => length_counter_1_reg(0),
      I1 => \^first_mi_word\,
      I2 => \goreg_dm.dout_i_reg[37]\(0),
      O => next_length_counter(0)
    );
\length_counter_1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => length_counter_1_reg(0),
      I1 => \goreg_dm.dout_i_reg[37]\(0),
      I2 => length_counter_1_reg(1),
      I3 => \^first_mi_word\,
      I4 => \goreg_dm.dout_i_reg[37]\(1),
      O => \length_counter_1[1]_i_1_n_0\
    );
\length_counter_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFC030505FC03"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[37]\(1),
      I1 => length_counter_1_reg(1),
      I2 => \length_counter_1[2]_i_2_n_0\,
      I3 => length_counter_1_reg(2),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[37]\(2),
      O => next_length_counter(2)
    );
\length_counter_1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[37]\(0),
      I1 => \^first_mi_word\,
      I2 => length_counter_1_reg(0),
      O => \length_counter_1[2]_i_2_n_0\
    );
\length_counter_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[37]\(2),
      I1 => length_counter_1_reg(2),
      I2 => \length_counter_1[3]_i_2_n_0\,
      I3 => length_counter_1_reg(3),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[37]\(3),
      O => next_length_counter(3)
    );
\length_counter_1[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => length_counter_1_reg(0),
      I1 => \goreg_dm.dout_i_reg[37]\(0),
      I2 => length_counter_1_reg(1),
      I3 => \^first_mi_word\,
      I4 => \goreg_dm.dout_i_reg[37]\(1),
      O => \length_counter_1[3]_i_2_n_0\
    );
\length_counter_1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[37]\(3),
      I1 => length_counter_1_reg(3),
      I2 => \length_counter_1[4]_i_2_n_0\,
      I3 => length_counter_1_reg(4),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[37]\(4),
      O => next_length_counter(4)
    );
\length_counter_1[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000305050003"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[37]\(1),
      I1 => length_counter_1_reg(1),
      I2 => \length_counter_1[2]_i_2_n_0\,
      I3 => length_counter_1_reg(2),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[37]\(2),
      O => \length_counter_1[4]_i_2_n_0\
    );
\length_counter_1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[37]\(4),
      I1 => length_counter_1_reg(4),
      I2 => m_axi_wlast_INST_0_i_2_n_0,
      I3 => length_counter_1_reg(5),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[37]\(5),
      O => next_length_counter(5)
    );
\length_counter_1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[37]\(5),
      I1 => length_counter_1_reg(5),
      I2 => \length_counter_1[6]_i_2_n_0\,
      I3 => length_counter_1_reg(6),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[37]\(6),
      O => next_length_counter(6)
    );
\length_counter_1[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[37]\(3),
      I1 => length_counter_1_reg(3),
      I2 => \length_counter_1[4]_i_2_n_0\,
      I3 => length_counter_1_reg(4),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[37]\(4),
      O => \length_counter_1[6]_i_2_n_0\
    );
\length_counter_1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[37]\(6),
      I1 => length_counter_1_reg(6),
      I2 => m_axi_wlast_INST_0_i_1_n_0,
      I3 => length_counter_1_reg(7),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[37]\(7),
      O => next_length_counter(7)
    );
\length_counter_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(0),
      Q => length_counter_1_reg(0),
      R => SR(0)
    );
\length_counter_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \length_counter_1[1]_i_1_n_0\,
      Q => length_counter_1_reg(1),
      R => SR(0)
    );
\length_counter_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(2),
      Q => length_counter_1_reg(2),
      R => SR(0)
    );
\length_counter_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(3),
      Q => length_counter_1_reg(3),
      R => SR(0)
    );
\length_counter_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(4),
      Q => length_counter_1_reg(4),
      R => SR(0)
    );
\length_counter_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(5),
      Q => length_counter_1_reg(5),
      R => SR(0)
    );
\length_counter_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(6),
      Q => length_counter_1_reg(6),
      R => SR(0)
    );
\length_counter_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(7),
      Q => length_counter_1_reg(7),
      R => SR(0)
    );
m_axi_wlast_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[37]\(6),
      I1 => length_counter_1_reg(6),
      I2 => m_axi_wlast_INST_0_i_1_n_0,
      I3 => length_counter_1_reg(7),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[37]\(7),
      O => \^m_axi_wlast\
    );
m_axi_wlast_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[37]\(4),
      I1 => length_counter_1_reg(4),
      I2 => m_axi_wlast_INST_0_i_2_n_0,
      I3 => length_counter_1_reg(5),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[37]\(5),
      O => m_axi_wlast_INST_0_i_1_n_0
    );
m_axi_wlast_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[37]\(2),
      I1 => length_counter_1_reg(2),
      I2 => \length_counter_1[3]_i_2_n_0\,
      I3 => length_counter_1_reg(3),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[37]\(3),
      O => m_axi_wlast_INST_0_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst : entity is "ASYNC_RST";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ : entity is "ASYNC_RST";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmem is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    I15 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmem;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmem is
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_RAM_reg_0_31_0_5_DOE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_RAM_reg_0_31_0_5_DOF_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_0_5_DOG_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_0_5_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_0_5 : label is "";
begin
RAM_reg_0_31_0_5: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRE(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRF(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRG(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRH(4 downto 0) => I15(4 downto 0),
      DIA(1 downto 0) => din(1 downto 0),
      DIB(1 downto 0) => din(3 downto 2),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DIE(1) => '0',
      DIE(0) => din(4),
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => p_0_out(7 downto 6),
      DOE(1) => NLW_RAM_reg_0_31_0_5_DOE_UNCONNECTED(1),
      DOE(0) => p_0_out(8),
      DOF(1 downto 0) => NLW_RAM_reg_0_31_0_5_DOF_UNCONNECTED(1 downto 0),
      DOG(1 downto 0) => NLW_RAM_reg_0_31_0_5_DOG_UNCONNECTED(1 downto 0),
      DOH(1 downto 0) => NLW_RAM_reg_0_31_0_5_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(0),
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(1),
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(2),
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(3),
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(4),
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(5),
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(6),
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(7),
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(8),
      Q => dout_i(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmem__parameterized0\ is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 36 downto 0 );
    clk : in STD_LOGIC;
    EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 37 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmem__parameterized0\ : entity is "dmem";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmem__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmem__parameterized0\ is
  signal RAM_reg_0_31_12_17_n_9 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 37 downto 0 );
  signal NLW_RAM_reg_0_31_0_5_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_12_17_DOF_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_12_17_DOG_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_12_17_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_6_11_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_12_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_6_11 : label is "";
begin
RAM_reg_0_31_0_5: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRE(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRF(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRG(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRH(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => din(1 downto 0),
      DIB(1 downto 0) => din(3 downto 2),
      DIC(1 downto 0) => din(5 downto 4),
      DID(1 downto 0) => din(7 downto 6),
      DIE(1 downto 0) => din(9 downto 8),
      DIF(1 downto 0) => din(11 downto 10),
      DIG(1 downto 0) => din(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => p_0_out(7 downto 6),
      DOE(1 downto 0) => p_0_out(9 downto 8),
      DOF(1 downto 0) => p_0_out(11 downto 10),
      DOG(1 downto 0) => p_0_out(13 downto 12),
      DOH(1 downto 0) => NLW_RAM_reg_0_31_0_5_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
RAM_reg_0_31_12_17: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRE(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRF(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRG(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRH(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => din(29 downto 28),
      DIB(1 downto 0) => din(31 downto 30),
      DIC(1 downto 0) => din(33 downto 32),
      DID(1 downto 0) => din(35 downto 34),
      DIE(1 downto 0) => din(37 downto 36),
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(29 downto 28),
      DOB(1 downto 0) => p_0_out(31 downto 30),
      DOC(1 downto 0) => p_0_out(33 downto 32),
      DOD(1 downto 0) => p_0_out(35 downto 34),
      DOE(1) => p_0_out(37),
      DOE(0) => RAM_reg_0_31_12_17_n_9,
      DOF(1 downto 0) => NLW_RAM_reg_0_31_12_17_DOF_UNCONNECTED(1 downto 0),
      DOG(1 downto 0) => NLW_RAM_reg_0_31_12_17_DOG_UNCONNECTED(1 downto 0),
      DOH(1 downto 0) => NLW_RAM_reg_0_31_12_17_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
RAM_reg_0_31_6_11: unisim.vcomponents.RAM32M16
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRE(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRF(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRG(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRH(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => din(15 downto 14),
      DIB(1 downto 0) => din(17 downto 16),
      DIC(1 downto 0) => din(19 downto 18),
      DID(1 downto 0) => din(21 downto 20),
      DIE(1 downto 0) => din(23 downto 22),
      DIF(1 downto 0) => din(25 downto 24),
      DIG(1 downto 0) => din(27 downto 26),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(15 downto 14),
      DOB(1 downto 0) => p_0_out(17 downto 16),
      DOC(1 downto 0) => p_0_out(19 downto 18),
      DOD(1 downto 0) => p_0_out(21 downto 20),
      DOE(1 downto 0) => p_0_out(23 downto 22),
      DOF(1 downto 0) => p_0_out(25 downto 24),
      DOG(1 downto 0) => p_0_out(27 downto 26),
      DOH(1 downto 0) => NLW_RAM_reg_0_31_6_11_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(0),
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(10),
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(11),
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(12),
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(13),
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(14),
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(15),
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(16),
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(17),
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(18),
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(19),
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(1),
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(20),
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(21),
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(22),
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(23),
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(24),
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(25),
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(26),
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(27),
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(28),
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(29),
      Q => dout_i(29),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(2),
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(30),
      Q => dout_i(30),
      R => '0'
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(31),
      Q => dout_i(31),
      R => '0'
    );
\gpr1.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(32),
      Q => dout_i(32),
      R => '0'
    );
\gpr1.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(33),
      Q => dout_i(33),
      R => '0'
    );
\gpr1.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(34),
      Q => dout_i(34),
      R => '0'
    );
\gpr1.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(35),
      Q => dout_i(35),
      R => '0'
    );
\gpr1.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(37),
      Q => dout_i(36),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(3),
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(4),
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(5),
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(6),
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(7),
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(8),
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(9),
      Q => dout_i(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    ram_empty_fb_i_reg_0 : out STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en : in STD_LOGIC;
    FULL_FB : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^gpr1.dout_i_reg[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_empty_fb_i_i_2_n_0 : STD_LOGIC;
  signal ram_empty_fb_i_i_6_n_0 : STD_LOGIC;
  signal \^ram_empty_fb_i_reg_0\ : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair10";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \gpr1.dout_i_reg[1]\(4 downto 0) <= \^gpr1.dout_i_reg[1]\(4 downto 0);
  ram_empty_fb_i_reg_0 <= \^ram_empty_fb_i_reg_0\;
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rd_pntr_plus1(3),
      O => plusOp(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => rd_pntr_plus1(4),
      O => plusOp(4)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(0),
      Q => \^gpr1.dout_i_reg[1]\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => \^gpr1.dout_i_reg[1]\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => \^gpr1.dout_i_reg[1]\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(3),
      Q => \^gpr1.dout_i_reg[1]\(3)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(4),
      Q => \^gpr1.dout_i_reg[1]\(4)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(0),
      PRE => AR(0),
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(3),
      Q => rd_pntr_plus1(3)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(4),
      Q => rd_pntr_plus1(4)
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA2F3A2"
    )
        port map (
      I0 => ram_empty_fb_i_i_2_n_0,
      I1 => wr_en,
      I2 => FULL_FB,
      I3 => \out\,
      I4 => \^ram_empty_fb_i_reg_0\,
      O => ram_empty_fb_i_reg
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => \gcc0.gc0.count_d1_reg[4]\(3),
      I2 => rd_pntr_plus1(4),
      I3 => \gcc0.gc0.count_d1_reg[4]\(4),
      I4 => \gpregsm1.curr_fwft_state_reg[0]\,
      I5 => \gcc0.gc0.count_d1_reg[2]\,
      O => ram_empty_fb_i_i_2_n_0
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => ram_empty_fb_i_i_6_n_0,
      I1 => \^gpr1.dout_i_reg[1]\(2),
      I2 => \gcc0.gc0.count_d1_reg[4]\(2),
      I3 => \^gpr1.dout_i_reg[1]\(1),
      I4 => \gcc0.gc0.count_d1_reg[4]\(1),
      O => \^ram_empty_fb_i_reg_0\
    );
ram_empty_fb_i_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[1]\(4),
      I1 => \gcc0.gc0.count_d1_reg[4]\(4),
      I2 => \^gpr1.dout_i_reg[1]\(3),
      I3 => \gcc0.gc0.count_d1_reg[4]\(3),
      I4 => \gcc0.gc0.count_d1_reg[4]\(0),
      I5 => \^gpr1.dout_i_reg[1]\(0),
      O => ram_empty_fb_i_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr_6 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    ram_empty_fb_i_reg_0 : out STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en : in STD_LOGIC;
    FULL_FB : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr_6 : entity is "rd_bin_cntr";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr_6 is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^gpr1.dout_i_reg[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_empty_fb_i_i_2_n_0 : STD_LOGIC;
  signal ram_empty_fb_i_i_6_n_0 : STD_LOGIC;
  signal \^ram_empty_fb_i_reg_0\ : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair4";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \gpr1.dout_i_reg[1]\(4 downto 0) <= \^gpr1.dout_i_reg[1]\(4 downto 0);
  ram_empty_fb_i_reg_0 <= \^ram_empty_fb_i_reg_0\;
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rd_pntr_plus1(3),
      O => plusOp(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => rd_pntr_plus1(4),
      O => plusOp(4)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(0),
      Q => \^gpr1.dout_i_reg[1]\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => \^gpr1.dout_i_reg[1]\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => \^gpr1.dout_i_reg[1]\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(3),
      Q => \^gpr1.dout_i_reg[1]\(3)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(4),
      Q => \^gpr1.dout_i_reg[1]\(4)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(0),
      PRE => AR(0),
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(3),
      Q => rd_pntr_plus1(3)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(4),
      Q => rd_pntr_plus1(4)
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA2F3A2"
    )
        port map (
      I0 => ram_empty_fb_i_i_2_n_0,
      I1 => wr_en,
      I2 => FULL_FB,
      I3 => \out\,
      I4 => \^ram_empty_fb_i_reg_0\,
      O => ram_empty_fb_i_reg
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => \gcc0.gc0.count_d1_reg[4]\(3),
      I2 => rd_pntr_plus1(4),
      I3 => \gcc0.gc0.count_d1_reg[4]\(4),
      I4 => \gpregsm1.curr_fwft_state_reg[0]\,
      I5 => \gcc0.gc0.count_d1_reg[2]\,
      O => ram_empty_fb_i_i_2_n_0
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => ram_empty_fb_i_i_6_n_0,
      I1 => \^gpr1.dout_i_reg[1]\(2),
      I2 => \gcc0.gc0.count_d1_reg[4]\(2),
      I3 => \^gpr1.dout_i_reg[1]\(1),
      I4 => \gcc0.gc0.count_d1_reg[4]\(1),
      O => \^ram_empty_fb_i_reg_0\
    );
ram_empty_fb_i_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[1]\(4),
      I1 => \gcc0.gc0.count_d1_reg[4]\(4),
      I2 => \^gpr1.dout_i_reg[1]\(3),
      I3 => \gcc0.gc0.count_d1_reg[4]\(3),
      I4 => \gcc0.gc0.count_d1_reg[4]\(0),
      I5 => \^gpr1.dout_i_reg[1]\(0),
      O => ram_empty_fb_i_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    ram_empty_fb_i_reg_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  empty <= empty_fwft_i;
  \out\(1 downto 0) <= curr_fwft_state(1 downto 0);
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEF8000"
    )
        port map (
      I0 => ram_empty_fb_i_reg_0,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_i
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_i
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_i
    );
\gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg_0,
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg_0,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => user_valid
    );
ram_empty_fb_i_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      O => ram_empty_fb_i_reg
    );
ram_full_fb_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      I3 => ram_empty_fb_i_reg_0,
      O => ram_full_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft_4 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    ram_empty_fb_i_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft_4 : entity is "rd_fwft";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft_4 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  empty <= empty_fwft_i;
  \out\(1 downto 0) <= curr_fwft_state(1 downto 0);
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEF8000"
    )
        port map (
      I0 => ram_empty_fb_i_reg_0,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_i
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_i
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_i
    );
\gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg_0,
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg_0,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => user_valid
    );
ram_empty_fb_i_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      O => ram_empty_fb_i_reg
    );
ram_full_fb_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      I3 => ram_empty_fb_i_reg_0,
      O => ram_full_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss is
  port (
    \out\ : out STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_fb_i_reg,
      PRE => AR(0),
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_fb_i_reg,
      PRE => AR(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss_5 is
  port (
    \out\ : out STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss_5 : entity is "rd_status_flags_ss";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss_5 is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_fb_i_reg,
      PRE => AR(0),
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_fb_i_reg,
      PRE => AR(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr is
  port (
    ram_full_comb : out STD_LOGIC;
    ram_empty_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    FULL_FB : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_en : in STD_LOGIC;
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_full_fb_i_i_2_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_4_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ram_full_fb_i_i_5 : label is "soft_lutpair13";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_13_out(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_13_out(0),
      I1 => p_13_out(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_13_out(1),
      I1 => p_13_out(0),
      I2 => p_13_out(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_13_out(2),
      I1 => p_13_out(0),
      I2 => p_13_out(1),
      I3 => p_13_out(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_13_out(3),
      I1 => p_13_out(1),
      I2 => p_13_out(0),
      I3 => p_13_out(2),
      I4 => p_13_out(4),
      O => \plusOp__0\(4)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => p_13_out(0),
      Q => \^q\(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => p_13_out(1),
      Q => \^q\(1)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => p_13_out(2),
      Q => \^q\(2)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => p_13_out(3),
      Q => \^q\(3)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => p_13_out(4),
      Q => \^q\(4)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => AS(0),
      Q => p_13_out(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => \plusOp__0\(1),
      Q => p_13_out(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => \plusOp__0\(2),
      Q => p_13_out(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => \plusOp__0\(3),
      Q => p_13_out(3)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => \plusOp__0\(4),
      Q => p_13_out(4)
    );
ram_empty_fb_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gc0.count_reg[2]\(2),
      I2 => \^q\(1),
      I3 => \gc0.count_reg[2]\(1),
      I4 => \gc0.count_reg[2]\(0),
      I5 => \^q\(0),
      O => ram_empty_fb_i_reg
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8C8"
    )
        port map (
      I0 => ram_full_fb_i_i_2_n_0,
      I1 => \gpregsm1.curr_fwft_state_reg[0]\,
      I2 => FULL_FB,
      I3 => \gc0.count_d1_reg[2]\,
      O => ram_full_comb
    );
ram_full_fb_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => ram_full_fb_i_i_4_n_0,
      I1 => ram_full_fb_i_i_5_n_0,
      I2 => wr_en,
      I3 => \gc0.count_d1_reg[4]\(4),
      I4 => p_13_out(4),
      O => ram_full_fb_i_i_2_n_0
    );
ram_full_fb_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_13_out(2),
      I1 => \gc0.count_d1_reg[4]\(2),
      I2 => p_13_out(3),
      I3 => \gc0.count_d1_reg[4]\(3),
      O => ram_full_fb_i_i_4_n_0
    );
ram_full_fb_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_13_out(0),
      I1 => \gc0.count_d1_reg[4]\(0),
      I2 => p_13_out(1),
      I3 => \gc0.count_d1_reg[4]\(1),
      O => ram_full_fb_i_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr_3 is
  port (
    ram_full_comb : out STD_LOGIC;
    ram_empty_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    FULL_FB : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_en : in STD_LOGIC;
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr_3 : entity is "wr_bin_cntr";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr_3 is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_full_fb_i_i_2_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_4_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of ram_full_fb_i_i_5 : label is "soft_lutpair7";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_13_out(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_13_out(0),
      I1 => p_13_out(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_13_out(1),
      I1 => p_13_out(0),
      I2 => p_13_out(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_13_out(2),
      I1 => p_13_out(0),
      I2 => p_13_out(1),
      I3 => p_13_out(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_13_out(3),
      I1 => p_13_out(1),
      I2 => p_13_out(0),
      I3 => p_13_out(2),
      I4 => p_13_out(4),
      O => \plusOp__0\(4)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => p_13_out(0),
      Q => \^q\(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => p_13_out(1),
      Q => \^q\(1)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => p_13_out(2),
      Q => \^q\(2)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => p_13_out(3),
      Q => \^q\(3)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => p_13_out(4),
      Q => \^q\(4)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => AS(0),
      Q => p_13_out(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => \plusOp__0\(1),
      Q => p_13_out(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => \plusOp__0\(2),
      Q => p_13_out(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => \plusOp__0\(3),
      Q => p_13_out(3)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => AS(0),
      D => \plusOp__0\(4),
      Q => p_13_out(4)
    );
ram_empty_fb_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gc0.count_reg[2]\(2),
      I2 => \^q\(1),
      I3 => \gc0.count_reg[2]\(1),
      I4 => \gc0.count_reg[2]\(0),
      I5 => \^q\(0),
      O => ram_empty_fb_i_reg
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8C8"
    )
        port map (
      I0 => ram_full_fb_i_i_2_n_0,
      I1 => \gpregsm1.curr_fwft_state_reg[0]\,
      I2 => FULL_FB,
      I3 => \gc0.count_d1_reg[2]\,
      O => ram_full_comb
    );
ram_full_fb_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => ram_full_fb_i_i_4_n_0,
      I1 => ram_full_fb_i_i_5_n_0,
      I2 => wr_en,
      I3 => \gc0.count_d1_reg[4]\(4),
      I4 => p_13_out(4),
      O => ram_full_fb_i_i_2_n_0
    );
ram_full_fb_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_13_out(2),
      I1 => \gc0.count_d1_reg[4]\(2),
      I2 => p_13_out(3),
      I3 => \gc0.count_d1_reg[4]\(3),
      O => ram_full_fb_i_i_4_n_0
    );
ram_full_fb_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_13_out(0),
      I1 => \gc0.count_d1_reg[4]\(0),
      I2 => p_13_out(1),
      I3 => \gc0.count_d1_reg[4]\(1),
      O => ram_full_fb_i_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss is
  port (
    FULL_FB : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_comb : in STD_LOGIC;
    clk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss is
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  FULL_FB <= ram_full_fb_i;
  full <= ram_full_i;
\gcc0.gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_fb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AS(0),
      D => ram_full_comb,
      Q => ram_full_fb_i
    );
ram_full_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AS(0),
      D => ram_full_comb,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss_2 is
  port (
    FULL_FB : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_comb : in STD_LOGIC;
    clk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss_2 : entity is "wr_status_flags_ss";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss_2 is
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  FULL_FB <= ram_full_fb_i;
  full <= ram_full_i;
\gcc0.gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_fb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AS(0),
      D => ram_full_comb,
      Q => ram_full_fb_i
    );
ram_full_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => AS(0),
      D => ram_full_comb,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    I15 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory is
  signal dout_i : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
\gdm.dm_gen.dm\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmem
     port map (
      EN => EN,
      I15(4 downto 0) => I15(4 downto 0),
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout_i(8 downto 0) => dout_i(8 downto 0),
      \gc0.count_d1_reg[4]\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => \gpregsm1.curr_fwft_state_reg[1]\(0)
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(0),
      Q => dout(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(1),
      Q => dout(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(2),
      Q => dout(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(3),
      Q => dout(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(4),
      Q => dout(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(5),
      Q => dout(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(6),
      Q => dout(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(7),
      Q => dout(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(8),
      Q => dout(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory__parameterized0\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 36 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 37 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory__parameterized0\ : entity is "memory";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory__parameterized0\ is
  signal dout_i : STD_LOGIC_VECTOR ( 37 downto 0 );
begin
\gdm.dm_gen.dm\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dmem__parameterized0\
     port map (
      EN => EN,
      Q(4 downto 0) => Q(4 downto 0),
      clk => clk,
      din(37 downto 0) => din(37 downto 0),
      dout_i(36) => dout_i(37),
      dout_i(35 downto 0) => dout_i(35 downto 0),
      \gc0.count_d1_reg[4]\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => \gpregsm1.curr_fwft_state_reg[1]\(0)
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(0),
      Q => dout(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(10),
      Q => dout(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(11),
      Q => dout(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(12),
      Q => dout(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(13),
      Q => dout(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(14),
      Q => dout(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(15),
      Q => dout(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(16),
      Q => dout(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(17),
      Q => dout(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(18),
      Q => dout(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(19),
      Q => dout(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(1),
      Q => dout(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(20),
      Q => dout(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(21),
      Q => dout(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(22),
      Q => dout(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(23),
      Q => dout(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(24),
      Q => dout(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(25),
      Q => dout(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(26),
      Q => dout(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(27),
      Q => dout(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(28),
      Q => dout(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(29),
      Q => dout(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(2),
      Q => dout(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(30),
      Q => dout(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(31),
      Q => dout(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(32),
      Q => dout(32),
      R => '0'
    );
\goreg_dm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(33),
      Q => dout(33),
      R => '0'
    );
\goreg_dm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(34),
      Q => dout(34),
      R => '0'
    );
\goreg_dm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(35),
      Q => dout(35),
      R => '0'
    );
\goreg_dm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(37),
      Q => dout(36),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(3),
      Q => dout(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(4),
      Q => dout(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(5),
      Q => dout(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(6),
      Q => dout(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(7),
      Q => dout(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(8),
      Q => dout(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(9),
      Q => dout(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    empty : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    FULL_FB : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gr1.gr1_int.rfwft_n_4\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rpntr_n_3 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      clk => clk,
      empty => empty,
      \out\(1 downto 0) => \out\(1 downto 0),
      ram_empty_fb_i_reg => \gr1.gr1_int.rfwft_n_4\,
      ram_empty_fb_i_reg_0 => p_2_out,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      rd_en => rd_en
    );
\grss.rsts\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss
     port map (
      AR(0) => AR(0),
      clk => clk,
      \out\ => p_2_out,
      ram_full_fb_i_reg => rpntr_n_3
    );
rpntr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      FULL_FB => FULL_FB,
      Q(2 downto 0) => Q(2 downto 0),
      clk => clk,
      \gcc0.gc0.count_d1_reg[2]\ => \gcc0.gc0.count_d1_reg[2]\,
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => \gpr1.dout_i_reg[1]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gr1.gr1_int.rfwft_n_4\,
      \out\ => p_2_out,
      ram_empty_fb_i_reg => rpntr_n_3,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic_0 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    empty : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    FULL_FB : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic_0 : entity is "rd_logic";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic_0 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gr1.gr1_int.rfwft_n_4\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rpntr_n_3 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft_4
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      clk => clk,
      empty => empty,
      \out\(1 downto 0) => \out\(1 downto 0),
      ram_empty_fb_i_reg => \gr1.gr1_int.rfwft_n_4\,
      ram_empty_fb_i_reg_0 => p_2_out,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      rd_en => rd_en
    );
\grss.rsts\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss_5
     port map (
      AR(0) => AR(0),
      clk => clk,
      \out\ => p_2_out,
      ram_full_fb_i_reg => rpntr_n_3
    );
rpntr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr_6
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      FULL_FB => FULL_FB,
      Q(2 downto 0) => Q(2 downto 0),
      clk => clk,
      \gcc0.gc0.count_d1_reg[2]\ => \gcc0.gc0.count_d1_reg[2]\,
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => \gpr1.dout_i_reg[1]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gr1.gr1_int.rfwft_n_4\,
      \out\ => p_2_out,
      ram_empty_fb_i_reg => rpntr_n_3,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo is
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_wr_rst_cc : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
\gc0.count_d1[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sckt_wr_rst_cc(1),
      I1 => sckt_wr_rst_cc(0),
      I2 => rst_wr_reg2,
      O => AS(0)
    );
\goreg_dm.dout_i[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000000010"
    )
        port map (
      I0 => rst_wr_reg2,
      I1 => sckt_wr_rst_cc(0),
      I2 => \out\(1),
      I3 => sckt_wr_rst_cc(1),
      I4 => \out\(0),
      I5 => rd_en,
      O => E(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_wr_reg2,
      Q => sckt_wr_rst_cc(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sckt_wr_rst_cc(0),
      Q => sckt_wr_rst_cc(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => clk,
      src_arst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo__xdcDup__1\ is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo__xdcDup__1\ : entity is "reset_blk_ramfifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo__xdcDup__1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo__xdcDup__1\ is
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_wr_rst_cc : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
\gc0.count_d1[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sckt_wr_rst_cc(1),
      I1 => sckt_wr_rst_cc(0),
      I2 => rst_wr_reg2,
      O => AS(0)
    );
\goreg_dm.dout_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000000010"
    )
        port map (
      I0 => rst_wr_reg2,
      I1 => sckt_wr_rst_cc(0),
      I2 => \out\(1),
      I3 => sckt_wr_rst_cc(1),
      I4 => \out\(0),
      I5 => rd_en,
      O => E(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_wr_reg2,
      Q => sckt_wr_rst_cc(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sckt_wr_rst_cc(0),
      Q => sckt_wr_rst_cc(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__2\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => clk,
      src_arst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic is
  port (
    FULL_FB : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^full_fb\ : STD_LOGIC;
  signal ram_full_comb : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  FULL_FB <= \^full_fb\;
\gwss.wsts\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss
     port map (
      AS(0) => AS(0),
      E(0) => \^e\(0),
      FULL_FB => \^full_fb\,
      clk => clk,
      full => full,
      ram_full_comb => ram_full_comb,
      wr_en => wr_en
    );
wpntr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr
     port map (
      AS(0) => AS(0),
      E(0) => \^e\(0),
      FULL_FB => \^full_fb\,
      Q(4 downto 0) => Q(4 downto 0),
      clk => clk,
      \gc0.count_d1_reg[2]\ => \gc0.count_d1_reg[2]\,
      \gc0.count_d1_reg[4]\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gc0.count_reg[2]\(2 downto 0) => \gc0.count_reg[2]\(2 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gpregsm1.curr_fwft_state_reg[0]\,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      ram_full_comb => ram_full_comb,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic_1 is
  port (
    FULL_FB : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic_1 : entity is "wr_logic";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic_1 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^full_fb\ : STD_LOGIC;
  signal ram_full_comb : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  FULL_FB <= \^full_fb\;
\gwss.wsts\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss_2
     port map (
      AS(0) => AS(0),
      E(0) => \^e\(0),
      FULL_FB => \^full_fb\,
      clk => clk,
      full => full,
      ram_full_comb => ram_full_comb,
      wr_en => wr_en
    );
wpntr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr_3
     port map (
      AS(0) => AS(0),
      E(0) => \^e\(0),
      FULL_FB => \^full_fb\,
      Q(4 downto 0) => Q(4 downto 0),
      clk => clk,
      \gc0.count_d1_reg[2]\ => \gc0.count_d1_reg[2]\,
      \gc0.count_d1_reg[4]\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gc0.count_reg[2]\(2 downto 0) => \gc0.count_reg[2]\(2 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gpregsm1.curr_fwft_state_reg[0]\,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      ram_full_comb => ram_full_comb,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo is
  signal \gntv_or_sync_fifo.gl0.rd_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_13\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_6\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_3\ : STD_LOGIC;
  signal \gr1.gr1_int.rfwft/p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_19_out : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
begin
\gntv_or_sync_fifo.gl0.rd\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic_0
     port map (
      AR(0) => rstblk_n_0,
      E(0) => ram_rd_en_i,
      FULL_FB => \gntv_or_sync_fifo.gl0.wr_n_0\,
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      clk => clk,
      empty => empty,
      \gcc0.gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.wr_n_3\,
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => p_12_out(4 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => p_0_out_0(4 downto 0),
      \out\(1) => \gntv_or_sync_fifo.gl0.rd_n_0\,
      \out\(0) => \gr1.gr1_int.rfwft/p_0_in\(0),
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_6\,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_13\,
      rd_en => rd_en,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic_1
     port map (
      AS(0) => rstblk_n_0,
      E(0) => p_19_out,
      FULL_FB => \gntv_or_sync_fifo.gl0.wr_n_0\,
      Q(4 downto 0) => p_12_out(4 downto 0),
      clk => clk,
      full => full,
      \gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.rd_n_6\,
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gc0.count_reg[2]\(2 downto 0) => rd_pntr_plus1(2 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gntv_or_sync_fifo.gl0.rd_n_13\,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_3\,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory
     port map (
      E(0) => rstblk_n_1,
      EN => p_19_out,
      I15(4 downto 0) => p_12_out(4 downto 0),
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => ram_rd_en_i
    );
rstblk: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo__xdcDup__1\
     port map (
      AS(0) => rstblk_n_0,
      E(0) => rstblk_n_1,
      clk => clk,
      \out\(1) => \gntv_or_sync_fifo.gl0.rd_n_0\,
      \out\(0) => \gr1.gr1_int.rfwft/p_0_in\(0),
      rd_en => rd_en,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo__parameterized0\ is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 36 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 37 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo__parameterized0\ : entity is "fifo_generator_ramfifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo__parameterized0\ is
  signal \gntv_or_sync_fifo.gl0.rd_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_13\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_6\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_3\ : STD_LOGIC;
  signal \gr1.gr1_int.rfwft/p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_19_out : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
begin
\gntv_or_sync_fifo.gl0.rd\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic
     port map (
      AR(0) => rstblk_n_0,
      E(0) => ram_rd_en_i,
      FULL_FB => \gntv_or_sync_fifo.gl0.wr_n_0\,
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      clk => clk,
      empty => empty,
      \gcc0.gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.wr_n_3\,
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => p_12_out(4 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => p_0_out_0(4 downto 0),
      \out\(1) => \gntv_or_sync_fifo.gl0.rd_n_0\,
      \out\(0) => \gr1.gr1_int.rfwft/p_0_in\(0),
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_6\,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_13\,
      rd_en => rd_en,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic
     port map (
      AS(0) => rstblk_n_0,
      E(0) => p_19_out,
      FULL_FB => \gntv_or_sync_fifo.gl0.wr_n_0\,
      Q(4 downto 0) => p_12_out(4 downto 0),
      clk => clk,
      full => full,
      \gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.rd_n_6\,
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gc0.count_reg[2]\(2 downto 0) => rd_pntr_plus1(2 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gntv_or_sync_fifo.gl0.rd_n_13\,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_3\,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory__parameterized0\
     port map (
      E(0) => rstblk_n_1,
      EN => p_19_out,
      Q(4 downto 0) => p_12_out(4 downto 0),
      clk => clk,
      din(37 downto 0) => din(37 downto 0),
      dout(36 downto 0) => dout(36 downto 0),
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => ram_rd_en_i
    );
rstblk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo
     port map (
      AS(0) => rstblk_n_0,
      E(0) => rstblk_n_1,
      clk => clk,
      \out\(1) => \gntv_or_sync_fifo.gl0.rd_n_0\,
      \out\(0) => \gr1.gr1_int.rfwft/p_0_in\(0),
      rd_en => rd_en,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top is
begin
\grf.rf\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo
     port map (
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top__parameterized0\ is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 36 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 37 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top__parameterized0\ : entity is "fifo_generator_top";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top__parameterized0\ is
begin
\grf.rf\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo__parameterized0\
     port map (
      clk => clk,
      din(37 downto 0) => din(37 downto 0),
      dout(36 downto 0) => dout(36 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth is
begin
\gconvfifo.rf\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top
     port map (
      clk => clk,
      din(4 downto 0) => din(4 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth__parameterized0\ is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 36 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 37 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth__parameterized0\ : entity is "fifo_generator_v13_2_1_synth";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth__parameterized0\ is
begin
\gconvfifo.rf\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top__parameterized0\
     port map (
      clk => clk,
      din(37 downto 0) => din(37 downto 0),
      dout(36 downto 0) => dout(36 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 4 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 9;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 9;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is "zynquplus";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const0>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const0>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const0>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const0>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const0>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const0>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(3) <= \<const0>\;
  m_axi_arid(2) <= \<const0>\;
  m_axi_arid(1) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(3) <= \<const0>\;
  m_axi_awid(2) <= \<const0>\;
  m_axi_awid(1) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(63) <= \<const0>\;
  m_axis_tdata(62) <= \<const0>\;
  m_axis_tdata(61) <= \<const0>\;
  m_axis_tdata(60) <= \<const0>\;
  m_axis_tdata(59) <= \<const0>\;
  m_axis_tdata(58) <= \<const0>\;
  m_axis_tdata(57) <= \<const0>\;
  m_axis_tdata(56) <= \<const0>\;
  m_axis_tdata(55) <= \<const0>\;
  m_axis_tdata(54) <= \<const0>\;
  m_axis_tdata(53) <= \<const0>\;
  m_axis_tdata(52) <= \<const0>\;
  m_axis_tdata(51) <= \<const0>\;
  m_axis_tdata(50) <= \<const0>\;
  m_axis_tdata(49) <= \<const0>\;
  m_axis_tdata(48) <= \<const0>\;
  m_axis_tdata(47) <= \<const0>\;
  m_axis_tdata(46) <= \<const0>\;
  m_axis_tdata(45) <= \<const0>\;
  m_axis_tdata(44) <= \<const0>\;
  m_axis_tdata(43) <= \<const0>\;
  m_axis_tdata(42) <= \<const0>\;
  m_axis_tdata(41) <= \<const0>\;
  m_axis_tdata(40) <= \<const0>\;
  m_axis_tdata(39) <= \<const0>\;
  m_axis_tdata(38) <= \<const0>\;
  m_axis_tdata(37) <= \<const0>\;
  m_axis_tdata(36) <= \<const0>\;
  m_axis_tdata(35) <= \<const0>\;
  m_axis_tdata(34) <= \<const0>\;
  m_axis_tdata(33) <= \<const0>\;
  m_axis_tdata(32) <= \<const0>\;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17) <= \<const0>\;
  m_axis_tdata(16) <= \<const0>\;
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \<const0>\;
  m_axis_tdata(13) <= \<const0>\;
  m_axis_tdata(12) <= \<const0>\;
  m_axis_tdata(11) <= \<const0>\;
  m_axis_tdata(10) <= \<const0>\;
  m_axis_tdata(9) <= \<const0>\;
  m_axis_tdata(8) <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(3) <= \<const0>\;
  m_axis_tdest(2) <= \<const0>\;
  m_axis_tdest(1) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(7) <= \<const0>\;
  m_axis_tid(6) <= \<const0>\;
  m_axis_tid(5) <= \<const0>\;
  m_axis_tid(4) <= \<const0>\;
  m_axis_tid(3) <= \<const0>\;
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_fifo_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth
     port map (
      clk => clk,
      din(4) => din(8),
      din(3 downto 0) => din(3 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 37 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 4 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 37 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 38;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 38;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is "zynquplus";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ : entity is "fifo_generator_v13_2_1";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 37 downto 0 );
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const0>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const0>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const0>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const0>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const0>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const0>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  dout(37) <= \^dout\(37);
  dout(36) <= \<const0>\;
  dout(35 downto 0) <= \^dout\(35 downto 0);
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(3) <= \<const0>\;
  m_axi_arid(2) <= \<const0>\;
  m_axi_arid(1) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(3) <= \<const0>\;
  m_axi_awid(2) <= \<const0>\;
  m_axi_awid(1) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(63) <= \<const0>\;
  m_axis_tdata(62) <= \<const0>\;
  m_axis_tdata(61) <= \<const0>\;
  m_axis_tdata(60) <= \<const0>\;
  m_axis_tdata(59) <= \<const0>\;
  m_axis_tdata(58) <= \<const0>\;
  m_axis_tdata(57) <= \<const0>\;
  m_axis_tdata(56) <= \<const0>\;
  m_axis_tdata(55) <= \<const0>\;
  m_axis_tdata(54) <= \<const0>\;
  m_axis_tdata(53) <= \<const0>\;
  m_axis_tdata(52) <= \<const0>\;
  m_axis_tdata(51) <= \<const0>\;
  m_axis_tdata(50) <= \<const0>\;
  m_axis_tdata(49) <= \<const0>\;
  m_axis_tdata(48) <= \<const0>\;
  m_axis_tdata(47) <= \<const0>\;
  m_axis_tdata(46) <= \<const0>\;
  m_axis_tdata(45) <= \<const0>\;
  m_axis_tdata(44) <= \<const0>\;
  m_axis_tdata(43) <= \<const0>\;
  m_axis_tdata(42) <= \<const0>\;
  m_axis_tdata(41) <= \<const0>\;
  m_axis_tdata(40) <= \<const0>\;
  m_axis_tdata(39) <= \<const0>\;
  m_axis_tdata(38) <= \<const0>\;
  m_axis_tdata(37) <= \<const0>\;
  m_axis_tdata(36) <= \<const0>\;
  m_axis_tdata(35) <= \<const0>\;
  m_axis_tdata(34) <= \<const0>\;
  m_axis_tdata(33) <= \<const0>\;
  m_axis_tdata(32) <= \<const0>\;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17) <= \<const0>\;
  m_axis_tdata(16) <= \<const0>\;
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \<const0>\;
  m_axis_tdata(13) <= \<const0>\;
  m_axis_tdata(12) <= \<const0>\;
  m_axis_tdata(11) <= \<const0>\;
  m_axis_tdata(10) <= \<const0>\;
  m_axis_tdata(9) <= \<const0>\;
  m_axis_tdata(8) <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(3) <= \<const0>\;
  m_axis_tdest(2) <= \<const0>\;
  m_axis_tdest(1) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(7) <= \<const0>\;
  m_axis_tid(6) <= \<const0>\;
  m_axis_tid(5) <= \<const0>\;
  m_axis_tid(4) <= \<const0>\;
  m_axis_tid(3) <= \<const0>\;
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_fifo_gen: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1_synth__parameterized0\
     port map (
      clk => clk,
      din(37 downto 0) => din(37 downto 0),
      dout(36) => \^dout\(37),
      dout(35 downto 0) => \^dout\(35 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_fifo_gen is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    din : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : out STD_LOGIC;
    cmd_b_push_block_reg : out STD_LOGIC;
    split_ongoing_reg : out STD_LOGIC;
    split_ongoing_reg_0 : out STD_LOGIC;
    split_ongoing_reg_1 : out STD_LOGIC;
    split_ongoing_reg_2 : out STD_LOGIC;
    split_ongoing_reg_3 : out STD_LOGIC;
    \queue_id_reg[0]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    cmd_b_push_block : in STD_LOGIC;
    S_AXI_AREADY_I_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    wrap_need_to_split_q : in STD_LOGIC;
    incr_need_to_split_q : in STD_LOGIC;
    fix_need_to_split_q : in STD_LOGIC;
    access_is_fix_q : in STD_LOGIC;
    access_is_wrap_q : in STD_LOGIC;
    wrap_need_to_split_q_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \num_transactions_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    access_is_incr_q : in STD_LOGIC;
    \S_AXI_ALEN_Q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AID_Q : in STD_LOGIC;
    s_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_fifo_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_fifo_gen is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cmd_b_push : STD_LOGIC;
  signal \^din\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \fifo_gen_inst_i_9__0_n_0\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^split_ongoing_reg\ : STD_LOGIC;
  signal \^split_ongoing_reg_0\ : STD_LOGIC;
  signal \^split_ongoing_reg_1\ : STD_LOGIC;
  signal \^split_ongoing_reg_2\ : STD_LOGIC;
  signal \^split_ongoing_reg_3\ : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fifo_gen_inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fifo_gen_inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fifo_gen_inst : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fifo_gen_inst : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fifo_gen_inst : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fifo_gen_inst : label is 9;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fifo_gen_inst : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fifo_gen_inst : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fifo_gen_inst : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fifo_gen_inst : label is 9;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fifo_gen_inst : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fifo_gen_inst : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_gen_inst : label is "zynquplus";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fifo_gen_inst : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fifo_gen_inst : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fifo_gen_inst : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fifo_gen_inst : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fifo_gen_inst : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fifo_gen_inst : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fifo_gen_inst : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fifo_gen_inst : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_gen_inst : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fifo_gen_inst : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fifo_gen_inst : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fifo_gen_inst : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fifo_gen_inst : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fifo_gen_inst : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fifo_gen_inst : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fifo_gen_inst : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fifo_gen_inst : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fifo_gen_inst : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fifo_gen_inst : label is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fifo_gen_inst : label is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fifo_gen_inst : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fifo_gen_inst : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of fifo_gen_inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fifo_gen_inst : label is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fifo_gen_inst : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fifo_gen_inst : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fifo_gen_inst : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fifo_gen_inst : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fifo_gen_inst : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fifo_gen_inst : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fifo_gen_inst : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fifo_gen_inst : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fifo_gen_inst : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fifo_gen_inst : label is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fifo_gen_inst : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fifo_gen_inst : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fifo_gen_inst : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fifo_gen_inst : label is 1;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fifo_gen_inst_i_16 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fifo_gen_inst_i_2__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of fifo_gen_inst_i_6 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axi_awlen[7]_INST_0_i_14\ : label is "soft_lutpair9";
begin
  SR(0) <= \^sr\(0);
  din(0) <= \^din\(0);
  full <= \^full\;
  split_ongoing_reg <= \^split_ongoing_reg\;
  split_ongoing_reg_0 <= \^split_ongoing_reg_0\;
  split_ongoing_reg_1 <= \^split_ongoing_reg_1\;
  split_ongoing_reg_2 <= \^split_ongoing_reg_2\;
  split_ongoing_reg_3 <= \^split_ongoing_reg_3\;
S_AXI_AREADY_I_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\,
      O => \^sr\(0)
    );
cmd_b_push_block_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFABAAAA"
    )
        port map (
      I0 => cmd_b_push_block,
      I1 => \^full\,
      I2 => ram_full_i_reg,
      I3 => cmd_push_block,
      I4 => command_ongoing,
      I5 => S_AXI_AREADY_I_reg(0),
      O => cmd_b_push_block_reg
    );
fifo_gen_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1
     port map (
      almost_empty => NLW_fifo_gen_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_fifo_gen_inst_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_fifo_gen_inst_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_fifo_gen_inst_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => CLK,
      data_count(5 downto 0) => NLW_fifo_gen_inst_data_count_UNCONNECTED(5 downto 0),
      dbiterr => NLW_fifo_gen_inst_dbiterr_UNCONNECTED,
      din(8) => \^din\(0),
      din(7 downto 4) => B"0000",
      din(3 downto 0) => p_1_out(3 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      full => \^full\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(3 downto 0) => NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED(3 downto 0),
      m_axi_arlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(3 downto 0) => NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(3 downto 0) => B"0000",
      m_axi_bready => NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(3 downto 0) => B"0000",
      m_axi_rlast => '0',
      m_axi_rready => NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(3 downto 0) => NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED(3 downto 0),
      m_axi_wlast => NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(63 downto 0) => NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED(63 downto 0),
      m_axis_tdest(3 downto 0) => NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(7 downto 0) => NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED(7 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(3 downto 0) => NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(3 downto 0) => NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_fifo_gen_inst_overflow_UNCONNECTED,
      prog_empty => NLW_fifo_gen_inst_prog_empty_UNCONNECTED,
      prog_empty_thresh(4 downto 0) => B"00000",
      prog_empty_thresh_assert(4 downto 0) => B"00000",
      prog_empty_thresh_negate(4 downto 0) => B"00000",
      prog_full => NLW_fifo_gen_inst_prog_full_UNCONNECTED,
      prog_full_thresh(4 downto 0) => B"00000",
      prog_full_thresh_assert(4 downto 0) => B"00000",
      prog_full_thresh_negate(4 downto 0) => B"00000",
      rd_clk => '0',
      rd_data_count(5 downto 0) => NLW_fifo_gen_inst_rd_data_count_UNCONNECTED(5 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED,
      rst => \^sr\(0),
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(3 downto 0) => NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(3 downto 0) => B"0000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => '0',
      s_axis_tready => NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_fifo_gen_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_fifo_gen_inst_underflow_UNCONNECTED,
      valid => NLW_fifo_gen_inst_valid_UNCONNECTED,
      wr_ack => NLW_fifo_gen_inst_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(5 downto 0) => NLW_fifo_gen_inst_wr_data_count_UNCONNECTED(5 downto 0),
      wr_en => cmd_b_push,
      wr_rst => '0',
      wr_rst_busy => NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED
    );
fifo_gen_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \^split_ongoing_reg\,
      I1 => wrap_need_to_split_q,
      I2 => incr_need_to_split_q,
      I3 => fix_need_to_split_q,
      O => \^din\(0)
    );
fifo_gen_inst_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^full\,
      I1 => ram_full_i_reg,
      I2 => command_ongoing,
      I3 => cmd_push_block,
      O => wr_en
    );
\fifo_gen_inst_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[3]\(3),
      I1 => fix_need_to_split_q,
      O => p_1_out(3)
    );
\fifo_gen_inst_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[3]\(2),
      I1 => fix_need_to_split_q,
      I2 => \num_transactions_q_reg[2]\(2),
      I3 => incr_need_to_split_q,
      O => p_1_out(2)
    );
\fifo_gen_inst_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[3]\(1),
      I1 => fix_need_to_split_q,
      I2 => \num_transactions_q_reg[2]\(1),
      I3 => incr_need_to_split_q,
      O => p_1_out(1)
    );
\fifo_gen_inst_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[3]\(0),
      I1 => fix_need_to_split_q,
      I2 => \num_transactions_q_reg[2]\(0),
      I3 => incr_need_to_split_q,
      I4 => wrap_need_to_split_q,
      O => p_1_out(0)
    );
fifo_gen_inst_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F100"
    )
        port map (
      I0 => \^full\,
      I1 => ram_full_i_reg,
      I2 => cmd_push_block,
      I3 => command_ongoing,
      I4 => cmd_b_push_block,
      O => cmd_b_push
    );
\fifo_gen_inst_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005D005D0000005D"
    )
        port map (
      I0 => access_is_fix_q,
      I1 => fix_need_to_split_q,
      I2 => \^split_ongoing_reg_0\,
      I3 => \fifo_gen_inst_i_9__0_n_0\,
      I4 => access_is_wrap_q,
      I5 => wrap_need_to_split_q_reg,
      O => \^split_ongoing_reg\
    );
\fifo_gen_inst_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000002"
    )
        port map (
      I0 => \^split_ongoing_reg_1\,
      I1 => \^split_ongoing_reg_2\,
      I2 => \^split_ongoing_reg_3\,
      I3 => Q(2),
      I4 => \num_transactions_q_reg[2]\(2),
      O => \fifo_gen_inst_i_9__0_n_0\
    );
\m_axi_awlen[7]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => Q(0),
      I1 => \S_AXI_ALEN_Q_reg[3]\(0),
      I2 => Q(2),
      I3 => \S_AXI_ALEN_Q_reg[3]\(2),
      I4 => \m_axi_awlen[7]_INST_0_i_14_n_0\,
      I5 => \^split_ongoing_reg_2\,
      O => \^split_ongoing_reg_0\
    );
\m_axi_awlen[7]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[3]\(3),
      I1 => Q(3),
      I2 => \S_AXI_ALEN_Q_reg[3]\(1),
      I3 => Q(1),
      O => \m_axi_awlen[7]_INST_0_i_14_n_0\
    );
\m_axi_awlen[7]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => Q(5),
      I3 => Q(4),
      O => \^split_ongoing_reg_2\
    );
\m_axi_awlen[7]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => access_is_incr_q,
      I1 => Q(3),
      I2 => Q(1),
      I3 => \num_transactions_q_reg[2]\(1),
      O => \^split_ongoing_reg_3\
    );
\m_axi_awlen[7]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9909"
    )
        port map (
      I0 => Q(0),
      I1 => \num_transactions_q_reg[2]\(0),
      I2 => Q(1),
      I3 => \num_transactions_q_reg[2]\(1),
      O => \^split_ongoing_reg_1\
    );
\queue_id[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => S_AXI_AID_Q,
      I1 => \^full\,
      I2 => ram_full_i_reg,
      I3 => command_ongoing,
      I4 => cmd_push_block,
      I5 => s_axi_bid(0),
      O => \queue_id_reg[0]\
    );
split_ongoing_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA020000"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \^full\,
      I2 => ram_full_i_reg,
      I3 => cmd_push_block,
      I4 => command_ongoing,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_fifo_gen__parameterized0\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    \m_axi_awsize[2]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    command_ongoing_reg : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    \next_mi_addr_reg[10]\ : out STD_LOGIC;
    \next_mi_addr_reg[10]_0\ : out STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC;
    first_word_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_AREADY_I_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : in STD_LOGIC;
    fix_need_to_split_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    split_ongoing : in STD_LOGIC;
    access_is_wrap_q : in STD_LOGIC;
    wrap_need_to_split_q : in STD_LOGIC;
    \wrap_unaligned_len_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \areset_d_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    command_ongoing : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    access_is_fix_q_reg : in STD_LOGIC;
    \S_AXI_AADDR_Q_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    si_full_size_q : in STD_LOGIC;
    \split_addr_mask_q_reg[0]\ : in STD_LOGIC;
    \split_addr_mask_q_reg[1]\ : in STD_LOGIC;
    \split_addr_mask_q_reg[2]\ : in STD_LOGIC;
    \split_addr_mask_q_reg[3]\ : in STD_LOGIC;
    \split_addr_mask_q_reg[6]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \split_addr_mask_q_reg[31]\ : in STD_LOGIC;
    access_is_incr_q : in STD_LOGIC;
    \S_AXI_ALEN_Q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \downsized_len_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \unalignment_addr_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \fix_len_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    \goreg_dm.dout_i_reg[9]\ : in STD_LOGIC;
    access_is_fix_q : in STD_LOGIC;
    \pushed_commands_reg[0]\ : in STD_LOGIC;
    \num_transactions_q_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \pushed_commands_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    access_is_incr_q_reg : in STD_LOGIC;
    \pushed_commands_reg[7]\ : in STD_LOGIC;
    \pushed_commands_reg[0]_0\ : in STD_LOGIC;
    incr_need_to_split_q : in STD_LOGIC;
    legal_wrap_len_q : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    first_mi_word : in STD_LOGIC;
    \current_word_1_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    first_word_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_fifo_gen__parameterized0\ : entity is "axi_data_fifo_v2_1_14_fifo_gen";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_fifo_gen__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_fifo_gen__parameterized0\ is
  signal \^d\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal S_AXI_AREADY_I_i_3_n_0 : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_first_word\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \USE_WRITE.wr_cmd_mask\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \USE_WRITE.wr_cmd_mirror\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_offset\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \USE_WRITE.wr_cmd_ready\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_size\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cmd_size_ii : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \current_word_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_word_1[1]_i_3_n_0\ : STD_LOGIC;
  signal \current_word_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \current_word_1[2]_i_3_n_0\ : STD_LOGIC;
  signal \current_word_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \current_word_1[4]_i_2_n_0\ : STD_LOGIC;
  signal \current_word_1[4]_i_3_n_0\ : STD_LOGIC;
  signal \current_word_1[6]_i_3_n_0\ : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal empty : STD_LOGIC;
  signal fifo_gen_inst_i_18_n_0 : STD_LOGIC;
  signal fifo_gen_inst_i_19_n_0 : STD_LOGIC;
  signal fifo_gen_inst_i_20_n_0 : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \^gpr1.dout_i_reg[1]\ : STD_LOGIC;
  signal \m_axi_awlen[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \m_axi_awlen[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^m_axi_awsize[2]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \m_axi_wdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[100]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[100]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[101]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[101]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[102]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[102]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[103]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[103]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[104]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[104]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[105]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[105]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[106]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[106]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[107]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[107]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[108]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[108]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[109]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[109]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[110]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[110]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[111]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[111]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[112]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[112]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[113]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[113]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[114]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[114]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[115]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[115]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[116]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[116]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[117]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[117]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[118]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[118]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[119]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[119]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[120]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[120]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[121]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[121]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[122]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[122]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[123]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[123]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[124]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[124]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[125]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[125]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[126]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[126]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[127]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[127]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[127]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[127]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[127]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[127]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[127]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[127]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[127]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[127]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[32]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[32]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[33]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[33]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[34]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[34]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[35]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[35]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[36]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[36]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[37]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[37]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[38]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[38]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[39]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[39]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[40]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[40]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[41]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[41]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[42]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[42]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[43]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[43]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[44]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[44]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[45]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[45]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[46]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[46]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[47]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[47]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[48]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[48]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[49]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[49]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[50]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[50]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[51]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[51]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[52]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[52]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[53]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[53]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[54]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[54]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[55]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[55]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[56]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[56]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[57]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[57]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[58]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[58]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[59]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[59]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[60]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[60]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[61]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[61]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[62]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[62]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[63]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[63]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[64]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[64]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[65]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[65]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[66]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[66]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[67]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[67]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[68]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[68]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[69]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[69]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[70]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[70]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[71]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[71]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[72]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[72]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[73]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[73]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[74]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[74]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[75]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[75]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[76]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[76]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[77]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[77]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[78]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[78]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[79]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[79]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[80]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[80]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[81]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[81]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[82]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[82]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[83]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[83]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[84]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[84]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[85]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[85]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[86]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[86]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[87]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[87]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[88]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[88]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[89]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[89]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[90]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[90]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[91]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[91]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[92]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[92]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[93]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[93]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[94]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[94]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[95]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[95]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[96]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[96]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[97]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[97]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[98]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[98]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[99]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[99]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wstrb[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^next_mi_addr_reg[10]\ : STD_LOGIC;
  signal \^next_mi_addr_reg[10]_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 37 downto 21 );
  signal s_axi_wready_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_2_n_0 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_3_n_0 : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 36 to 36 );
  signal NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fifo_gen_inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fifo_gen_inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fifo_gen_inst : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fifo_gen_inst : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fifo_gen_inst : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fifo_gen_inst : label is 38;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fifo_gen_inst : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fifo_gen_inst : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fifo_gen_inst : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fifo_gen_inst : label is 38;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fifo_gen_inst : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fifo_gen_inst : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_gen_inst : label is "zynquplus";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fifo_gen_inst : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fifo_gen_inst : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fifo_gen_inst : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fifo_gen_inst : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fifo_gen_inst : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fifo_gen_inst : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fifo_gen_inst : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fifo_gen_inst : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_gen_inst : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fifo_gen_inst : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fifo_gen_inst : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fifo_gen_inst : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fifo_gen_inst : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fifo_gen_inst : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fifo_gen_inst : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fifo_gen_inst : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fifo_gen_inst : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fifo_gen_inst : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fifo_gen_inst : label is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fifo_gen_inst : label is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fifo_gen_inst : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fifo_gen_inst : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of fifo_gen_inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fifo_gen_inst : label is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fifo_gen_inst : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fifo_gen_inst : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fifo_gen_inst : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fifo_gen_inst : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fifo_gen_inst : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fifo_gen_inst : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fifo_gen_inst : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fifo_gen_inst : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fifo_gen_inst : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fifo_gen_inst : label is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fifo_gen_inst : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fifo_gen_inst : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fifo_gen_inst : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fifo_gen_inst : label is 1;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fifo_gen_inst_i_17 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \fifo_gen_inst_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of fifo_gen_inst_i_21 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of fifo_gen_inst_i_22 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of fifo_gen_inst_i_3 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of fifo_gen_inst_i_4 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of first_word_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axi_awlen[1]_INST_0_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axi_awlen[3]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axi_awlen[3]_INST_0_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axi_awlen[3]_INST_0_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axi_awlen[4]_INST_0_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axi_awlen[4]_INST_0_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axi_awlen[5]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axi_awlen[6]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axi_awlen[7]_INST_0_i_13\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axi_awlen[7]_INST_0_i_16\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axi_awlen[7]_INST_0_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axi_awlen[7]_INST_0_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axi_awlen[7]_INST_0_i_8\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axi_awlen[7]_INST_0_i_9\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axi_awsize[0]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axi_awsize[1]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axi_awsize[2]_INST_0\ : label is "soft_lutpair24";
begin
  D(6 downto 0) <= \^d\(6 downto 0);
  dout(8 downto 0) <= \^dout\(8 downto 0);
  full <= \^full\;
  \gpr1.dout_i_reg[1]\ <= \^gpr1.dout_i_reg[1]\;
  \m_axi_awsize[2]\(10 downto 0) <= \^m_axi_awsize[2]\(10 downto 0);
  \next_mi_addr_reg[10]\ <= \^next_mi_addr_reg[10]\;
  \next_mi_addr_reg[10]_0\ <= \^next_mi_addr_reg[10]_0\;
S_AXI_AREADY_I_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2EFF2E2E"
    )
        port map (
      I0 => S_AXI_AREADY_I_i_3_n_0,
      I1 => E(0),
      I2 => s_axi_awvalid,
      I3 => \areset_d_reg[1]\(0),
      I4 => \areset_d_reg[1]\(1),
      O => S_AXI_AREADY_I_reg
    );
S_AXI_AREADY_I_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000888A0000"
    )
        port map (
      I0 => command_ongoing,
      I1 => cmd_push_block,
      I2 => \^full\,
      I3 => ram_full_i_reg,
      I4 => m_axi_awready,
      I5 => access_is_fix_q_reg,
      O => S_AXI_AREADY_I_i_3_n_0
    );
cmd_push_block_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202020A0A0A0A8"
    )
        port map (
      I0 => \out\,
      I1 => command_ongoing,
      I2 => cmd_push_block,
      I3 => \^full\,
      I4 => ram_full_i_reg,
      I5 => m_axi_awready,
      O => cmd_push_block_reg
    );
command_ongoing_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF8F8F88008888"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => E(0),
      I2 => S_AXI_AREADY_I_i_3_n_0,
      I3 => \areset_d_reg[1]\(0),
      I4 => \areset_d_reg[1]\(1),
      I5 => command_ongoing,
      O => command_ongoing_reg
    );
\current_word_1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222228"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_mask\(0),
      I1 => \current_word_1[1]_i_3_n_0\,
      I2 => cmd_size_ii(1),
      I3 => cmd_size_ii(2),
      I4 => cmd_size_ii(0),
      O => \^d\(0)
    );
\current_word_1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888828888888282"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_mask\(1),
      I1 => \current_word_1[1]_i_2_n_0\,
      I2 => cmd_size_ii(2),
      I3 => cmd_size_ii(0),
      I4 => cmd_size_ii(1),
      I5 => \current_word_1[1]_i_3_n_0\,
      O => \^d\(1)
    );
\current_word_1[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_first_word\(1),
      I1 => first_mi_word,
      I2 => \^dout\(8),
      I3 => \current_word_1_reg[6]\(1),
      O => \current_word_1[1]_i_2_n_0\
    );
\current_word_1[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5457"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_first_word\(0),
      I1 => first_mi_word,
      I2 => \^dout\(8),
      I3 => \current_word_1_reg[6]\(0),
      O => \current_word_1[1]_i_3_n_0\
    );
\current_word_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2228222288828888"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_mask\(2),
      I1 => \current_word_1[2]_i_2_n_0\,
      I2 => cmd_size_ii(0),
      I3 => cmd_size_ii(2),
      I4 => cmd_size_ii(1),
      I5 => \current_word_1[2]_i_3_n_0\,
      O => \^d\(2)
    );
\current_word_1[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_first_word\(2),
      I1 => first_mi_word,
      I2 => \^dout\(8),
      I3 => \current_word_1_reg[6]\(2),
      O => \current_word_1[2]_i_2_n_0\
    );
\current_word_1[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200022"
    )
        port map (
      I0 => \current_word_1[1]_i_2_n_0\,
      I1 => cmd_size_ii(1),
      I2 => cmd_size_ii(0),
      I3 => cmd_size_ii(2),
      I4 => \current_word_1[1]_i_3_n_0\,
      O => \current_word_1[2]_i_3_n_0\
    );
\current_word_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8282828882828222"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_mask\(3),
      I1 => \current_word_1[3]_i_2_n_0\,
      I2 => \USE_WRITE.wr_cmd_first_word\(3),
      I3 => first_mi_word,
      I4 => \^dout\(8),
      I5 => \current_word_1_reg[6]\(3),
      O => \^d\(3)
    );
\current_word_1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCECCFFCFFFCFFF"
    )
        port map (
      I0 => \current_word_1[1]_i_3_n_0\,
      I1 => cmd_size_ii(2),
      I2 => cmd_size_ii(0),
      I3 => cmd_size_ii(1),
      I4 => \current_word_1[1]_i_2_n_0\,
      I5 => \current_word_1[2]_i_2_n_0\,
      O => \current_word_1[3]_i_2_n_0\
    );
\current_word_1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8282828882828222"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_mask\(4),
      I1 => \current_word_1[4]_i_2_n_0\,
      I2 => \USE_WRITE.wr_cmd_first_word\(4),
      I3 => first_mi_word,
      I4 => \^dout\(8),
      I5 => \current_word_1_reg[6]\(4),
      O => \^d\(4)
    );
\current_word_1[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB00FBFB"
    )
        port map (
      I0 => cmd_size_ii(0),
      I1 => cmd_size_ii(2),
      I2 => cmd_size_ii(1),
      I3 => \current_word_1[3]_i_2_n_0\,
      I4 => \current_word_1[4]_i_3_n_0\,
      O => \current_word_1[4]_i_2_n_0\
    );
\current_word_1[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_first_word\(3),
      I1 => first_mi_word,
      I2 => \^dout\(8),
      I3 => \current_word_1_reg[6]\(3),
      O => \current_word_1[4]_i_3_n_0\
    );
\current_word_1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220222A888A8880"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_mask\(5),
      I1 => \USE_WRITE.wr_cmd_first_word\(5),
      I2 => first_mi_word,
      I3 => \^dout\(8),
      I4 => \current_word_1_reg[6]\(5),
      I5 => \current_word_1[6]_i_3_n_0\,
      O => \^d\(5)
    );
\current_word_1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A8A808A808A80"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_mask\(6),
      I1 => \USE_WRITE.wr_cmd_first_word\(6),
      I2 => first_word_reg_0,
      I3 => \current_word_1_reg[6]\(6),
      I4 => \current_word_1[6]_i_3_n_0\,
      I5 => \m_axi_wdata[127]_INST_0_i_4_n_0\,
      O => \^d\(6)
    );
\current_word_1[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE02"
    )
        port map (
      I0 => \current_word_1_reg[6]\(4),
      I1 => \^dout\(8),
      I2 => first_mi_word,
      I3 => \USE_WRITE.wr_cmd_first_word\(4),
      I4 => \current_word_1[4]_i_2_n_0\,
      O => \current_word_1[6]_i_3_n_0\
    );
fifo_gen_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_1__parameterized0\
     port map (
      almost_empty => NLW_fifo_gen_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_fifo_gen_inst_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_fifo_gen_inst_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_fifo_gen_inst_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => CLK,
      data_count(5 downto 0) => NLW_fifo_gen_inst_data_count_UNCONNECTED(5 downto 0),
      dbiterr => NLW_fifo_gen_inst_dbiterr_UNCONNECTED,
      din(37) => p_0_out(37),
      din(36 downto 35) => din(11 downto 10),
      din(34 downto 21) => p_0_out(34 downto 21),
      din(20 downto 14) => din(9 downto 3),
      din(13 downto 3) => \^m_axi_awsize[2]\(10 downto 0),
      din(2 downto 0) => din(2 downto 0),
      dout(37) => \^dout\(8),
      dout(36) => NLW_fifo_gen_inst_dout_UNCONNECTED(36),
      dout(35) => \USE_WRITE.wr_cmd_mirror\,
      dout(34 downto 28) => \USE_WRITE.wr_cmd_first_word\(6 downto 0),
      dout(27 downto 21) => \USE_WRITE.wr_cmd_offset\(6 downto 0),
      dout(20 downto 14) => \USE_WRITE.wr_cmd_mask\(6 downto 0),
      dout(13 downto 11) => cmd_size_ii(2 downto 0),
      dout(10 downto 3) => \^dout\(7 downto 0),
      dout(2 downto 0) => \USE_WRITE.wr_cmd_size\(2 downto 0),
      empty => empty,
      full => \^full\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(3 downto 0) => NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED(3 downto 0),
      m_axi_arlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(3 downto 0) => NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(3 downto 0) => B"0000",
      m_axi_bready => NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(3 downto 0) => B"0000",
      m_axi_rlast => '0',
      m_axi_rready => NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(3 downto 0) => NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED(3 downto 0),
      m_axi_wlast => NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(63 downto 0) => NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED(63 downto 0),
      m_axis_tdest(3 downto 0) => NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(7 downto 0) => NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED(7 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(3 downto 0) => NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(3 downto 0) => NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_fifo_gen_inst_overflow_UNCONNECTED,
      prog_empty => NLW_fifo_gen_inst_prog_empty_UNCONNECTED,
      prog_empty_thresh(4 downto 0) => B"00000",
      prog_empty_thresh_assert(4 downto 0) => B"00000",
      prog_empty_thresh_negate(4 downto 0) => B"00000",
      prog_full => NLW_fifo_gen_inst_prog_full_UNCONNECTED,
      prog_full_thresh(4 downto 0) => B"00000",
      prog_full_thresh_assert(4 downto 0) => B"00000",
      prog_full_thresh_negate(4 downto 0) => B"00000",
      rd_clk => '0',
      rd_data_count(5 downto 0) => NLW_fifo_gen_inst_rd_data_count_UNCONNECTED(5 downto 0),
      rd_en => \USE_WRITE.wr_cmd_ready\,
      rd_rst => '0',
      rd_rst_busy => NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED,
      rst => SR(0),
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(3 downto 0) => NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(3 downto 0) => B"0000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => '0',
      s_axis_tready => NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_fifo_gen_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_fifo_gen_inst_underflow_UNCONNECTED,
      valid => NLW_fifo_gen_inst_valid_UNCONNECTED,
      wr_ack => NLW_fifo_gen_inst_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(5 downto 0) => NLW_fifo_gen_inst_wr_data_count_UNCONNECTED(5 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED
    );
fifo_gen_inst_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007500"
    )
        port map (
      I0 => \^next_mi_addr_reg[10]_0\,
      I1 => si_full_size_q,
      I2 => \split_addr_mask_q_reg[6]\(1),
      I3 => \S_AXI_AADDR_Q_reg[6]\(5),
      I4 => \^next_mi_addr_reg[10]\,
      I5 => din(8),
      O => p_0_out(26)
    );
fifo_gen_inst_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007500"
    )
        port map (
      I0 => \^next_mi_addr_reg[10]_0\,
      I1 => si_full_size_q,
      I2 => \split_addr_mask_q_reg[6]\(0),
      I3 => \S_AXI_AADDR_Q_reg[6]\(4),
      I4 => \^next_mi_addr_reg[10]\,
      I5 => din(7),
      O => p_0_out(25)
    );
fifo_gen_inst_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004440404"
    )
        port map (
      I0 => \^next_mi_addr_reg[10]\,
      I1 => \S_AXI_AADDR_Q_reg[6]\(3),
      I2 => \^next_mi_addr_reg[10]_0\,
      I3 => si_full_size_q,
      I4 => \split_addr_mask_q_reg[3]\,
      I5 => din(6),
      O => p_0_out(24)
    );
fifo_gen_inst_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004440404"
    )
        port map (
      I0 => \^next_mi_addr_reg[10]\,
      I1 => \S_AXI_AADDR_Q_reg[6]\(2),
      I2 => \^next_mi_addr_reg[10]_0\,
      I3 => si_full_size_q,
      I4 => \split_addr_mask_q_reg[2]\,
      I5 => din(5),
      O => p_0_out(23)
    );
fifo_gen_inst_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004440404"
    )
        port map (
      I0 => \^next_mi_addr_reg[10]\,
      I1 => \S_AXI_AADDR_Q_reg[6]\(1),
      I2 => \^next_mi_addr_reg[10]_0\,
      I3 => si_full_size_q,
      I4 => \split_addr_mask_q_reg[1]\,
      I5 => din(4),
      O => p_0_out(22)
    );
fifo_gen_inst_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004440404"
    )
        port map (
      I0 => \^next_mi_addr_reg[10]\,
      I1 => \S_AXI_AADDR_Q_reg[6]\(0),
      I2 => \^next_mi_addr_reg[10]_0\,
      I3 => si_full_size_q,
      I4 => \split_addr_mask_q_reg[0]\,
      I5 => din(3),
      O => p_0_out(21)
    );
fifo_gen_inst_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => empty,
      I2 => m_axi_wready,
      I3 => \goreg_dm.dout_i_reg[9]\,
      O => \USE_WRITE.wr_cmd_ready\
    );
fifo_gen_inst_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00404444CCCCCCCC"
    )
        port map (
      I0 => access_is_wrap_q,
      I1 => \S_AXI_AADDR_Q_reg[6]\(6),
      I2 => \split_addr_mask_q_reg[6]\(2),
      I3 => si_full_size_q,
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => fifo_gen_inst_i_18_n_0
    );
fifo_gen_inst_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00404444CCCCCCCC"
    )
        port map (
      I0 => access_is_wrap_q,
      I1 => \S_AXI_AADDR_Q_reg[6]\(5),
      I2 => \split_addr_mask_q_reg[6]\(1),
      I3 => si_full_size_q,
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => fifo_gen_inst_i_19_n_0
    );
\fifo_gen_inst_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => access_is_fix_q,
      I1 => din(10),
      O => p_0_out(37)
    );
fifo_gen_inst_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => fifo_gen_inst_i_18_n_0,
      I1 => din(9),
      I2 => \split_addr_mask_q_reg[31]\,
      O => p_0_out(34)
    );
fifo_gen_inst_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00404444CCCCCCCC"
    )
        port map (
      I0 => access_is_wrap_q,
      I1 => \S_AXI_AADDR_Q_reg[6]\(4),
      I2 => \split_addr_mask_q_reg[6]\(0),
      I3 => si_full_size_q,
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => fifo_gen_inst_i_20_n_0
    );
fifo_gen_inst_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => split_ongoing,
      I1 => access_is_wrap_q,
      O => \^next_mi_addr_reg[10]\
    );
fifo_gen_inst_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => access_is_incr_q,
      I1 => split_ongoing,
      O => \^next_mi_addr_reg[10]_0\
    );
fifo_gen_inst_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => fifo_gen_inst_i_19_n_0,
      I1 => din(8),
      I2 => \split_addr_mask_q_reg[31]\,
      O => p_0_out(33)
    );
fifo_gen_inst_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => fifo_gen_inst_i_20_n_0,
      I1 => din(7),
      I2 => \split_addr_mask_q_reg[31]\,
      O => p_0_out(32)
    );
fifo_gen_inst_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444000000000000"
    )
        port map (
      I0 => \^next_mi_addr_reg[10]\,
      I1 => \S_AXI_AADDR_Q_reg[6]\(3),
      I2 => \^next_mi_addr_reg[10]_0\,
      I3 => si_full_size_q,
      I4 => din(6),
      I5 => \split_addr_mask_q_reg[3]\,
      O => p_0_out(31)
    );
\fifo_gen_inst_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444000000000000"
    )
        port map (
      I0 => \^next_mi_addr_reg[10]\,
      I1 => \S_AXI_AADDR_Q_reg[6]\(2),
      I2 => \^next_mi_addr_reg[10]_0\,
      I3 => si_full_size_q,
      I4 => din(5),
      I5 => \split_addr_mask_q_reg[2]\,
      O => p_0_out(30)
    );
\fifo_gen_inst_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444000000000000"
    )
        port map (
      I0 => \^next_mi_addr_reg[10]\,
      I1 => \S_AXI_AADDR_Q_reg[6]\(1),
      I2 => \^next_mi_addr_reg[10]_0\,
      I3 => si_full_size_q,
      I4 => din(4),
      I5 => \split_addr_mask_q_reg[1]\,
      O => p_0_out(29)
    );
fifo_gen_inst_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444000000000000"
    )
        port map (
      I0 => \^next_mi_addr_reg[10]\,
      I1 => \S_AXI_AADDR_Q_reg[6]\(0),
      I2 => \^next_mi_addr_reg[10]_0\,
      I3 => si_full_size_q,
      I4 => din(3),
      I5 => \split_addr_mask_q_reg[0]\,
      O => p_0_out(28)
    );
fifo_gen_inst_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007500"
    )
        port map (
      I0 => \^next_mi_addr_reg[10]_0\,
      I1 => si_full_size_q,
      I2 => \split_addr_mask_q_reg[6]\(2),
      I3 => \S_AXI_AADDR_Q_reg[6]\(6),
      I4 => \^next_mi_addr_reg[10]\,
      I5 => din(9),
      O => p_0_out(27)
    );
first_word_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axi_wready,
      I1 => empty,
      I2 => s_axi_wvalid,
      O => first_word_reg(0)
    );
\m_axi_awlen[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F704F7F708FB0808"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(0),
      I1 => wrap_need_to_split_q,
      I2 => split_ongoing,
      I3 => \m_axi_awlen[2]_INST_0_i_3_n_0\,
      I4 => \unalignment_addr_q_reg[2]\(0),
      I5 => \m_axi_awlen[0]_INST_0_i_1_n_0\,
      O => \^m_axi_awsize[2]\(0)
    );
\m_axi_awlen[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(0),
      I1 => din(10),
      I2 => \downsized_len_q_reg[7]\(0),
      I3 => \m_axi_awlen[7]_INST_0_i_7_n_0\,
      I4 => \m_axi_awlen[1]_INST_0_i_3_n_0\,
      O => \m_axi_awlen[0]_INST_0_i_1_n_0\
    );
\m_axi_awlen[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBF404F4040BFB"
    )
        port map (
      I0 => \m_axi_awlen[2]_INST_0_i_3_n_0\,
      I1 => \unalignment_addr_q_reg[2]\(1),
      I2 => \^gpr1.dout_i_reg[1]\,
      I3 => \wrap_unaligned_len_q_reg[7]\(1),
      I4 => \m_axi_awlen[1]_INST_0_i_1_n_0\,
      I5 => \m_axi_awlen[1]_INST_0_i_2_n_0\,
      O => \^m_axi_awsize[2]\(1)
    );
\m_axi_awlen[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE200E2"
    )
        port map (
      I0 => \m_axi_awlen[1]_INST_0_i_3_n_0\,
      I1 => \m_axi_awlen[7]_INST_0_i_7_n_0\,
      I2 => \downsized_len_q_reg[7]\(0),
      I3 => din(10),
      I4 => \S_AXI_ALEN_Q_reg[7]\(0),
      I5 => \m_axi_awlen[1]_INST_0_i_4_n_0\,
      O => \m_axi_awlen[1]_INST_0_i_1_n_0\
    );
\m_axi_awlen[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(1),
      I1 => din(10),
      I2 => \downsized_len_q_reg[7]\(1),
      I3 => \m_axi_awlen[7]_INST_0_i_7_n_0\,
      I4 => \m_axi_awlen[1]_INST_0_i_5_n_0\,
      O => \m_axi_awlen[1]_INST_0_i_2_n_0\
    );
\m_axi_awlen[1]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00BFBF"
    )
        port map (
      I0 => Q(0),
      I1 => split_ongoing,
      I2 => access_is_wrap_q,
      I3 => \fix_len_q_reg[2]\(0),
      I4 => fix_need_to_split_q,
      O => \m_axi_awlen[1]_INST_0_i_3_n_0\
    );
\m_axi_awlen[1]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F704F7F7"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(0),
      I1 => wrap_need_to_split_q,
      I2 => split_ongoing,
      I3 => \m_axi_awlen[2]_INST_0_i_3_n_0\,
      I4 => \unalignment_addr_q_reg[2]\(0),
      O => \m_axi_awlen[1]_INST_0_i_4_n_0\
    );
\m_axi_awlen[1]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBBBBB"
    )
        port map (
      I0 => \fix_len_q_reg[2]\(1),
      I1 => fix_need_to_split_q,
      I2 => Q(1),
      I3 => split_ongoing,
      I4 => access_is_wrap_q,
      O => \m_axi_awlen[1]_INST_0_i_5_n_0\
    );
\m_axi_awlen[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966696999666"
    )
        port map (
      I0 => \m_axi_awlen[2]_INST_0_i_1_n_0\,
      I1 => \m_axi_awlen[2]_INST_0_i_2_n_0\,
      I2 => \wrap_unaligned_len_q_reg[7]\(2),
      I3 => \^gpr1.dout_i_reg[1]\,
      I4 => \unalignment_addr_q_reg[2]\(2),
      I5 => \m_axi_awlen[2]_INST_0_i_3_n_0\,
      O => \^m_axi_awsize[2]\(2)
    );
\m_axi_awlen[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000088B888B8FFFF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(1),
      I1 => \^gpr1.dout_i_reg[1]\,
      I2 => \unalignment_addr_q_reg[2]\(1),
      I3 => \m_axi_awlen[2]_INST_0_i_3_n_0\,
      I4 => \m_axi_awlen[1]_INST_0_i_1_n_0\,
      I5 => \m_axi_awlen[1]_INST_0_i_2_n_0\,
      O => \m_axi_awlen[2]_INST_0_i_1_n_0\
    );
\m_axi_awlen[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(2),
      I1 => din(10),
      I2 => \downsized_len_q_reg[7]\(2),
      I3 => \m_axi_awlen[7]_INST_0_i_7_n_0\,
      I4 => \m_axi_awlen[2]_INST_0_i_4_n_0\,
      O => \m_axi_awlen[2]_INST_0_i_2_n_0\
    );
\m_axi_awlen[2]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FD0D"
    )
        port map (
      I0 => access_is_incr_q,
      I1 => din(10),
      I2 => incr_need_to_split_q,
      I3 => split_ongoing,
      I4 => fix_need_to_split_q,
      O => \m_axi_awlen[2]_INST_0_i_3_n_0\
    );
\m_axi_awlen[2]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00BFBF"
    )
        port map (
      I0 => Q(2),
      I1 => split_ongoing,
      I2 => access_is_wrap_q,
      I3 => \fix_len_q_reg[2]\(2),
      I4 => fix_need_to_split_q,
      O => \m_axi_awlen[2]_INST_0_i_4_n_0\
    );
\m_axi_awlen[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5955A6AA"
    )
        port map (
      I0 => \m_axi_awlen[3]_INST_0_i_1_n_0\,
      I1 => \wrap_unaligned_len_q_reg[7]\(3),
      I2 => split_ongoing,
      I3 => wrap_need_to_split_q,
      I4 => \m_axi_awlen[3]_INST_0_i_2_n_0\,
      O => \^m_axi_awsize[2]\(3)
    );
\m_axi_awlen[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44D4D4DD"
    )
        port map (
      I0 => \m_axi_awlen[2]_INST_0_i_2_n_0\,
      I1 => \m_axi_awlen[3]_INST_0_i_3_n_0\,
      I2 => \m_axi_awlen[3]_INST_0_i_4_n_0\,
      I3 => \m_axi_awlen[1]_INST_0_i_1_n_0\,
      I4 => \m_axi_awlen[1]_INST_0_i_2_n_0\,
      O => \m_axi_awlen[3]_INST_0_i_1_n_0\
    );
\m_axi_awlen[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(3),
      I1 => din(10),
      I2 => \downsized_len_q_reg[7]\(3),
      I3 => \m_axi_awlen[7]_INST_0_i_7_n_0\,
      I4 => \m_axi_awlen[3]_INST_0_i_5_n_0\,
      O => \m_axi_awlen[3]_INST_0_i_2_n_0\
    );
\m_axi_awlen[3]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(2),
      I1 => wrap_need_to_split_q,
      I2 => split_ongoing,
      I3 => \unalignment_addr_q_reg[2]\(2),
      I4 => \m_axi_awlen[2]_INST_0_i_3_n_0\,
      O => \m_axi_awlen[3]_INST_0_i_3_n_0\
    );
\m_axi_awlen[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(1),
      I1 => wrap_need_to_split_q,
      I2 => split_ongoing,
      I3 => \unalignment_addr_q_reg[2]\(1),
      I4 => \m_axi_awlen[2]_INST_0_i_3_n_0\,
      O => \m_axi_awlen[3]_INST_0_i_4_n_0\
    );
\m_axi_awlen[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => fix_need_to_split_q,
      I1 => Q(3),
      I2 => split_ongoing,
      I3 => access_is_wrap_q,
      O => \m_axi_awlen[3]_INST_0_i_5_n_0\
    );
\m_axi_awlen[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5955A6AA"
    )
        port map (
      I0 => \m_axi_awlen[4]_INST_0_i_1_n_0\,
      I1 => \wrap_unaligned_len_q_reg[7]\(4),
      I2 => split_ongoing,
      I3 => wrap_need_to_split_q,
      I4 => \m_axi_awlen[4]_INST_0_i_2_n_0\,
      O => \^m_axi_awsize[2]\(4)
    );
\m_axi_awlen[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D550400"
    )
        port map (
      I0 => \m_axi_awlen[3]_INST_0_i_2_n_0\,
      I1 => wrap_need_to_split_q,
      I2 => split_ongoing,
      I3 => \wrap_unaligned_len_q_reg[7]\(3),
      I4 => \m_axi_awlen[3]_INST_0_i_1_n_0\,
      O => \m_axi_awlen[4]_INST_0_i_1_n_0\
    );
\m_axi_awlen[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(4),
      I1 => din(10),
      I2 => \downsized_len_q_reg[7]\(4),
      I3 => \m_axi_awlen[7]_INST_0_i_7_n_0\,
      I4 => \m_axi_awlen[4]_INST_0_i_3_n_0\,
      O => \m_axi_awlen[4]_INST_0_i_2_n_0\
    );
\m_axi_awlen[4]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => fix_need_to_split_q,
      I1 => Q(4),
      I2 => split_ongoing,
      I3 => access_is_wrap_q,
      O => \m_axi_awlen[4]_INST_0_i_3_n_0\
    );
\m_axi_awlen[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AA5955"
    )
        port map (
      I0 => \m_axi_awlen[7]_INST_0_i_5_n_0\,
      I1 => wrap_need_to_split_q,
      I2 => split_ongoing,
      I3 => \wrap_unaligned_len_q_reg[7]\(5),
      I4 => \m_axi_awlen[7]_INST_0_i_3_n_0\,
      O => \^m_axi_awsize[2]\(5)
    );
\m_axi_awlen[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2FA05B24DFA05"
    )
        port map (
      I0 => \m_axi_awlen[7]_INST_0_i_3_n_0\,
      I1 => \wrap_unaligned_len_q_reg[7]\(5),
      I2 => \m_axi_awlen[7]_INST_0_i_5_n_0\,
      I3 => \m_axi_awlen[7]_INST_0_i_1_n_0\,
      I4 => \^gpr1.dout_i_reg[1]\,
      I5 => \wrap_unaligned_len_q_reg[7]\(6),
      O => \^m_axi_awsize[2]\(6)
    );
\m_axi_awlen[6]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wrap_need_to_split_q,
      I1 => split_ongoing,
      O => \^gpr1.dout_i_reg[1]\
    );
\m_axi_awlen[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2BB22B24D44DD4D"
    )
        port map (
      I0 => \m_axi_awlen[7]_INST_0_i_1_n_0\,
      I1 => \m_axi_awlen[7]_INST_0_i_2_n_0\,
      I2 => \m_axi_awlen[7]_INST_0_i_3_n_0\,
      I3 => \m_axi_awlen[7]_INST_0_i_4_n_0\,
      I4 => \m_axi_awlen[7]_INST_0_i_5_n_0\,
      I5 => \m_axi_awlen[7]_INST_0_i_6_n_0\,
      O => \^m_axi_awsize[2]\(7)
    );
\m_axi_awlen[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(6),
      I1 => din(10),
      I2 => \downsized_len_q_reg[7]\(6),
      I3 => \m_axi_awlen[7]_INST_0_i_7_n_0\,
      I4 => \m_axi_awlen[7]_INST_0_i_8_n_0\,
      O => \m_axi_awlen[7]_INST_0_i_1_n_0\
    );
\m_axi_awlen[7]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B888B8B8B8B8B8B"
    )
        port map (
      I0 => \downsized_len_q_reg[7]\(7),
      I1 => \m_axi_awlen[7]_INST_0_i_7_n_0\,
      I2 => fix_need_to_split_q,
      I3 => Q(7),
      I4 => split_ongoing,
      I5 => access_is_wrap_q,
      O => \m_axi_awlen[7]_INST_0_i_10_n_0\
    );
\m_axi_awlen[7]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEBAAAAAAAA"
    )
        port map (
      I0 => \m_axi_awlen[7]_INST_0_i_16_n_0\,
      I1 => \num_transactions_q_reg[2]\(0),
      I2 => \pushed_commands_reg[2]\(0),
      I3 => access_is_incr_q_reg,
      I4 => \pushed_commands_reg[7]\,
      I5 => \pushed_commands_reg[0]_0\,
      O => \m_axi_awlen[7]_INST_0_i_12_n_0\
    );
\m_axi_awlen[7]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => incr_need_to_split_q,
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => legal_wrap_len_q,
      I4 => access_is_wrap_q,
      O => \m_axi_awlen[7]_INST_0_i_13_n_0\
    );
\m_axi_awlen[7]_INST_0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => access_is_wrap_q,
      I1 => split_ongoing,
      I2 => wrap_need_to_split_q,
      O => \m_axi_awlen[7]_INST_0_i_16_n_0\
    );
\m_axi_awlen[7]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => split_ongoing,
      I1 => wrap_need_to_split_q,
      I2 => \wrap_unaligned_len_q_reg[7]\(6),
      O => \m_axi_awlen[7]_INST_0_i_2_n_0\
    );
\m_axi_awlen[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(5),
      I1 => din(10),
      I2 => \downsized_len_q_reg[7]\(5),
      I3 => \m_axi_awlen[7]_INST_0_i_7_n_0\,
      I4 => \m_axi_awlen[7]_INST_0_i_9_n_0\,
      O => \m_axi_awlen[7]_INST_0_i_3_n_0\
    );
\m_axi_awlen[7]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(5),
      I1 => split_ongoing,
      I2 => wrap_need_to_split_q,
      O => \m_axi_awlen[7]_INST_0_i_4_n_0\
    );
\m_axi_awlen[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B2ABF2ABF3BBFBF"
    )
        port map (
      I0 => \m_axi_awlen[4]_INST_0_i_2_n_0\,
      I1 => \^gpr1.dout_i_reg[1]\,
      I2 => \wrap_unaligned_len_q_reg[7]\(4),
      I3 => \m_axi_awlen[3]_INST_0_i_2_n_0\,
      I4 => \wrap_unaligned_len_q_reg[7]\(3),
      I5 => \m_axi_awlen[3]_INST_0_i_1_n_0\,
      O => \m_axi_awlen[7]_INST_0_i_5_n_0\
    );
\m_axi_awlen[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDF202020DF20"
    )
        port map (
      I0 => wrap_need_to_split_q,
      I1 => split_ongoing,
      I2 => \wrap_unaligned_len_q_reg[7]\(7),
      I3 => \m_axi_awlen[7]_INST_0_i_10_n_0\,
      I4 => din(10),
      I5 => \S_AXI_ALEN_Q_reg[7]\(7),
      O => \m_axi_awlen[7]_INST_0_i_6_n_0\
    );
\m_axi_awlen[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA20000"
    )
        port map (
      I0 => access_is_fix_q,
      I1 => fix_need_to_split_q,
      I2 => \pushed_commands_reg[0]\,
      I3 => \m_axi_awlen[7]_INST_0_i_12_n_0\,
      I4 => access_is_incr_q,
      I5 => \m_axi_awlen[7]_INST_0_i_13_n_0\,
      O => \m_axi_awlen[7]_INST_0_i_7_n_0\
    );
\m_axi_awlen[7]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => fix_need_to_split_q,
      I1 => Q(6),
      I2 => split_ongoing,
      I3 => access_is_wrap_q,
      O => \m_axi_awlen[7]_INST_0_i_8_n_0\
    );
\m_axi_awlen[7]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => fix_need_to_split_q,
      I1 => Q(5),
      I2 => split_ongoing,
      I3 => access_is_wrap_q,
      O => \m_axi_awlen[7]_INST_0_i_9_n_0\
    );
\m_axi_awsize[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => din(10),
      I1 => din(0),
      O => \^m_axi_awsize[2]\(8)
    );
\m_axi_awsize[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => din(10),
      I1 => din(1),
      O => \^m_axi_awsize[2]\(9)
    );
\m_axi_awsize[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => din(2),
      I1 => din(10),
      O => \^m_axi_awsize[2]\(10)
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"888A"
    )
        port map (
      I0 => command_ongoing,
      I1 => cmd_push_block,
      I2 => \^full\,
      I3 => ram_full_i_reg,
      O => m_axi_awvalid
    );
\m_axi_wdata[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[0]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[0]_INST_0_i_2_n_0\,
      O => m_axi_wdata(0),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(128),
      I1 => s_axi_wdata(0),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(384),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(256),
      O => \m_axi_wdata[0]_INST_0_i_1_n_0\
    );
\m_axi_wdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(640),
      I1 => s_axi_wdata(512),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(896),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(768),
      O => \m_axi_wdata[0]_INST_0_i_2_n_0\
    );
\m_axi_wdata[100]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[100]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[100]_INST_0_i_2_n_0\,
      O => m_axi_wdata(100),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[100]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(228),
      I1 => s_axi_wdata(100),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(484),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(356),
      O => \m_axi_wdata[100]_INST_0_i_1_n_0\
    );
\m_axi_wdata[100]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(740),
      I1 => s_axi_wdata(612),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(996),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(868),
      O => \m_axi_wdata[100]_INST_0_i_2_n_0\
    );
\m_axi_wdata[101]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[101]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[101]_INST_0_i_2_n_0\,
      O => m_axi_wdata(101),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[101]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(229),
      I1 => s_axi_wdata(101),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(485),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(357),
      O => \m_axi_wdata[101]_INST_0_i_1_n_0\
    );
\m_axi_wdata[101]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(741),
      I1 => s_axi_wdata(613),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(997),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(869),
      O => \m_axi_wdata[101]_INST_0_i_2_n_0\
    );
\m_axi_wdata[102]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[102]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[102]_INST_0_i_2_n_0\,
      O => m_axi_wdata(102),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[102]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(230),
      I1 => s_axi_wdata(102),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(486),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(358),
      O => \m_axi_wdata[102]_INST_0_i_1_n_0\
    );
\m_axi_wdata[102]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(742),
      I1 => s_axi_wdata(614),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(998),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(870),
      O => \m_axi_wdata[102]_INST_0_i_2_n_0\
    );
\m_axi_wdata[103]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[103]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[103]_INST_0_i_2_n_0\,
      O => m_axi_wdata(103),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[103]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(231),
      I1 => s_axi_wdata(103),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(487),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(359),
      O => \m_axi_wdata[103]_INST_0_i_1_n_0\
    );
\m_axi_wdata[103]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(743),
      I1 => s_axi_wdata(615),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(999),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(871),
      O => \m_axi_wdata[103]_INST_0_i_2_n_0\
    );
\m_axi_wdata[104]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[104]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[104]_INST_0_i_2_n_0\,
      O => m_axi_wdata(104),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[104]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(232),
      I1 => s_axi_wdata(104),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(488),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(360),
      O => \m_axi_wdata[104]_INST_0_i_1_n_0\
    );
\m_axi_wdata[104]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(744),
      I1 => s_axi_wdata(616),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1000),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(872),
      O => \m_axi_wdata[104]_INST_0_i_2_n_0\
    );
\m_axi_wdata[105]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[105]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[105]_INST_0_i_2_n_0\,
      O => m_axi_wdata(105),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[105]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(233),
      I1 => s_axi_wdata(105),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(489),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(361),
      O => \m_axi_wdata[105]_INST_0_i_1_n_0\
    );
\m_axi_wdata[105]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(745),
      I1 => s_axi_wdata(617),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1001),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(873),
      O => \m_axi_wdata[105]_INST_0_i_2_n_0\
    );
\m_axi_wdata[106]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[106]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[106]_INST_0_i_2_n_0\,
      O => m_axi_wdata(106),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[106]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(234),
      I1 => s_axi_wdata(106),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(490),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(362),
      O => \m_axi_wdata[106]_INST_0_i_1_n_0\
    );
\m_axi_wdata[106]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(746),
      I1 => s_axi_wdata(618),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1002),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(874),
      O => \m_axi_wdata[106]_INST_0_i_2_n_0\
    );
\m_axi_wdata[107]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[107]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[107]_INST_0_i_2_n_0\,
      O => m_axi_wdata(107),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[107]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(235),
      I1 => s_axi_wdata(107),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(491),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(363),
      O => \m_axi_wdata[107]_INST_0_i_1_n_0\
    );
\m_axi_wdata[107]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(747),
      I1 => s_axi_wdata(619),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1003),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(875),
      O => \m_axi_wdata[107]_INST_0_i_2_n_0\
    );
\m_axi_wdata[108]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[108]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[108]_INST_0_i_2_n_0\,
      O => m_axi_wdata(108),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[108]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(236),
      I1 => s_axi_wdata(108),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(492),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(364),
      O => \m_axi_wdata[108]_INST_0_i_1_n_0\
    );
\m_axi_wdata[108]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(748),
      I1 => s_axi_wdata(620),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1004),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(876),
      O => \m_axi_wdata[108]_INST_0_i_2_n_0\
    );
\m_axi_wdata[109]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[109]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[109]_INST_0_i_2_n_0\,
      O => m_axi_wdata(109),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[109]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(237),
      I1 => s_axi_wdata(109),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(493),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(365),
      O => \m_axi_wdata[109]_INST_0_i_1_n_0\
    );
\m_axi_wdata[109]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(749),
      I1 => s_axi_wdata(621),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1005),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(877),
      O => \m_axi_wdata[109]_INST_0_i_2_n_0\
    );
\m_axi_wdata[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[10]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[10]_INST_0_i_2_n_0\,
      O => m_axi_wdata(10),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(138),
      I1 => s_axi_wdata(10),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(394),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(266),
      O => \m_axi_wdata[10]_INST_0_i_1_n_0\
    );
\m_axi_wdata[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(650),
      I1 => s_axi_wdata(522),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(906),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(778),
      O => \m_axi_wdata[10]_INST_0_i_2_n_0\
    );
\m_axi_wdata[110]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[110]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[110]_INST_0_i_2_n_0\,
      O => m_axi_wdata(110),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[110]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(238),
      I1 => s_axi_wdata(110),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(494),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(366),
      O => \m_axi_wdata[110]_INST_0_i_1_n_0\
    );
\m_axi_wdata[110]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(750),
      I1 => s_axi_wdata(622),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1006),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(878),
      O => \m_axi_wdata[110]_INST_0_i_2_n_0\
    );
\m_axi_wdata[111]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[111]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[111]_INST_0_i_2_n_0\,
      O => m_axi_wdata(111),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[111]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(239),
      I1 => s_axi_wdata(111),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(495),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(367),
      O => \m_axi_wdata[111]_INST_0_i_1_n_0\
    );
\m_axi_wdata[111]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(751),
      I1 => s_axi_wdata(623),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1007),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(879),
      O => \m_axi_wdata[111]_INST_0_i_2_n_0\
    );
\m_axi_wdata[112]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[112]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[112]_INST_0_i_2_n_0\,
      O => m_axi_wdata(112),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[112]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(240),
      I1 => s_axi_wdata(112),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(496),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(368),
      O => \m_axi_wdata[112]_INST_0_i_1_n_0\
    );
\m_axi_wdata[112]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(752),
      I1 => s_axi_wdata(624),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1008),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(880),
      O => \m_axi_wdata[112]_INST_0_i_2_n_0\
    );
\m_axi_wdata[113]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[113]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[113]_INST_0_i_2_n_0\,
      O => m_axi_wdata(113),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[113]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(241),
      I1 => s_axi_wdata(113),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(497),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(369),
      O => \m_axi_wdata[113]_INST_0_i_1_n_0\
    );
\m_axi_wdata[113]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(753),
      I1 => s_axi_wdata(625),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1009),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(881),
      O => \m_axi_wdata[113]_INST_0_i_2_n_0\
    );
\m_axi_wdata[114]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[114]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[114]_INST_0_i_2_n_0\,
      O => m_axi_wdata(114),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[114]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(242),
      I1 => s_axi_wdata(114),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(498),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(370),
      O => \m_axi_wdata[114]_INST_0_i_1_n_0\
    );
\m_axi_wdata[114]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(754),
      I1 => s_axi_wdata(626),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1010),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(882),
      O => \m_axi_wdata[114]_INST_0_i_2_n_0\
    );
\m_axi_wdata[115]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[115]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[115]_INST_0_i_2_n_0\,
      O => m_axi_wdata(115),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[115]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(243),
      I1 => s_axi_wdata(115),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(499),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(371),
      O => \m_axi_wdata[115]_INST_0_i_1_n_0\
    );
\m_axi_wdata[115]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(755),
      I1 => s_axi_wdata(627),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1011),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(883),
      O => \m_axi_wdata[115]_INST_0_i_2_n_0\
    );
\m_axi_wdata[116]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[116]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[116]_INST_0_i_2_n_0\,
      O => m_axi_wdata(116),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[116]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(244),
      I1 => s_axi_wdata(116),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(500),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(372),
      O => \m_axi_wdata[116]_INST_0_i_1_n_0\
    );
\m_axi_wdata[116]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(756),
      I1 => s_axi_wdata(628),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1012),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(884),
      O => \m_axi_wdata[116]_INST_0_i_2_n_0\
    );
\m_axi_wdata[117]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[117]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[117]_INST_0_i_2_n_0\,
      O => m_axi_wdata(117),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[117]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(245),
      I1 => s_axi_wdata(117),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(501),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(373),
      O => \m_axi_wdata[117]_INST_0_i_1_n_0\
    );
\m_axi_wdata[117]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(757),
      I1 => s_axi_wdata(629),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1013),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(885),
      O => \m_axi_wdata[117]_INST_0_i_2_n_0\
    );
\m_axi_wdata[118]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[118]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[118]_INST_0_i_2_n_0\,
      O => m_axi_wdata(118),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[118]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(246),
      I1 => s_axi_wdata(118),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(502),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(374),
      O => \m_axi_wdata[118]_INST_0_i_1_n_0\
    );
\m_axi_wdata[118]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(758),
      I1 => s_axi_wdata(630),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1014),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(886),
      O => \m_axi_wdata[118]_INST_0_i_2_n_0\
    );
\m_axi_wdata[119]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[119]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[119]_INST_0_i_2_n_0\,
      O => m_axi_wdata(119),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[119]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(247),
      I1 => s_axi_wdata(119),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(503),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(375),
      O => \m_axi_wdata[119]_INST_0_i_1_n_0\
    );
\m_axi_wdata[119]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(759),
      I1 => s_axi_wdata(631),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1015),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(887),
      O => \m_axi_wdata[119]_INST_0_i_2_n_0\
    );
\m_axi_wdata[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[11]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[11]_INST_0_i_2_n_0\,
      O => m_axi_wdata(11),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(139),
      I1 => s_axi_wdata(11),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(395),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(267),
      O => \m_axi_wdata[11]_INST_0_i_1_n_0\
    );
\m_axi_wdata[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(651),
      I1 => s_axi_wdata(523),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(907),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(779),
      O => \m_axi_wdata[11]_INST_0_i_2_n_0\
    );
\m_axi_wdata[120]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[120]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[120]_INST_0_i_2_n_0\,
      O => m_axi_wdata(120),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[120]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(248),
      I1 => s_axi_wdata(120),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(504),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(376),
      O => \m_axi_wdata[120]_INST_0_i_1_n_0\
    );
\m_axi_wdata[120]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(760),
      I1 => s_axi_wdata(632),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1016),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(888),
      O => \m_axi_wdata[120]_INST_0_i_2_n_0\
    );
\m_axi_wdata[121]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[121]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[121]_INST_0_i_2_n_0\,
      O => m_axi_wdata(121),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[121]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(249),
      I1 => s_axi_wdata(121),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(505),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(377),
      O => \m_axi_wdata[121]_INST_0_i_1_n_0\
    );
\m_axi_wdata[121]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(761),
      I1 => s_axi_wdata(633),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1017),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(889),
      O => \m_axi_wdata[121]_INST_0_i_2_n_0\
    );
\m_axi_wdata[122]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[122]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[122]_INST_0_i_2_n_0\,
      O => m_axi_wdata(122),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[122]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(250),
      I1 => s_axi_wdata(122),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(506),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(378),
      O => \m_axi_wdata[122]_INST_0_i_1_n_0\
    );
\m_axi_wdata[122]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(762),
      I1 => s_axi_wdata(634),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1018),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(890),
      O => \m_axi_wdata[122]_INST_0_i_2_n_0\
    );
\m_axi_wdata[123]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[123]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[123]_INST_0_i_2_n_0\,
      O => m_axi_wdata(123),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[123]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(251),
      I1 => s_axi_wdata(123),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(507),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(379),
      O => \m_axi_wdata[123]_INST_0_i_1_n_0\
    );
\m_axi_wdata[123]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(763),
      I1 => s_axi_wdata(635),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1019),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(891),
      O => \m_axi_wdata[123]_INST_0_i_2_n_0\
    );
\m_axi_wdata[124]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[124]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[124]_INST_0_i_2_n_0\,
      O => m_axi_wdata(124),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[124]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(252),
      I1 => s_axi_wdata(124),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(508),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(380),
      O => \m_axi_wdata[124]_INST_0_i_1_n_0\
    );
\m_axi_wdata[124]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(764),
      I1 => s_axi_wdata(636),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1020),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(892),
      O => \m_axi_wdata[124]_INST_0_i_2_n_0\
    );
\m_axi_wdata[125]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[125]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[125]_INST_0_i_2_n_0\,
      O => m_axi_wdata(125),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[125]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(253),
      I1 => s_axi_wdata(125),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(509),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(381),
      O => \m_axi_wdata[125]_INST_0_i_1_n_0\
    );
\m_axi_wdata[125]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(765),
      I1 => s_axi_wdata(637),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1021),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(893),
      O => \m_axi_wdata[125]_INST_0_i_2_n_0\
    );
\m_axi_wdata[126]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[126]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[126]_INST_0_i_2_n_0\,
      O => m_axi_wdata(126),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[126]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(254),
      I1 => s_axi_wdata(126),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(510),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(382),
      O => \m_axi_wdata[126]_INST_0_i_1_n_0\
    );
\m_axi_wdata[126]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(766),
      I1 => s_axi_wdata(638),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1022),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(894),
      O => \m_axi_wdata[126]_INST_0_i_2_n_0\
    );
\m_axi_wdata[127]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[127]_INST_0_i_2_n_0\,
      I1 => \m_axi_wdata[127]_INST_0_i_3_n_0\,
      O => m_axi_wdata(127),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[127]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \m_axi_wdata[127]_INST_0_i_4_n_0\,
      I1 => \USE_WRITE.wr_cmd_offset\(5),
      I2 => \m_axi_wdata[127]_INST_0_i_5_n_0\,
      I3 => \m_axi_wdata[127]_INST_0_i_6_n_0\,
      I4 => \USE_WRITE.wr_cmd_offset\(6),
      O => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[127]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DDF0DDF0DDFFFFF"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_offset\(0),
      I1 => \current_word_1[1]_i_3_n_0\,
      I2 => \USE_WRITE.wr_cmd_offset\(1),
      I3 => \current_word_1[1]_i_2_n_0\,
      I4 => \USE_WRITE.wr_cmd_offset\(2),
      I5 => \current_word_1[2]_i_2_n_0\,
      O => \m_axi_wdata[127]_INST_0_i_10_n_0\
    );
\m_axi_wdata[127]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(255),
      I1 => s_axi_wdata(127),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(511),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(383),
      O => \m_axi_wdata[127]_INST_0_i_2_n_0\
    );
\m_axi_wdata[127]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(767),
      I1 => s_axi_wdata(639),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(1023),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(895),
      O => \m_axi_wdata[127]_INST_0_i_3_n_0\
    );
\m_axi_wdata[127]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_first_word\(5),
      I1 => first_mi_word,
      I2 => \^dout\(8),
      I3 => \current_word_1_reg[6]\(5),
      O => \m_axi_wdata[127]_INST_0_i_4_n_0\
    );
\m_axi_wdata[127]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000155515557FFF7"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_offset\(4),
      I1 => \current_word_1_reg[6]\(4),
      I2 => \^dout\(8),
      I3 => first_mi_word,
      I4 => \USE_WRITE.wr_cmd_first_word\(4),
      I5 => \m_axi_wdata[127]_INST_0_i_9_n_0\,
      O => \m_axi_wdata[127]_INST_0_i_5_n_0\
    );
\m_axi_wdata[127]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5457"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_first_word\(6),
      I1 => first_mi_word,
      I2 => \^dout\(8),
      I3 => \current_word_1_reg[6]\(6),
      O => \m_axi_wdata[127]_INST_0_i_6_n_0\
    );
\m_axi_wdata[127]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A99956665666A"
    )
        port map (
      I0 => \m_axi_wdata[127]_INST_0_i_5_n_0\,
      I1 => \USE_WRITE.wr_cmd_first_word\(5),
      I2 => first_mi_word,
      I3 => \^dout\(8),
      I4 => \current_word_1_reg[6]\(5),
      I5 => \USE_WRITE.wr_cmd_offset\(5),
      O => \m_axi_wdata[127]_INST_0_i_7_n_0\
    );
\m_axi_wdata[127]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A99956665666A"
    )
        port map (
      I0 => \m_axi_wdata[127]_INST_0_i_9_n_0\,
      I1 => \USE_WRITE.wr_cmd_first_word\(4),
      I2 => first_mi_word,
      I3 => \^dout\(8),
      I4 => \current_word_1_reg[6]\(4),
      I5 => \USE_WRITE.wr_cmd_offset\(4),
      O => \m_axi_wdata[127]_INST_0_i_8_n_0\
    );
\m_axi_wdata[127]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F880FFF0"
    )
        port map (
      I0 => \current_word_1[2]_i_2_n_0\,
      I1 => \USE_WRITE.wr_cmd_offset\(2),
      I2 => \current_word_1[4]_i_3_n_0\,
      I3 => \USE_WRITE.wr_cmd_offset\(3),
      I4 => \m_axi_wdata[127]_INST_0_i_10_n_0\,
      O => \m_axi_wdata[127]_INST_0_i_9_n_0\
    );
\m_axi_wdata[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[12]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[12]_INST_0_i_2_n_0\,
      O => m_axi_wdata(12),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(140),
      I1 => s_axi_wdata(12),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(396),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(268),
      O => \m_axi_wdata[12]_INST_0_i_1_n_0\
    );
\m_axi_wdata[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(652),
      I1 => s_axi_wdata(524),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(908),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(780),
      O => \m_axi_wdata[12]_INST_0_i_2_n_0\
    );
\m_axi_wdata[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[13]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[13]_INST_0_i_2_n_0\,
      O => m_axi_wdata(13),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(141),
      I1 => s_axi_wdata(13),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(397),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(269),
      O => \m_axi_wdata[13]_INST_0_i_1_n_0\
    );
\m_axi_wdata[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(653),
      I1 => s_axi_wdata(525),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(909),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(781),
      O => \m_axi_wdata[13]_INST_0_i_2_n_0\
    );
\m_axi_wdata[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[14]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[14]_INST_0_i_2_n_0\,
      O => m_axi_wdata(14),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(142),
      I1 => s_axi_wdata(14),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(398),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(270),
      O => \m_axi_wdata[14]_INST_0_i_1_n_0\
    );
\m_axi_wdata[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(654),
      I1 => s_axi_wdata(526),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(910),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(782),
      O => \m_axi_wdata[14]_INST_0_i_2_n_0\
    );
\m_axi_wdata[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[15]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[15]_INST_0_i_2_n_0\,
      O => m_axi_wdata(15),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(143),
      I1 => s_axi_wdata(15),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(399),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(271),
      O => \m_axi_wdata[15]_INST_0_i_1_n_0\
    );
\m_axi_wdata[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(655),
      I1 => s_axi_wdata(527),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(911),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(783),
      O => \m_axi_wdata[15]_INST_0_i_2_n_0\
    );
\m_axi_wdata[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[16]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[16]_INST_0_i_2_n_0\,
      O => m_axi_wdata(16),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(144),
      I1 => s_axi_wdata(16),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(400),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(272),
      O => \m_axi_wdata[16]_INST_0_i_1_n_0\
    );
\m_axi_wdata[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(656),
      I1 => s_axi_wdata(528),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(912),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(784),
      O => \m_axi_wdata[16]_INST_0_i_2_n_0\
    );
\m_axi_wdata[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[17]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[17]_INST_0_i_2_n_0\,
      O => m_axi_wdata(17),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(145),
      I1 => s_axi_wdata(17),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(401),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(273),
      O => \m_axi_wdata[17]_INST_0_i_1_n_0\
    );
\m_axi_wdata[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(657),
      I1 => s_axi_wdata(529),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(913),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(785),
      O => \m_axi_wdata[17]_INST_0_i_2_n_0\
    );
\m_axi_wdata[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[18]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[18]_INST_0_i_2_n_0\,
      O => m_axi_wdata(18),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(146),
      I1 => s_axi_wdata(18),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(402),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(274),
      O => \m_axi_wdata[18]_INST_0_i_1_n_0\
    );
\m_axi_wdata[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(658),
      I1 => s_axi_wdata(530),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(914),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(786),
      O => \m_axi_wdata[18]_INST_0_i_2_n_0\
    );
\m_axi_wdata[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[19]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[19]_INST_0_i_2_n_0\,
      O => m_axi_wdata(19),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(147),
      I1 => s_axi_wdata(19),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(403),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(275),
      O => \m_axi_wdata[19]_INST_0_i_1_n_0\
    );
\m_axi_wdata[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(659),
      I1 => s_axi_wdata(531),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(915),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(787),
      O => \m_axi_wdata[19]_INST_0_i_2_n_0\
    );
\m_axi_wdata[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[1]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[1]_INST_0_i_2_n_0\,
      O => m_axi_wdata(1),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(129),
      I1 => s_axi_wdata(1),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(385),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(257),
      O => \m_axi_wdata[1]_INST_0_i_1_n_0\
    );
\m_axi_wdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(641),
      I1 => s_axi_wdata(513),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(897),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(769),
      O => \m_axi_wdata[1]_INST_0_i_2_n_0\
    );
\m_axi_wdata[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[20]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[20]_INST_0_i_2_n_0\,
      O => m_axi_wdata(20),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(148),
      I1 => s_axi_wdata(20),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(404),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(276),
      O => \m_axi_wdata[20]_INST_0_i_1_n_0\
    );
\m_axi_wdata[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(660),
      I1 => s_axi_wdata(532),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(916),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(788),
      O => \m_axi_wdata[20]_INST_0_i_2_n_0\
    );
\m_axi_wdata[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[21]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[21]_INST_0_i_2_n_0\,
      O => m_axi_wdata(21),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(149),
      I1 => s_axi_wdata(21),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(405),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(277),
      O => \m_axi_wdata[21]_INST_0_i_1_n_0\
    );
\m_axi_wdata[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(661),
      I1 => s_axi_wdata(533),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(917),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(789),
      O => \m_axi_wdata[21]_INST_0_i_2_n_0\
    );
\m_axi_wdata[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[22]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[22]_INST_0_i_2_n_0\,
      O => m_axi_wdata(22),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(150),
      I1 => s_axi_wdata(22),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(406),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(278),
      O => \m_axi_wdata[22]_INST_0_i_1_n_0\
    );
\m_axi_wdata[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(662),
      I1 => s_axi_wdata(534),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(918),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(790),
      O => \m_axi_wdata[22]_INST_0_i_2_n_0\
    );
\m_axi_wdata[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[23]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[23]_INST_0_i_2_n_0\,
      O => m_axi_wdata(23),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(151),
      I1 => s_axi_wdata(23),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(407),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(279),
      O => \m_axi_wdata[23]_INST_0_i_1_n_0\
    );
\m_axi_wdata[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(663),
      I1 => s_axi_wdata(535),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(919),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(791),
      O => \m_axi_wdata[23]_INST_0_i_2_n_0\
    );
\m_axi_wdata[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[24]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[24]_INST_0_i_2_n_0\,
      O => m_axi_wdata(24),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(152),
      I1 => s_axi_wdata(24),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(408),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(280),
      O => \m_axi_wdata[24]_INST_0_i_1_n_0\
    );
\m_axi_wdata[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(664),
      I1 => s_axi_wdata(536),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(920),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(792),
      O => \m_axi_wdata[24]_INST_0_i_2_n_0\
    );
\m_axi_wdata[25]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[25]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[25]_INST_0_i_2_n_0\,
      O => m_axi_wdata(25),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(153),
      I1 => s_axi_wdata(25),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(409),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(281),
      O => \m_axi_wdata[25]_INST_0_i_1_n_0\
    );
\m_axi_wdata[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(665),
      I1 => s_axi_wdata(537),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(921),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(793),
      O => \m_axi_wdata[25]_INST_0_i_2_n_0\
    );
\m_axi_wdata[26]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[26]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[26]_INST_0_i_2_n_0\,
      O => m_axi_wdata(26),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(154),
      I1 => s_axi_wdata(26),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(410),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(282),
      O => \m_axi_wdata[26]_INST_0_i_1_n_0\
    );
\m_axi_wdata[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(666),
      I1 => s_axi_wdata(538),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(922),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(794),
      O => \m_axi_wdata[26]_INST_0_i_2_n_0\
    );
\m_axi_wdata[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[27]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[27]_INST_0_i_2_n_0\,
      O => m_axi_wdata(27),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(155),
      I1 => s_axi_wdata(27),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(411),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(283),
      O => \m_axi_wdata[27]_INST_0_i_1_n_0\
    );
\m_axi_wdata[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(667),
      I1 => s_axi_wdata(539),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(923),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(795),
      O => \m_axi_wdata[27]_INST_0_i_2_n_0\
    );
\m_axi_wdata[28]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[28]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[28]_INST_0_i_2_n_0\,
      O => m_axi_wdata(28),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(156),
      I1 => s_axi_wdata(28),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(412),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(284),
      O => \m_axi_wdata[28]_INST_0_i_1_n_0\
    );
\m_axi_wdata[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(668),
      I1 => s_axi_wdata(540),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(924),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(796),
      O => \m_axi_wdata[28]_INST_0_i_2_n_0\
    );
\m_axi_wdata[29]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[29]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[29]_INST_0_i_2_n_0\,
      O => m_axi_wdata(29),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(157),
      I1 => s_axi_wdata(29),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(413),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(285),
      O => \m_axi_wdata[29]_INST_0_i_1_n_0\
    );
\m_axi_wdata[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(669),
      I1 => s_axi_wdata(541),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(925),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(797),
      O => \m_axi_wdata[29]_INST_0_i_2_n_0\
    );
\m_axi_wdata[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[2]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[2]_INST_0_i_2_n_0\,
      O => m_axi_wdata(2),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(130),
      I1 => s_axi_wdata(2),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(386),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(258),
      O => \m_axi_wdata[2]_INST_0_i_1_n_0\
    );
\m_axi_wdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(642),
      I1 => s_axi_wdata(514),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(898),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(770),
      O => \m_axi_wdata[2]_INST_0_i_2_n_0\
    );
\m_axi_wdata[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[30]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[30]_INST_0_i_2_n_0\,
      O => m_axi_wdata(30),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(158),
      I1 => s_axi_wdata(30),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(414),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(286),
      O => \m_axi_wdata[30]_INST_0_i_1_n_0\
    );
\m_axi_wdata[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(670),
      I1 => s_axi_wdata(542),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(926),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(798),
      O => \m_axi_wdata[30]_INST_0_i_2_n_0\
    );
\m_axi_wdata[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      O => m_axi_wdata(31),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(159),
      I1 => s_axi_wdata(31),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(415),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(287),
      O => \m_axi_wdata[31]_INST_0_i_1_n_0\
    );
\m_axi_wdata[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(671),
      I1 => s_axi_wdata(543),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(927),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(799),
      O => \m_axi_wdata[31]_INST_0_i_2_n_0\
    );
\m_axi_wdata[32]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[32]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[32]_INST_0_i_2_n_0\,
      O => m_axi_wdata(32),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[32]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(160),
      I1 => s_axi_wdata(32),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(416),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(288),
      O => \m_axi_wdata[32]_INST_0_i_1_n_0\
    );
\m_axi_wdata[32]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(672),
      I1 => s_axi_wdata(544),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(928),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(800),
      O => \m_axi_wdata[32]_INST_0_i_2_n_0\
    );
\m_axi_wdata[33]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[33]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[33]_INST_0_i_2_n_0\,
      O => m_axi_wdata(33),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[33]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(161),
      I1 => s_axi_wdata(33),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(417),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(289),
      O => \m_axi_wdata[33]_INST_0_i_1_n_0\
    );
\m_axi_wdata[33]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(673),
      I1 => s_axi_wdata(545),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(929),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(801),
      O => \m_axi_wdata[33]_INST_0_i_2_n_0\
    );
\m_axi_wdata[34]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[34]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[34]_INST_0_i_2_n_0\,
      O => m_axi_wdata(34),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[34]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(162),
      I1 => s_axi_wdata(34),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(418),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(290),
      O => \m_axi_wdata[34]_INST_0_i_1_n_0\
    );
\m_axi_wdata[34]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(674),
      I1 => s_axi_wdata(546),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(930),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(802),
      O => \m_axi_wdata[34]_INST_0_i_2_n_0\
    );
\m_axi_wdata[35]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[35]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[35]_INST_0_i_2_n_0\,
      O => m_axi_wdata(35),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[35]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(163),
      I1 => s_axi_wdata(35),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(419),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(291),
      O => \m_axi_wdata[35]_INST_0_i_1_n_0\
    );
\m_axi_wdata[35]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(675),
      I1 => s_axi_wdata(547),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(931),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(803),
      O => \m_axi_wdata[35]_INST_0_i_2_n_0\
    );
\m_axi_wdata[36]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[36]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[36]_INST_0_i_2_n_0\,
      O => m_axi_wdata(36),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[36]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(164),
      I1 => s_axi_wdata(36),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(420),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(292),
      O => \m_axi_wdata[36]_INST_0_i_1_n_0\
    );
\m_axi_wdata[36]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(676),
      I1 => s_axi_wdata(548),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(932),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(804),
      O => \m_axi_wdata[36]_INST_0_i_2_n_0\
    );
\m_axi_wdata[37]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[37]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[37]_INST_0_i_2_n_0\,
      O => m_axi_wdata(37),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[37]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(165),
      I1 => s_axi_wdata(37),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(421),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(293),
      O => \m_axi_wdata[37]_INST_0_i_1_n_0\
    );
\m_axi_wdata[37]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(677),
      I1 => s_axi_wdata(549),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(933),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(805),
      O => \m_axi_wdata[37]_INST_0_i_2_n_0\
    );
\m_axi_wdata[38]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[38]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[38]_INST_0_i_2_n_0\,
      O => m_axi_wdata(38),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[38]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(166),
      I1 => s_axi_wdata(38),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(422),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(294),
      O => \m_axi_wdata[38]_INST_0_i_1_n_0\
    );
\m_axi_wdata[38]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(678),
      I1 => s_axi_wdata(550),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(934),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(806),
      O => \m_axi_wdata[38]_INST_0_i_2_n_0\
    );
\m_axi_wdata[39]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[39]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[39]_INST_0_i_2_n_0\,
      O => m_axi_wdata(39),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[39]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(167),
      I1 => s_axi_wdata(39),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(423),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(295),
      O => \m_axi_wdata[39]_INST_0_i_1_n_0\
    );
\m_axi_wdata[39]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(679),
      I1 => s_axi_wdata(551),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(935),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(807),
      O => \m_axi_wdata[39]_INST_0_i_2_n_0\
    );
\m_axi_wdata[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[3]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[3]_INST_0_i_2_n_0\,
      O => m_axi_wdata(3),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(131),
      I1 => s_axi_wdata(3),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(387),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(259),
      O => \m_axi_wdata[3]_INST_0_i_1_n_0\
    );
\m_axi_wdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(643),
      I1 => s_axi_wdata(515),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(899),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(771),
      O => \m_axi_wdata[3]_INST_0_i_2_n_0\
    );
\m_axi_wdata[40]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[40]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[40]_INST_0_i_2_n_0\,
      O => m_axi_wdata(40),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[40]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(168),
      I1 => s_axi_wdata(40),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(424),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(296),
      O => \m_axi_wdata[40]_INST_0_i_1_n_0\
    );
\m_axi_wdata[40]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(680),
      I1 => s_axi_wdata(552),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(936),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(808),
      O => \m_axi_wdata[40]_INST_0_i_2_n_0\
    );
\m_axi_wdata[41]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[41]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[41]_INST_0_i_2_n_0\,
      O => m_axi_wdata(41),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[41]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(169),
      I1 => s_axi_wdata(41),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(425),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(297),
      O => \m_axi_wdata[41]_INST_0_i_1_n_0\
    );
\m_axi_wdata[41]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(681),
      I1 => s_axi_wdata(553),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(937),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(809),
      O => \m_axi_wdata[41]_INST_0_i_2_n_0\
    );
\m_axi_wdata[42]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[42]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[42]_INST_0_i_2_n_0\,
      O => m_axi_wdata(42),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[42]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(170),
      I1 => s_axi_wdata(42),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(426),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(298),
      O => \m_axi_wdata[42]_INST_0_i_1_n_0\
    );
\m_axi_wdata[42]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(682),
      I1 => s_axi_wdata(554),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(938),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(810),
      O => \m_axi_wdata[42]_INST_0_i_2_n_0\
    );
\m_axi_wdata[43]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[43]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[43]_INST_0_i_2_n_0\,
      O => m_axi_wdata(43),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[43]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(171),
      I1 => s_axi_wdata(43),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(427),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(299),
      O => \m_axi_wdata[43]_INST_0_i_1_n_0\
    );
\m_axi_wdata[43]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(683),
      I1 => s_axi_wdata(555),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(939),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(811),
      O => \m_axi_wdata[43]_INST_0_i_2_n_0\
    );
\m_axi_wdata[44]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[44]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[44]_INST_0_i_2_n_0\,
      O => m_axi_wdata(44),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[44]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(172),
      I1 => s_axi_wdata(44),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(428),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(300),
      O => \m_axi_wdata[44]_INST_0_i_1_n_0\
    );
\m_axi_wdata[44]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(684),
      I1 => s_axi_wdata(556),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(940),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(812),
      O => \m_axi_wdata[44]_INST_0_i_2_n_0\
    );
\m_axi_wdata[45]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[45]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[45]_INST_0_i_2_n_0\,
      O => m_axi_wdata(45),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[45]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(173),
      I1 => s_axi_wdata(45),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(429),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(301),
      O => \m_axi_wdata[45]_INST_0_i_1_n_0\
    );
\m_axi_wdata[45]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(685),
      I1 => s_axi_wdata(557),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(941),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(813),
      O => \m_axi_wdata[45]_INST_0_i_2_n_0\
    );
\m_axi_wdata[46]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[46]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[46]_INST_0_i_2_n_0\,
      O => m_axi_wdata(46),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[46]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(174),
      I1 => s_axi_wdata(46),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(430),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(302),
      O => \m_axi_wdata[46]_INST_0_i_1_n_0\
    );
\m_axi_wdata[46]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(686),
      I1 => s_axi_wdata(558),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(942),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(814),
      O => \m_axi_wdata[46]_INST_0_i_2_n_0\
    );
\m_axi_wdata[47]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[47]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[47]_INST_0_i_2_n_0\,
      O => m_axi_wdata(47),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[47]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(175),
      I1 => s_axi_wdata(47),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(431),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(303),
      O => \m_axi_wdata[47]_INST_0_i_1_n_0\
    );
\m_axi_wdata[47]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(687),
      I1 => s_axi_wdata(559),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(943),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(815),
      O => \m_axi_wdata[47]_INST_0_i_2_n_0\
    );
\m_axi_wdata[48]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[48]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[48]_INST_0_i_2_n_0\,
      O => m_axi_wdata(48),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[48]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(176),
      I1 => s_axi_wdata(48),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(432),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(304),
      O => \m_axi_wdata[48]_INST_0_i_1_n_0\
    );
\m_axi_wdata[48]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(688),
      I1 => s_axi_wdata(560),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(944),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(816),
      O => \m_axi_wdata[48]_INST_0_i_2_n_0\
    );
\m_axi_wdata[49]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[49]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[49]_INST_0_i_2_n_0\,
      O => m_axi_wdata(49),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[49]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(177),
      I1 => s_axi_wdata(49),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(433),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(305),
      O => \m_axi_wdata[49]_INST_0_i_1_n_0\
    );
\m_axi_wdata[49]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(689),
      I1 => s_axi_wdata(561),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(945),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(817),
      O => \m_axi_wdata[49]_INST_0_i_2_n_0\
    );
\m_axi_wdata[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[4]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[4]_INST_0_i_2_n_0\,
      O => m_axi_wdata(4),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(132),
      I1 => s_axi_wdata(4),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(388),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(260),
      O => \m_axi_wdata[4]_INST_0_i_1_n_0\
    );
\m_axi_wdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(644),
      I1 => s_axi_wdata(516),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(900),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(772),
      O => \m_axi_wdata[4]_INST_0_i_2_n_0\
    );
\m_axi_wdata[50]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[50]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[50]_INST_0_i_2_n_0\,
      O => m_axi_wdata(50),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[50]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(178),
      I1 => s_axi_wdata(50),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(434),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(306),
      O => \m_axi_wdata[50]_INST_0_i_1_n_0\
    );
\m_axi_wdata[50]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(690),
      I1 => s_axi_wdata(562),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(946),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(818),
      O => \m_axi_wdata[50]_INST_0_i_2_n_0\
    );
\m_axi_wdata[51]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[51]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[51]_INST_0_i_2_n_0\,
      O => m_axi_wdata(51),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[51]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(179),
      I1 => s_axi_wdata(51),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(435),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(307),
      O => \m_axi_wdata[51]_INST_0_i_1_n_0\
    );
\m_axi_wdata[51]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(691),
      I1 => s_axi_wdata(563),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(947),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(819),
      O => \m_axi_wdata[51]_INST_0_i_2_n_0\
    );
\m_axi_wdata[52]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[52]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[52]_INST_0_i_2_n_0\,
      O => m_axi_wdata(52),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[52]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(180),
      I1 => s_axi_wdata(52),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(436),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(308),
      O => \m_axi_wdata[52]_INST_0_i_1_n_0\
    );
\m_axi_wdata[52]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(692),
      I1 => s_axi_wdata(564),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(948),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(820),
      O => \m_axi_wdata[52]_INST_0_i_2_n_0\
    );
\m_axi_wdata[53]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[53]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[53]_INST_0_i_2_n_0\,
      O => m_axi_wdata(53),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[53]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(181),
      I1 => s_axi_wdata(53),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(437),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(309),
      O => \m_axi_wdata[53]_INST_0_i_1_n_0\
    );
\m_axi_wdata[53]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(693),
      I1 => s_axi_wdata(565),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(949),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(821),
      O => \m_axi_wdata[53]_INST_0_i_2_n_0\
    );
\m_axi_wdata[54]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[54]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[54]_INST_0_i_2_n_0\,
      O => m_axi_wdata(54),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[54]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(182),
      I1 => s_axi_wdata(54),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(438),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(310),
      O => \m_axi_wdata[54]_INST_0_i_1_n_0\
    );
\m_axi_wdata[54]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(694),
      I1 => s_axi_wdata(566),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(950),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(822),
      O => \m_axi_wdata[54]_INST_0_i_2_n_0\
    );
\m_axi_wdata[55]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[55]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[55]_INST_0_i_2_n_0\,
      O => m_axi_wdata(55),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[55]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(183),
      I1 => s_axi_wdata(55),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(439),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(311),
      O => \m_axi_wdata[55]_INST_0_i_1_n_0\
    );
\m_axi_wdata[55]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(695),
      I1 => s_axi_wdata(567),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(951),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(823),
      O => \m_axi_wdata[55]_INST_0_i_2_n_0\
    );
\m_axi_wdata[56]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[56]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[56]_INST_0_i_2_n_0\,
      O => m_axi_wdata(56),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[56]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(184),
      I1 => s_axi_wdata(56),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(440),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(312),
      O => \m_axi_wdata[56]_INST_0_i_1_n_0\
    );
\m_axi_wdata[56]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(696),
      I1 => s_axi_wdata(568),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(952),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(824),
      O => \m_axi_wdata[56]_INST_0_i_2_n_0\
    );
\m_axi_wdata[57]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[57]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[57]_INST_0_i_2_n_0\,
      O => m_axi_wdata(57),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[57]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(185),
      I1 => s_axi_wdata(57),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(441),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(313),
      O => \m_axi_wdata[57]_INST_0_i_1_n_0\
    );
\m_axi_wdata[57]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(697),
      I1 => s_axi_wdata(569),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(953),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(825),
      O => \m_axi_wdata[57]_INST_0_i_2_n_0\
    );
\m_axi_wdata[58]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[58]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[58]_INST_0_i_2_n_0\,
      O => m_axi_wdata(58),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[58]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(186),
      I1 => s_axi_wdata(58),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(442),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(314),
      O => \m_axi_wdata[58]_INST_0_i_1_n_0\
    );
\m_axi_wdata[58]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(698),
      I1 => s_axi_wdata(570),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(954),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(826),
      O => \m_axi_wdata[58]_INST_0_i_2_n_0\
    );
\m_axi_wdata[59]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[59]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[59]_INST_0_i_2_n_0\,
      O => m_axi_wdata(59),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[59]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(187),
      I1 => s_axi_wdata(59),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(443),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(315),
      O => \m_axi_wdata[59]_INST_0_i_1_n_0\
    );
\m_axi_wdata[59]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(699),
      I1 => s_axi_wdata(571),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(955),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(827),
      O => \m_axi_wdata[59]_INST_0_i_2_n_0\
    );
\m_axi_wdata[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[5]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[5]_INST_0_i_2_n_0\,
      O => m_axi_wdata(5),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(133),
      I1 => s_axi_wdata(5),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(389),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(261),
      O => \m_axi_wdata[5]_INST_0_i_1_n_0\
    );
\m_axi_wdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(645),
      I1 => s_axi_wdata(517),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(901),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(773),
      O => \m_axi_wdata[5]_INST_0_i_2_n_0\
    );
\m_axi_wdata[60]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[60]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[60]_INST_0_i_2_n_0\,
      O => m_axi_wdata(60),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[60]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(188),
      I1 => s_axi_wdata(60),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(444),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(316),
      O => \m_axi_wdata[60]_INST_0_i_1_n_0\
    );
\m_axi_wdata[60]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(700),
      I1 => s_axi_wdata(572),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(956),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(828),
      O => \m_axi_wdata[60]_INST_0_i_2_n_0\
    );
\m_axi_wdata[61]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[61]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[61]_INST_0_i_2_n_0\,
      O => m_axi_wdata(61),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[61]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(189),
      I1 => s_axi_wdata(61),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(445),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(317),
      O => \m_axi_wdata[61]_INST_0_i_1_n_0\
    );
\m_axi_wdata[61]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(701),
      I1 => s_axi_wdata(573),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(957),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(829),
      O => \m_axi_wdata[61]_INST_0_i_2_n_0\
    );
\m_axi_wdata[62]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[62]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[62]_INST_0_i_2_n_0\,
      O => m_axi_wdata(62),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[62]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(190),
      I1 => s_axi_wdata(62),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(446),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(318),
      O => \m_axi_wdata[62]_INST_0_i_1_n_0\
    );
\m_axi_wdata[62]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(702),
      I1 => s_axi_wdata(574),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(958),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(830),
      O => \m_axi_wdata[62]_INST_0_i_2_n_0\
    );
\m_axi_wdata[63]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[63]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[63]_INST_0_i_2_n_0\,
      O => m_axi_wdata(63),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[63]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(191),
      I1 => s_axi_wdata(63),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(447),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(319),
      O => \m_axi_wdata[63]_INST_0_i_1_n_0\
    );
\m_axi_wdata[63]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(703),
      I1 => s_axi_wdata(575),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(959),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(831),
      O => \m_axi_wdata[63]_INST_0_i_2_n_0\
    );
\m_axi_wdata[64]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[64]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[64]_INST_0_i_2_n_0\,
      O => m_axi_wdata(64),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[64]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(192),
      I1 => s_axi_wdata(64),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(448),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(320),
      O => \m_axi_wdata[64]_INST_0_i_1_n_0\
    );
\m_axi_wdata[64]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(704),
      I1 => s_axi_wdata(576),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(960),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(832),
      O => \m_axi_wdata[64]_INST_0_i_2_n_0\
    );
\m_axi_wdata[65]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[65]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[65]_INST_0_i_2_n_0\,
      O => m_axi_wdata(65),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[65]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(193),
      I1 => s_axi_wdata(65),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(449),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(321),
      O => \m_axi_wdata[65]_INST_0_i_1_n_0\
    );
\m_axi_wdata[65]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(705),
      I1 => s_axi_wdata(577),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(961),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(833),
      O => \m_axi_wdata[65]_INST_0_i_2_n_0\
    );
\m_axi_wdata[66]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[66]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[66]_INST_0_i_2_n_0\,
      O => m_axi_wdata(66),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[66]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(194),
      I1 => s_axi_wdata(66),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(450),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(322),
      O => \m_axi_wdata[66]_INST_0_i_1_n_0\
    );
\m_axi_wdata[66]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(706),
      I1 => s_axi_wdata(578),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(962),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(834),
      O => \m_axi_wdata[66]_INST_0_i_2_n_0\
    );
\m_axi_wdata[67]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[67]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[67]_INST_0_i_2_n_0\,
      O => m_axi_wdata(67),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[67]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(195),
      I1 => s_axi_wdata(67),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(451),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(323),
      O => \m_axi_wdata[67]_INST_0_i_1_n_0\
    );
\m_axi_wdata[67]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(707),
      I1 => s_axi_wdata(579),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(963),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(835),
      O => \m_axi_wdata[67]_INST_0_i_2_n_0\
    );
\m_axi_wdata[68]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[68]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[68]_INST_0_i_2_n_0\,
      O => m_axi_wdata(68),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[68]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(196),
      I1 => s_axi_wdata(68),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(452),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(324),
      O => \m_axi_wdata[68]_INST_0_i_1_n_0\
    );
\m_axi_wdata[68]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(708),
      I1 => s_axi_wdata(580),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(964),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(836),
      O => \m_axi_wdata[68]_INST_0_i_2_n_0\
    );
\m_axi_wdata[69]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[69]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[69]_INST_0_i_2_n_0\,
      O => m_axi_wdata(69),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[69]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(197),
      I1 => s_axi_wdata(69),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(453),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(325),
      O => \m_axi_wdata[69]_INST_0_i_1_n_0\
    );
\m_axi_wdata[69]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(709),
      I1 => s_axi_wdata(581),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(965),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(837),
      O => \m_axi_wdata[69]_INST_0_i_2_n_0\
    );
\m_axi_wdata[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[6]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[6]_INST_0_i_2_n_0\,
      O => m_axi_wdata(6),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(134),
      I1 => s_axi_wdata(6),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(390),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(262),
      O => \m_axi_wdata[6]_INST_0_i_1_n_0\
    );
\m_axi_wdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(646),
      I1 => s_axi_wdata(518),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(902),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(774),
      O => \m_axi_wdata[6]_INST_0_i_2_n_0\
    );
\m_axi_wdata[70]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[70]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[70]_INST_0_i_2_n_0\,
      O => m_axi_wdata(70),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[70]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(198),
      I1 => s_axi_wdata(70),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(454),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(326),
      O => \m_axi_wdata[70]_INST_0_i_1_n_0\
    );
\m_axi_wdata[70]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(710),
      I1 => s_axi_wdata(582),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(966),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(838),
      O => \m_axi_wdata[70]_INST_0_i_2_n_0\
    );
\m_axi_wdata[71]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[71]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[71]_INST_0_i_2_n_0\,
      O => m_axi_wdata(71),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[71]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(199),
      I1 => s_axi_wdata(71),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(455),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(327),
      O => \m_axi_wdata[71]_INST_0_i_1_n_0\
    );
\m_axi_wdata[71]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(711),
      I1 => s_axi_wdata(583),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(967),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(839),
      O => \m_axi_wdata[71]_INST_0_i_2_n_0\
    );
\m_axi_wdata[72]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[72]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[72]_INST_0_i_2_n_0\,
      O => m_axi_wdata(72),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[72]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(200),
      I1 => s_axi_wdata(72),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(456),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(328),
      O => \m_axi_wdata[72]_INST_0_i_1_n_0\
    );
\m_axi_wdata[72]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(712),
      I1 => s_axi_wdata(584),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(968),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(840),
      O => \m_axi_wdata[72]_INST_0_i_2_n_0\
    );
\m_axi_wdata[73]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[73]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[73]_INST_0_i_2_n_0\,
      O => m_axi_wdata(73),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[73]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(201),
      I1 => s_axi_wdata(73),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(457),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(329),
      O => \m_axi_wdata[73]_INST_0_i_1_n_0\
    );
\m_axi_wdata[73]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(713),
      I1 => s_axi_wdata(585),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(969),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(841),
      O => \m_axi_wdata[73]_INST_0_i_2_n_0\
    );
\m_axi_wdata[74]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[74]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[74]_INST_0_i_2_n_0\,
      O => m_axi_wdata(74),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[74]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(202),
      I1 => s_axi_wdata(74),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(458),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(330),
      O => \m_axi_wdata[74]_INST_0_i_1_n_0\
    );
\m_axi_wdata[74]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(714),
      I1 => s_axi_wdata(586),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(970),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(842),
      O => \m_axi_wdata[74]_INST_0_i_2_n_0\
    );
\m_axi_wdata[75]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[75]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[75]_INST_0_i_2_n_0\,
      O => m_axi_wdata(75),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[75]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(203),
      I1 => s_axi_wdata(75),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(459),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(331),
      O => \m_axi_wdata[75]_INST_0_i_1_n_0\
    );
\m_axi_wdata[75]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(715),
      I1 => s_axi_wdata(587),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(971),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(843),
      O => \m_axi_wdata[75]_INST_0_i_2_n_0\
    );
\m_axi_wdata[76]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[76]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[76]_INST_0_i_2_n_0\,
      O => m_axi_wdata(76),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[76]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(204),
      I1 => s_axi_wdata(76),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(460),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(332),
      O => \m_axi_wdata[76]_INST_0_i_1_n_0\
    );
\m_axi_wdata[76]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(716),
      I1 => s_axi_wdata(588),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(972),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(844),
      O => \m_axi_wdata[76]_INST_0_i_2_n_0\
    );
\m_axi_wdata[77]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[77]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[77]_INST_0_i_2_n_0\,
      O => m_axi_wdata(77),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[77]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(205),
      I1 => s_axi_wdata(77),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(461),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(333),
      O => \m_axi_wdata[77]_INST_0_i_1_n_0\
    );
\m_axi_wdata[77]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(717),
      I1 => s_axi_wdata(589),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(973),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(845),
      O => \m_axi_wdata[77]_INST_0_i_2_n_0\
    );
\m_axi_wdata[78]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[78]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[78]_INST_0_i_2_n_0\,
      O => m_axi_wdata(78),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[78]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(206),
      I1 => s_axi_wdata(78),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(462),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(334),
      O => \m_axi_wdata[78]_INST_0_i_1_n_0\
    );
\m_axi_wdata[78]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(718),
      I1 => s_axi_wdata(590),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(974),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(846),
      O => \m_axi_wdata[78]_INST_0_i_2_n_0\
    );
\m_axi_wdata[79]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[79]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[79]_INST_0_i_2_n_0\,
      O => m_axi_wdata(79),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[79]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(207),
      I1 => s_axi_wdata(79),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(463),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(335),
      O => \m_axi_wdata[79]_INST_0_i_1_n_0\
    );
\m_axi_wdata[79]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(719),
      I1 => s_axi_wdata(591),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(975),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(847),
      O => \m_axi_wdata[79]_INST_0_i_2_n_0\
    );
\m_axi_wdata[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[7]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[7]_INST_0_i_2_n_0\,
      O => m_axi_wdata(7),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(135),
      I1 => s_axi_wdata(7),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(391),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(263),
      O => \m_axi_wdata[7]_INST_0_i_1_n_0\
    );
\m_axi_wdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(647),
      I1 => s_axi_wdata(519),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(903),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(775),
      O => \m_axi_wdata[7]_INST_0_i_2_n_0\
    );
\m_axi_wdata[80]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[80]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[80]_INST_0_i_2_n_0\,
      O => m_axi_wdata(80),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[80]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(208),
      I1 => s_axi_wdata(80),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(464),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(336),
      O => \m_axi_wdata[80]_INST_0_i_1_n_0\
    );
\m_axi_wdata[80]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(720),
      I1 => s_axi_wdata(592),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(976),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(848),
      O => \m_axi_wdata[80]_INST_0_i_2_n_0\
    );
\m_axi_wdata[81]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[81]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[81]_INST_0_i_2_n_0\,
      O => m_axi_wdata(81),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[81]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(209),
      I1 => s_axi_wdata(81),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(465),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(337),
      O => \m_axi_wdata[81]_INST_0_i_1_n_0\
    );
\m_axi_wdata[81]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(721),
      I1 => s_axi_wdata(593),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(977),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(849),
      O => \m_axi_wdata[81]_INST_0_i_2_n_0\
    );
\m_axi_wdata[82]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[82]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[82]_INST_0_i_2_n_0\,
      O => m_axi_wdata(82),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[82]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(210),
      I1 => s_axi_wdata(82),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(466),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(338),
      O => \m_axi_wdata[82]_INST_0_i_1_n_0\
    );
\m_axi_wdata[82]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(722),
      I1 => s_axi_wdata(594),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(978),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(850),
      O => \m_axi_wdata[82]_INST_0_i_2_n_0\
    );
\m_axi_wdata[83]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[83]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[83]_INST_0_i_2_n_0\,
      O => m_axi_wdata(83),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[83]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(211),
      I1 => s_axi_wdata(83),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(467),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(339),
      O => \m_axi_wdata[83]_INST_0_i_1_n_0\
    );
\m_axi_wdata[83]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(723),
      I1 => s_axi_wdata(595),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(979),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(851),
      O => \m_axi_wdata[83]_INST_0_i_2_n_0\
    );
\m_axi_wdata[84]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[84]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[84]_INST_0_i_2_n_0\,
      O => m_axi_wdata(84),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[84]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(212),
      I1 => s_axi_wdata(84),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(468),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(340),
      O => \m_axi_wdata[84]_INST_0_i_1_n_0\
    );
\m_axi_wdata[84]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(724),
      I1 => s_axi_wdata(596),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(980),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(852),
      O => \m_axi_wdata[84]_INST_0_i_2_n_0\
    );
\m_axi_wdata[85]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[85]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[85]_INST_0_i_2_n_0\,
      O => m_axi_wdata(85),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[85]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(213),
      I1 => s_axi_wdata(85),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(469),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(341),
      O => \m_axi_wdata[85]_INST_0_i_1_n_0\
    );
\m_axi_wdata[85]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(725),
      I1 => s_axi_wdata(597),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(981),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(853),
      O => \m_axi_wdata[85]_INST_0_i_2_n_0\
    );
\m_axi_wdata[86]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[86]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[86]_INST_0_i_2_n_0\,
      O => m_axi_wdata(86),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[86]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(214),
      I1 => s_axi_wdata(86),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(470),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(342),
      O => \m_axi_wdata[86]_INST_0_i_1_n_0\
    );
\m_axi_wdata[86]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(726),
      I1 => s_axi_wdata(598),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(982),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(854),
      O => \m_axi_wdata[86]_INST_0_i_2_n_0\
    );
\m_axi_wdata[87]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[87]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[87]_INST_0_i_2_n_0\,
      O => m_axi_wdata(87),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[87]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(215),
      I1 => s_axi_wdata(87),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(471),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(343),
      O => \m_axi_wdata[87]_INST_0_i_1_n_0\
    );
\m_axi_wdata[87]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(727),
      I1 => s_axi_wdata(599),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(983),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(855),
      O => \m_axi_wdata[87]_INST_0_i_2_n_0\
    );
\m_axi_wdata[88]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[88]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[88]_INST_0_i_2_n_0\,
      O => m_axi_wdata(88),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[88]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(216),
      I1 => s_axi_wdata(88),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(472),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(344),
      O => \m_axi_wdata[88]_INST_0_i_1_n_0\
    );
\m_axi_wdata[88]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(728),
      I1 => s_axi_wdata(600),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(984),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(856),
      O => \m_axi_wdata[88]_INST_0_i_2_n_0\
    );
\m_axi_wdata[89]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[89]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[89]_INST_0_i_2_n_0\,
      O => m_axi_wdata(89),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[89]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(217),
      I1 => s_axi_wdata(89),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(473),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(345),
      O => \m_axi_wdata[89]_INST_0_i_1_n_0\
    );
\m_axi_wdata[89]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(729),
      I1 => s_axi_wdata(601),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(985),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(857),
      O => \m_axi_wdata[89]_INST_0_i_2_n_0\
    );
\m_axi_wdata[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[8]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[8]_INST_0_i_2_n_0\,
      O => m_axi_wdata(8),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(136),
      I1 => s_axi_wdata(8),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(392),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(264),
      O => \m_axi_wdata[8]_INST_0_i_1_n_0\
    );
\m_axi_wdata[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(648),
      I1 => s_axi_wdata(520),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(904),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(776),
      O => \m_axi_wdata[8]_INST_0_i_2_n_0\
    );
\m_axi_wdata[90]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[90]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[90]_INST_0_i_2_n_0\,
      O => m_axi_wdata(90),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[90]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(218),
      I1 => s_axi_wdata(90),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(474),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(346),
      O => \m_axi_wdata[90]_INST_0_i_1_n_0\
    );
\m_axi_wdata[90]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(730),
      I1 => s_axi_wdata(602),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(986),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(858),
      O => \m_axi_wdata[90]_INST_0_i_2_n_0\
    );
\m_axi_wdata[91]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[91]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[91]_INST_0_i_2_n_0\,
      O => m_axi_wdata(91),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[91]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(219),
      I1 => s_axi_wdata(91),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(475),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(347),
      O => \m_axi_wdata[91]_INST_0_i_1_n_0\
    );
\m_axi_wdata[91]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(731),
      I1 => s_axi_wdata(603),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(987),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(859),
      O => \m_axi_wdata[91]_INST_0_i_2_n_0\
    );
\m_axi_wdata[92]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[92]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[92]_INST_0_i_2_n_0\,
      O => m_axi_wdata(92),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[92]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(220),
      I1 => s_axi_wdata(92),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(476),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(348),
      O => \m_axi_wdata[92]_INST_0_i_1_n_0\
    );
\m_axi_wdata[92]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(732),
      I1 => s_axi_wdata(604),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(988),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(860),
      O => \m_axi_wdata[92]_INST_0_i_2_n_0\
    );
\m_axi_wdata[93]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[93]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[93]_INST_0_i_2_n_0\,
      O => m_axi_wdata(93),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[93]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(221),
      I1 => s_axi_wdata(93),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(477),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(349),
      O => \m_axi_wdata[93]_INST_0_i_1_n_0\
    );
\m_axi_wdata[93]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(733),
      I1 => s_axi_wdata(605),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(989),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(861),
      O => \m_axi_wdata[93]_INST_0_i_2_n_0\
    );
\m_axi_wdata[94]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[94]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[94]_INST_0_i_2_n_0\,
      O => m_axi_wdata(94),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[94]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(222),
      I1 => s_axi_wdata(94),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(478),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(350),
      O => \m_axi_wdata[94]_INST_0_i_1_n_0\
    );
\m_axi_wdata[94]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(734),
      I1 => s_axi_wdata(606),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(990),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(862),
      O => \m_axi_wdata[94]_INST_0_i_2_n_0\
    );
\m_axi_wdata[95]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[95]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[95]_INST_0_i_2_n_0\,
      O => m_axi_wdata(95),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[95]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(223),
      I1 => s_axi_wdata(95),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(479),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(351),
      O => \m_axi_wdata[95]_INST_0_i_1_n_0\
    );
\m_axi_wdata[95]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(735),
      I1 => s_axi_wdata(607),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(991),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(863),
      O => \m_axi_wdata[95]_INST_0_i_2_n_0\
    );
\m_axi_wdata[96]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[96]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[96]_INST_0_i_2_n_0\,
      O => m_axi_wdata(96),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[96]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(224),
      I1 => s_axi_wdata(96),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(480),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(352),
      O => \m_axi_wdata[96]_INST_0_i_1_n_0\
    );
\m_axi_wdata[96]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(736),
      I1 => s_axi_wdata(608),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(992),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(864),
      O => \m_axi_wdata[96]_INST_0_i_2_n_0\
    );
\m_axi_wdata[97]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[97]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[97]_INST_0_i_2_n_0\,
      O => m_axi_wdata(97),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[97]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(225),
      I1 => s_axi_wdata(97),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(481),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(353),
      O => \m_axi_wdata[97]_INST_0_i_1_n_0\
    );
\m_axi_wdata[97]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(737),
      I1 => s_axi_wdata(609),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(993),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(865),
      O => \m_axi_wdata[97]_INST_0_i_2_n_0\
    );
\m_axi_wdata[98]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[98]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[98]_INST_0_i_2_n_0\,
      O => m_axi_wdata(98),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[98]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(226),
      I1 => s_axi_wdata(98),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(482),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(354),
      O => \m_axi_wdata[98]_INST_0_i_1_n_0\
    );
\m_axi_wdata[98]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(738),
      I1 => s_axi_wdata(610),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(994),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(866),
      O => \m_axi_wdata[98]_INST_0_i_2_n_0\
    );
\m_axi_wdata[99]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[99]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[99]_INST_0_i_2_n_0\,
      O => m_axi_wdata(99),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[99]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(227),
      I1 => s_axi_wdata(99),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(483),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(355),
      O => \m_axi_wdata[99]_INST_0_i_1_n_0\
    );
\m_axi_wdata[99]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(739),
      I1 => s_axi_wdata(611),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(995),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(867),
      O => \m_axi_wdata[99]_INST_0_i_2_n_0\
    );
\m_axi_wdata[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wdata[9]_INST_0_i_1_n_0\,
      I1 => \m_axi_wdata[9]_INST_0_i_2_n_0\,
      O => m_axi_wdata(9),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(137),
      I1 => s_axi_wdata(9),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(393),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(265),
      O => \m_axi_wdata[9]_INST_0_i_1_n_0\
    );
\m_axi_wdata[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(649),
      I1 => s_axi_wdata(521),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wdata(905),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wdata(777),
      O => \m_axi_wdata[9]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[0]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[0]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(0),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(16),
      I1 => s_axi_wstrb(0),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(48),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(32),
      O => \m_axi_wstrb[0]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(80),
      I1 => s_axi_wstrb(64),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(112),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(96),
      O => \m_axi_wstrb[0]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[10]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[10]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(10),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(26),
      I1 => s_axi_wstrb(10),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(58),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(42),
      O => \m_axi_wstrb[10]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(90),
      I1 => s_axi_wstrb(74),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(122),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(106),
      O => \m_axi_wstrb[10]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[11]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[11]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(11),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(27),
      I1 => s_axi_wstrb(11),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(59),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(43),
      O => \m_axi_wstrb[11]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(91),
      I1 => s_axi_wstrb(75),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(123),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(107),
      O => \m_axi_wstrb[11]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[12]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[12]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(12),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(28),
      I1 => s_axi_wstrb(12),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(60),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(44),
      O => \m_axi_wstrb[12]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(92),
      I1 => s_axi_wstrb(76),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(124),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(108),
      O => \m_axi_wstrb[12]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[13]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[13]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(13),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(29),
      I1 => s_axi_wstrb(13),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(61),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(45),
      O => \m_axi_wstrb[13]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(93),
      I1 => s_axi_wstrb(77),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(125),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(109),
      O => \m_axi_wstrb[13]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[14]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[14]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(14),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(30),
      I1 => s_axi_wstrb(14),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(62),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(46),
      O => \m_axi_wstrb[14]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(94),
      I1 => s_axi_wstrb(78),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(126),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(110),
      O => \m_axi_wstrb[14]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[15]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[15]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(15),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(31),
      I1 => s_axi_wstrb(15),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(63),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(47),
      O => \m_axi_wstrb[15]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(95),
      I1 => s_axi_wstrb(79),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(127),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(111),
      O => \m_axi_wstrb[15]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[1]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[1]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(1),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(17),
      I1 => s_axi_wstrb(1),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(49),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(33),
      O => \m_axi_wstrb[1]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(81),
      I1 => s_axi_wstrb(65),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(113),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(97),
      O => \m_axi_wstrb[1]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[2]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[2]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(2),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(18),
      I1 => s_axi_wstrb(2),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(50),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(34),
      O => \m_axi_wstrb[2]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(82),
      I1 => s_axi_wstrb(66),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(114),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(98),
      O => \m_axi_wstrb[2]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[3]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[3]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(3),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(19),
      I1 => s_axi_wstrb(3),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(51),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(35),
      O => \m_axi_wstrb[3]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(83),
      I1 => s_axi_wstrb(67),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(115),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(99),
      O => \m_axi_wstrb[3]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[4]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[4]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(4),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(20),
      I1 => s_axi_wstrb(4),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(52),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(36),
      O => \m_axi_wstrb[4]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(84),
      I1 => s_axi_wstrb(68),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(116),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(100),
      O => \m_axi_wstrb[4]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[5]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[5]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(5),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(21),
      I1 => s_axi_wstrb(5),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(53),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(37),
      O => \m_axi_wstrb[5]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(85),
      I1 => s_axi_wstrb(69),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(117),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(101),
      O => \m_axi_wstrb[5]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[6]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[6]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(6),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(22),
      I1 => s_axi_wstrb(6),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(54),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(38),
      O => \m_axi_wstrb[6]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(86),
      I1 => s_axi_wstrb(70),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(118),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(102),
      O => \m_axi_wstrb[6]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[7]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[7]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(7),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(23),
      I1 => s_axi_wstrb(7),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(55),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(39),
      O => \m_axi_wstrb[7]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(87),
      I1 => s_axi_wstrb(71),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(119),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(103),
      O => \m_axi_wstrb[7]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[8]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[8]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(8),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(24),
      I1 => s_axi_wstrb(8),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(56),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(40),
      O => \m_axi_wstrb[8]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(88),
      I1 => s_axi_wstrb(72),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(120),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(104),
      O => \m_axi_wstrb[8]_INST_0_i_2_n_0\
    );
\m_axi_wstrb[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \m_axi_wstrb[9]_INST_0_i_1_n_0\,
      I1 => \m_axi_wstrb[9]_INST_0_i_2_n_0\,
      O => m_axi_wstrb(9),
      S => \m_axi_wdata[127]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(25),
      I1 => s_axi_wstrb(9),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(57),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(41),
      O => \m_axi_wstrb[9]_INST_0_i_1_n_0\
    );
\m_axi_wstrb[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(89),
      I1 => s_axi_wstrb(73),
      I2 => \m_axi_wdata[127]_INST_0_i_7_n_0\,
      I3 => s_axi_wstrb(121),
      I4 => \m_axi_wdata[127]_INST_0_i_8_n_0\,
      I5 => s_axi_wstrb(105),
      O => \m_axi_wstrb[9]_INST_0_i_2_n_0\
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => empty,
      O => m_axi_wvalid
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044404040444044"
    )
        port map (
      I0 => empty,
      I1 => m_axi_wready,
      I2 => s_axi_wready_INST_0_i_1_n_0,
      I3 => s_axi_wready_INST_0_i_2_n_0,
      I4 => s_axi_wready_INST_0_i_3_n_0,
      I5 => \USE_WRITE.wr_cmd_size\(2),
      O => s_axi_wready
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[9]\,
      I1 => \USE_WRITE.wr_cmd_mirror\,
      I2 => \^dout\(8),
      O => s_axi_wready_INST_0_i_1_n_0
    );
s_axi_wready_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFCF0EEEEECE0"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^d\(0),
      I2 => \USE_WRITE.wr_cmd_size\(2),
      I3 => \USE_WRITE.wr_cmd_size\(0),
      I4 => \USE_WRITE.wr_cmd_size\(1),
      I5 => \^d\(2),
      O => s_axi_wready_INST_0_i_2_n_0
    );
s_axi_wready_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000005F075F"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_size\(0),
      I1 => \^d\(6),
      I2 => \^d\(4),
      I3 => \USE_WRITE.wr_cmd_size\(1),
      I4 => \^d\(5),
      I5 => \^d\(3),
      O => s_axi_wready_INST_0_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_fifo is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    din : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : out STD_LOGIC;
    cmd_b_push_block_reg : out STD_LOGIC;
    split_ongoing_reg : out STD_LOGIC;
    split_ongoing_reg_0 : out STD_LOGIC;
    split_ongoing_reg_1 : out STD_LOGIC;
    split_ongoing_reg_2 : out STD_LOGIC;
    split_ongoing_reg_3 : out STD_LOGIC;
    \queue_id_reg[0]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    cmd_b_push_block : in STD_LOGIC;
    S_AXI_AREADY_I_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    wrap_need_to_split_q : in STD_LOGIC;
    incr_need_to_split_q : in STD_LOGIC;
    fix_need_to_split_q : in STD_LOGIC;
    access_is_fix_q : in STD_LOGIC;
    access_is_wrap_q : in STD_LOGIC;
    wrap_need_to_split_q_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \num_transactions_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    access_is_incr_q : in STD_LOGIC;
    \S_AXI_ALEN_Q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AID_Q : in STD_LOGIC;
    s_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_fifo is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_fifo_gen
     port map (
      CLK => CLK,
      E(0) => E(0),
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => SR(0),
      S_AXI_AID_Q => S_AXI_AID_Q,
      \S_AXI_ALEN_Q_reg[3]\(3 downto 0) => \S_AXI_ALEN_Q_reg[3]\(3 downto 0),
      S_AXI_AREADY_I_reg(0) => S_AXI_AREADY_I_reg(0),
      access_is_fix_q => access_is_fix_q,
      access_is_incr_q => access_is_incr_q,
      access_is_wrap_q => access_is_wrap_q,
      cmd_b_push_block => cmd_b_push_block,
      cmd_b_push_block_reg => cmd_b_push_block_reg,
      cmd_push_block => cmd_push_block,
      command_ongoing => command_ongoing,
      din(0) => din(0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      fix_need_to_split_q => fix_need_to_split_q,
      full => full,
      incr_need_to_split_q => incr_need_to_split_q,
      m_axi_awready => m_axi_awready,
      \num_transactions_q_reg[2]\(2 downto 0) => \num_transactions_q_reg[2]\(2 downto 0),
      \out\ => \out\,
      \queue_id_reg[0]\ => \queue_id_reg[0]\,
      ram_full_i_reg => ram_full_i_reg,
      rd_en => rd_en,
      s_axi_bid(0) => s_axi_bid(0),
      split_ongoing_reg => split_ongoing_reg,
      split_ongoing_reg_0 => split_ongoing_reg_0,
      split_ongoing_reg_1 => split_ongoing_reg_1,
      split_ongoing_reg_2 => split_ongoing_reg_2,
      split_ongoing_reg_3 => split_ongoing_reg_3,
      wr_en => wr_en,
      wrap_need_to_split_q => wrap_need_to_split_q,
      wrap_need_to_split_q_reg => wrap_need_to_split_q_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_fifo__parameterized0\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    \m_axi_awsize[2]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    command_ongoing_reg : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    \next_mi_addr_reg[10]\ : out STD_LOGIC;
    \next_mi_addr_reg[10]_0\ : out STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC;
    first_word_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_AREADY_I_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : in STD_LOGIC;
    fix_need_to_split_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    split_ongoing : in STD_LOGIC;
    access_is_wrap_q : in STD_LOGIC;
    wrap_need_to_split_q : in STD_LOGIC;
    \wrap_unaligned_len_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \areset_d_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    command_ongoing : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    access_is_fix_q_reg : in STD_LOGIC;
    \S_AXI_AADDR_Q_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    si_full_size_q : in STD_LOGIC;
    \split_addr_mask_q_reg[0]\ : in STD_LOGIC;
    \split_addr_mask_q_reg[1]\ : in STD_LOGIC;
    \split_addr_mask_q_reg[2]\ : in STD_LOGIC;
    \split_addr_mask_q_reg[3]\ : in STD_LOGIC;
    \split_addr_mask_q_reg[6]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \split_addr_mask_q_reg[31]\ : in STD_LOGIC;
    access_is_incr_q : in STD_LOGIC;
    \S_AXI_ALEN_Q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \downsized_len_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \unalignment_addr_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \fix_len_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    \goreg_dm.dout_i_reg[9]\ : in STD_LOGIC;
    access_is_fix_q : in STD_LOGIC;
    \pushed_commands_reg[0]\ : in STD_LOGIC;
    \num_transactions_q_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \pushed_commands_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    access_is_incr_q_reg : in STD_LOGIC;
    \pushed_commands_reg[7]\ : in STD_LOGIC;
    \pushed_commands_reg[0]_0\ : in STD_LOGIC;
    incr_need_to_split_q : in STD_LOGIC;
    legal_wrap_len_q : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    first_mi_word : in STD_LOGIC;
    \current_word_1_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    first_word_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_fifo__parameterized0\ : entity is "axi_data_fifo_v2_1_14_axic_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_fifo__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_fifo__parameterized0\ is
begin
inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_fifo_gen__parameterized0\
     port map (
      CLK => CLK,
      D(6 downto 0) => D(6 downto 0),
      E(0) => E(0),
      Q(7 downto 0) => Q(7 downto 0),
      SR(0) => SR(0),
      \S_AXI_AADDR_Q_reg[6]\(6 downto 0) => \S_AXI_AADDR_Q_reg[6]\(6 downto 0),
      \S_AXI_ALEN_Q_reg[7]\(7 downto 0) => \S_AXI_ALEN_Q_reg[7]\(7 downto 0),
      S_AXI_AREADY_I_reg => S_AXI_AREADY_I_reg,
      access_is_fix_q => access_is_fix_q,
      access_is_fix_q_reg => access_is_fix_q_reg,
      access_is_incr_q => access_is_incr_q,
      access_is_incr_q_reg => access_is_incr_q_reg,
      access_is_wrap_q => access_is_wrap_q,
      \areset_d_reg[1]\(1 downto 0) => \areset_d_reg[1]\(1 downto 0),
      cmd_push_block => cmd_push_block,
      cmd_push_block_reg => cmd_push_block_reg,
      command_ongoing => command_ongoing,
      command_ongoing_reg => command_ongoing_reg,
      \current_word_1_reg[6]\(6 downto 0) => \current_word_1_reg[6]\(6 downto 0),
      din(11 downto 0) => din(11 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      \downsized_len_q_reg[7]\(7 downto 0) => \downsized_len_q_reg[7]\(7 downto 0),
      first_mi_word => first_mi_word,
      first_word_reg(0) => first_word_reg(0),
      first_word_reg_0 => first_word_reg_0,
      \fix_len_q_reg[2]\(2 downto 0) => \fix_len_q_reg[2]\(2 downto 0),
      fix_need_to_split_q => fix_need_to_split_q,
      full => full,
      \goreg_dm.dout_i_reg[9]\ => \goreg_dm.dout_i_reg[9]\,
      \gpr1.dout_i_reg[1]\ => \gpr1.dout_i_reg[1]\,
      incr_need_to_split_q => incr_need_to_split_q,
      legal_wrap_len_q => legal_wrap_len_q,
      m_axi_awready => m_axi_awready,
      \m_axi_awsize[2]\(10 downto 0) => \m_axi_awsize[2]\(10 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wdata(127 downto 0) => m_axi_wdata(127 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(15 downto 0) => m_axi_wstrb(15 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      \next_mi_addr_reg[10]\ => \next_mi_addr_reg[10]\,
      \next_mi_addr_reg[10]_0\ => \next_mi_addr_reg[10]_0\,
      \num_transactions_q_reg[2]\(0) => \num_transactions_q_reg[2]\(0),
      \out\ => \out\,
      \pushed_commands_reg[0]\ => \pushed_commands_reg[0]\,
      \pushed_commands_reg[0]_0\ => \pushed_commands_reg[0]_0\,
      \pushed_commands_reg[2]\(0) => \pushed_commands_reg[2]\(0),
      \pushed_commands_reg[7]\ => \pushed_commands_reg[7]\,
      ram_full_i_reg => ram_full_i_reg,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wdata(1023 downto 0) => s_axi_wdata(1023 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(127 downto 0) => s_axi_wstrb(127 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      si_full_size_q => si_full_size_q,
      \split_addr_mask_q_reg[0]\ => \split_addr_mask_q_reg[0]\,
      \split_addr_mask_q_reg[1]\ => \split_addr_mask_q_reg[1]\,
      \split_addr_mask_q_reg[2]\ => \split_addr_mask_q_reg[2]\,
      \split_addr_mask_q_reg[31]\ => \split_addr_mask_q_reg[31]\,
      \split_addr_mask_q_reg[3]\ => \split_addr_mask_q_reg[3]\,
      \split_addr_mask_q_reg[6]\(2 downto 0) => \split_addr_mask_q_reg[6]\(2 downto 0),
      split_ongoing => split_ongoing,
      \unalignment_addr_q_reg[2]\(2 downto 0) => \unalignment_addr_q_reg[2]\(2 downto 0),
      wr_en => wr_en,
      wrap_need_to_split_q => wrap_need_to_split_q,
      \wrap_unaligned_len_q_reg[7]\(7 downto 0) => \wrap_unaligned_len_q_reg[7]\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_a_downsizer is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    empty : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \current_word_1_reg[4]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    din : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    \goreg_dm.dout_i_reg[9]\ : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    first_mi_word : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    first_word_reg : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_a_downsizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_a_downsizer is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \S_AXI_AADDR_Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[10]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[11]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[12]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[13]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[14]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[15]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[16]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[17]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[18]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[19]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[20]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[21]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[22]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[23]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[24]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[25]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[26]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[27]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[28]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[29]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[2]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[30]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[31]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[3]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[5]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[6]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[7]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[8]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[9]\ : STD_LOGIC;
  signal S_AXI_ABURST_Q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_AID_Q : STD_LOGIC;
  signal \S_AXI_ALEN_Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \S_AXI_ALEN_Q_reg_n_0_[5]\ : STD_LOGIC;
  signal \S_AXI_ALEN_Q_reg_n_0_[6]\ : STD_LOGIC;
  signal \S_AXI_ALEN_Q_reg_n_0_[7]\ : STD_LOGIC;
  signal S_AXI_ALOCK_Q : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_ASIZE_Q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \USE_B_CHANNEL.cmd_b_queue_n_15\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_16\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_17\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_18\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_19\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_20\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_21\ : STD_LOGIC;
  signal access_fit_mi_side_q : STD_LOGIC;
  signal access_is_fix : STD_LOGIC;
  signal access_is_fix_q : STD_LOGIC;
  signal access_is_incr : STD_LOGIC;
  signal access_is_incr_q : STD_LOGIC;
  signal access_is_wrap : STD_LOGIC;
  signal access_is_wrap_q : STD_LOGIC;
  signal areset_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cmd_b_push_block : STD_LOGIC;
  signal cmd_mask_i : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal cmd_mask_q : STD_LOGIC;
  signal \cmd_mask_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_mask_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_mask_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_mask_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_mask_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_mask_q[5]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_mask_q[6]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[6]\ : STD_LOGIC;
  signal cmd_push : STD_LOGIC;
  signal cmd_push_block : STD_LOGIC;
  signal cmd_queue_n_181 : STD_LOGIC;
  signal cmd_queue_n_21 : STD_LOGIC;
  signal cmd_queue_n_22 : STD_LOGIC;
  signal cmd_queue_n_24 : STD_LOGIC;
  signal cmd_queue_n_25 : STD_LOGIC;
  signal cmd_queue_n_26 : STD_LOGIC;
  signal cmd_split_i : STD_LOGIC;
  signal command_ongoing : STD_LOGIC;
  signal downsized_len_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \downsized_len_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[5]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[6]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[7]_i_1_n_0\ : STD_LOGIC;
  signal fix_len : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fix_len_q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal fix_need_to_split : STD_LOGIC;
  signal fix_need_to_split_q : STD_LOGIC;
  signal incr_need_to_split : STD_LOGIC;
  signal incr_need_to_split_q : STD_LOGIC;
  signal \inst/full\ : STD_LOGIC;
  signal \inst/full_0\ : STD_LOGIC;
  signal legal_wrap_len_q : STD_LOGIC;
  signal legal_wrap_len_q_i_1_n_0 : STD_LOGIC;
  signal legal_wrap_len_q_i_2_n_0 : STD_LOGIC;
  signal legal_wrap_len_q_i_3_n_0 : STD_LOGIC;
  signal legal_wrap_len_q_i_4_n_0 : STD_LOGIC;
  signal masked_addr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal masked_addr_q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \masked_addr_q[10]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[11]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[6]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[7]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \masked_addr_q[9]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[9]_i_3_n_0\ : STD_LOGIC;
  signal next_mi_addr : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \next_mi_addr0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_1\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_10\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_11\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_12\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_13\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_14\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_15\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_2\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_3\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_5\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_6\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_7\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_8\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_9\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_11\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_12\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_13\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_14\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_15\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_5\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_6\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_7\ : STD_LOGIC;
  signal next_mi_addr0_carry_i_1_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_i_2_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_i_3_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_i_4_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_i_5_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_i_6_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_i_7_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_i_8_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_i_9_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_n_1 : STD_LOGIC;
  signal next_mi_addr0_carry_n_10 : STD_LOGIC;
  signal next_mi_addr0_carry_n_11 : STD_LOGIC;
  signal next_mi_addr0_carry_n_12 : STD_LOGIC;
  signal next_mi_addr0_carry_n_13 : STD_LOGIC;
  signal next_mi_addr0_carry_n_14 : STD_LOGIC;
  signal next_mi_addr0_carry_n_15 : STD_LOGIC;
  signal next_mi_addr0_carry_n_2 : STD_LOGIC;
  signal next_mi_addr0_carry_n_3 : STD_LOGIC;
  signal next_mi_addr0_carry_n_5 : STD_LOGIC;
  signal next_mi_addr0_carry_n_6 : STD_LOGIC;
  signal next_mi_addr0_carry_n_7 : STD_LOGIC;
  signal next_mi_addr0_carry_n_8 : STD_LOGIC;
  signal next_mi_addr0_carry_n_9 : STD_LOGIC;
  signal \next_mi_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal num_transactions : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \num_transactions_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \num_transactions_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \num_transactions_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \num_transactions_q_reg_n_0_[2]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pre_mi_addr : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal \pushed_commands[7]_i_1_n_0\ : STD_LOGIC;
  signal \pushed_commands[7]_i_3_n_0\ : STD_LOGIC;
  signal \pushed_commands_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pushed_new_cmd : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal si_full_size_q : STD_LOGIC;
  signal split_addr_mask : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \split_addr_mask_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[31]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[6]\ : STD_LOGIC;
  signal split_ongoing : STD_LOGIC;
  signal unalignment_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal unalignment_addr_q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wrap_need_to_split : STD_LOGIC;
  signal wrap_need_to_split_q : STD_LOGIC;
  signal wrap_need_to_split_q_i_2_n_0 : STD_LOGIC;
  signal wrap_need_to_split_q_i_3_n_0 : STD_LOGIC;
  signal wrap_need_to_split_q_i_4_n_0 : STD_LOGIC;
  signal wrap_rest_len : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wrap_rest_len0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wrap_rest_len[1]_i_1_n_0\ : STD_LOGIC;
  signal \wrap_rest_len[7]_i_2_n_0\ : STD_LOGIC;
  signal wrap_unaligned_len : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wrap_unaligned_len_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_next_mi_addr0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_next_mi_addr0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_next_mi_addr0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_next_mi_addr0_carry__1_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_next_mi_addr0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_next_mi_addr0_carry__1_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of access_is_fix_q_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of access_is_incr_q_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of access_is_wrap_q_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \cmd_mask_q[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cmd_mask_q[1]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \cmd_mask_q[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cmd_mask_q[3]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cmd_mask_q[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cmd_mask_q[4]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cmd_mask_q[5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cmd_mask_q[6]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \downsized_len_q[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \downsized_len_q[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \downsized_len_q[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \downsized_len_q[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \downsized_len_q[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \downsized_len_q[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \downsized_len_q[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \fix_len_q[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \fix_len_q[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \fix_len_q[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of fix_need_to_split_q_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of incr_need_to_split_q_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \masked_addr_q[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \masked_addr_q[11]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \masked_addr_q[14]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \masked_addr_q[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \masked_addr_q[3]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \masked_addr_q[5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \masked_addr_q[6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \masked_addr_q[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \masked_addr_q[8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \masked_addr_q[9]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \num_transactions_q[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pushed_commands[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \pushed_commands[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \pushed_commands[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \pushed_commands[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \pushed_commands[6]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \pushed_commands[7]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \split_addr_mask_q[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \split_addr_mask_q[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \split_addr_mask_q[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \split_addr_mask_q[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \split_addr_mask_q[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \split_addr_mask_q[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \split_addr_mask_q[6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \unalignment_addr_q[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \unalignment_addr_q[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \unalignment_addr_q[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of wrap_need_to_split_q_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of wrap_need_to_split_q_i_4 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \wrap_rest_len[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \wrap_rest_len[2]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \wrap_rest_len[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \wrap_rest_len[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \wrap_rest_len[6]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \wrap_rest_len[7]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[4]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[5]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[7]_i_1\ : label is "soft_lutpair49";
begin
  SR(0) <= \^sr\(0);
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bid(0) <= \^s_axi_bid\(0);
\S_AXI_AADDR_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(0),
      Q => \S_AXI_AADDR_Q_reg_n_0_[0]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(10),
      Q => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(11),
      Q => \S_AXI_AADDR_Q_reg_n_0_[11]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(12),
      Q => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(13),
      Q => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(14),
      Q => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(15),
      Q => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(16),
      Q => \S_AXI_AADDR_Q_reg_n_0_[16]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(17),
      Q => \S_AXI_AADDR_Q_reg_n_0_[17]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(18),
      Q => \S_AXI_AADDR_Q_reg_n_0_[18]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(19),
      Q => \S_AXI_AADDR_Q_reg_n_0_[19]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(1),
      Q => \S_AXI_AADDR_Q_reg_n_0_[1]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(20),
      Q => \S_AXI_AADDR_Q_reg_n_0_[20]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(21),
      Q => \S_AXI_AADDR_Q_reg_n_0_[21]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(22),
      Q => \S_AXI_AADDR_Q_reg_n_0_[22]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(23),
      Q => \S_AXI_AADDR_Q_reg_n_0_[23]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(24),
      Q => \S_AXI_AADDR_Q_reg_n_0_[24]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(25),
      Q => \S_AXI_AADDR_Q_reg_n_0_[25]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(26),
      Q => \S_AXI_AADDR_Q_reg_n_0_[26]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(27),
      Q => \S_AXI_AADDR_Q_reg_n_0_[27]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(28),
      Q => \S_AXI_AADDR_Q_reg_n_0_[28]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(29),
      Q => \S_AXI_AADDR_Q_reg_n_0_[29]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(2),
      Q => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(30),
      Q => \S_AXI_AADDR_Q_reg_n_0_[30]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(31),
      Q => \S_AXI_AADDR_Q_reg_n_0_[31]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(3),
      Q => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(4),
      Q => \S_AXI_AADDR_Q_reg_n_0_[4]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(5),
      Q => \S_AXI_AADDR_Q_reg_n_0_[5]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(6),
      Q => \S_AXI_AADDR_Q_reg_n_0_[6]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(7),
      Q => \S_AXI_AADDR_Q_reg_n_0_[7]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(8),
      Q => \S_AXI_AADDR_Q_reg_n_0_[8]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(9),
      Q => \S_AXI_AADDR_Q_reg_n_0_[9]\,
      R => '0'
    );
\S_AXI_ABURST_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awburst(0),
      Q => S_AXI_ABURST_Q(0),
      R => '0'
    );
\S_AXI_ABURST_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awburst(1),
      Q => S_AXI_ABURST_Q(1),
      R => '0'
    );
\S_AXI_ACACHE_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awcache(0),
      Q => m_axi_awcache(0),
      R => '0'
    );
\S_AXI_ACACHE_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awcache(1),
      Q => m_axi_awcache(1),
      R => '0'
    );
\S_AXI_ACACHE_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awcache(2),
      Q => m_axi_awcache(2),
      R => '0'
    );
\S_AXI_ACACHE_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awcache(3),
      Q => m_axi_awcache(3),
      R => '0'
    );
\S_AXI_AID_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awid(0),
      Q => S_AXI_AID_Q,
      R => '0'
    );
\S_AXI_ALEN_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(0),
      Q => p_0_in_0(0),
      R => '0'
    );
\S_AXI_ALEN_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(1),
      Q => p_0_in_0(1),
      R => '0'
    );
\S_AXI_ALEN_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(2),
      Q => p_0_in_0(2),
      R => '0'
    );
\S_AXI_ALEN_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(3),
      Q => p_0_in_0(3),
      R => '0'
    );
\S_AXI_ALEN_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(4),
      Q => \S_AXI_ALEN_Q_reg_n_0_[4]\,
      R => '0'
    );
\S_AXI_ALEN_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(5),
      Q => \S_AXI_ALEN_Q_reg_n_0_[5]\,
      R => '0'
    );
\S_AXI_ALEN_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(6),
      Q => \S_AXI_ALEN_Q_reg_n_0_[6]\,
      R => '0'
    );
\S_AXI_ALEN_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(7),
      Q => \S_AXI_ALEN_Q_reg_n_0_[7]\,
      R => '0'
    );
\S_AXI_ALOCK_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlock(0),
      Q => S_AXI_ALOCK_Q(0),
      R => '0'
    );
\S_AXI_APROT_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awprot(0),
      Q => m_axi_awprot(0),
      R => '0'
    );
\S_AXI_APROT_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awprot(1),
      Q => m_axi_awprot(1),
      R => '0'
    );
\S_AXI_APROT_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awprot(2),
      Q => m_axi_awprot(2),
      R => '0'
    );
\S_AXI_AQOS_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awqos(0),
      Q => m_axi_awqos(0),
      R => '0'
    );
\S_AXI_AQOS_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awqos(1),
      Q => m_axi_awqos(1),
      R => '0'
    );
\S_AXI_AQOS_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awqos(2),
      Q => m_axi_awqos(2),
      R => '0'
    );
\S_AXI_AQOS_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awqos(3),
      Q => m_axi_awqos(3),
      R => '0'
    );
S_AXI_AREADY_I_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => cmd_queue_n_181,
      Q => \^s_axi_awready\,
      R => \^sr\(0)
    );
\S_AXI_AREGION_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awregion(0),
      Q => m_axi_awregion(0),
      R => '0'
    );
\S_AXI_AREGION_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awregion(1),
      Q => m_axi_awregion(1),
      R => '0'
    );
\S_AXI_AREGION_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awregion(2),
      Q => m_axi_awregion(2),
      R => '0'
    );
\S_AXI_AREGION_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awregion(3),
      Q => m_axi_awregion(3),
      R => '0'
    );
\S_AXI_ASIZE_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awsize(0),
      Q => S_AXI_ASIZE_Q(0),
      R => '0'
    );
\S_AXI_ASIZE_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awsize(1),
      Q => S_AXI_ASIZE_Q(1),
      R => '0'
    );
\S_AXI_ASIZE_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awsize(2),
      Q => S_AXI_ASIZE_Q(2),
      R => '0'
    );
\USE_B_CHANNEL.cmd_b_queue\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_fifo
     port map (
      CLK => CLK,
      E(0) => pushed_new_cmd,
      Q(7 downto 0) => \pushed_commands_reg__0\(7 downto 0),
      SR(0) => \^sr\(0),
      S_AXI_AID_Q => S_AXI_AID_Q,
      \S_AXI_ALEN_Q_reg[3]\(3 downto 0) => p_0_in_0(3 downto 0),
      S_AXI_AREADY_I_reg(0) => \pushed_commands[7]_i_1_n_0\,
      access_is_fix_q => access_is_fix_q,
      access_is_incr_q => access_is_incr_q,
      access_is_wrap_q => access_is_wrap_q,
      cmd_b_push_block => cmd_b_push_block,
      cmd_b_push_block_reg => \USE_B_CHANNEL.cmd_b_queue_n_15\,
      cmd_push_block => cmd_push_block,
      command_ongoing => command_ongoing,
      din(0) => cmd_split_i,
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      fix_need_to_split_q => fix_need_to_split_q,
      full => \inst/full\,
      incr_need_to_split_q => incr_need_to_split_q,
      m_axi_awready => m_axi_awready,
      \num_transactions_q_reg[2]\(2) => \num_transactions_q_reg_n_0_[2]\,
      \num_transactions_q_reg[2]\(1) => \num_transactions_q_reg_n_0_[1]\,
      \num_transactions_q_reg[2]\(0) => \num_transactions_q_reg_n_0_[0]\,
      \out\ => \out\,
      \queue_id_reg[0]\ => \USE_B_CHANNEL.cmd_b_queue_n_21\,
      ram_full_i_reg => \inst/full_0\,
      rd_en => rd_en,
      s_axi_bid(0) => \^s_axi_bid\(0),
      split_ongoing_reg => \USE_B_CHANNEL.cmd_b_queue_n_16\,
      split_ongoing_reg_0 => \USE_B_CHANNEL.cmd_b_queue_n_17\,
      split_ongoing_reg_1 => \USE_B_CHANNEL.cmd_b_queue_n_18\,
      split_ongoing_reg_2 => \USE_B_CHANNEL.cmd_b_queue_n_19\,
      split_ongoing_reg_3 => \USE_B_CHANNEL.cmd_b_queue_n_20\,
      wr_en => cmd_push,
      wrap_need_to_split_q => wrap_need_to_split_q,
      wrap_need_to_split_q_reg => cmd_queue_n_26
    );
access_fit_mi_side_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \split_addr_mask_q[4]_i_1_n_0\,
      Q => access_fit_mi_side_q,
      R => \^sr\(0)
    );
access_is_fix_q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      O => access_is_fix
    );
access_is_fix_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => access_is_fix,
      Q => access_is_fix_q,
      R => \^sr\(0)
    );
access_is_incr_q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      O => access_is_incr
    );
access_is_incr_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => access_is_incr,
      Q => access_is_incr_q,
      R => \^sr\(0)
    );
access_is_wrap_q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(0),
      O => access_is_wrap
    );
access_is_wrap_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => access_is_wrap,
      Q => access_is_wrap_q,
      R => \^sr\(0)
    );
\areset_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \^sr\(0),
      Q => areset_d(0),
      R => '0'
    );
\areset_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => areset_d(0),
      Q => areset_d(1),
      R => '0'
    );
cmd_b_push_block_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \USE_B_CHANNEL.cmd_b_queue_n_15\,
      Q => cmd_b_push_block,
      R => '0'
    );
\cmd_mask_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(0),
      I4 => cmd_mask_q,
      O => \cmd_mask_q[0]_i_1_n_0\
    );
\cmd_mask_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFEEE"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(1),
      I5 => cmd_mask_q,
      O => \cmd_mask_q[1]_i_1_n_0\
    );
\cmd_mask_q[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s_axi_awburst(0),
      I2 => s_axi_awburst(1),
      O => cmd_mask_q
    );
\cmd_mask_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \masked_addr_q[6]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awburst(1),
      I3 => s_axi_awburst(0),
      O => \cmd_mask_q[2]_i_1_n_0\
    );
\cmd_mask_q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \masked_addr_q[7]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awburst(1),
      I3 => s_axi_awburst(0),
      O => \cmd_mask_q[3]_i_1_n_0\
    );
\cmd_mask_q[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => cmd_mask_i(4),
      I1 => s_axi_awburst(1),
      I2 => s_axi_awburst(0),
      O => \cmd_mask_q[4]_i_1_n_0\
    );
\cmd_mask_q[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFE00"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      I4 => \masked_addr_q[8]_i_3_n_0\,
      O => cmd_mask_i(4)
    );
\cmd_mask_q[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => cmd_mask_i(5),
      I1 => s_axi_awburst(1),
      I2 => s_axi_awburst(0),
      O => \cmd_mask_q[5]_i_1_n_0\
    );
\cmd_mask_q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB8FF"
    )
        port map (
      I0 => \masked_addr_q[6]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => \masked_addr_q[10]_i_2_n_0\,
      I3 => s_axi_awburst(1),
      I4 => s_axi_awburst(0),
      O => \cmd_mask_q[6]_i_1_n_0\
    );
\cmd_mask_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \cmd_mask_q[0]_i_1_n_0\,
      Q => \cmd_mask_q_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\cmd_mask_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \cmd_mask_q[1]_i_1_n_0\,
      Q => \cmd_mask_q_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\cmd_mask_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \cmd_mask_q[2]_i_1_n_0\,
      Q => \cmd_mask_q_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\cmd_mask_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \cmd_mask_q[3]_i_1_n_0\,
      Q => \cmd_mask_q_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\cmd_mask_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \cmd_mask_q[4]_i_1_n_0\,
      Q => \cmd_mask_q_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\cmd_mask_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \cmd_mask_q[5]_i_1_n_0\,
      Q => \cmd_mask_q_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\cmd_mask_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \cmd_mask_q[6]_i_1_n_0\,
      Q => \cmd_mask_q_reg_n_0_[6]\,
      R => \^sr\(0)
    );
cmd_push_block_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => cmd_queue_n_22,
      Q => cmd_push_block,
      R => '0'
    );
cmd_queue: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_14_axic_fifo__parameterized0\
     port map (
      CLK => CLK,
      D(6 downto 0) => D(6 downto 0),
      E(0) => \^s_axi_awready\,
      Q(7 downto 0) => wrap_rest_len(7 downto 0),
      SR(0) => \^sr\(0),
      \S_AXI_AADDR_Q_reg[6]\(6) => \S_AXI_AADDR_Q_reg_n_0_[6]\,
      \S_AXI_AADDR_Q_reg[6]\(5) => \S_AXI_AADDR_Q_reg_n_0_[5]\,
      \S_AXI_AADDR_Q_reg[6]\(4) => \S_AXI_AADDR_Q_reg_n_0_[4]\,
      \S_AXI_AADDR_Q_reg[6]\(3) => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      \S_AXI_AADDR_Q_reg[6]\(2) => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      \S_AXI_AADDR_Q_reg[6]\(1) => \S_AXI_AADDR_Q_reg_n_0_[1]\,
      \S_AXI_AADDR_Q_reg[6]\(0) => \S_AXI_AADDR_Q_reg_n_0_[0]\,
      \S_AXI_ALEN_Q_reg[7]\(7) => \S_AXI_ALEN_Q_reg_n_0_[7]\,
      \S_AXI_ALEN_Q_reg[7]\(6) => \S_AXI_ALEN_Q_reg_n_0_[6]\,
      \S_AXI_ALEN_Q_reg[7]\(5) => \S_AXI_ALEN_Q_reg_n_0_[5]\,
      \S_AXI_ALEN_Q_reg[7]\(4) => \S_AXI_ALEN_Q_reg_n_0_[4]\,
      \S_AXI_ALEN_Q_reg[7]\(3 downto 0) => p_0_in_0(3 downto 0),
      S_AXI_AREADY_I_reg => cmd_queue_n_181,
      access_is_fix_q => access_is_fix_q,
      access_is_fix_q_reg => \USE_B_CHANNEL.cmd_b_queue_n_16\,
      access_is_incr_q => access_is_incr_q,
      access_is_incr_q_reg => \USE_B_CHANNEL.cmd_b_queue_n_20\,
      access_is_wrap_q => access_is_wrap_q,
      \areset_d_reg[1]\(1 downto 0) => areset_d(1 downto 0),
      cmd_push_block => cmd_push_block,
      cmd_push_block_reg => cmd_queue_n_22,
      command_ongoing => command_ongoing,
      command_ongoing_reg => cmd_queue_n_21,
      \current_word_1_reg[6]\(6 downto 0) => Q(6 downto 0),
      din(11) => cmd_split_i,
      din(10) => access_fit_mi_side_q,
      din(9) => \cmd_mask_q_reg_n_0_[6]\,
      din(8) => \cmd_mask_q_reg_n_0_[5]\,
      din(7) => \cmd_mask_q_reg_n_0_[4]\,
      din(6) => \cmd_mask_q_reg_n_0_[3]\,
      din(5) => \cmd_mask_q_reg_n_0_[2]\,
      din(4) => \cmd_mask_q_reg_n_0_[1]\,
      din(3) => \cmd_mask_q_reg_n_0_[0]\,
      din(2 downto 0) => S_AXI_ASIZE_Q(2 downto 0),
      dout(8 downto 0) => \current_word_1_reg[4]\(8 downto 0),
      \downsized_len_q_reg[7]\(7 downto 0) => downsized_len_q(7 downto 0),
      first_mi_word => first_mi_word,
      first_word_reg(0) => E(0),
      first_word_reg_0 => first_word_reg,
      \fix_len_q_reg[2]\(2 downto 0) => fix_len_q(2 downto 0),
      fix_need_to_split_q => fix_need_to_split_q,
      full => \inst/full_0\,
      \goreg_dm.dout_i_reg[9]\ => \goreg_dm.dout_i_reg[9]\,
      \gpr1.dout_i_reg[1]\ => cmd_queue_n_26,
      incr_need_to_split_q => incr_need_to_split_q,
      legal_wrap_len_q => legal_wrap_len_q,
      m_axi_awready => m_axi_awready,
      \m_axi_awsize[2]\(10 downto 0) => din(10 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wdata(127 downto 0) => m_axi_wdata(127 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(15 downto 0) => m_axi_wstrb(15 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      \next_mi_addr_reg[10]\ => cmd_queue_n_24,
      \next_mi_addr_reg[10]_0\ => cmd_queue_n_25,
      \num_transactions_q_reg[2]\(0) => \num_transactions_q_reg_n_0_[2]\,
      \out\ => \out\,
      \pushed_commands_reg[0]\ => \USE_B_CHANNEL.cmd_b_queue_n_17\,
      \pushed_commands_reg[0]_0\ => \USE_B_CHANNEL.cmd_b_queue_n_18\,
      \pushed_commands_reg[2]\(0) => \pushed_commands_reg__0\(2),
      \pushed_commands_reg[7]\ => \USE_B_CHANNEL.cmd_b_queue_n_19\,
      ram_full_i_reg => \inst/full\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wdata(1023 downto 0) => s_axi_wdata(1023 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(127 downto 0) => s_axi_wstrb(127 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      si_full_size_q => si_full_size_q,
      \split_addr_mask_q_reg[0]\ => \split_addr_mask_q_reg_n_0_[0]\,
      \split_addr_mask_q_reg[1]\ => \split_addr_mask_q_reg_n_0_[1]\,
      \split_addr_mask_q_reg[2]\ => \split_addr_mask_q_reg_n_0_[2]\,
      \split_addr_mask_q_reg[31]\ => \split_addr_mask_q_reg_n_0_[31]\,
      \split_addr_mask_q_reg[3]\ => \split_addr_mask_q_reg_n_0_[3]\,
      \split_addr_mask_q_reg[6]\(2) => \split_addr_mask_q_reg_n_0_[6]\,
      \split_addr_mask_q_reg[6]\(1) => \split_addr_mask_q_reg_n_0_[5]\,
      \split_addr_mask_q_reg[6]\(0) => \split_addr_mask_q_reg_n_0_[4]\,
      split_ongoing => split_ongoing,
      \unalignment_addr_q_reg[2]\(2 downto 0) => unalignment_addr_q(2 downto 0),
      wr_en => cmd_push,
      wrap_need_to_split_q => wrap_need_to_split_q,
      \wrap_unaligned_len_q_reg[7]\(7 downto 0) => wrap_unaligned_len_q(7 downto 0)
    );
command_ongoing_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => cmd_queue_n_21,
      Q => command_ongoing,
      R => \^sr\(0)
    );
\downsized_len_q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEA"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      O => \downsized_len_q[0]_i_1_n_0\
    );
\downsized_len_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE0BFA0"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awlen(0),
      O => \downsized_len_q[1]_i_1_n_0\
    );
\downsized_len_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFBF9FE0C0A080"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awlen(1),
      I5 => s_axi_awlen(2),
      O => \downsized_len_q[2]_i_1_n_0\
    );
\downsized_len_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(2),
      I4 => \masked_addr_q[7]_i_2_n_0\,
      O => \downsized_len_q[3]_i_1_n_0\
    );
\downsized_len_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(2),
      I4 => \masked_addr_q[8]_i_3_n_0\,
      O => \downsized_len_q[4]_i_1_n_0\
    );
\downsized_len_q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(2),
      I4 => \masked_addr_q[9]_i_2_n_0\,
      O => \downsized_len_q[5]_i_1_n_0\
    );
\downsized_len_q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(2),
      I4 => \masked_addr_q[10]_i_2_n_0\,
      O => \downsized_len_q[6]_i_1_n_0\
    );
\downsized_len_q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA02AA"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(2),
      I4 => \masked_addr_q[11]_i_2_n_0\,
      O => \downsized_len_q[7]_i_1_n_0\
    );
\downsized_len_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[0]_i_1_n_0\,
      Q => downsized_len_q(0),
      R => \^sr\(0)
    );
\downsized_len_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[1]_i_1_n_0\,
      Q => downsized_len_q(1),
      R => \^sr\(0)
    );
\downsized_len_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[2]_i_1_n_0\,
      Q => downsized_len_q(2),
      R => \^sr\(0)
    );
\downsized_len_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[3]_i_1_n_0\,
      Q => downsized_len_q(3),
      R => \^sr\(0)
    );
\downsized_len_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[4]_i_1_n_0\,
      Q => downsized_len_q(4),
      R => \^sr\(0)
    );
\downsized_len_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[5]_i_1_n_0\,
      Q => downsized_len_q(5),
      R => \^sr\(0)
    );
\downsized_len_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[6]_i_1_n_0\,
      Q => downsized_len_q(6),
      R => \^sr\(0)
    );
\downsized_len_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[7]_i_1_n_0\,
      Q => downsized_len_q(7),
      R => \^sr\(0)
    );
\fix_len_q[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      O => fix_len(0)
    );
\fix_len_q[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      O => fix_len(1)
    );
\fix_len_q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      O => fix_len(2)
    );
\fix_len_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => fix_len(0),
      Q => fix_len_q(0),
      R => \^sr\(0)
    );
\fix_len_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => fix_len(1),
      Q => fix_len_q(1),
      R => \^sr\(0)
    );
\fix_len_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => fix_len(2),
      Q => fix_len_q(2),
      R => \^sr\(0)
    );
fix_need_to_split_q_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10101000"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(0),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(1),
      O => fix_need_to_split
    );
fix_need_to_split_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => fix_need_to_split,
      Q => fix_need_to_split_q,
      R => \^sr\(0)
    );
incr_need_to_split_q_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(0),
      I2 => num_transactions(2),
      I3 => num_transactions(1),
      I4 => \num_transactions_q[0]_i_1_n_0\,
      O => incr_need_to_split
    );
incr_need_to_split_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => incr_need_to_split,
      Q => incr_need_to_split_q,
      R => \^sr\(0)
    );
legal_wrap_len_q_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757FF57575757"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => legal_wrap_len_q_i_2_n_0,
      I4 => legal_wrap_len_q_i_3_n_0,
      I5 => legal_wrap_len_q_i_4_n_0,
      O => legal_wrap_len_q_i_1_n_0
    );
legal_wrap_len_q_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8F8F8F800"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awlen(5),
      I4 => s_axi_awlen(6),
      I5 => s_axi_awlen(7),
      O => legal_wrap_len_q_i_2_n_0
    );
legal_wrap_len_q_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      O => legal_wrap_len_q_i_3_n_0
    );
legal_wrap_len_q_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0111FFFF"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awsize(1),
      O => legal_wrap_len_q_i_4_n_0
    );
legal_wrap_len_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => legal_wrap_len_q_i_1_n_0,
      Q => legal_wrap_len_q,
      R => \^sr\(0)
    );
\m_axi_awaddr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAE2AA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[0]\,
      I1 => access_is_wrap_q,
      I2 => masked_addr_q(0),
      I3 => split_ongoing,
      I4 => access_is_incr_q,
      O => m_axi_awaddr(0)
    );
\m_axi_awaddr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(10),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(10),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      O => m_axi_awaddr(10)
    );
\m_axi_awaddr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(11),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(11),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[11]\,
      O => m_axi_awaddr(11)
    );
\m_axi_awaddr[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(12),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(12),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      O => m_axi_awaddr(12)
    );
\m_axi_awaddr[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(13),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(13),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      O => m_axi_awaddr(13)
    );
\m_axi_awaddr[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(14),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(14),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      O => m_axi_awaddr(14)
    );
\m_axi_awaddr[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(15),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(15),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      O => m_axi_awaddr(15)
    );
\m_axi_awaddr[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(16),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(16),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[16]\,
      O => m_axi_awaddr(16)
    );
\m_axi_awaddr[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(17),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(17),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[17]\,
      O => m_axi_awaddr(17)
    );
\m_axi_awaddr[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(18),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(18),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[18]\,
      O => m_axi_awaddr(18)
    );
\m_axi_awaddr[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(19),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(19),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[19]\,
      O => m_axi_awaddr(19)
    );
\m_axi_awaddr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAE2AA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[1]\,
      I1 => access_is_wrap_q,
      I2 => masked_addr_q(1),
      I3 => split_ongoing,
      I4 => access_is_incr_q,
      O => m_axi_awaddr(1)
    );
\m_axi_awaddr[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(20),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(20),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[20]\,
      O => m_axi_awaddr(20)
    );
\m_axi_awaddr[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(21),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(21),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[21]\,
      O => m_axi_awaddr(21)
    );
\m_axi_awaddr[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(22),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(22),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[22]\,
      O => m_axi_awaddr(22)
    );
\m_axi_awaddr[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(23),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(23),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[23]\,
      O => m_axi_awaddr(23)
    );
\m_axi_awaddr[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(24),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(24),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[24]\,
      O => m_axi_awaddr(24)
    );
\m_axi_awaddr[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(25),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(25),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[25]\,
      O => m_axi_awaddr(25)
    );
\m_axi_awaddr[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(26),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(26),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[26]\,
      O => m_axi_awaddr(26)
    );
\m_axi_awaddr[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(27),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(27),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[27]\,
      O => m_axi_awaddr(27)
    );
\m_axi_awaddr[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(28),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(28),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[28]\,
      O => m_axi_awaddr(28)
    );
\m_axi_awaddr[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(29),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(29),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[29]\,
      O => m_axi_awaddr(29)
    );
\m_axi_awaddr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAE2AA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      I1 => access_is_wrap_q,
      I2 => masked_addr_q(2),
      I3 => split_ongoing,
      I4 => access_is_incr_q,
      O => m_axi_awaddr(2)
    );
\m_axi_awaddr[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(30),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(30),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[30]\,
      O => m_axi_awaddr(30)
    );
\m_axi_awaddr[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(31),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(31),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[31]\,
      O => m_axi_awaddr(31)
    );
\m_axi_awaddr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAE2AA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      I1 => access_is_wrap_q,
      I2 => masked_addr_q(3),
      I3 => split_ongoing,
      I4 => access_is_incr_q,
      O => m_axi_awaddr(3)
    );
\m_axi_awaddr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8B8F0F0F0F0"
    )
        port map (
      I0 => masked_addr_q(4),
      I1 => access_is_wrap_q,
      I2 => \S_AXI_AADDR_Q_reg_n_0_[4]\,
      I3 => next_mi_addr(4),
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => m_axi_awaddr(4)
    );
\m_axi_awaddr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8B8F0F0F0F0"
    )
        port map (
      I0 => masked_addr_q(5),
      I1 => access_is_wrap_q,
      I2 => \S_AXI_AADDR_Q_reg_n_0_[5]\,
      I3 => next_mi_addr(5),
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => m_axi_awaddr(5)
    );
\m_axi_awaddr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8B8F0F0F0F0"
    )
        port map (
      I0 => masked_addr_q(6),
      I1 => access_is_wrap_q,
      I2 => \S_AXI_AADDR_Q_reg_n_0_[6]\,
      I3 => next_mi_addr(6),
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => m_axi_awaddr(6)
    );
\m_axi_awaddr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(7),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(7),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[7]\,
      O => m_axi_awaddr(7)
    );
\m_axi_awaddr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(8),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(8),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[8]\,
      O => m_axi_awaddr(8)
    );
\m_axi_awaddr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(9),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(9),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[9]\,
      O => m_axi_awaddr(9)
    );
\m_axi_awburst[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEFEE"
    )
        port map (
      I0 => S_AXI_ABURST_Q(0),
      I1 => access_is_fix_q,
      I2 => legal_wrap_len_q,
      I3 => access_is_wrap_q,
      I4 => access_fit_mi_side_q,
      O => m_axi_awburst(0)
    );
\m_axi_awburst[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2022"
    )
        port map (
      I0 => S_AXI_ABURST_Q(1),
      I1 => access_is_fix_q,
      I2 => legal_wrap_len_q,
      I3 => access_is_wrap_q,
      I4 => access_fit_mi_side_q,
      O => m_axi_awburst(1)
    );
\m_axi_awlock[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => S_AXI_ALOCK_Q(0),
      I1 => wrap_need_to_split_q,
      I2 => incr_need_to_split_q,
      I3 => fix_need_to_split_q,
      O => m_axi_awlock(0)
    );
\masked_addr_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(0),
      O => masked_addr(0)
    );
\masked_addr_q[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002AAAAAAA2AAA"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(7),
      I4 => s_axi_awsize(2),
      I5 => \masked_addr_q[10]_i_2_n_0\,
      O => masked_addr(10)
    );
\masked_addr_q[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(4),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(5),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(6),
      O => \masked_addr_q[10]_i_2_n_0\
    );
\masked_addr_q[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => s_axi_awsize(2),
      I2 => \masked_addr_q[11]_i_2_n_0\,
      O => masked_addr(11)
    );
\masked_addr_q[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awlen(5),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(6),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(7),
      O => \masked_addr_q[11]_i_2_n_0\
    );
\masked_addr_q[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(12),
      I1 => \num_transactions_q[0]_i_1_n_0\,
      O => masked_addr(12)
    );
\masked_addr_q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202AAAAAAAAAAAAA"
    )
        port map (
      I0 => s_axi_awaddr(13),
      I1 => s_axi_awlen(6),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(7),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => masked_addr(13)
    );
\masked_addr_q[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => s_axi_awaddr(14),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(7),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      O => masked_addr(14)
    );
\masked_addr_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000020202"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(1),
      O => masked_addr(1)
    );
\masked_addr_q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \masked_addr_q[6]_i_2_n_0\,
      I2 => s_axi_awsize(2),
      O => masked_addr(2)
    );
\masked_addr_q[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \masked_addr_q[7]_i_2_n_0\,
      I2 => s_axi_awsize(2),
      O => masked_addr(3)
    );
\masked_addr_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020202020202A2"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \masked_addr_q[8]_i_3_n_0\,
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(0),
      O => masked_addr(4)
    );
\masked_addr_q[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => cmd_mask_i(5),
      O => masked_addr(5)
    );
\masked_addr_q[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAEFFFFFEAE0000"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awlen(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awsize(2),
      I5 => \masked_addr_q[9]_i_3_n_0\,
      O => cmd_mask_i(5)
    );
\masked_addr_q[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4700"
    )
        port map (
      I0 => \masked_addr_q[6]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => \masked_addr_q[10]_i_2_n_0\,
      I3 => s_axi_awaddr(6),
      O => masked_addr(6)
    );
\masked_addr_q[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awlen(1),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(2),
      O => \masked_addr_q[6]_i_2_n_0\
    );
\masked_addr_q[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \masked_addr_q[11]_i_2_n_0\,
      I2 => s_axi_awsize(2),
      I3 => \masked_addr_q[7]_i_2_n_0\,
      O => masked_addr(7)
    );
\masked_addr_q[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awlen(1),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(2),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(3),
      O => \masked_addr_q[7]_i_2_n_0\
    );
\masked_addr_q[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \masked_addr_q[8]_i_2_n_0\,
      I2 => s_axi_awsize(2),
      I3 => \masked_addr_q[8]_i_3_n_0\,
      O => masked_addr(8)
    );
\masked_addr_q[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => s_axi_awlen(6),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(7),
      O => \masked_addr_q[8]_i_2_n_0\
    );
\masked_addr_q[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(3),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(4),
      O => \masked_addr_q[8]_i_3_n_0\
    );
\masked_addr_q[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \masked_addr_q[9]_i_2_n_0\,
      O => masked_addr(9)
    );
\masked_addr_q[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B888888888"
    )
        port map (
      I0 => \masked_addr_q[9]_i_3_n_0\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awlen(7),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(6),
      I5 => s_axi_awsize(1),
      O => \masked_addr_q[9]_i_2_n_0\
    );
\masked_addr_q[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(4),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(5),
      O => \masked_addr_q[9]_i_3_n_0\
    );
\masked_addr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(0),
      Q => masked_addr_q(0),
      R => \^sr\(0)
    );
\masked_addr_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(10),
      Q => masked_addr_q(10),
      R => \^sr\(0)
    );
\masked_addr_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(11),
      Q => masked_addr_q(11),
      R => \^sr\(0)
    );
\masked_addr_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(12),
      Q => masked_addr_q(12),
      R => \^sr\(0)
    );
\masked_addr_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(13),
      Q => masked_addr_q(13),
      R => \^sr\(0)
    );
\masked_addr_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(14),
      Q => masked_addr_q(14),
      R => \^sr\(0)
    );
\masked_addr_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(15),
      Q => masked_addr_q(15),
      R => \^sr\(0)
    );
\masked_addr_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(16),
      Q => masked_addr_q(16),
      R => \^sr\(0)
    );
\masked_addr_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(17),
      Q => masked_addr_q(17),
      R => \^sr\(0)
    );
\masked_addr_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(18),
      Q => masked_addr_q(18),
      R => \^sr\(0)
    );
\masked_addr_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(19),
      Q => masked_addr_q(19),
      R => \^sr\(0)
    );
\masked_addr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(1),
      Q => masked_addr_q(1),
      R => \^sr\(0)
    );
\masked_addr_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(20),
      Q => masked_addr_q(20),
      R => \^sr\(0)
    );
\masked_addr_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(21),
      Q => masked_addr_q(21),
      R => \^sr\(0)
    );
\masked_addr_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(22),
      Q => masked_addr_q(22),
      R => \^sr\(0)
    );
\masked_addr_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(23),
      Q => masked_addr_q(23),
      R => \^sr\(0)
    );
\masked_addr_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(24),
      Q => masked_addr_q(24),
      R => \^sr\(0)
    );
\masked_addr_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(25),
      Q => masked_addr_q(25),
      R => \^sr\(0)
    );
\masked_addr_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(26),
      Q => masked_addr_q(26),
      R => \^sr\(0)
    );
\masked_addr_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(27),
      Q => masked_addr_q(27),
      R => \^sr\(0)
    );
\masked_addr_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(28),
      Q => masked_addr_q(28),
      R => \^sr\(0)
    );
\masked_addr_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(29),
      Q => masked_addr_q(29),
      R => \^sr\(0)
    );
\masked_addr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(2),
      Q => masked_addr_q(2),
      R => \^sr\(0)
    );
\masked_addr_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(30),
      Q => masked_addr_q(30),
      R => \^sr\(0)
    );
\masked_addr_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(31),
      Q => masked_addr_q(31),
      R => \^sr\(0)
    );
\masked_addr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(3),
      Q => masked_addr_q(3),
      R => \^sr\(0)
    );
\masked_addr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(4),
      Q => masked_addr_q(4),
      R => \^sr\(0)
    );
\masked_addr_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(5),
      Q => masked_addr_q(5),
      R => \^sr\(0)
    );
\masked_addr_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(6),
      Q => masked_addr_q(6),
      R => \^sr\(0)
    );
\masked_addr_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(7),
      Q => masked_addr_q(7),
      R => \^sr\(0)
    );
\masked_addr_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(8),
      Q => masked_addr_q(8),
      R => \^sr\(0)
    );
\masked_addr_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(9),
      Q => masked_addr_q(9),
      R => \^sr\(0)
    );
next_mi_addr0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => next_mi_addr0_carry_n_0,
      CO(6) => next_mi_addr0_carry_n_1,
      CO(5) => next_mi_addr0_carry_n_2,
      CO(4) => next_mi_addr0_carry_n_3,
      CO(3) => NLW_next_mi_addr0_carry_CO_UNCONNECTED(3),
      CO(2) => next_mi_addr0_carry_n_5,
      CO(1) => next_mi_addr0_carry_n_6,
      CO(0) => next_mi_addr0_carry_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => next_mi_addr0_carry_i_1_n_0,
      DI(0) => '0',
      O(7) => next_mi_addr0_carry_n_8,
      O(6) => next_mi_addr0_carry_n_9,
      O(5) => next_mi_addr0_carry_n_10,
      O(4) => next_mi_addr0_carry_n_11,
      O(3) => next_mi_addr0_carry_n_12,
      O(2) => next_mi_addr0_carry_n_13,
      O(1) => next_mi_addr0_carry_n_14,
      O(0) => next_mi_addr0_carry_n_15,
      S(7) => next_mi_addr0_carry_i_2_n_0,
      S(6) => next_mi_addr0_carry_i_3_n_0,
      S(5) => next_mi_addr0_carry_i_4_n_0,
      S(4) => next_mi_addr0_carry_i_5_n_0,
      S(3) => next_mi_addr0_carry_i_6_n_0,
      S(2) => next_mi_addr0_carry_i_7_n_0,
      S(1) => next_mi_addr0_carry_i_8_n_0,
      S(0) => next_mi_addr0_carry_i_9_n_0
    );
\next_mi_addr0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => next_mi_addr0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \next_mi_addr0_carry__0_n_0\,
      CO(6) => \next_mi_addr0_carry__0_n_1\,
      CO(5) => \next_mi_addr0_carry__0_n_2\,
      CO(4) => \next_mi_addr0_carry__0_n_3\,
      CO(3) => \NLW_next_mi_addr0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \next_mi_addr0_carry__0_n_5\,
      CO(1) => \next_mi_addr0_carry__0_n_6\,
      CO(0) => \next_mi_addr0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \next_mi_addr0_carry__0_n_8\,
      O(6) => \next_mi_addr0_carry__0_n_9\,
      O(5) => \next_mi_addr0_carry__0_n_10\,
      O(4) => \next_mi_addr0_carry__0_n_11\,
      O(3) => \next_mi_addr0_carry__0_n_12\,
      O(2) => \next_mi_addr0_carry__0_n_13\,
      O(1) => \next_mi_addr0_carry__0_n_14\,
      O(0) => \next_mi_addr0_carry__0_n_15\,
      S(7) => \next_mi_addr0_carry__0_i_1_n_0\,
      S(6) => \next_mi_addr0_carry__0_i_2_n_0\,
      S(5) => \next_mi_addr0_carry__0_i_3_n_0\,
      S(4) => \next_mi_addr0_carry__0_i_4_n_0\,
      S(3) => \next_mi_addr0_carry__0_i_5_n_0\,
      S(2) => \next_mi_addr0_carry__0_i_6_n_0\,
      S(1) => \next_mi_addr0_carry__0_i_7_n_0\,
      S(0) => \next_mi_addr0_carry__0_i_8_n_0\
    );
\next_mi_addr0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[26]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(26),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(26),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__0_i_1_n_0\
    );
\next_mi_addr0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[25]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(25),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(25),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__0_i_2_n_0\
    );
\next_mi_addr0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[24]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(24),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(24),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__0_i_3_n_0\
    );
\next_mi_addr0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[23]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(23),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(23),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__0_i_4_n_0\
    );
\next_mi_addr0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[22]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(22),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(22),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__0_i_5_n_0\
    );
\next_mi_addr0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[21]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(21),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(21),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__0_i_6_n_0\
    );
\next_mi_addr0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[20]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(20),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(20),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__0_i_7_n_0\
    );
\next_mi_addr0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[19]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(19),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(19),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__0_i_8_n_0\
    );
\next_mi_addr0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \next_mi_addr0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_next_mi_addr0_carry__1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \next_mi_addr0_carry__1_n_5\,
      CO(1) => \next_mi_addr0_carry__1_n_6\,
      CO(0) => \next_mi_addr0_carry__1_n_7\,
      DI(7 downto 5) => \NLW_next_mi_addr0_carry__1_DI_UNCONNECTED\(7 downto 5),
      DI(4 downto 0) => B"00000",
      O(7 downto 5) => \NLW_next_mi_addr0_carry__1_O_UNCONNECTED\(7 downto 5),
      O(4) => \next_mi_addr0_carry__1_n_11\,
      O(3) => \next_mi_addr0_carry__1_n_12\,
      O(2) => \next_mi_addr0_carry__1_n_13\,
      O(1) => \next_mi_addr0_carry__1_n_14\,
      O(0) => \next_mi_addr0_carry__1_n_15\,
      S(7 downto 5) => \NLW_next_mi_addr0_carry__1_S_UNCONNECTED\(7 downto 5),
      S(4) => \next_mi_addr0_carry__1_i_1_n_0\,
      S(3) => \next_mi_addr0_carry__1_i_2_n_0\,
      S(2) => \next_mi_addr0_carry__1_i_3_n_0\,
      S(1) => \next_mi_addr0_carry__1_i_4_n_0\,
      S(0) => \next_mi_addr0_carry__1_i_5_n_0\
    );
\next_mi_addr0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[31]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(31),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(31),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__1_i_1_n_0\
    );
\next_mi_addr0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[30]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(30),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(30),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__1_i_2_n_0\
    );
\next_mi_addr0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[29]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(29),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(29),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__1_i_3_n_0\
    );
\next_mi_addr0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[28]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(28),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(28),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__1_i_4_n_0\
    );
\next_mi_addr0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[27]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(27),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(27),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr0_carry__1_i_5_n_0\
    );
next_mi_addr0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(12),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(12),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => next_mi_addr0_carry_i_1_n_0
    );
next_mi_addr0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[18]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(18),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(18),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => next_mi_addr0_carry_i_2_n_0
    );
next_mi_addr0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[17]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(17),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(17),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => next_mi_addr0_carry_i_3_n_0
    );
next_mi_addr0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[16]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(16),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(16),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => next_mi_addr0_carry_i_4_n_0
    );
next_mi_addr0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(15),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(15),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => next_mi_addr0_carry_i_5_n_0
    );
next_mi_addr0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(14),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(14),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => next_mi_addr0_carry_i_6_n_0
    );
next_mi_addr0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(13),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(13),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => next_mi_addr0_carry_i_7_n_0
    );
next_mi_addr0_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"757F7575757F7F7F"
    )
        port map (
      I0 => \split_addr_mask_q_reg_n_0_[31]\,
      I1 => next_mi_addr(12),
      I2 => cmd_queue_n_25,
      I3 => masked_addr_q(12),
      I4 => cmd_queue_n_24,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      O => next_mi_addr0_carry_i_8_n_0
    );
next_mi_addr0_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[11]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(11),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(11),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => next_mi_addr0_carry_i_9_n_0
    );
\next_mi_addr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(10),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(10),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr[10]_i_1_n_0\
    );
\next_mi_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2808080A280"
    )
        port map (
      I0 => \split_addr_mask_q_reg_n_0_[4]\,
      I1 => cmd_queue_n_25,
      I2 => next_mi_addr(4),
      I3 => \S_AXI_AADDR_Q_reg_n_0_[4]\,
      I4 => cmd_queue_n_24,
      I5 => masked_addr_q(4),
      O => pre_mi_addr(4)
    );
\next_mi_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2808080A280"
    )
        port map (
      I0 => \split_addr_mask_q_reg_n_0_[5]\,
      I1 => cmd_queue_n_25,
      I2 => next_mi_addr(5),
      I3 => \S_AXI_AADDR_Q_reg_n_0_[5]\,
      I4 => cmd_queue_n_24,
      I5 => masked_addr_q(5),
      O => pre_mi_addr(5)
    );
\next_mi_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2808080A280"
    )
        port map (
      I0 => \split_addr_mask_q_reg_n_0_[6]\,
      I1 => cmd_queue_n_25,
      I2 => next_mi_addr(6),
      I3 => \S_AXI_AADDR_Q_reg_n_0_[6]\,
      I4 => cmd_queue_n_24,
      I5 => masked_addr_q(6),
      O => pre_mi_addr(6)
    );
\next_mi_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[7]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(7),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(7),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr[7]_i_1_n_0\
    );
\next_mi_addr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[8]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(8),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(8),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr[8]_i_1_n_0\
    );
\next_mi_addr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[9]\,
      I1 => cmd_queue_n_24,
      I2 => masked_addr_q(9),
      I3 => cmd_queue_n_25,
      I4 => next_mi_addr(9),
      I5 => \split_addr_mask_q_reg_n_0_[31]\,
      O => \next_mi_addr[9]_i_1_n_0\
    );
\next_mi_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr[10]_i_1_n_0\,
      Q => next_mi_addr(10),
      R => \^sr\(0)
    );
\next_mi_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_15,
      Q => next_mi_addr(11),
      R => \^sr\(0)
    );
\next_mi_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_14,
      Q => next_mi_addr(12),
      R => \^sr\(0)
    );
\next_mi_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_13,
      Q => next_mi_addr(13),
      R => \^sr\(0)
    );
\next_mi_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_12,
      Q => next_mi_addr(14),
      R => \^sr\(0)
    );
\next_mi_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_11,
      Q => next_mi_addr(15),
      R => \^sr\(0)
    );
\next_mi_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_10,
      Q => next_mi_addr(16),
      R => \^sr\(0)
    );
\next_mi_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_9,
      Q => next_mi_addr(17),
      R => \^sr\(0)
    );
\next_mi_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_8,
      Q => next_mi_addr(18),
      R => \^sr\(0)
    );
\next_mi_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_15\,
      Q => next_mi_addr(19),
      R => \^sr\(0)
    );
\next_mi_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_14\,
      Q => next_mi_addr(20),
      R => \^sr\(0)
    );
\next_mi_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_13\,
      Q => next_mi_addr(21),
      R => \^sr\(0)
    );
\next_mi_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_12\,
      Q => next_mi_addr(22),
      R => \^sr\(0)
    );
\next_mi_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_11\,
      Q => next_mi_addr(23),
      R => \^sr\(0)
    );
\next_mi_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_10\,
      Q => next_mi_addr(24),
      R => \^sr\(0)
    );
\next_mi_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_9\,
      Q => next_mi_addr(25),
      R => \^sr\(0)
    );
\next_mi_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_8\,
      Q => next_mi_addr(26),
      R => \^sr\(0)
    );
\next_mi_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_15\,
      Q => next_mi_addr(27),
      R => \^sr\(0)
    );
\next_mi_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_14\,
      Q => next_mi_addr(28),
      R => \^sr\(0)
    );
\next_mi_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_13\,
      Q => next_mi_addr(29),
      R => \^sr\(0)
    );
\next_mi_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_12\,
      Q => next_mi_addr(30),
      R => \^sr\(0)
    );
\next_mi_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_11\,
      Q => next_mi_addr(31),
      R => \^sr\(0)
    );
\next_mi_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => pre_mi_addr(4),
      Q => next_mi_addr(4),
      R => \^sr\(0)
    );
\next_mi_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => pre_mi_addr(5),
      Q => next_mi_addr(5),
      R => \^sr\(0)
    );
\next_mi_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => pre_mi_addr(6),
      Q => next_mi_addr(6),
      R => \^sr\(0)
    );
\next_mi_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr[7]_i_1_n_0\,
      Q => next_mi_addr(7),
      R => \^sr\(0)
    );
\next_mi_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr[8]_i_1_n_0\,
      Q => next_mi_addr(8),
      R => \^sr\(0)
    );
\next_mi_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr[9]_i_1_n_0\,
      Q => next_mi_addr(9),
      R => \^sr\(0)
    );
\num_transactions_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(6),
      I4 => s_axi_awlen(5),
      I5 => s_axi_awsize(2),
      O => \num_transactions_q[0]_i_1_n_0\
    );
\num_transactions_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awlen(7),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(6),
      O => num_transactions(1)
    );
\num_transactions_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awlen(7),
      I3 => s_axi_awsize(0),
      O => num_transactions(2)
    );
\num_transactions_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \num_transactions_q[0]_i_1_n_0\,
      Q => \num_transactions_q_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\num_transactions_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => num_transactions(1),
      Q => \num_transactions_q_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\num_transactions_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => num_transactions(2),
      Q => \num_transactions_q_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\pushed_commands[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pushed_commands_reg__0\(0),
      O => p_0_in(0)
    );
\pushed_commands[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pushed_commands_reg__0\(1),
      I1 => \pushed_commands_reg__0\(0),
      O => p_0_in(1)
    );
\pushed_commands[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pushed_commands_reg__0\(2),
      I1 => \pushed_commands_reg__0\(0),
      I2 => \pushed_commands_reg__0\(1),
      O => p_0_in(2)
    );
\pushed_commands[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \pushed_commands_reg__0\(3),
      I1 => \pushed_commands_reg__0\(1),
      I2 => \pushed_commands_reg__0\(0),
      I3 => \pushed_commands_reg__0\(2),
      O => p_0_in(3)
    );
\pushed_commands[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pushed_commands_reg__0\(4),
      I1 => \pushed_commands_reg__0\(2),
      I2 => \pushed_commands_reg__0\(0),
      I3 => \pushed_commands_reg__0\(1),
      I4 => \pushed_commands_reg__0\(3),
      O => p_0_in(4)
    );
\pushed_commands[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pushed_commands_reg__0\(5),
      I1 => \pushed_commands_reg__0\(3),
      I2 => \pushed_commands_reg__0\(1),
      I3 => \pushed_commands_reg__0\(0),
      I4 => \pushed_commands_reg__0\(2),
      I5 => \pushed_commands_reg__0\(4),
      O => p_0_in(5)
    );
\pushed_commands[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pushed_commands_reg__0\(6),
      I1 => \pushed_commands[7]_i_3_n_0\,
      O => p_0_in(6)
    );
\pushed_commands[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \out\,
      O => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pushed_commands_reg__0\(7),
      I1 => \pushed_commands[7]_i_3_n_0\,
      I2 => \pushed_commands_reg__0\(6),
      O => p_0_in(7)
    );
\pushed_commands[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \pushed_commands_reg__0\(5),
      I1 => \pushed_commands_reg__0\(3),
      I2 => \pushed_commands_reg__0\(1),
      I3 => \pushed_commands_reg__0\(0),
      I4 => \pushed_commands_reg__0\(2),
      I5 => \pushed_commands_reg__0\(4),
      O => \pushed_commands[7]_i_3_n_0\
    );
\pushed_commands_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(0),
      Q => \pushed_commands_reg__0\(0),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(1),
      Q => \pushed_commands_reg__0\(1),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(2),
      Q => \pushed_commands_reg__0\(2),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(3),
      Q => \pushed_commands_reg__0\(3),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(4),
      Q => \pushed_commands_reg__0\(4),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(5),
      Q => \pushed_commands_reg__0\(5),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(6),
      Q => \pushed_commands_reg__0\(6),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(7),
      Q => \pushed_commands_reg__0\(7),
      R => \pushed_commands[7]_i_1_n_0\
    );
\queue_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \USE_B_CHANNEL.cmd_b_queue_n_21\,
      Q => \^s_axi_bid\(0),
      R => \^sr\(0)
    );
si_full_size_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => fix_len(2),
      Q => si_full_size_q,
      R => \^sr\(0)
    );
\split_addr_mask_q[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => split_addr_mask(0)
    );
\split_addr_mask_q[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      O => split_addr_mask(1)
    );
\split_addr_mask_q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => split_addr_mask(2)
    );
\split_addr_mask_q[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awsize(2),
      O => split_addr_mask(3)
    );
\split_addr_mask_q[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => \split_addr_mask_q[4]_i_1_n_0\
    );
\split_addr_mask_q[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      O => split_addr_mask(5)
    );
\split_addr_mask_q[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      O => split_addr_mask(6)
    );
\split_addr_mask_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => split_addr_mask(0),
      Q => \split_addr_mask_q_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\split_addr_mask_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => split_addr_mask(1),
      Q => \split_addr_mask_q_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\split_addr_mask_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => split_addr_mask(2),
      Q => \split_addr_mask_q_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\split_addr_mask_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => '1',
      Q => \split_addr_mask_q_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\split_addr_mask_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => split_addr_mask(3),
      Q => \split_addr_mask_q_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\split_addr_mask_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \split_addr_mask_q[4]_i_1_n_0\,
      Q => \split_addr_mask_q_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\split_addr_mask_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => split_addr_mask(5),
      Q => \split_addr_mask_q_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\split_addr_mask_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => split_addr_mask(6),
      Q => \split_addr_mask_q_reg_n_0_[6]\,
      R => \^sr\(0)
    );
split_ongoing_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => cmd_split_i,
      Q => split_ongoing,
      R => \^sr\(0)
    );
\unalignment_addr_q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      O => unalignment_addr(0)
    );
\unalignment_addr_q[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      O => unalignment_addr(1)
    );
\unalignment_addr_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(1),
      O => unalignment_addr(2)
    );
\unalignment_addr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => unalignment_addr(0),
      Q => unalignment_addr_q(0),
      R => \^sr\(0)
    );
\unalignment_addr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => unalignment_addr(1),
      Q => unalignment_addr_q(1),
      R => \^sr\(0)
    );
\unalignment_addr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => unalignment_addr(2),
      Q => unalignment_addr_q(2),
      R => \^sr\(0)
    );
wrap_need_to_split_q_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => wrap_need_to_split_q_i_2_n_0,
      I1 => wrap_need_to_split_q_i_3_n_0,
      I2 => s_axi_awburst(1),
      I3 => s_axi_awburst(0),
      I4 => legal_wrap_len_q_i_1_n_0,
      O => wrap_need_to_split
    );
wrap_need_to_split_q_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => cmd_mask_i(4),
      I2 => s_axi_awaddr(5),
      I3 => cmd_mask_i(5),
      I4 => wrap_unaligned_len(2),
      I5 => wrap_unaligned_len(3),
      O => wrap_need_to_split_q_i_2_n_0
    );
wrap_need_to_split_q_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => wrap_unaligned_len(4),
      I1 => s_axi_awaddr(9),
      I2 => \masked_addr_q[9]_i_2_n_0\,
      I3 => s_axi_awaddr(10),
      I4 => wrap_need_to_split_q_i_4_n_0,
      I5 => wrap_unaligned_len(7),
      O => wrap_need_to_split_q_i_3_n_0
    );
wrap_need_to_split_q_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \masked_addr_q[10]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awlen(7),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(1),
      O => wrap_need_to_split_q_i_4_n_0
    );
wrap_need_to_split_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_need_to_split,
      Q => wrap_need_to_split_q,
      R => \^sr\(0)
    );
\wrap_rest_len[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wrap_unaligned_len_q(0),
      O => wrap_rest_len0(0)
    );
\wrap_rest_len[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wrap_unaligned_len_q(1),
      I1 => wrap_unaligned_len_q(0),
      O => \wrap_rest_len[1]_i_1_n_0\
    );
\wrap_rest_len[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => wrap_unaligned_len_q(2),
      I1 => wrap_unaligned_len_q(0),
      I2 => wrap_unaligned_len_q(1),
      O => wrap_rest_len0(2)
    );
\wrap_rest_len[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => wrap_unaligned_len_q(3),
      I1 => wrap_unaligned_len_q(2),
      I2 => wrap_unaligned_len_q(1),
      I3 => wrap_unaligned_len_q(0),
      O => wrap_rest_len0(3)
    );
\wrap_rest_len[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => wrap_unaligned_len_q(4),
      I1 => wrap_unaligned_len_q(3),
      I2 => wrap_unaligned_len_q(0),
      I3 => wrap_unaligned_len_q(1),
      I4 => wrap_unaligned_len_q(2),
      O => wrap_rest_len0(4)
    );
\wrap_rest_len[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => wrap_unaligned_len_q(5),
      I1 => wrap_unaligned_len_q(4),
      I2 => wrap_unaligned_len_q(2),
      I3 => wrap_unaligned_len_q(1),
      I4 => wrap_unaligned_len_q(0),
      I5 => wrap_unaligned_len_q(3),
      O => wrap_rest_len0(5)
    );
\wrap_rest_len[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wrap_unaligned_len_q(6),
      I1 => \wrap_rest_len[7]_i_2_n_0\,
      O => wrap_rest_len0(6)
    );
\wrap_rest_len[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => wrap_unaligned_len_q(7),
      I1 => wrap_unaligned_len_q(6),
      I2 => \wrap_rest_len[7]_i_2_n_0\,
      O => wrap_rest_len0(7)
    );
\wrap_rest_len[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => wrap_unaligned_len_q(4),
      I1 => wrap_unaligned_len_q(2),
      I2 => wrap_unaligned_len_q(1),
      I3 => wrap_unaligned_len_q(0),
      I4 => wrap_unaligned_len_q(3),
      I5 => wrap_unaligned_len_q(5),
      O => \wrap_rest_len[7]_i_2_n_0\
    );
\wrap_rest_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(0),
      Q => wrap_rest_len(0),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wrap_rest_len[1]_i_1_n_0\,
      Q => wrap_rest_len(1),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(2),
      Q => wrap_rest_len(2),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(3),
      Q => wrap_rest_len(3),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(4),
      Q => wrap_rest_len(4),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(5),
      Q => wrap_rest_len(5),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(6),
      Q => wrap_rest_len(6),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(7),
      Q => wrap_rest_len(7),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8A808"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \masked_addr_q[8]_i_3_n_0\,
      I2 => s_axi_awsize(2),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(0),
      O => wrap_unaligned_len(0)
    );
\wrap_unaligned_len_q[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => cmd_mask_i(5),
      O => wrap_unaligned_len(1)
    );
\wrap_unaligned_len_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => \masked_addr_q[6]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => \masked_addr_q[10]_i_2_n_0\,
      I3 => s_axi_awaddr(6),
      O => wrap_unaligned_len(2)
    );
\wrap_unaligned_len_q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \masked_addr_q[11]_i_2_n_0\,
      I2 => s_axi_awsize(2),
      I3 => \masked_addr_q[7]_i_2_n_0\,
      O => wrap_unaligned_len(3)
    );
\wrap_unaligned_len_q[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \masked_addr_q[8]_i_2_n_0\,
      I2 => s_axi_awsize(2),
      I3 => \masked_addr_q[8]_i_3_n_0\,
      O => wrap_unaligned_len(4)
    );
\wrap_unaligned_len_q[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \masked_addr_q[9]_i_2_n_0\,
      O => wrap_unaligned_len(5)
    );
\wrap_unaligned_len_q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA800000008000"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(7),
      I4 => s_axi_awsize(2),
      I5 => \masked_addr_q[10]_i_2_n_0\,
      O => wrap_unaligned_len(6)
    );
\wrap_unaligned_len_q[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => s_axi_awsize(2),
      I2 => \masked_addr_q[11]_i_2_n_0\,
      O => wrap_unaligned_len(7)
    );
\wrap_unaligned_len_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(0),
      Q => wrap_unaligned_len_q(0),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(1),
      Q => wrap_unaligned_len_q(1),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(2),
      Q => wrap_unaligned_len_q(2),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(3),
      Q => wrap_unaligned_len_q(3),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(4),
      Q => wrap_unaligned_len_q(4),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(5),
      Q => wrap_unaligned_len_q(5),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(6),
      Q => wrap_unaligned_len_q(6),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(7),
      Q => wrap_unaligned_len_q(7),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_axi_downsizer is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    din : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_axi_downsizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_axi_downsizer is
  signal \USE_B_CHANNEL.cmd_b_queue/inst/empty\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_b_ready\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_b_repeat\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \USE_WRITE.wr_cmd_b_split\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_fix\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_length\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \USE_WRITE.write_addr_inst_n_10\ : STD_LOGIC;
  signal \USE_WRITE.write_data_inst_n_2\ : STD_LOGIC;
  signal current_word_1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal first_mi_word : STD_LOGIC;
  signal \^m_axi_wlast\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_2_in : STD_LOGIC;
begin
  m_axi_wlast <= \^m_axi_wlast\;
\USE_WRITE.USE_SPLIT.write_resp_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_b_downsizer
     port map (
      CLK => CLK,
      SR(0) => \USE_WRITE.write_addr_inst_n_10\,
      dout(8) => \USE_WRITE.wr_cmd_b_split\,
      dout(7 downto 0) => \USE_WRITE.wr_cmd_b_repeat\(7 downto 0),
      empty => \USE_B_CHANNEL.cmd_b_queue/inst/empty\,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      rd_en => \USE_WRITE.wr_cmd_b_ready\,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid
    );
\USE_WRITE.write_addr_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_a_downsizer
     port map (
      CLK => CLK,
      D(6 downto 0) => p_0_in(6 downto 0),
      E(0) => p_2_in,
      Q(6 downto 0) => current_word_1(6 downto 0),
      SR(0) => \USE_WRITE.write_addr_inst_n_10\,
      \current_word_1_reg[4]\(8) => \USE_WRITE.wr_cmd_fix\,
      \current_word_1_reg[4]\(7 downto 0) => \USE_WRITE.wr_cmd_length\(7 downto 0),
      din(10 downto 0) => din(10 downto 0),
      dout(8) => \USE_WRITE.wr_cmd_b_split\,
      dout(7 downto 0) => \USE_WRITE.wr_cmd_b_repeat\(7 downto 0),
      empty => \USE_B_CHANNEL.cmd_b_queue/inst/empty\,
      first_mi_word => first_mi_word,
      first_word_reg => \USE_WRITE.write_data_inst_n_2\,
      \goreg_dm.dout_i_reg[9]\ => \^m_axi_wlast\,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wdata(127 downto 0) => m_axi_wdata(127 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(15 downto 0) => m_axi_wstrb(15 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      \out\ => \out\,
      rd_en => \USE_WRITE.wr_cmd_b_ready\,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => E(0),
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_wdata(1023 downto 0) => s_axi_wdata(1023 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(127 downto 0) => s_axi_wstrb(127 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
\USE_WRITE.write_data_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_w_downsizer
     port map (
      CLK => CLK,
      D(6 downto 0) => p_0_in(6 downto 0),
      E(0) => p_2_in,
      Q(6 downto 0) => current_word_1(6 downto 0),
      SR(0) => \USE_WRITE.write_addr_inst_n_10\,
      \current_word_1_reg[6]_0\ => \USE_WRITE.write_data_inst_n_2\,
      first_mi_word => first_mi_word,
      \goreg_dm.dout_i_reg[37]\(8) => \USE_WRITE.wr_cmd_fix\,
      \goreg_dm.dout_i_reg[37]\(7 downto 0) => \USE_WRITE.wr_cmd_length\(7 downto 0),
      m_axi_wlast => \^m_axi_wlast\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 32;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 0;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is "zynquplus";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 0;
  attribute C_MAX_SPLIT_BEATS : integer;
  attribute C_MAX_SPLIT_BEATS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 256;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 2;
  attribute C_M_AXI_BYTES_LOG : integer;
  attribute C_M_AXI_BYTES_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 4;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 128;
  attribute C_PACKING_LEVEL : integer;
  attribute C_PACKING_LEVEL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 1;
  attribute C_RATIO : integer;
  attribute C_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 8;
  attribute C_RATIO_LOG : integer;
  attribute C_RATIO_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 3;
  attribute C_SUPPORTS_ID : integer;
  attribute C_SUPPORTS_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 1;
  attribute C_S_AXI_BYTES_LOG : integer;
  attribute C_S_AXI_BYTES_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 7;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 1024;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 2;
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 2;
  attribute P_MAX_SPLIT_BEATS : integer;
  attribute P_MAX_SPLIT_BEATS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top : entity is 256;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top is
  signal \<const0>\ : STD_LOGIC;
  attribute keep : string;
  attribute keep of m_axi_aclk : signal is "true";
  attribute keep of m_axi_aresetn : signal is "true";
  attribute keep of s_axi_aclk : signal is "true";
  attribute keep of s_axi_aresetn : signal is "true";
begin
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_rready <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_rdata(1023) <= \<const0>\;
  s_axi_rdata(1022) <= \<const0>\;
  s_axi_rdata(1021) <= \<const0>\;
  s_axi_rdata(1020) <= \<const0>\;
  s_axi_rdata(1019) <= \<const0>\;
  s_axi_rdata(1018) <= \<const0>\;
  s_axi_rdata(1017) <= \<const0>\;
  s_axi_rdata(1016) <= \<const0>\;
  s_axi_rdata(1015) <= \<const0>\;
  s_axi_rdata(1014) <= \<const0>\;
  s_axi_rdata(1013) <= \<const0>\;
  s_axi_rdata(1012) <= \<const0>\;
  s_axi_rdata(1011) <= \<const0>\;
  s_axi_rdata(1010) <= \<const0>\;
  s_axi_rdata(1009) <= \<const0>\;
  s_axi_rdata(1008) <= \<const0>\;
  s_axi_rdata(1007) <= \<const0>\;
  s_axi_rdata(1006) <= \<const0>\;
  s_axi_rdata(1005) <= \<const0>\;
  s_axi_rdata(1004) <= \<const0>\;
  s_axi_rdata(1003) <= \<const0>\;
  s_axi_rdata(1002) <= \<const0>\;
  s_axi_rdata(1001) <= \<const0>\;
  s_axi_rdata(1000) <= \<const0>\;
  s_axi_rdata(999) <= \<const0>\;
  s_axi_rdata(998) <= \<const0>\;
  s_axi_rdata(997) <= \<const0>\;
  s_axi_rdata(996) <= \<const0>\;
  s_axi_rdata(995) <= \<const0>\;
  s_axi_rdata(994) <= \<const0>\;
  s_axi_rdata(993) <= \<const0>\;
  s_axi_rdata(992) <= \<const0>\;
  s_axi_rdata(991) <= \<const0>\;
  s_axi_rdata(990) <= \<const0>\;
  s_axi_rdata(989) <= \<const0>\;
  s_axi_rdata(988) <= \<const0>\;
  s_axi_rdata(987) <= \<const0>\;
  s_axi_rdata(986) <= \<const0>\;
  s_axi_rdata(985) <= \<const0>\;
  s_axi_rdata(984) <= \<const0>\;
  s_axi_rdata(983) <= \<const0>\;
  s_axi_rdata(982) <= \<const0>\;
  s_axi_rdata(981) <= \<const0>\;
  s_axi_rdata(980) <= \<const0>\;
  s_axi_rdata(979) <= \<const0>\;
  s_axi_rdata(978) <= \<const0>\;
  s_axi_rdata(977) <= \<const0>\;
  s_axi_rdata(976) <= \<const0>\;
  s_axi_rdata(975) <= \<const0>\;
  s_axi_rdata(974) <= \<const0>\;
  s_axi_rdata(973) <= \<const0>\;
  s_axi_rdata(972) <= \<const0>\;
  s_axi_rdata(971) <= \<const0>\;
  s_axi_rdata(970) <= \<const0>\;
  s_axi_rdata(969) <= \<const0>\;
  s_axi_rdata(968) <= \<const0>\;
  s_axi_rdata(967) <= \<const0>\;
  s_axi_rdata(966) <= \<const0>\;
  s_axi_rdata(965) <= \<const0>\;
  s_axi_rdata(964) <= \<const0>\;
  s_axi_rdata(963) <= \<const0>\;
  s_axi_rdata(962) <= \<const0>\;
  s_axi_rdata(961) <= \<const0>\;
  s_axi_rdata(960) <= \<const0>\;
  s_axi_rdata(959) <= \<const0>\;
  s_axi_rdata(958) <= \<const0>\;
  s_axi_rdata(957) <= \<const0>\;
  s_axi_rdata(956) <= \<const0>\;
  s_axi_rdata(955) <= \<const0>\;
  s_axi_rdata(954) <= \<const0>\;
  s_axi_rdata(953) <= \<const0>\;
  s_axi_rdata(952) <= \<const0>\;
  s_axi_rdata(951) <= \<const0>\;
  s_axi_rdata(950) <= \<const0>\;
  s_axi_rdata(949) <= \<const0>\;
  s_axi_rdata(948) <= \<const0>\;
  s_axi_rdata(947) <= \<const0>\;
  s_axi_rdata(946) <= \<const0>\;
  s_axi_rdata(945) <= \<const0>\;
  s_axi_rdata(944) <= \<const0>\;
  s_axi_rdata(943) <= \<const0>\;
  s_axi_rdata(942) <= \<const0>\;
  s_axi_rdata(941) <= \<const0>\;
  s_axi_rdata(940) <= \<const0>\;
  s_axi_rdata(939) <= \<const0>\;
  s_axi_rdata(938) <= \<const0>\;
  s_axi_rdata(937) <= \<const0>\;
  s_axi_rdata(936) <= \<const0>\;
  s_axi_rdata(935) <= \<const0>\;
  s_axi_rdata(934) <= \<const0>\;
  s_axi_rdata(933) <= \<const0>\;
  s_axi_rdata(932) <= \<const0>\;
  s_axi_rdata(931) <= \<const0>\;
  s_axi_rdata(930) <= \<const0>\;
  s_axi_rdata(929) <= \<const0>\;
  s_axi_rdata(928) <= \<const0>\;
  s_axi_rdata(927) <= \<const0>\;
  s_axi_rdata(926) <= \<const0>\;
  s_axi_rdata(925) <= \<const0>\;
  s_axi_rdata(924) <= \<const0>\;
  s_axi_rdata(923) <= \<const0>\;
  s_axi_rdata(922) <= \<const0>\;
  s_axi_rdata(921) <= \<const0>\;
  s_axi_rdata(920) <= \<const0>\;
  s_axi_rdata(919) <= \<const0>\;
  s_axi_rdata(918) <= \<const0>\;
  s_axi_rdata(917) <= \<const0>\;
  s_axi_rdata(916) <= \<const0>\;
  s_axi_rdata(915) <= \<const0>\;
  s_axi_rdata(914) <= \<const0>\;
  s_axi_rdata(913) <= \<const0>\;
  s_axi_rdata(912) <= \<const0>\;
  s_axi_rdata(911) <= \<const0>\;
  s_axi_rdata(910) <= \<const0>\;
  s_axi_rdata(909) <= \<const0>\;
  s_axi_rdata(908) <= \<const0>\;
  s_axi_rdata(907) <= \<const0>\;
  s_axi_rdata(906) <= \<const0>\;
  s_axi_rdata(905) <= \<const0>\;
  s_axi_rdata(904) <= \<const0>\;
  s_axi_rdata(903) <= \<const0>\;
  s_axi_rdata(902) <= \<const0>\;
  s_axi_rdata(901) <= \<const0>\;
  s_axi_rdata(900) <= \<const0>\;
  s_axi_rdata(899) <= \<const0>\;
  s_axi_rdata(898) <= \<const0>\;
  s_axi_rdata(897) <= \<const0>\;
  s_axi_rdata(896) <= \<const0>\;
  s_axi_rdata(895) <= \<const0>\;
  s_axi_rdata(894) <= \<const0>\;
  s_axi_rdata(893) <= \<const0>\;
  s_axi_rdata(892) <= \<const0>\;
  s_axi_rdata(891) <= \<const0>\;
  s_axi_rdata(890) <= \<const0>\;
  s_axi_rdata(889) <= \<const0>\;
  s_axi_rdata(888) <= \<const0>\;
  s_axi_rdata(887) <= \<const0>\;
  s_axi_rdata(886) <= \<const0>\;
  s_axi_rdata(885) <= \<const0>\;
  s_axi_rdata(884) <= \<const0>\;
  s_axi_rdata(883) <= \<const0>\;
  s_axi_rdata(882) <= \<const0>\;
  s_axi_rdata(881) <= \<const0>\;
  s_axi_rdata(880) <= \<const0>\;
  s_axi_rdata(879) <= \<const0>\;
  s_axi_rdata(878) <= \<const0>\;
  s_axi_rdata(877) <= \<const0>\;
  s_axi_rdata(876) <= \<const0>\;
  s_axi_rdata(875) <= \<const0>\;
  s_axi_rdata(874) <= \<const0>\;
  s_axi_rdata(873) <= \<const0>\;
  s_axi_rdata(872) <= \<const0>\;
  s_axi_rdata(871) <= \<const0>\;
  s_axi_rdata(870) <= \<const0>\;
  s_axi_rdata(869) <= \<const0>\;
  s_axi_rdata(868) <= \<const0>\;
  s_axi_rdata(867) <= \<const0>\;
  s_axi_rdata(866) <= \<const0>\;
  s_axi_rdata(865) <= \<const0>\;
  s_axi_rdata(864) <= \<const0>\;
  s_axi_rdata(863) <= \<const0>\;
  s_axi_rdata(862) <= \<const0>\;
  s_axi_rdata(861) <= \<const0>\;
  s_axi_rdata(860) <= \<const0>\;
  s_axi_rdata(859) <= \<const0>\;
  s_axi_rdata(858) <= \<const0>\;
  s_axi_rdata(857) <= \<const0>\;
  s_axi_rdata(856) <= \<const0>\;
  s_axi_rdata(855) <= \<const0>\;
  s_axi_rdata(854) <= \<const0>\;
  s_axi_rdata(853) <= \<const0>\;
  s_axi_rdata(852) <= \<const0>\;
  s_axi_rdata(851) <= \<const0>\;
  s_axi_rdata(850) <= \<const0>\;
  s_axi_rdata(849) <= \<const0>\;
  s_axi_rdata(848) <= \<const0>\;
  s_axi_rdata(847) <= \<const0>\;
  s_axi_rdata(846) <= \<const0>\;
  s_axi_rdata(845) <= \<const0>\;
  s_axi_rdata(844) <= \<const0>\;
  s_axi_rdata(843) <= \<const0>\;
  s_axi_rdata(842) <= \<const0>\;
  s_axi_rdata(841) <= \<const0>\;
  s_axi_rdata(840) <= \<const0>\;
  s_axi_rdata(839) <= \<const0>\;
  s_axi_rdata(838) <= \<const0>\;
  s_axi_rdata(837) <= \<const0>\;
  s_axi_rdata(836) <= \<const0>\;
  s_axi_rdata(835) <= \<const0>\;
  s_axi_rdata(834) <= \<const0>\;
  s_axi_rdata(833) <= \<const0>\;
  s_axi_rdata(832) <= \<const0>\;
  s_axi_rdata(831) <= \<const0>\;
  s_axi_rdata(830) <= \<const0>\;
  s_axi_rdata(829) <= \<const0>\;
  s_axi_rdata(828) <= \<const0>\;
  s_axi_rdata(827) <= \<const0>\;
  s_axi_rdata(826) <= \<const0>\;
  s_axi_rdata(825) <= \<const0>\;
  s_axi_rdata(824) <= \<const0>\;
  s_axi_rdata(823) <= \<const0>\;
  s_axi_rdata(822) <= \<const0>\;
  s_axi_rdata(821) <= \<const0>\;
  s_axi_rdata(820) <= \<const0>\;
  s_axi_rdata(819) <= \<const0>\;
  s_axi_rdata(818) <= \<const0>\;
  s_axi_rdata(817) <= \<const0>\;
  s_axi_rdata(816) <= \<const0>\;
  s_axi_rdata(815) <= \<const0>\;
  s_axi_rdata(814) <= \<const0>\;
  s_axi_rdata(813) <= \<const0>\;
  s_axi_rdata(812) <= \<const0>\;
  s_axi_rdata(811) <= \<const0>\;
  s_axi_rdata(810) <= \<const0>\;
  s_axi_rdata(809) <= \<const0>\;
  s_axi_rdata(808) <= \<const0>\;
  s_axi_rdata(807) <= \<const0>\;
  s_axi_rdata(806) <= \<const0>\;
  s_axi_rdata(805) <= \<const0>\;
  s_axi_rdata(804) <= \<const0>\;
  s_axi_rdata(803) <= \<const0>\;
  s_axi_rdata(802) <= \<const0>\;
  s_axi_rdata(801) <= \<const0>\;
  s_axi_rdata(800) <= \<const0>\;
  s_axi_rdata(799) <= \<const0>\;
  s_axi_rdata(798) <= \<const0>\;
  s_axi_rdata(797) <= \<const0>\;
  s_axi_rdata(796) <= \<const0>\;
  s_axi_rdata(795) <= \<const0>\;
  s_axi_rdata(794) <= \<const0>\;
  s_axi_rdata(793) <= \<const0>\;
  s_axi_rdata(792) <= \<const0>\;
  s_axi_rdata(791) <= \<const0>\;
  s_axi_rdata(790) <= \<const0>\;
  s_axi_rdata(789) <= \<const0>\;
  s_axi_rdata(788) <= \<const0>\;
  s_axi_rdata(787) <= \<const0>\;
  s_axi_rdata(786) <= \<const0>\;
  s_axi_rdata(785) <= \<const0>\;
  s_axi_rdata(784) <= \<const0>\;
  s_axi_rdata(783) <= \<const0>\;
  s_axi_rdata(782) <= \<const0>\;
  s_axi_rdata(781) <= \<const0>\;
  s_axi_rdata(780) <= \<const0>\;
  s_axi_rdata(779) <= \<const0>\;
  s_axi_rdata(778) <= \<const0>\;
  s_axi_rdata(777) <= \<const0>\;
  s_axi_rdata(776) <= \<const0>\;
  s_axi_rdata(775) <= \<const0>\;
  s_axi_rdata(774) <= \<const0>\;
  s_axi_rdata(773) <= \<const0>\;
  s_axi_rdata(772) <= \<const0>\;
  s_axi_rdata(771) <= \<const0>\;
  s_axi_rdata(770) <= \<const0>\;
  s_axi_rdata(769) <= \<const0>\;
  s_axi_rdata(768) <= \<const0>\;
  s_axi_rdata(767) <= \<const0>\;
  s_axi_rdata(766) <= \<const0>\;
  s_axi_rdata(765) <= \<const0>\;
  s_axi_rdata(764) <= \<const0>\;
  s_axi_rdata(763) <= \<const0>\;
  s_axi_rdata(762) <= \<const0>\;
  s_axi_rdata(761) <= \<const0>\;
  s_axi_rdata(760) <= \<const0>\;
  s_axi_rdata(759) <= \<const0>\;
  s_axi_rdata(758) <= \<const0>\;
  s_axi_rdata(757) <= \<const0>\;
  s_axi_rdata(756) <= \<const0>\;
  s_axi_rdata(755) <= \<const0>\;
  s_axi_rdata(754) <= \<const0>\;
  s_axi_rdata(753) <= \<const0>\;
  s_axi_rdata(752) <= \<const0>\;
  s_axi_rdata(751) <= \<const0>\;
  s_axi_rdata(750) <= \<const0>\;
  s_axi_rdata(749) <= \<const0>\;
  s_axi_rdata(748) <= \<const0>\;
  s_axi_rdata(747) <= \<const0>\;
  s_axi_rdata(746) <= \<const0>\;
  s_axi_rdata(745) <= \<const0>\;
  s_axi_rdata(744) <= \<const0>\;
  s_axi_rdata(743) <= \<const0>\;
  s_axi_rdata(742) <= \<const0>\;
  s_axi_rdata(741) <= \<const0>\;
  s_axi_rdata(740) <= \<const0>\;
  s_axi_rdata(739) <= \<const0>\;
  s_axi_rdata(738) <= \<const0>\;
  s_axi_rdata(737) <= \<const0>\;
  s_axi_rdata(736) <= \<const0>\;
  s_axi_rdata(735) <= \<const0>\;
  s_axi_rdata(734) <= \<const0>\;
  s_axi_rdata(733) <= \<const0>\;
  s_axi_rdata(732) <= \<const0>\;
  s_axi_rdata(731) <= \<const0>\;
  s_axi_rdata(730) <= \<const0>\;
  s_axi_rdata(729) <= \<const0>\;
  s_axi_rdata(728) <= \<const0>\;
  s_axi_rdata(727) <= \<const0>\;
  s_axi_rdata(726) <= \<const0>\;
  s_axi_rdata(725) <= \<const0>\;
  s_axi_rdata(724) <= \<const0>\;
  s_axi_rdata(723) <= \<const0>\;
  s_axi_rdata(722) <= \<const0>\;
  s_axi_rdata(721) <= \<const0>\;
  s_axi_rdata(720) <= \<const0>\;
  s_axi_rdata(719) <= \<const0>\;
  s_axi_rdata(718) <= \<const0>\;
  s_axi_rdata(717) <= \<const0>\;
  s_axi_rdata(716) <= \<const0>\;
  s_axi_rdata(715) <= \<const0>\;
  s_axi_rdata(714) <= \<const0>\;
  s_axi_rdata(713) <= \<const0>\;
  s_axi_rdata(712) <= \<const0>\;
  s_axi_rdata(711) <= \<const0>\;
  s_axi_rdata(710) <= \<const0>\;
  s_axi_rdata(709) <= \<const0>\;
  s_axi_rdata(708) <= \<const0>\;
  s_axi_rdata(707) <= \<const0>\;
  s_axi_rdata(706) <= \<const0>\;
  s_axi_rdata(705) <= \<const0>\;
  s_axi_rdata(704) <= \<const0>\;
  s_axi_rdata(703) <= \<const0>\;
  s_axi_rdata(702) <= \<const0>\;
  s_axi_rdata(701) <= \<const0>\;
  s_axi_rdata(700) <= \<const0>\;
  s_axi_rdata(699) <= \<const0>\;
  s_axi_rdata(698) <= \<const0>\;
  s_axi_rdata(697) <= \<const0>\;
  s_axi_rdata(696) <= \<const0>\;
  s_axi_rdata(695) <= \<const0>\;
  s_axi_rdata(694) <= \<const0>\;
  s_axi_rdata(693) <= \<const0>\;
  s_axi_rdata(692) <= \<const0>\;
  s_axi_rdata(691) <= \<const0>\;
  s_axi_rdata(690) <= \<const0>\;
  s_axi_rdata(689) <= \<const0>\;
  s_axi_rdata(688) <= \<const0>\;
  s_axi_rdata(687) <= \<const0>\;
  s_axi_rdata(686) <= \<const0>\;
  s_axi_rdata(685) <= \<const0>\;
  s_axi_rdata(684) <= \<const0>\;
  s_axi_rdata(683) <= \<const0>\;
  s_axi_rdata(682) <= \<const0>\;
  s_axi_rdata(681) <= \<const0>\;
  s_axi_rdata(680) <= \<const0>\;
  s_axi_rdata(679) <= \<const0>\;
  s_axi_rdata(678) <= \<const0>\;
  s_axi_rdata(677) <= \<const0>\;
  s_axi_rdata(676) <= \<const0>\;
  s_axi_rdata(675) <= \<const0>\;
  s_axi_rdata(674) <= \<const0>\;
  s_axi_rdata(673) <= \<const0>\;
  s_axi_rdata(672) <= \<const0>\;
  s_axi_rdata(671) <= \<const0>\;
  s_axi_rdata(670) <= \<const0>\;
  s_axi_rdata(669) <= \<const0>\;
  s_axi_rdata(668) <= \<const0>\;
  s_axi_rdata(667) <= \<const0>\;
  s_axi_rdata(666) <= \<const0>\;
  s_axi_rdata(665) <= \<const0>\;
  s_axi_rdata(664) <= \<const0>\;
  s_axi_rdata(663) <= \<const0>\;
  s_axi_rdata(662) <= \<const0>\;
  s_axi_rdata(661) <= \<const0>\;
  s_axi_rdata(660) <= \<const0>\;
  s_axi_rdata(659) <= \<const0>\;
  s_axi_rdata(658) <= \<const0>\;
  s_axi_rdata(657) <= \<const0>\;
  s_axi_rdata(656) <= \<const0>\;
  s_axi_rdata(655) <= \<const0>\;
  s_axi_rdata(654) <= \<const0>\;
  s_axi_rdata(653) <= \<const0>\;
  s_axi_rdata(652) <= \<const0>\;
  s_axi_rdata(651) <= \<const0>\;
  s_axi_rdata(650) <= \<const0>\;
  s_axi_rdata(649) <= \<const0>\;
  s_axi_rdata(648) <= \<const0>\;
  s_axi_rdata(647) <= \<const0>\;
  s_axi_rdata(646) <= \<const0>\;
  s_axi_rdata(645) <= \<const0>\;
  s_axi_rdata(644) <= \<const0>\;
  s_axi_rdata(643) <= \<const0>\;
  s_axi_rdata(642) <= \<const0>\;
  s_axi_rdata(641) <= \<const0>\;
  s_axi_rdata(640) <= \<const0>\;
  s_axi_rdata(639) <= \<const0>\;
  s_axi_rdata(638) <= \<const0>\;
  s_axi_rdata(637) <= \<const0>\;
  s_axi_rdata(636) <= \<const0>\;
  s_axi_rdata(635) <= \<const0>\;
  s_axi_rdata(634) <= \<const0>\;
  s_axi_rdata(633) <= \<const0>\;
  s_axi_rdata(632) <= \<const0>\;
  s_axi_rdata(631) <= \<const0>\;
  s_axi_rdata(630) <= \<const0>\;
  s_axi_rdata(629) <= \<const0>\;
  s_axi_rdata(628) <= \<const0>\;
  s_axi_rdata(627) <= \<const0>\;
  s_axi_rdata(626) <= \<const0>\;
  s_axi_rdata(625) <= \<const0>\;
  s_axi_rdata(624) <= \<const0>\;
  s_axi_rdata(623) <= \<const0>\;
  s_axi_rdata(622) <= \<const0>\;
  s_axi_rdata(621) <= \<const0>\;
  s_axi_rdata(620) <= \<const0>\;
  s_axi_rdata(619) <= \<const0>\;
  s_axi_rdata(618) <= \<const0>\;
  s_axi_rdata(617) <= \<const0>\;
  s_axi_rdata(616) <= \<const0>\;
  s_axi_rdata(615) <= \<const0>\;
  s_axi_rdata(614) <= \<const0>\;
  s_axi_rdata(613) <= \<const0>\;
  s_axi_rdata(612) <= \<const0>\;
  s_axi_rdata(611) <= \<const0>\;
  s_axi_rdata(610) <= \<const0>\;
  s_axi_rdata(609) <= \<const0>\;
  s_axi_rdata(608) <= \<const0>\;
  s_axi_rdata(607) <= \<const0>\;
  s_axi_rdata(606) <= \<const0>\;
  s_axi_rdata(605) <= \<const0>\;
  s_axi_rdata(604) <= \<const0>\;
  s_axi_rdata(603) <= \<const0>\;
  s_axi_rdata(602) <= \<const0>\;
  s_axi_rdata(601) <= \<const0>\;
  s_axi_rdata(600) <= \<const0>\;
  s_axi_rdata(599) <= \<const0>\;
  s_axi_rdata(598) <= \<const0>\;
  s_axi_rdata(597) <= \<const0>\;
  s_axi_rdata(596) <= \<const0>\;
  s_axi_rdata(595) <= \<const0>\;
  s_axi_rdata(594) <= \<const0>\;
  s_axi_rdata(593) <= \<const0>\;
  s_axi_rdata(592) <= \<const0>\;
  s_axi_rdata(591) <= \<const0>\;
  s_axi_rdata(590) <= \<const0>\;
  s_axi_rdata(589) <= \<const0>\;
  s_axi_rdata(588) <= \<const0>\;
  s_axi_rdata(587) <= \<const0>\;
  s_axi_rdata(586) <= \<const0>\;
  s_axi_rdata(585) <= \<const0>\;
  s_axi_rdata(584) <= \<const0>\;
  s_axi_rdata(583) <= \<const0>\;
  s_axi_rdata(582) <= \<const0>\;
  s_axi_rdata(581) <= \<const0>\;
  s_axi_rdata(580) <= \<const0>\;
  s_axi_rdata(579) <= \<const0>\;
  s_axi_rdata(578) <= \<const0>\;
  s_axi_rdata(577) <= \<const0>\;
  s_axi_rdata(576) <= \<const0>\;
  s_axi_rdata(575) <= \<const0>\;
  s_axi_rdata(574) <= \<const0>\;
  s_axi_rdata(573) <= \<const0>\;
  s_axi_rdata(572) <= \<const0>\;
  s_axi_rdata(571) <= \<const0>\;
  s_axi_rdata(570) <= \<const0>\;
  s_axi_rdata(569) <= \<const0>\;
  s_axi_rdata(568) <= \<const0>\;
  s_axi_rdata(567) <= \<const0>\;
  s_axi_rdata(566) <= \<const0>\;
  s_axi_rdata(565) <= \<const0>\;
  s_axi_rdata(564) <= \<const0>\;
  s_axi_rdata(563) <= \<const0>\;
  s_axi_rdata(562) <= \<const0>\;
  s_axi_rdata(561) <= \<const0>\;
  s_axi_rdata(560) <= \<const0>\;
  s_axi_rdata(559) <= \<const0>\;
  s_axi_rdata(558) <= \<const0>\;
  s_axi_rdata(557) <= \<const0>\;
  s_axi_rdata(556) <= \<const0>\;
  s_axi_rdata(555) <= \<const0>\;
  s_axi_rdata(554) <= \<const0>\;
  s_axi_rdata(553) <= \<const0>\;
  s_axi_rdata(552) <= \<const0>\;
  s_axi_rdata(551) <= \<const0>\;
  s_axi_rdata(550) <= \<const0>\;
  s_axi_rdata(549) <= \<const0>\;
  s_axi_rdata(548) <= \<const0>\;
  s_axi_rdata(547) <= \<const0>\;
  s_axi_rdata(546) <= \<const0>\;
  s_axi_rdata(545) <= \<const0>\;
  s_axi_rdata(544) <= \<const0>\;
  s_axi_rdata(543) <= \<const0>\;
  s_axi_rdata(542) <= \<const0>\;
  s_axi_rdata(541) <= \<const0>\;
  s_axi_rdata(540) <= \<const0>\;
  s_axi_rdata(539) <= \<const0>\;
  s_axi_rdata(538) <= \<const0>\;
  s_axi_rdata(537) <= \<const0>\;
  s_axi_rdata(536) <= \<const0>\;
  s_axi_rdata(535) <= \<const0>\;
  s_axi_rdata(534) <= \<const0>\;
  s_axi_rdata(533) <= \<const0>\;
  s_axi_rdata(532) <= \<const0>\;
  s_axi_rdata(531) <= \<const0>\;
  s_axi_rdata(530) <= \<const0>\;
  s_axi_rdata(529) <= \<const0>\;
  s_axi_rdata(528) <= \<const0>\;
  s_axi_rdata(527) <= \<const0>\;
  s_axi_rdata(526) <= \<const0>\;
  s_axi_rdata(525) <= \<const0>\;
  s_axi_rdata(524) <= \<const0>\;
  s_axi_rdata(523) <= \<const0>\;
  s_axi_rdata(522) <= \<const0>\;
  s_axi_rdata(521) <= \<const0>\;
  s_axi_rdata(520) <= \<const0>\;
  s_axi_rdata(519) <= \<const0>\;
  s_axi_rdata(518) <= \<const0>\;
  s_axi_rdata(517) <= \<const0>\;
  s_axi_rdata(516) <= \<const0>\;
  s_axi_rdata(515) <= \<const0>\;
  s_axi_rdata(514) <= \<const0>\;
  s_axi_rdata(513) <= \<const0>\;
  s_axi_rdata(512) <= \<const0>\;
  s_axi_rdata(511) <= \<const0>\;
  s_axi_rdata(510) <= \<const0>\;
  s_axi_rdata(509) <= \<const0>\;
  s_axi_rdata(508) <= \<const0>\;
  s_axi_rdata(507) <= \<const0>\;
  s_axi_rdata(506) <= \<const0>\;
  s_axi_rdata(505) <= \<const0>\;
  s_axi_rdata(504) <= \<const0>\;
  s_axi_rdata(503) <= \<const0>\;
  s_axi_rdata(502) <= \<const0>\;
  s_axi_rdata(501) <= \<const0>\;
  s_axi_rdata(500) <= \<const0>\;
  s_axi_rdata(499) <= \<const0>\;
  s_axi_rdata(498) <= \<const0>\;
  s_axi_rdata(497) <= \<const0>\;
  s_axi_rdata(496) <= \<const0>\;
  s_axi_rdata(495) <= \<const0>\;
  s_axi_rdata(494) <= \<const0>\;
  s_axi_rdata(493) <= \<const0>\;
  s_axi_rdata(492) <= \<const0>\;
  s_axi_rdata(491) <= \<const0>\;
  s_axi_rdata(490) <= \<const0>\;
  s_axi_rdata(489) <= \<const0>\;
  s_axi_rdata(488) <= \<const0>\;
  s_axi_rdata(487) <= \<const0>\;
  s_axi_rdata(486) <= \<const0>\;
  s_axi_rdata(485) <= \<const0>\;
  s_axi_rdata(484) <= \<const0>\;
  s_axi_rdata(483) <= \<const0>\;
  s_axi_rdata(482) <= \<const0>\;
  s_axi_rdata(481) <= \<const0>\;
  s_axi_rdata(480) <= \<const0>\;
  s_axi_rdata(479) <= \<const0>\;
  s_axi_rdata(478) <= \<const0>\;
  s_axi_rdata(477) <= \<const0>\;
  s_axi_rdata(476) <= \<const0>\;
  s_axi_rdata(475) <= \<const0>\;
  s_axi_rdata(474) <= \<const0>\;
  s_axi_rdata(473) <= \<const0>\;
  s_axi_rdata(472) <= \<const0>\;
  s_axi_rdata(471) <= \<const0>\;
  s_axi_rdata(470) <= \<const0>\;
  s_axi_rdata(469) <= \<const0>\;
  s_axi_rdata(468) <= \<const0>\;
  s_axi_rdata(467) <= \<const0>\;
  s_axi_rdata(466) <= \<const0>\;
  s_axi_rdata(465) <= \<const0>\;
  s_axi_rdata(464) <= \<const0>\;
  s_axi_rdata(463) <= \<const0>\;
  s_axi_rdata(462) <= \<const0>\;
  s_axi_rdata(461) <= \<const0>\;
  s_axi_rdata(460) <= \<const0>\;
  s_axi_rdata(459) <= \<const0>\;
  s_axi_rdata(458) <= \<const0>\;
  s_axi_rdata(457) <= \<const0>\;
  s_axi_rdata(456) <= \<const0>\;
  s_axi_rdata(455) <= \<const0>\;
  s_axi_rdata(454) <= \<const0>\;
  s_axi_rdata(453) <= \<const0>\;
  s_axi_rdata(452) <= \<const0>\;
  s_axi_rdata(451) <= \<const0>\;
  s_axi_rdata(450) <= \<const0>\;
  s_axi_rdata(449) <= \<const0>\;
  s_axi_rdata(448) <= \<const0>\;
  s_axi_rdata(447) <= \<const0>\;
  s_axi_rdata(446) <= \<const0>\;
  s_axi_rdata(445) <= \<const0>\;
  s_axi_rdata(444) <= \<const0>\;
  s_axi_rdata(443) <= \<const0>\;
  s_axi_rdata(442) <= \<const0>\;
  s_axi_rdata(441) <= \<const0>\;
  s_axi_rdata(440) <= \<const0>\;
  s_axi_rdata(439) <= \<const0>\;
  s_axi_rdata(438) <= \<const0>\;
  s_axi_rdata(437) <= \<const0>\;
  s_axi_rdata(436) <= \<const0>\;
  s_axi_rdata(435) <= \<const0>\;
  s_axi_rdata(434) <= \<const0>\;
  s_axi_rdata(433) <= \<const0>\;
  s_axi_rdata(432) <= \<const0>\;
  s_axi_rdata(431) <= \<const0>\;
  s_axi_rdata(430) <= \<const0>\;
  s_axi_rdata(429) <= \<const0>\;
  s_axi_rdata(428) <= \<const0>\;
  s_axi_rdata(427) <= \<const0>\;
  s_axi_rdata(426) <= \<const0>\;
  s_axi_rdata(425) <= \<const0>\;
  s_axi_rdata(424) <= \<const0>\;
  s_axi_rdata(423) <= \<const0>\;
  s_axi_rdata(422) <= \<const0>\;
  s_axi_rdata(421) <= \<const0>\;
  s_axi_rdata(420) <= \<const0>\;
  s_axi_rdata(419) <= \<const0>\;
  s_axi_rdata(418) <= \<const0>\;
  s_axi_rdata(417) <= \<const0>\;
  s_axi_rdata(416) <= \<const0>\;
  s_axi_rdata(415) <= \<const0>\;
  s_axi_rdata(414) <= \<const0>\;
  s_axi_rdata(413) <= \<const0>\;
  s_axi_rdata(412) <= \<const0>\;
  s_axi_rdata(411) <= \<const0>\;
  s_axi_rdata(410) <= \<const0>\;
  s_axi_rdata(409) <= \<const0>\;
  s_axi_rdata(408) <= \<const0>\;
  s_axi_rdata(407) <= \<const0>\;
  s_axi_rdata(406) <= \<const0>\;
  s_axi_rdata(405) <= \<const0>\;
  s_axi_rdata(404) <= \<const0>\;
  s_axi_rdata(403) <= \<const0>\;
  s_axi_rdata(402) <= \<const0>\;
  s_axi_rdata(401) <= \<const0>\;
  s_axi_rdata(400) <= \<const0>\;
  s_axi_rdata(399) <= \<const0>\;
  s_axi_rdata(398) <= \<const0>\;
  s_axi_rdata(397) <= \<const0>\;
  s_axi_rdata(396) <= \<const0>\;
  s_axi_rdata(395) <= \<const0>\;
  s_axi_rdata(394) <= \<const0>\;
  s_axi_rdata(393) <= \<const0>\;
  s_axi_rdata(392) <= \<const0>\;
  s_axi_rdata(391) <= \<const0>\;
  s_axi_rdata(390) <= \<const0>\;
  s_axi_rdata(389) <= \<const0>\;
  s_axi_rdata(388) <= \<const0>\;
  s_axi_rdata(387) <= \<const0>\;
  s_axi_rdata(386) <= \<const0>\;
  s_axi_rdata(385) <= \<const0>\;
  s_axi_rdata(384) <= \<const0>\;
  s_axi_rdata(383) <= \<const0>\;
  s_axi_rdata(382) <= \<const0>\;
  s_axi_rdata(381) <= \<const0>\;
  s_axi_rdata(380) <= \<const0>\;
  s_axi_rdata(379) <= \<const0>\;
  s_axi_rdata(378) <= \<const0>\;
  s_axi_rdata(377) <= \<const0>\;
  s_axi_rdata(376) <= \<const0>\;
  s_axi_rdata(375) <= \<const0>\;
  s_axi_rdata(374) <= \<const0>\;
  s_axi_rdata(373) <= \<const0>\;
  s_axi_rdata(372) <= \<const0>\;
  s_axi_rdata(371) <= \<const0>\;
  s_axi_rdata(370) <= \<const0>\;
  s_axi_rdata(369) <= \<const0>\;
  s_axi_rdata(368) <= \<const0>\;
  s_axi_rdata(367) <= \<const0>\;
  s_axi_rdata(366) <= \<const0>\;
  s_axi_rdata(365) <= \<const0>\;
  s_axi_rdata(364) <= \<const0>\;
  s_axi_rdata(363) <= \<const0>\;
  s_axi_rdata(362) <= \<const0>\;
  s_axi_rdata(361) <= \<const0>\;
  s_axi_rdata(360) <= \<const0>\;
  s_axi_rdata(359) <= \<const0>\;
  s_axi_rdata(358) <= \<const0>\;
  s_axi_rdata(357) <= \<const0>\;
  s_axi_rdata(356) <= \<const0>\;
  s_axi_rdata(355) <= \<const0>\;
  s_axi_rdata(354) <= \<const0>\;
  s_axi_rdata(353) <= \<const0>\;
  s_axi_rdata(352) <= \<const0>\;
  s_axi_rdata(351) <= \<const0>\;
  s_axi_rdata(350) <= \<const0>\;
  s_axi_rdata(349) <= \<const0>\;
  s_axi_rdata(348) <= \<const0>\;
  s_axi_rdata(347) <= \<const0>\;
  s_axi_rdata(346) <= \<const0>\;
  s_axi_rdata(345) <= \<const0>\;
  s_axi_rdata(344) <= \<const0>\;
  s_axi_rdata(343) <= \<const0>\;
  s_axi_rdata(342) <= \<const0>\;
  s_axi_rdata(341) <= \<const0>\;
  s_axi_rdata(340) <= \<const0>\;
  s_axi_rdata(339) <= \<const0>\;
  s_axi_rdata(338) <= \<const0>\;
  s_axi_rdata(337) <= \<const0>\;
  s_axi_rdata(336) <= \<const0>\;
  s_axi_rdata(335) <= \<const0>\;
  s_axi_rdata(334) <= \<const0>\;
  s_axi_rdata(333) <= \<const0>\;
  s_axi_rdata(332) <= \<const0>\;
  s_axi_rdata(331) <= \<const0>\;
  s_axi_rdata(330) <= \<const0>\;
  s_axi_rdata(329) <= \<const0>\;
  s_axi_rdata(328) <= \<const0>\;
  s_axi_rdata(327) <= \<const0>\;
  s_axi_rdata(326) <= \<const0>\;
  s_axi_rdata(325) <= \<const0>\;
  s_axi_rdata(324) <= \<const0>\;
  s_axi_rdata(323) <= \<const0>\;
  s_axi_rdata(322) <= \<const0>\;
  s_axi_rdata(321) <= \<const0>\;
  s_axi_rdata(320) <= \<const0>\;
  s_axi_rdata(319) <= \<const0>\;
  s_axi_rdata(318) <= \<const0>\;
  s_axi_rdata(317) <= \<const0>\;
  s_axi_rdata(316) <= \<const0>\;
  s_axi_rdata(315) <= \<const0>\;
  s_axi_rdata(314) <= \<const0>\;
  s_axi_rdata(313) <= \<const0>\;
  s_axi_rdata(312) <= \<const0>\;
  s_axi_rdata(311) <= \<const0>\;
  s_axi_rdata(310) <= \<const0>\;
  s_axi_rdata(309) <= \<const0>\;
  s_axi_rdata(308) <= \<const0>\;
  s_axi_rdata(307) <= \<const0>\;
  s_axi_rdata(306) <= \<const0>\;
  s_axi_rdata(305) <= \<const0>\;
  s_axi_rdata(304) <= \<const0>\;
  s_axi_rdata(303) <= \<const0>\;
  s_axi_rdata(302) <= \<const0>\;
  s_axi_rdata(301) <= \<const0>\;
  s_axi_rdata(300) <= \<const0>\;
  s_axi_rdata(299) <= \<const0>\;
  s_axi_rdata(298) <= \<const0>\;
  s_axi_rdata(297) <= \<const0>\;
  s_axi_rdata(296) <= \<const0>\;
  s_axi_rdata(295) <= \<const0>\;
  s_axi_rdata(294) <= \<const0>\;
  s_axi_rdata(293) <= \<const0>\;
  s_axi_rdata(292) <= \<const0>\;
  s_axi_rdata(291) <= \<const0>\;
  s_axi_rdata(290) <= \<const0>\;
  s_axi_rdata(289) <= \<const0>\;
  s_axi_rdata(288) <= \<const0>\;
  s_axi_rdata(287) <= \<const0>\;
  s_axi_rdata(286) <= \<const0>\;
  s_axi_rdata(285) <= \<const0>\;
  s_axi_rdata(284) <= \<const0>\;
  s_axi_rdata(283) <= \<const0>\;
  s_axi_rdata(282) <= \<const0>\;
  s_axi_rdata(281) <= \<const0>\;
  s_axi_rdata(280) <= \<const0>\;
  s_axi_rdata(279) <= \<const0>\;
  s_axi_rdata(278) <= \<const0>\;
  s_axi_rdata(277) <= \<const0>\;
  s_axi_rdata(276) <= \<const0>\;
  s_axi_rdata(275) <= \<const0>\;
  s_axi_rdata(274) <= \<const0>\;
  s_axi_rdata(273) <= \<const0>\;
  s_axi_rdata(272) <= \<const0>\;
  s_axi_rdata(271) <= \<const0>\;
  s_axi_rdata(270) <= \<const0>\;
  s_axi_rdata(269) <= \<const0>\;
  s_axi_rdata(268) <= \<const0>\;
  s_axi_rdata(267) <= \<const0>\;
  s_axi_rdata(266) <= \<const0>\;
  s_axi_rdata(265) <= \<const0>\;
  s_axi_rdata(264) <= \<const0>\;
  s_axi_rdata(263) <= \<const0>\;
  s_axi_rdata(262) <= \<const0>\;
  s_axi_rdata(261) <= \<const0>\;
  s_axi_rdata(260) <= \<const0>\;
  s_axi_rdata(259) <= \<const0>\;
  s_axi_rdata(258) <= \<const0>\;
  s_axi_rdata(257) <= \<const0>\;
  s_axi_rdata(256) <= \<const0>\;
  s_axi_rdata(255) <= \<const0>\;
  s_axi_rdata(254) <= \<const0>\;
  s_axi_rdata(253) <= \<const0>\;
  s_axi_rdata(252) <= \<const0>\;
  s_axi_rdata(251) <= \<const0>\;
  s_axi_rdata(250) <= \<const0>\;
  s_axi_rdata(249) <= \<const0>\;
  s_axi_rdata(248) <= \<const0>\;
  s_axi_rdata(247) <= \<const0>\;
  s_axi_rdata(246) <= \<const0>\;
  s_axi_rdata(245) <= \<const0>\;
  s_axi_rdata(244) <= \<const0>\;
  s_axi_rdata(243) <= \<const0>\;
  s_axi_rdata(242) <= \<const0>\;
  s_axi_rdata(241) <= \<const0>\;
  s_axi_rdata(240) <= \<const0>\;
  s_axi_rdata(239) <= \<const0>\;
  s_axi_rdata(238) <= \<const0>\;
  s_axi_rdata(237) <= \<const0>\;
  s_axi_rdata(236) <= \<const0>\;
  s_axi_rdata(235) <= \<const0>\;
  s_axi_rdata(234) <= \<const0>\;
  s_axi_rdata(233) <= \<const0>\;
  s_axi_rdata(232) <= \<const0>\;
  s_axi_rdata(231) <= \<const0>\;
  s_axi_rdata(230) <= \<const0>\;
  s_axi_rdata(229) <= \<const0>\;
  s_axi_rdata(228) <= \<const0>\;
  s_axi_rdata(227) <= \<const0>\;
  s_axi_rdata(226) <= \<const0>\;
  s_axi_rdata(225) <= \<const0>\;
  s_axi_rdata(224) <= \<const0>\;
  s_axi_rdata(223) <= \<const0>\;
  s_axi_rdata(222) <= \<const0>\;
  s_axi_rdata(221) <= \<const0>\;
  s_axi_rdata(220) <= \<const0>\;
  s_axi_rdata(219) <= \<const0>\;
  s_axi_rdata(218) <= \<const0>\;
  s_axi_rdata(217) <= \<const0>\;
  s_axi_rdata(216) <= \<const0>\;
  s_axi_rdata(215) <= \<const0>\;
  s_axi_rdata(214) <= \<const0>\;
  s_axi_rdata(213) <= \<const0>\;
  s_axi_rdata(212) <= \<const0>\;
  s_axi_rdata(211) <= \<const0>\;
  s_axi_rdata(210) <= \<const0>\;
  s_axi_rdata(209) <= \<const0>\;
  s_axi_rdata(208) <= \<const0>\;
  s_axi_rdata(207) <= \<const0>\;
  s_axi_rdata(206) <= \<const0>\;
  s_axi_rdata(205) <= \<const0>\;
  s_axi_rdata(204) <= \<const0>\;
  s_axi_rdata(203) <= \<const0>\;
  s_axi_rdata(202) <= \<const0>\;
  s_axi_rdata(201) <= \<const0>\;
  s_axi_rdata(200) <= \<const0>\;
  s_axi_rdata(199) <= \<const0>\;
  s_axi_rdata(198) <= \<const0>\;
  s_axi_rdata(197) <= \<const0>\;
  s_axi_rdata(196) <= \<const0>\;
  s_axi_rdata(195) <= \<const0>\;
  s_axi_rdata(194) <= \<const0>\;
  s_axi_rdata(193) <= \<const0>\;
  s_axi_rdata(192) <= \<const0>\;
  s_axi_rdata(191) <= \<const0>\;
  s_axi_rdata(190) <= \<const0>\;
  s_axi_rdata(189) <= \<const0>\;
  s_axi_rdata(188) <= \<const0>\;
  s_axi_rdata(187) <= \<const0>\;
  s_axi_rdata(186) <= \<const0>\;
  s_axi_rdata(185) <= \<const0>\;
  s_axi_rdata(184) <= \<const0>\;
  s_axi_rdata(183) <= \<const0>\;
  s_axi_rdata(182) <= \<const0>\;
  s_axi_rdata(181) <= \<const0>\;
  s_axi_rdata(180) <= \<const0>\;
  s_axi_rdata(179) <= \<const0>\;
  s_axi_rdata(178) <= \<const0>\;
  s_axi_rdata(177) <= \<const0>\;
  s_axi_rdata(176) <= \<const0>\;
  s_axi_rdata(175) <= \<const0>\;
  s_axi_rdata(174) <= \<const0>\;
  s_axi_rdata(173) <= \<const0>\;
  s_axi_rdata(172) <= \<const0>\;
  s_axi_rdata(171) <= \<const0>\;
  s_axi_rdata(170) <= \<const0>\;
  s_axi_rdata(169) <= \<const0>\;
  s_axi_rdata(168) <= \<const0>\;
  s_axi_rdata(167) <= \<const0>\;
  s_axi_rdata(166) <= \<const0>\;
  s_axi_rdata(165) <= \<const0>\;
  s_axi_rdata(164) <= \<const0>\;
  s_axi_rdata(163) <= \<const0>\;
  s_axi_rdata(162) <= \<const0>\;
  s_axi_rdata(161) <= \<const0>\;
  s_axi_rdata(160) <= \<const0>\;
  s_axi_rdata(159) <= \<const0>\;
  s_axi_rdata(158) <= \<const0>\;
  s_axi_rdata(157) <= \<const0>\;
  s_axi_rdata(156) <= \<const0>\;
  s_axi_rdata(155) <= \<const0>\;
  s_axi_rdata(154) <= \<const0>\;
  s_axi_rdata(153) <= \<const0>\;
  s_axi_rdata(152) <= \<const0>\;
  s_axi_rdata(151) <= \<const0>\;
  s_axi_rdata(150) <= \<const0>\;
  s_axi_rdata(149) <= \<const0>\;
  s_axi_rdata(148) <= \<const0>\;
  s_axi_rdata(147) <= \<const0>\;
  s_axi_rdata(146) <= \<const0>\;
  s_axi_rdata(145) <= \<const0>\;
  s_axi_rdata(144) <= \<const0>\;
  s_axi_rdata(143) <= \<const0>\;
  s_axi_rdata(142) <= \<const0>\;
  s_axi_rdata(141) <= \<const0>\;
  s_axi_rdata(140) <= \<const0>\;
  s_axi_rdata(139) <= \<const0>\;
  s_axi_rdata(138) <= \<const0>\;
  s_axi_rdata(137) <= \<const0>\;
  s_axi_rdata(136) <= \<const0>\;
  s_axi_rdata(135) <= \<const0>\;
  s_axi_rdata(134) <= \<const0>\;
  s_axi_rdata(133) <= \<const0>\;
  s_axi_rdata(132) <= \<const0>\;
  s_axi_rdata(131) <= \<const0>\;
  s_axi_rdata(130) <= \<const0>\;
  s_axi_rdata(129) <= \<const0>\;
  s_axi_rdata(128) <= \<const0>\;
  s_axi_rdata(127) <= \<const0>\;
  s_axi_rdata(126) <= \<const0>\;
  s_axi_rdata(125) <= \<const0>\;
  s_axi_rdata(124) <= \<const0>\;
  s_axi_rdata(123) <= \<const0>\;
  s_axi_rdata(122) <= \<const0>\;
  s_axi_rdata(121) <= \<const0>\;
  s_axi_rdata(120) <= \<const0>\;
  s_axi_rdata(119) <= \<const0>\;
  s_axi_rdata(118) <= \<const0>\;
  s_axi_rdata(117) <= \<const0>\;
  s_axi_rdata(116) <= \<const0>\;
  s_axi_rdata(115) <= \<const0>\;
  s_axi_rdata(114) <= \<const0>\;
  s_axi_rdata(113) <= \<const0>\;
  s_axi_rdata(112) <= \<const0>\;
  s_axi_rdata(111) <= \<const0>\;
  s_axi_rdata(110) <= \<const0>\;
  s_axi_rdata(109) <= \<const0>\;
  s_axi_rdata(108) <= \<const0>\;
  s_axi_rdata(107) <= \<const0>\;
  s_axi_rdata(106) <= \<const0>\;
  s_axi_rdata(105) <= \<const0>\;
  s_axi_rdata(104) <= \<const0>\;
  s_axi_rdata(103) <= \<const0>\;
  s_axi_rdata(102) <= \<const0>\;
  s_axi_rdata(101) <= \<const0>\;
  s_axi_rdata(100) <= \<const0>\;
  s_axi_rdata(99) <= \<const0>\;
  s_axi_rdata(98) <= \<const0>\;
  s_axi_rdata(97) <= \<const0>\;
  s_axi_rdata(96) <= \<const0>\;
  s_axi_rdata(95) <= \<const0>\;
  s_axi_rdata(94) <= \<const0>\;
  s_axi_rdata(93) <= \<const0>\;
  s_axi_rdata(92) <= \<const0>\;
  s_axi_rdata(91) <= \<const0>\;
  s_axi_rdata(90) <= \<const0>\;
  s_axi_rdata(89) <= \<const0>\;
  s_axi_rdata(88) <= \<const0>\;
  s_axi_rdata(87) <= \<const0>\;
  s_axi_rdata(86) <= \<const0>\;
  s_axi_rdata(85) <= \<const0>\;
  s_axi_rdata(84) <= \<const0>\;
  s_axi_rdata(83) <= \<const0>\;
  s_axi_rdata(82) <= \<const0>\;
  s_axi_rdata(81) <= \<const0>\;
  s_axi_rdata(80) <= \<const0>\;
  s_axi_rdata(79) <= \<const0>\;
  s_axi_rdata(78) <= \<const0>\;
  s_axi_rdata(77) <= \<const0>\;
  s_axi_rdata(76) <= \<const0>\;
  s_axi_rdata(75) <= \<const0>\;
  s_axi_rdata(74) <= \<const0>\;
  s_axi_rdata(73) <= \<const0>\;
  s_axi_rdata(72) <= \<const0>\;
  s_axi_rdata(71) <= \<const0>\;
  s_axi_rdata(70) <= \<const0>\;
  s_axi_rdata(69) <= \<const0>\;
  s_axi_rdata(68) <= \<const0>\;
  s_axi_rdata(67) <= \<const0>\;
  s_axi_rdata(66) <= \<const0>\;
  s_axi_rdata(65) <= \<const0>\;
  s_axi_rdata(64) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_downsizer.gen_simple_downsizer.axi_downsizer_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_axi_downsizer
     port map (
      CLK => s_axi_aclk,
      E(0) => s_axi_awready,
      din(10 downto 8) => m_axi_awsize(2 downto 0),
      din(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_wdata(127 downto 0) => m_axi_wdata(127 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(15 downto 0) => m_axi_wstrb(15 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      \out\ => s_axi_aresetn,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_wdata(1023 downto 0) => s_axi_wdata(1023 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(127 downto 0) => s_axi_wstrb(127 downto 0),
      s_axi_wvalid => s_axi_wvalid
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
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_auto_ds_0,axi_dwidth_converter_v2_1_15_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_dwidth_converter_v2_1_15_top,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of inst : label is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynquplus";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of inst : label is 0;
  attribute C_MAX_SPLIT_BEATS : integer;
  attribute C_MAX_SPLIT_BEATS of inst : label is 256;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of inst : label is 2;
  attribute C_M_AXI_BYTES_LOG : integer;
  attribute C_M_AXI_BYTES_LOG of inst : label is 4;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of inst : label is 128;
  attribute C_PACKING_LEVEL : integer;
  attribute C_PACKING_LEVEL of inst : label is 1;
  attribute C_RATIO : integer;
  attribute C_RATIO of inst : label is 8;
  attribute C_RATIO_LOG : integer;
  attribute C_RATIO_LOG of inst : label is 3;
  attribute C_SUPPORTS_ID : integer;
  attribute C_SUPPORTS_ID of inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of inst : label is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of inst : label is 1;
  attribute C_S_AXI_BYTES_LOG : integer;
  attribute C_S_AXI_BYTES_LOG of inst : label is 7;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 1024;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of inst : label is 1;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of inst : label is 2;
  attribute P_MAX_SPLIT_BEATS : integer;
  attribute P_MAX_SPLIT_BEATS of inst : label is 256;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axi_bready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 SI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME SI_CLK, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET S_AXI_ARESETN";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 SI_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_bready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 1024, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 32, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREGION";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREGION";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dwidth_converter_v2_1_15_top
     port map (
      m_axi_aclk => '0',
      m_axi_araddr(31 downto 0) => NLW_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_aresetn => '0',
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => NLW_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rlast => '1',
      m_axi_rready => NLW_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_rvalid => '0',
      m_axi_wdata(127 downto 0) => m_axi_wdata(127 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(15 downto 0) => m_axi_wstrb(15 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"01",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(1023 downto 0) => NLW_inst_s_axi_rdata_UNCONNECTED(1023 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(1023 downto 0) => s_axi_wdata(1023 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(127 downto 0) => s_axi_wstrb(127 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
