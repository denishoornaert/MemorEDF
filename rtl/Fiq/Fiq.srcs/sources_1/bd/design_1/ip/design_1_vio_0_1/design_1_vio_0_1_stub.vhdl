-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sat Aug 22 18:53:05 2020
-- Host        : tower running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ro0zkhosh/MemorEDF/MemorEDF/rtl/Fiq/Fiq.srcs/sources_1/bd/design_1/ip/design_1_vio_0_1/design_1_vio_0_1_stub.vhdl
-- Design      : design_1_vio_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_vio_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    probe_out0 : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );

end design_1_vio_0_1;

architecture stub of design_1_vio_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_out0[9:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2017.4";
begin
end;
