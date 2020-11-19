-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Tue May  5 13:09:47 2020
-- Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_system_ila_0_0_stub.vhdl
-- Design      : design_1_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    SLOT_0_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    SLOT_0_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_0_AXI_wlast : in STD_LOGIC;
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    SLOT_0_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rlast : in STD_LOGIC;
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_rready : in STD_LOGIC;
    SLOT_1_AXI_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_1_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awvalid : in STD_LOGIC;
    SLOT_1_AXI_awready : in STD_LOGIC;
    SLOT_1_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_wvalid : in STD_LOGIC;
    SLOT_1_AXI_wready : in STD_LOGIC;
    SLOT_1_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_bvalid : in STD_LOGIC;
    SLOT_1_AXI_bready : in STD_LOGIC;
    SLOT_1_AXI_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_1_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arvalid : in STD_LOGIC;
    SLOT_1_AXI_arready : in STD_LOGIC;
    SLOT_1_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_rvalid : in STD_LOGIC;
    SLOT_1_AXI_rready : in STD_LOGIC;
    SLOT_2_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXIS_tdata : in STD_LOGIC_VECTOR ( 55 downto 0 );
    SLOT_2_AXIS_tstrb : in STD_LOGIC_VECTOR ( 6 downto 0 );
    SLOT_2_AXIS_tlast : in STD_LOGIC;
    SLOT_2_AXIS_tvalid : in STD_LOGIC;
    SLOT_2_AXIS_tready : in STD_LOGIC;
    SLOT_3_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_3_AXIS_tstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXIS_tlast : in STD_LOGIC;
    SLOT_3_AXIS_tvalid : in STD_LOGIC;
    SLOT_3_AXIS_tready : in STD_LOGIC;
    SLOT_4_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awvalid : in STD_LOGIC;
    SLOT_4_AXI_awready : in STD_LOGIC;
    SLOT_4_AXI_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    SLOT_4_AXI_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_4_AXI_wlast : in STD_LOGIC;
    SLOT_4_AXI_wvalid : in STD_LOGIC;
    SLOT_4_AXI_wready : in STD_LOGIC;
    SLOT_4_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_bvalid : in STD_LOGIC;
    SLOT_4_AXI_bready : in STD_LOGIC;
    SLOT_4_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arvalid : in STD_LOGIC;
    SLOT_4_AXI_arready : in STD_LOGIC;
    SLOT_4_AXI_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    SLOT_4_AXI_rlast : in STD_LOGIC;
    SLOT_4_AXI_rvalid : in STD_LOGIC;
    SLOT_4_AXI_rready : in STD_LOGIC;
    SLOT_5_AXI_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    SLOT_5_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_5_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_awvalid : in STD_LOGIC;
    SLOT_5_AXI_awready : in STD_LOGIC;
    SLOT_5_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_5_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_5_AXI_wlast : in STD_LOGIC;
    SLOT_5_AXI_wvalid : in STD_LOGIC;
    SLOT_5_AXI_wready : in STD_LOGIC;
    SLOT_5_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_bvalid : in STD_LOGIC;
    SLOT_5_AXI_bready : in STD_LOGIC;
    SLOT_5_AXI_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    SLOT_5_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_5_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_arvalid : in STD_LOGIC;
    SLOT_5_AXI_arready : in STD_LOGIC;
    SLOT_5_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    SLOT_5_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_rlast : in STD_LOGIC;
    SLOT_5_AXI_rvalid : in STD_LOGIC;
    SLOT_5_AXI_rready : in STD_LOGIC;
    SLOT_6_AXI_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    SLOT_6_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_awvalid : in STD_LOGIC;
    SLOT_6_AXI_awready : in STD_LOGIC;
    SLOT_6_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_6_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_wvalid : in STD_LOGIC;
    SLOT_6_AXI_wready : in STD_LOGIC;
    SLOT_6_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_bvalid : in STD_LOGIC;
    SLOT_6_AXI_bready : in STD_LOGIC;
    SLOT_6_AXI_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    SLOT_6_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_arvalid : in STD_LOGIC;
    SLOT_6_AXI_arready : in STD_LOGIC;
    SLOT_6_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_6_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_rvalid : in STD_LOGIC;
    SLOT_6_AXI_rready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SLOT_0_AXI_awid[15:0],SLOT_0_AXI_awaddr[39:0],SLOT_0_AXI_awlen[7:0],SLOT_0_AXI_awsize[2:0],SLOT_0_AXI_awburst[1:0],SLOT_0_AXI_awlock[0:0],SLOT_0_AXI_awcache[3:0],SLOT_0_AXI_awprot[2:0],SLOT_0_AXI_awqos[3:0],SLOT_0_AXI_awuser[15:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wdata[127:0],SLOT_0_AXI_wstrb[15:0],SLOT_0_AXI_wlast,SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bid[15:0],SLOT_0_AXI_bresp[1:0],SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_arid[15:0],SLOT_0_AXI_araddr[39:0],SLOT_0_AXI_arlen[7:0],SLOT_0_AXI_arsize[2:0],SLOT_0_AXI_arburst[1:0],SLOT_0_AXI_arlock[0:0],SLOT_0_AXI_arcache[3:0],SLOT_0_AXI_arprot[2:0],SLOT_0_AXI_arqos[3:0],SLOT_0_AXI_aruser[15:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rid[15:0],SLOT_0_AXI_rdata[127:0],SLOT_0_AXI_rresp[1:0],SLOT_0_AXI_rlast,SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,SLOT_1_AXI_awaddr[15:0],SLOT_1_AXI_awprot[2:0],SLOT_1_AXI_awvalid,SLOT_1_AXI_awready,SLOT_1_AXI_wdata[31:0],SLOT_1_AXI_wstrb[3:0],SLOT_1_AXI_wvalid,SLOT_1_AXI_wready,SLOT_1_AXI_bresp[1:0],SLOT_1_AXI_bvalid,SLOT_1_AXI_bready,SLOT_1_AXI_araddr[15:0],SLOT_1_AXI_arprot[2:0],SLOT_1_AXI_arvalid,SLOT_1_AXI_arready,SLOT_1_AXI_rdata[31:0],SLOT_1_AXI_rresp[1:0],SLOT_1_AXI_rvalid,SLOT_1_AXI_rready,SLOT_2_AXIS_tid[0:0],SLOT_2_AXIS_tdata[55:0],SLOT_2_AXIS_tstrb[6:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,SLOT_3_AXIS_tid[0:0],SLOT_3_AXIS_tdata[63:0],SLOT_3_AXIS_tstrb[7:0],SLOT_3_AXIS_tlast,SLOT_3_AXIS_tvalid,SLOT_3_AXIS_tready,SLOT_4_AXI_awaddr[31:0],SLOT_4_AXI_awlen[7:0],SLOT_4_AXI_awsize[2:0],SLOT_4_AXI_awvalid,SLOT_4_AXI_awready,SLOT_4_AXI_wdata[1023:0],SLOT_4_AXI_wstrb[127:0],SLOT_4_AXI_wlast,SLOT_4_AXI_wvalid,SLOT_4_AXI_wready,SLOT_4_AXI_bresp[1:0],SLOT_4_AXI_bvalid,SLOT_4_AXI_bready,SLOT_4_AXI_araddr[31:0],SLOT_4_AXI_arlen[7:0],SLOT_4_AXI_arsize[2:0],SLOT_4_AXI_arvalid,SLOT_4_AXI_arready,SLOT_4_AXI_rdata[1023:0],SLOT_4_AXI_rlast,SLOT_4_AXI_rvalid,SLOT_4_AXI_rready,SLOT_5_AXI_awaddr[13:0],SLOT_5_AXI_awlen[7:0],SLOT_5_AXI_awsize[2:0],SLOT_5_AXI_awprot[2:0],SLOT_5_AXI_awvalid,SLOT_5_AXI_awready,SLOT_5_AXI_wdata[127:0],SLOT_5_AXI_wstrb[15:0],SLOT_5_AXI_wlast,SLOT_5_AXI_wvalid,SLOT_5_AXI_wready,SLOT_5_AXI_bresp[1:0],SLOT_5_AXI_bvalid,SLOT_5_AXI_bready,SLOT_5_AXI_araddr[13:0],SLOT_5_AXI_arlen[7:0],SLOT_5_AXI_arsize[2:0],SLOT_5_AXI_arprot[2:0],SLOT_5_AXI_arvalid,SLOT_5_AXI_arready,SLOT_5_AXI_rdata[127:0],SLOT_5_AXI_rresp[1:0],SLOT_5_AXI_rlast,SLOT_5_AXI_rvalid,SLOT_5_AXI_rready,SLOT_6_AXI_awaddr[9:0],SLOT_6_AXI_awprot[2:0],SLOT_6_AXI_awvalid,SLOT_6_AXI_awready,SLOT_6_AXI_wdata[31:0],SLOT_6_AXI_wstrb[3:0],SLOT_6_AXI_wvalid,SLOT_6_AXI_wready,SLOT_6_AXI_bresp[1:0],SLOT_6_AXI_bvalid,SLOT_6_AXI_bready,SLOT_6_AXI_araddr[9:0],SLOT_6_AXI_arprot[2:0],SLOT_6_AXI_arvalid,SLOT_6_AXI_arready,SLOT_6_AXI_rdata[31:0],SLOT_6_AXI_rresp[1:0],SLOT_6_AXI_rvalid,SLOT_6_AXI_rready,resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_f60c,Vivado 2017.4";
begin
end;
