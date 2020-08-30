-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Tue Aug 11 17:47:25 2020
-- Host        : tower running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_2_system_ila_1_0 -prefix
--               design_2_system_ila_1_0_ design_2_system_ila_1_0_stub.vhdl
-- Design      : design_2_system_ila_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_2_system_ila_1_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end design_2_system_ila_1_0;

architecture stub of design_2_system_ila_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_c71d,Vivado 2017.4";
begin
end;
