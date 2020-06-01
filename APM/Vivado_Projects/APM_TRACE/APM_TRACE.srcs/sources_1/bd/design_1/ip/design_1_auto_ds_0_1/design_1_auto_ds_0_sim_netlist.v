// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sat May  9 11:09:36 2020
// Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/renato/MemorEDF_old/Vivado_Projects/APM_TRACE/APM_TRACE.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_0_1/design_1_auto_ds_0_sim_netlist.v
// Design      : design_1_auto_ds_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_auto_ds_0,axi_dwidth_converter_v2_1_15_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_dwidth_converter_v2_1_15_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_auto_ds_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
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
    m_axi_awregion,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_CLK, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET S_AXI_ARESETN" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [0:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [48:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [127:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [15:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [0:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 1, ADDR_WIDTH 49, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 32, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [48:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREGION" *) output [3:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 49, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m_axi_bready;

  wire [48:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [48:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
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
  wire [48:0]NLW_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [127:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "49" *) 
  (* C_AXI_IS_ACLK_ASYNC = "0" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_SUPPORTS_READ = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FIFO_MODE = "0" *) 
  (* C_MAX_SPLIT_BEATS = "256" *) 
  (* C_M_AXI_ACLK_RATIO = "2" *) 
  (* C_M_AXI_BYTES_LOG = "2" *) 
  (* C_M_AXI_DATA_WIDTH = "32" *) 
  (* C_PACKING_LEVEL = "1" *) 
  (* C_RATIO = "4" *) 
  (* C_RATIO_LOG = "2" *) 
  (* C_SUPPORTS_ID = "1" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_S_AXI_ACLK_RATIO = "1" *) 
  (* C_S_AXI_BYTES_LOG = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "128" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_CONVERSION = "2" *) 
  (* P_MAX_SPLIT_BEATS = "256" *) 
  design_1_auto_ds_0_axi_dwidth_converter_v2_1_15_top inst
       (.m_axi_aclk(1'b0),
        .m_axi_araddr(NLW_inst_m_axi_araddr_UNCONNECTED[48:0]),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_aresetn(1'b0),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(NLW_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b1),
        .m_axi_rready(NLW_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_14_axic_fifo" *) 
module design_1_auto_ds_0_axi_data_fifo_v2_1_14_axic_fifo
   (dout,
    full,
    din,
    \USE_B_CHANNEL.cmd_b_empty_i_reg ,
    CLK,
    SR,
    wr_en,
    s_axi_bready,
    last_word,
    m_axi_bvalid,
    wrap_need_to_split_q,
    incr_need_to_split_q,
    fix_need_to_split_q,
    last_split__8,
    Q,
    \S_AXI_ALEN_Q_reg[3] );
  output [8:0]dout;
  output full;
  output [0:0]din;
  output \USE_B_CHANNEL.cmd_b_empty_i_reg ;
  input CLK;
  input [0:0]SR;
  input wr_en;
  input s_axi_bready;
  input last_word;
  input m_axi_bvalid;
  input wrap_need_to_split_q;
  input incr_need_to_split_q;
  input fix_need_to_split_q;
  input last_split__8;
  input [3:0]Q;
  input [3:0]\S_AXI_ALEN_Q_reg[3] ;

  wire CLK;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:0]\S_AXI_ALEN_Q_reg[3] ;
  wire \USE_B_CHANNEL.cmd_b_empty_i_reg ;
  wire [0:0]din;
  wire [8:0]dout;
  wire fix_need_to_split_q;
  wire full;
  wire incr_need_to_split_q;
  wire last_split__8;
  wire last_word;
  wire m_axi_bvalid;
  wire s_axi_bready;
  wire wr_en;
  wire wrap_need_to_split_q;

  design_1_auto_ds_0_axi_data_fifo_v2_1_14_fifo_gen inst
       (.CLK(CLK),
        .Q(Q),
        .SR(SR),
        .\S_AXI_ALEN_Q_reg[3] (\S_AXI_ALEN_Q_reg[3] ),
        .\USE_B_CHANNEL.cmd_b_empty_i_reg (\USE_B_CHANNEL.cmd_b_empty_i_reg ),
        .din(din),
        .dout(dout),
        .fix_need_to_split_q(fix_need_to_split_q),
        .full(full),
        .incr_need_to_split_q(incr_need_to_split_q),
        .last_split__8(last_split__8),
        .last_word(last_word),
        .m_axi_bvalid(m_axi_bvalid),
        .s_axi_bready(s_axi_bready),
        .wr_en(wr_en),
        .wrap_need_to_split_q(wrap_need_to_split_q));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_14_axic_fifo" *) 
module design_1_auto_ds_0_axi_data_fifo_v2_1_14_axic_fifo__parameterized0
   (\length_counter_1_reg[7] ,
    SR,
    \m_axi_awsize[2] ,
    cmd_push_block_reg,
    m_axi_awvalid,
    D,
    wr_en,
    cmd_b_push_block_reg,
    \USE_B_CHANNEL.cmd_b_depth_reg[0] ,
    \USE_B_CHANNEL.cmd_b_empty_i_reg ,
    last_split__8,
    \pushed_commands_reg[7] ,
    m_axi_wvalid,
    s_axi_wready,
    m_axi_wlast,
    first_word_reg,
    cmd_first_word_ii2__0,
    m_axi_wdata,
    m_axi_wstrb,
    \current_word_1_reg[3] ,
    S_AXI_AREADY_I_reg,
    \queue_id_reg[0] ,
    command_ongoing_reg,
    CLK,
    din,
    out,
    cmd_push_block,
    m_axi_awready,
    wrap_need_to_split_q,
    access_is_incr_q,
    incr_need_to_split_q,
    split_ongoing,
    fix_need_to_split_q,
    Q,
    cmd_b_push_block,
    empty_fwft_i_reg,
    E,
    \USE_B_CHANNEL.cmd_b_depth_reg[2] ,
    cmd_b_empty,
    s_axi_awvalid,
    command_ongoing,
    full,
    S_AXI_AID_Q,
    s_axi_bid,
    s_axi_wvalid,
    m_axi_wready,
    \S_AXI_AADDR_Q_reg[3] ,
    \split_addr_mask_q_reg[0] ,
    \split_addr_mask_q_reg[1] ,
    \split_addr_mask_q_reg[3] ,
    \split_addr_mask_q_reg[48] ,
    access_is_wrap_q,
    \wrap_unaligned_len_q_reg[7] ,
    \wrap_rest_len_reg[7] ,
    \downsized_len_q_reg[7] ,
    \S_AXI_ALEN_Q_reg[7] ,
    \fix_len_q_reg[4] ,
    \unalignment_addr_q_reg[4] ,
    si_full_size_q,
    access_is_fix_q,
    \pushed_commands_reg[7]_0 ,
    \num_transactions_q_reg[3] ,
    legal_wrap_len_q,
    first_mi_word,
    \length_counter_1_reg[1] ,
    \length_counter_1_reg[2] ,
    s_axi_wdata,
    s_axi_wstrb,
    \current_word_1_reg[3]_0 ,
    \areset_d_reg[1] );
  output [7:0]\length_counter_1_reg[7] ;
  output [0:0]SR;
  output [10:0]\m_axi_awsize[2] ;
  output cmd_push_block_reg;
  output m_axi_awvalid;
  output [4:0]D;
  output wr_en;
  output cmd_b_push_block_reg;
  output [0:0]\USE_B_CHANNEL.cmd_b_depth_reg[0] ;
  output \USE_B_CHANNEL.cmd_b_empty_i_reg ;
  output last_split__8;
  output [0:0]\pushed_commands_reg[7] ;
  output m_axi_wvalid;
  output s_axi_wready;
  output m_axi_wlast;
  output [0:0]first_word_reg;
  output cmd_first_word_ii2__0;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [3:0]\current_word_1_reg[3] ;
  output S_AXI_AREADY_I_reg;
  output \queue_id_reg[0] ;
  output command_ongoing_reg;
  input CLK;
  input [8:0]din;
  input out;
  input cmd_push_block;
  input m_axi_awready;
  input wrap_need_to_split_q;
  input access_is_incr_q;
  input incr_need_to_split_q;
  input split_ongoing;
  input fix_need_to_split_q;
  input [5:0]Q;
  input cmd_b_push_block;
  input empty_fwft_i_reg;
  input [0:0]E;
  input \USE_B_CHANNEL.cmd_b_depth_reg[2] ;
  input cmd_b_empty;
  input s_axi_awvalid;
  input command_ongoing;
  input full;
  input S_AXI_AID_Q;
  input [0:0]s_axi_bid;
  input s_axi_wvalid;
  input m_axi_wready;
  input [3:0]\S_AXI_AADDR_Q_reg[3] ;
  input \split_addr_mask_q_reg[0] ;
  input \split_addr_mask_q_reg[1] ;
  input [1:0]\split_addr_mask_q_reg[3] ;
  input \split_addr_mask_q_reg[48] ;
  input access_is_wrap_q;
  input [7:0]\wrap_unaligned_len_q_reg[7] ;
  input [7:0]\wrap_rest_len_reg[7] ;
  input [7:0]\downsized_len_q_reg[7] ;
  input [7:0]\S_AXI_ALEN_Q_reg[7] ;
  input [4:0]\fix_len_q_reg[4] ;
  input [4:0]\unalignment_addr_q_reg[4] ;
  input si_full_size_q;
  input access_is_fix_q;
  input [7:0]\pushed_commands_reg[7]_0 ;
  input [3:0]\num_transactions_q_reg[3] ;
  input legal_wrap_len_q;
  input first_mi_word;
  input \length_counter_1_reg[1] ;
  input \length_counter_1_reg[2] ;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input [3:0]\current_word_1_reg[3]_0 ;
  input [1:0]\areset_d_reg[1] ;

  wire CLK;
  wire [4:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [3:0]\S_AXI_AADDR_Q_reg[3] ;
  wire S_AXI_AID_Q;
  wire [7:0]\S_AXI_ALEN_Q_reg[7] ;
  wire S_AXI_AREADY_I_reg;
  wire [0:0]\USE_B_CHANNEL.cmd_b_depth_reg[0] ;
  wire \USE_B_CHANNEL.cmd_b_depth_reg[2] ;
  wire \USE_B_CHANNEL.cmd_b_empty_i_reg ;
  wire access_is_fix_q;
  wire access_is_incr_q;
  wire access_is_wrap_q;
  wire [1:0]\areset_d_reg[1] ;
  wire cmd_b_empty;
  wire cmd_b_push_block;
  wire cmd_b_push_block_reg;
  wire cmd_first_word_ii2__0;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire [3:0]\current_word_1_reg[3] ;
  wire [3:0]\current_word_1_reg[3]_0 ;
  wire [8:0]din;
  wire [7:0]\downsized_len_q_reg[7] ;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [0:0]first_word_reg;
  wire [4:0]\fix_len_q_reg[4] ;
  wire fix_need_to_split_q;
  wire full;
  wire incr_need_to_split_q;
  wire last_split__8;
  wire legal_wrap_len_q;
  wire \length_counter_1_reg[1] ;
  wire \length_counter_1_reg[2] ;
  wire [7:0]\length_counter_1_reg[7] ;
  wire m_axi_awready;
  wire [10:0]\m_axi_awsize[2] ;
  wire m_axi_awvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [3:0]\num_transactions_q_reg[3] ;
  wire out;
  wire [0:0]\pushed_commands_reg[7] ;
  wire [7:0]\pushed_commands_reg[7]_0 ;
  wire \queue_id_reg[0] ;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire si_full_size_q;
  wire \split_addr_mask_q_reg[0] ;
  wire \split_addr_mask_q_reg[1] ;
  wire [1:0]\split_addr_mask_q_reg[3] ;
  wire \split_addr_mask_q_reg[48] ;
  wire split_ongoing;
  wire [4:0]\unalignment_addr_q_reg[4] ;
  wire wr_en;
  wire wrap_need_to_split_q;
  wire [7:0]\wrap_rest_len_reg[7] ;
  wire [7:0]\wrap_unaligned_len_q_reg[7] ;

  design_1_auto_ds_0_axi_data_fifo_v2_1_14_fifo_gen__parameterized0 inst
       (.CLK(CLK),
        .D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .\S_AXI_AADDR_Q_reg[3] (\S_AXI_AADDR_Q_reg[3] ),
        .S_AXI_AID_Q(S_AXI_AID_Q),
        .\S_AXI_ALEN_Q_reg[7] (\S_AXI_ALEN_Q_reg[7] ),
        .S_AXI_AREADY_I_reg(last_split__8),
        .S_AXI_AREADY_I_reg_0(S_AXI_AREADY_I_reg),
        .\USE_B_CHANNEL.cmd_b_depth_reg[0] (\USE_B_CHANNEL.cmd_b_depth_reg[0] ),
        .\USE_B_CHANNEL.cmd_b_depth_reg[2] (\USE_B_CHANNEL.cmd_b_depth_reg[2] ),
        .\USE_B_CHANNEL.cmd_b_empty_i_reg (\USE_B_CHANNEL.cmd_b_empty_i_reg ),
        .access_is_fix_q(access_is_fix_q),
        .access_is_incr_q(access_is_incr_q),
        .access_is_wrap_q(access_is_wrap_q),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .cmd_b_empty(cmd_b_empty),
        .cmd_b_push_block(cmd_b_push_block),
        .cmd_b_push_block_reg(cmd_b_push_block_reg),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(cmd_push_block_reg),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(command_ongoing_reg),
        .\current_word_1_reg[3] (\current_word_1_reg[3] ),
        .\current_word_1_reg[3]_0 (\current_word_1_reg[3]_0 ),
        .din(din),
        .\downsized_len_q_reg[7] (\downsized_len_q_reg[7] ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .first_word_reg(first_word_reg),
        .\fix_len_q_reg[4] (\fix_len_q_reg[4] ),
        .fix_need_to_split_q(fix_need_to_split_q),
        .full(full),
        .incr_need_to_split_q(incr_need_to_split_q),
        .legal_wrap_len_q(legal_wrap_len_q),
        .\length_counter_1_reg[1] (\length_counter_1_reg[1] ),
        .\length_counter_1_reg[2] (\length_counter_1_reg[2] ),
        .\length_counter_1_reg[7] (\length_counter_1_reg[7] ),
        .m_axi_awready(m_axi_awready),
        .\m_axi_awsize[2] (\m_axi_awsize[2] ),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\next_mi_addr_reg[6] (cmd_first_word_ii2__0),
        .\num_transactions_q_reg[3] (\num_transactions_q_reg[3] ),
        .out(out),
        .\pushed_commands_reg[7] (\pushed_commands_reg[7] ),
        .\pushed_commands_reg[7]_0 (\pushed_commands_reg[7]_0 ),
        .\queue_id_reg[0] (\queue_id_reg[0] ),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .si_full_size_q(si_full_size_q),
        .\split_addr_mask_q_reg[0] (\split_addr_mask_q_reg[0] ),
        .\split_addr_mask_q_reg[1] (\split_addr_mask_q_reg[1] ),
        .\split_addr_mask_q_reg[3] (\split_addr_mask_q_reg[3] ),
        .\split_addr_mask_q_reg[48] (\split_addr_mask_q_reg[48] ),
        .split_ongoing(split_ongoing),
        .\unalignment_addr_q_reg[4] (\unalignment_addr_q_reg[4] ),
        .wr_en(wr_en),
        .wrap_need_to_split_q(wrap_need_to_split_q),
        .\wrap_rest_len_reg[7] (\wrap_rest_len_reg[7] ),
        .\wrap_unaligned_len_q_reg[7] (\wrap_unaligned_len_q_reg[7] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_14_fifo_gen" *) 
module design_1_auto_ds_0_axi_data_fifo_v2_1_14_fifo_gen
   (dout,
    full,
    din,
    \USE_B_CHANNEL.cmd_b_empty_i_reg ,
    CLK,
    SR,
    wr_en,
    s_axi_bready,
    last_word,
    m_axi_bvalid,
    wrap_need_to_split_q,
    incr_need_to_split_q,
    fix_need_to_split_q,
    last_split__8,
    Q,
    \S_AXI_ALEN_Q_reg[3] );
  output [8:0]dout;
  output full;
  output [0:0]din;
  output \USE_B_CHANNEL.cmd_b_empty_i_reg ;
  input CLK;
  input [0:0]SR;
  input wr_en;
  input s_axi_bready;
  input last_word;
  input m_axi_bvalid;
  input wrap_need_to_split_q;
  input incr_need_to_split_q;
  input fix_need_to_split_q;
  input last_split__8;
  input [3:0]Q;
  input [3:0]\S_AXI_ALEN_Q_reg[3] ;

  wire CLK;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:0]\S_AXI_ALEN_Q_reg[3] ;
  wire \USE_B_CHANNEL.cmd_b_empty_i_reg ;
  wire \USE_WRITE.wr_cmd_b_ready ;
  wire [0:0]din;
  wire [8:0]dout;
  wire empty;
  wire fix_need_to_split_q;
  wire full;
  wire incr_need_to_split_q;
  wire last_split__8;
  wire last_word;
  wire m_axi_bvalid;
  wire [3:0]p_1_out;
  wire s_axi_bready;
  wire wr_en;
  wire wrap_need_to_split_q;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "9" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "9" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  design_1_auto_ds_0_fifo_generator_v13_2_1 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(CLK),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({din,1'b0,1'b0,1'b0,1'b0,p_1_out}),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(\USE_WRITE.wr_cmd_b_ready ),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  LUT4 #(
    .INIT(16'h00FE)) 
    fifo_gen_inst_i_1__0
       (.I0(wrap_need_to_split_q),
        .I1(incr_need_to_split_q),
        .I2(fix_need_to_split_q),
        .I3(last_split__8),
        .O(din));
  LUT4 #(
    .INIT(16'hAAC0)) 
    fifo_gen_inst_i_2__0
       (.I0(\S_AXI_ALEN_Q_reg[3] [3]),
        .I1(Q[3]),
        .I2(incr_need_to_split_q),
        .I3(fix_need_to_split_q),
        .O(p_1_out[3]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    fifo_gen_inst_i_3__0
       (.I0(\S_AXI_ALEN_Q_reg[3] [2]),
        .I1(Q[2]),
        .I2(incr_need_to_split_q),
        .I3(fix_need_to_split_q),
        .O(p_1_out[2]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    fifo_gen_inst_i_4__0
       (.I0(\S_AXI_ALEN_Q_reg[3] [1]),
        .I1(Q[1]),
        .I2(incr_need_to_split_q),
        .I3(fix_need_to_split_q),
        .O(p_1_out[1]));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    fifo_gen_inst_i_5__0
       (.I0(wrap_need_to_split_q),
        .I1(incr_need_to_split_q),
        .I2(Q[0]),
        .I3(\S_AXI_ALEN_Q_reg[3] [0]),
        .I4(fix_need_to_split_q),
        .O(p_1_out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    fifo_gen_inst_i_7
       (.I0(\USE_B_CHANNEL.cmd_b_empty_i_reg ),
        .O(\USE_WRITE.wr_cmd_b_ready ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    fifo_gen_inst_i_8
       (.I0(s_axi_bready),
        .I1(empty),
        .I2(last_word),
        .I3(m_axi_bvalid),
        .O(\USE_B_CHANNEL.cmd_b_empty_i_reg ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_14_fifo_gen" *) 
module design_1_auto_ds_0_axi_data_fifo_v2_1_14_fifo_gen__parameterized0
   (\length_counter_1_reg[7] ,
    SR,
    \m_axi_awsize[2] ,
    cmd_push_block_reg,
    m_axi_awvalid,
    D,
    wr_en,
    cmd_b_push_block_reg,
    \USE_B_CHANNEL.cmd_b_depth_reg[0] ,
    \USE_B_CHANNEL.cmd_b_empty_i_reg ,
    S_AXI_AREADY_I_reg,
    \pushed_commands_reg[7] ,
    m_axi_wvalid,
    s_axi_wready,
    m_axi_wlast,
    first_word_reg,
    \next_mi_addr_reg[6] ,
    m_axi_wdata,
    m_axi_wstrb,
    \current_word_1_reg[3] ,
    S_AXI_AREADY_I_reg_0,
    \queue_id_reg[0] ,
    command_ongoing_reg,
    CLK,
    din,
    out,
    cmd_push_block,
    m_axi_awready,
    wrap_need_to_split_q,
    access_is_incr_q,
    incr_need_to_split_q,
    split_ongoing,
    fix_need_to_split_q,
    Q,
    cmd_b_push_block,
    empty_fwft_i_reg,
    E,
    \USE_B_CHANNEL.cmd_b_depth_reg[2] ,
    cmd_b_empty,
    s_axi_awvalid,
    command_ongoing,
    full,
    S_AXI_AID_Q,
    s_axi_bid,
    s_axi_wvalid,
    m_axi_wready,
    \S_AXI_AADDR_Q_reg[3] ,
    \split_addr_mask_q_reg[0] ,
    \split_addr_mask_q_reg[1] ,
    \split_addr_mask_q_reg[3] ,
    \split_addr_mask_q_reg[48] ,
    access_is_wrap_q,
    \wrap_unaligned_len_q_reg[7] ,
    \wrap_rest_len_reg[7] ,
    \downsized_len_q_reg[7] ,
    \S_AXI_ALEN_Q_reg[7] ,
    \fix_len_q_reg[4] ,
    \unalignment_addr_q_reg[4] ,
    si_full_size_q,
    access_is_fix_q,
    \pushed_commands_reg[7]_0 ,
    \num_transactions_q_reg[3] ,
    legal_wrap_len_q,
    first_mi_word,
    \length_counter_1_reg[1] ,
    \length_counter_1_reg[2] ,
    s_axi_wdata,
    s_axi_wstrb,
    \current_word_1_reg[3]_0 ,
    \areset_d_reg[1] );
  output [7:0]\length_counter_1_reg[7] ;
  output [0:0]SR;
  output [10:0]\m_axi_awsize[2] ;
  output cmd_push_block_reg;
  output m_axi_awvalid;
  output [4:0]D;
  output wr_en;
  output cmd_b_push_block_reg;
  output [0:0]\USE_B_CHANNEL.cmd_b_depth_reg[0] ;
  output \USE_B_CHANNEL.cmd_b_empty_i_reg ;
  output S_AXI_AREADY_I_reg;
  output [0:0]\pushed_commands_reg[7] ;
  output m_axi_wvalid;
  output s_axi_wready;
  output m_axi_wlast;
  output [0:0]first_word_reg;
  output \next_mi_addr_reg[6] ;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [3:0]\current_word_1_reg[3] ;
  output S_AXI_AREADY_I_reg_0;
  output \queue_id_reg[0] ;
  output command_ongoing_reg;
  input CLK;
  input [8:0]din;
  input out;
  input cmd_push_block;
  input m_axi_awready;
  input wrap_need_to_split_q;
  input access_is_incr_q;
  input incr_need_to_split_q;
  input split_ongoing;
  input fix_need_to_split_q;
  input [5:0]Q;
  input cmd_b_push_block;
  input empty_fwft_i_reg;
  input [0:0]E;
  input \USE_B_CHANNEL.cmd_b_depth_reg[2] ;
  input cmd_b_empty;
  input s_axi_awvalid;
  input command_ongoing;
  input full;
  input S_AXI_AID_Q;
  input [0:0]s_axi_bid;
  input s_axi_wvalid;
  input m_axi_wready;
  input [3:0]\S_AXI_AADDR_Q_reg[3] ;
  input \split_addr_mask_q_reg[0] ;
  input \split_addr_mask_q_reg[1] ;
  input [1:0]\split_addr_mask_q_reg[3] ;
  input \split_addr_mask_q_reg[48] ;
  input access_is_wrap_q;
  input [7:0]\wrap_unaligned_len_q_reg[7] ;
  input [7:0]\wrap_rest_len_reg[7] ;
  input [7:0]\downsized_len_q_reg[7] ;
  input [7:0]\S_AXI_ALEN_Q_reg[7] ;
  input [4:0]\fix_len_q_reg[4] ;
  input [4:0]\unalignment_addr_q_reg[4] ;
  input si_full_size_q;
  input access_is_fix_q;
  input [7:0]\pushed_commands_reg[7]_0 ;
  input [3:0]\num_transactions_q_reg[3] ;
  input legal_wrap_len_q;
  input first_mi_word;
  input \length_counter_1_reg[1] ;
  input \length_counter_1_reg[2] ;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input [3:0]\current_word_1_reg[3]_0 ;
  input [1:0]\areset_d_reg[1] ;

  wire CLK;
  wire [4:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [3:0]\S_AXI_AADDR_Q_reg[3] ;
  wire S_AXI_AID_Q;
  wire [7:0]\S_AXI_ALEN_Q_reg[7] ;
  wire S_AXI_AREADY_I_i_4_n_0;
  wire S_AXI_AREADY_I_i_5_n_0;
  wire S_AXI_AREADY_I_i_6_n_0;
  wire S_AXI_AREADY_I_i_7_n_0;
  wire S_AXI_AREADY_I_i_8_n_0;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire \USE_B_CHANNEL.cmd_b_depth[5]_i_3_n_0 ;
  wire [0:0]\USE_B_CHANNEL.cmd_b_depth_reg[0] ;
  wire \USE_B_CHANNEL.cmd_b_depth_reg[2] ;
  wire \USE_B_CHANNEL.cmd_b_empty_i_reg ;
  wire [3:0]\USE_WRITE.wr_cmd_first_word ;
  wire \USE_WRITE.wr_cmd_fix ;
  wire [3:0]\USE_WRITE.wr_cmd_mask ;
  wire \USE_WRITE.wr_cmd_mirror ;
  wire [3:0]\USE_WRITE.wr_cmd_offset ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire [2:0]\USE_WRITE.wr_cmd_size ;
  wire [1:0]\USE_WRITE.write_data_inst/current_index ;
  wire [3:0]\USE_WRITE.write_data_inst/current_word__3 ;
  wire access_is_fix_q;
  wire access_is_incr_q;
  wire access_is_wrap_q;
  wire [1:0]\areset_d_reg[1] ;
  wire cmd_b_empty;
  wire cmd_b_push_block;
  wire cmd_b_push_block_reg;
  wire cmd_push;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire [2:0]cmd_size_ii;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire command_ongoing_reg;
  wire \current_word_1[2]_i_3_n_0 ;
  wire [3:0]\current_word_1_reg[3] ;
  wire [3:0]\current_word_1_reg[3]_0 ;
  wire [8:0]din;
  wire [7:0]\downsized_len_q_reg[7] ;
  wire empty;
  wire empty_fwft_i_reg;
  wire fifo_gen_inst_i_12_n_0;
  wire fifo_gen_inst_i_13_n_0;
  wire first_mi_word;
  wire [0:0]first_word_reg;
  wire [4:0]\fix_len_q_reg[4] ;
  wire fix_need_to_split_q;
  wire full;
  wire full_0;
  wire incr_need_to_split_q;
  wire legal_wrap_len_q;
  wire \length_counter_1_reg[1] ;
  wire \length_counter_1_reg[2] ;
  wire [7:0]\length_counter_1_reg[7] ;
  wire \m_axi_awlen[0]_INST_0_i_1_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_2_n_0 ;
  wire \m_axi_awlen[0]_INST_0_i_3_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_1_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_2_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_3_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_4_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_5_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_6_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_7_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_8_n_0 ;
  wire \m_axi_awlen[2]_INST_0_i_9_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_1_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_2_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_3_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_4_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_5_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_6_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_7_n_0 ;
  wire \m_axi_awlen[3]_INST_0_i_8_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_1_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_2_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_3_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_4_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_5_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_6_n_0 ;
  wire \m_axi_awlen[4]_INST_0_i_7_n_0 ;
  wire \m_axi_awlen[5]_INST_0_i_1_n_0 ;
  wire \m_axi_awlen[5]_INST_0_i_2_n_0 ;
  wire \m_axi_awlen[5]_INST_0_i_3_n_0 ;
  wire \m_axi_awlen[7]_INST_0_i_10_n_0 ;
  wire \m_axi_awlen[7]_INST_0_i_1_n_0 ;
  wire \m_axi_awlen[7]_INST_0_i_2_n_0 ;
  wire \m_axi_awlen[7]_INST_0_i_3_n_0 ;
  wire \m_axi_awlen[7]_INST_0_i_4_n_0 ;
  wire \m_axi_awlen[7]_INST_0_i_6_n_0 ;
  wire \m_axi_awlen[7]_INST_0_i_7_n_0 ;
  wire \m_axi_awlen[7]_INST_0_i_8_n_0 ;
  wire \m_axi_awlen[7]_INST_0_i_9_n_0 ;
  wire m_axi_awready;
  wire [10:0]\m_axi_awsize[2] ;
  wire m_axi_awvalid;
  wire m_axi_awvalid_INST_0_i_1_n_0;
  wire [31:0]m_axi_wdata;
  wire \m_axi_wdata[31]_INST_0_i_3_n_0 ;
  wire \m_axi_wdata[31]_INST_0_i_4_n_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire \next_mi_addr_reg[6] ;
  wire [3:0]\num_transactions_q_reg[3] ;
  wire out;
  wire [28:18]p_0_out;
  wire [0:0]\pushed_commands_reg[7] ;
  wire [7:0]\pushed_commands_reg[7]_0 ;
  wire \queue_id_reg[0] ;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire s_axi_wready_INST_0_i_2_n_0;
  wire s_axi_wready_INST_0_i_3_n_0;
  wire s_axi_wready_INST_0_i_4_n_0;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire si_full_size_q;
  wire \split_addr_mask_q_reg[0] ;
  wire \split_addr_mask_q_reg[1] ;
  wire [1:0]\split_addr_mask_q_reg[3] ;
  wire \split_addr_mask_q_reg[48] ;
  wire split_ongoing;
  wire [4:0]\unalignment_addr_q_reg[4] ;
  wire wr_en;
  wire wrap_need_to_split_q;
  wire [7:0]\wrap_rest_len_reg[7] ;
  wire [7:0]\wrap_unaligned_len_q_reg[7] ;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [27:27]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(out),
        .O(SR));
  LUT6 #(
    .INIT(64'h74447444FFFF7444)) 
    S_AXI_AREADY_I_i_2
       (.I0(s_axi_awvalid),
        .I1(E),
        .I2(\pushed_commands_reg[7] ),
        .I3(S_AXI_AREADY_I_reg),
        .I4(\areset_d_reg[1] [1]),
        .I5(\areset_d_reg[1] [0]),
        .O(S_AXI_AREADY_I_reg_0));
  LUT5 #(
    .INIT(32'hAAAAAAFE)) 
    S_AXI_AREADY_I_i_3
       (.I0(S_AXI_AREADY_I_i_4_n_0),
        .I1(S_AXI_AREADY_I_i_5_n_0),
        .I2(S_AXI_AREADY_I_i_6_n_0),
        .I3(\pushed_commands_reg[7]_0 [6]),
        .I4(\pushed_commands_reg[7]_0 [7]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF444F4F4)) 
    S_AXI_AREADY_I_i_4
       (.I0(fix_need_to_split_q),
        .I1(access_is_fix_q),
        .I2(access_is_wrap_q),
        .I3(split_ongoing),
        .I4(wrap_need_to_split_q),
        .O(S_AXI_AREADY_I_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000082000082)) 
    S_AXI_AREADY_I_i_5
       (.I0(access_is_fix_q),
        .I1(\S_AXI_ALEN_Q_reg[7] [2]),
        .I2(\pushed_commands_reg[7]_0 [2]),
        .I3(\S_AXI_ALEN_Q_reg[7] [1]),
        .I4(\pushed_commands_reg[7]_0 [1]),
        .I5(S_AXI_AREADY_I_i_7_n_0),
        .O(S_AXI_AREADY_I_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000082000082)) 
    S_AXI_AREADY_I_i_6
       (.I0(access_is_incr_q),
        .I1(\num_transactions_q_reg[3] [2]),
        .I2(\pushed_commands_reg[7]_0 [2]),
        .I3(\num_transactions_q_reg[3] [1]),
        .I4(\pushed_commands_reg[7]_0 [1]),
        .I5(S_AXI_AREADY_I_i_8_n_0),
        .O(S_AXI_AREADY_I_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    S_AXI_AREADY_I_i_7
       (.I0(\pushed_commands_reg[7]_0 [3]),
        .I1(\S_AXI_ALEN_Q_reg[7] [3]),
        .I2(\pushed_commands_reg[7]_0 [0]),
        .I3(\S_AXI_ALEN_Q_reg[7] [0]),
        .I4(\pushed_commands_reg[7]_0 [4]),
        .I5(\pushed_commands_reg[7]_0 [5]),
        .O(S_AXI_AREADY_I_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    S_AXI_AREADY_I_i_8
       (.I0(\pushed_commands_reg[7]_0 [3]),
        .I1(\num_transactions_q_reg[3] [3]),
        .I2(\pushed_commands_reg[7]_0 [0]),
        .I3(\num_transactions_q_reg[3] [0]),
        .I4(\pushed_commands_reg[7]_0 [4]),
        .I5(\pushed_commands_reg[7]_0 [5]),
        .O(S_AXI_AREADY_I_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hBF4040BF)) 
    \USE_B_CHANNEL.cmd_b_depth[1]_i_1 
       (.I0(cmd_b_push_block),
        .I1(m_axi_awvalid),
        .I2(empty_fwft_i_reg),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \USE_B_CHANNEL.cmd_b_depth[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\USE_B_CHANNEL.cmd_b_depth[5]_i_3_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \USE_B_CHANNEL.cmd_b_depth[3]_i_1 
       (.I0(\USE_B_CHANNEL.cmd_b_depth[5]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \USE_B_CHANNEL.cmd_b_depth[4]_i_1 
       (.I0(\USE_B_CHANNEL.cmd_b_depth[5]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h4B)) 
    \USE_B_CHANNEL.cmd_b_depth[5]_i_1 
       (.I0(cmd_b_push_block),
        .I1(m_axi_awvalid),
        .I2(empty_fwft_i_reg),
        .O(\USE_B_CHANNEL.cmd_b_depth_reg[0] ));
  LUT6 #(
    .INIT(64'h7F80FF00FF00FE01)) 
    \USE_B_CHANNEL.cmd_b_depth[5]_i_2 
       (.I0(\USE_B_CHANNEL.cmd_b_depth[5]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h40FF0040)) 
    \USE_B_CHANNEL.cmd_b_depth[5]_i_3 
       (.I0(cmd_b_push_block),
        .I1(m_axi_awvalid),
        .I2(empty_fwft_i_reg),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\USE_B_CHANNEL.cmd_b_depth[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hBFB40B00)) 
    \USE_B_CHANNEL.cmd_b_empty_i_i_1 
       (.I0(cmd_b_push_block),
        .I1(m_axi_awvalid),
        .I2(empty_fwft_i_reg),
        .I3(\USE_B_CHANNEL.cmd_b_depth_reg[2] ),
        .I4(cmd_b_empty),
        .O(\USE_B_CHANNEL.cmd_b_empty_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    cmd_b_push_block_i_1
       (.I0(cmd_b_push_block),
        .I1(m_axi_awvalid),
        .I2(out),
        .I3(E),
        .O(cmd_b_push_block_reg));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0A88)) 
    cmd_push_block_i_1
       (.I0(out),
        .I1(cmd_push_block),
        .I2(m_axi_awready),
        .I3(m_axi_awvalid),
        .O(cmd_push_block_reg));
  LUT6 #(
    .INIT(64'h88F8FFFF88080000)) 
    command_ongoing_i_1
       (.I0(s_axi_awvalid),
        .I1(E),
        .I2(\areset_d_reg[1] [1]),
        .I3(\areset_d_reg[1] [0]),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(command_ongoing_reg));
  LUT4 #(
    .INIT(16'hF888)) 
    command_ongoing_i_2
       (.I0(S_AXI_AREADY_I_reg),
        .I1(\pushed_commands_reg[7] ),
        .I2(E),
        .I3(s_axi_awvalid),
        .O(command_ongoing_i_2_n_0));
  LUT5 #(
    .INIT(32'hFE000100)) 
    \current_word_1[0]_i_1 
       (.I0(cmd_size_ii[0]),
        .I1(cmd_size_ii[2]),
        .I2(cmd_size_ii[1]),
        .I3(\USE_WRITE.wr_cmd_mask [0]),
        .I4(\USE_WRITE.write_data_inst/current_word__3 [0]),
        .O(\current_word_1_reg[3] [0]));
  LUT6 #(
    .INIT(64'hEEEF000011100000)) 
    \current_word_1[1]_i_1 
       (.I0(cmd_size_ii[1]),
        .I1(cmd_size_ii[2]),
        .I2(cmd_size_ii[0]),
        .I3(\USE_WRITE.write_data_inst/current_word__3 [0]),
        .I4(\USE_WRITE.wr_cmd_mask [1]),
        .I5(\USE_WRITE.write_data_inst/current_word__3 [1]),
        .O(\current_word_1_reg[3] [1]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \current_word_1[1]_i_2 
       (.I0(\USE_WRITE.wr_cmd_first_word [0]),
        .I1(\USE_WRITE.wr_cmd_fix ),
        .I2(first_mi_word),
        .I3(\current_word_1_reg[3]_0 [0]),
        .O(\USE_WRITE.write_data_inst/current_word__3 [0]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \current_word_1[1]_i_3 
       (.I0(\USE_WRITE.wr_cmd_first_word [1]),
        .I1(\USE_WRITE.wr_cmd_fix ),
        .I2(first_mi_word),
        .I3(\current_word_1_reg[3]_0 [1]),
        .O(\USE_WRITE.write_data_inst/current_word__3 [1]));
  LUT6 #(
    .INIT(64'h6666669600000000)) 
    \current_word_1[2]_i_1 
       (.I0(\USE_WRITE.write_data_inst/current_word__3 [2]),
        .I1(\current_word_1[2]_i_3_n_0 ),
        .I2(cmd_size_ii[1]),
        .I3(cmd_size_ii[2]),
        .I4(cmd_size_ii[0]),
        .I5(\USE_WRITE.wr_cmd_mask [2]),
        .O(\current_word_1_reg[3] [2]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \current_word_1[2]_i_2 
       (.I0(\USE_WRITE.wr_cmd_first_word [2]),
        .I1(\USE_WRITE.wr_cmd_fix ),
        .I2(first_mi_word),
        .I3(\current_word_1_reg[3]_0 [2]),
        .O(\USE_WRITE.write_data_inst/current_word__3 [2]));
  LUT5 #(
    .INIT(32'h000000C8)) 
    \current_word_1[2]_i_3 
       (.I0(cmd_size_ii[0]),
        .I1(\USE_WRITE.write_data_inst/current_word__3 [1]),
        .I2(\USE_WRITE.write_data_inst/current_word__3 [0]),
        .I3(cmd_size_ii[2]),
        .I4(cmd_size_ii[1]),
        .O(\current_word_1[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \current_word_1[3]_i_1 
       (.I0(s_axi_wready_INST_0_i_4_n_0),
        .I1(\USE_WRITE.wr_cmd_mask [3]),
        .O(\current_word_1_reg[3] [3]));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "29" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "29" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  design_1_auto_ds_0_fifo_generator_v13_2_1__parameterized0 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(CLK),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({p_0_out[28],din[8:7],p_0_out[25:18],din[6:3],\m_axi_awsize[2] ,din[2:0]}),
        .dout({\USE_WRITE.wr_cmd_fix ,NLW_fifo_gen_inst_dout_UNCONNECTED[27],\USE_WRITE.wr_cmd_mirror ,\USE_WRITE.wr_cmd_first_word ,\USE_WRITE.wr_cmd_offset ,\USE_WRITE.wr_cmd_mask ,cmd_size_ii,\length_counter_1_reg[7] ,\USE_WRITE.wr_cmd_size }),
        .empty(empty),
        .full(full_0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_1
       (.I0(access_is_fix_q),
        .I1(din[7]),
        .O(p_0_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    fifo_gen_inst_i_10
       (.I0(m_axi_awvalid),
        .I1(cmd_push_block),
        .O(cmd_push));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    fifo_gen_inst_i_11
       (.I0(s_axi_wvalid),
        .I1(m_axi_wready),
        .I2(empty),
        .I3(m_axi_wlast),
        .O(\USE_WRITE.wr_cmd_ready ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    fifo_gen_inst_i_12
       (.I0(access_is_incr_q),
        .I1(access_is_wrap_q),
        .I2(split_ongoing),
        .O(fifo_gen_inst_i_12_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    fifo_gen_inst_i_13
       (.I0(si_full_size_q),
        .I1(access_is_wrap_q),
        .I2(split_ongoing),
        .O(fifo_gen_inst_i_13_n_0));
  LUT6 #(
    .INIT(64'h8800800080008000)) 
    fifo_gen_inst_i_2
       (.I0(din[6]),
        .I1(\S_AXI_AADDR_Q_reg[3] [3]),
        .I2(fifo_gen_inst_i_12_n_0),
        .I3(\split_addr_mask_q_reg[48] ),
        .I4(\split_addr_mask_q_reg[3] [1]),
        .I5(fifo_gen_inst_i_13_n_0),
        .O(p_0_out[25]));
  LUT6 #(
    .INIT(64'h8800800080008000)) 
    fifo_gen_inst_i_3
       (.I0(din[5]),
        .I1(\S_AXI_AADDR_Q_reg[3] [2]),
        .I2(fifo_gen_inst_i_12_n_0),
        .I3(\split_addr_mask_q_reg[48] ),
        .I4(\split_addr_mask_q_reg[3] [0]),
        .I5(fifo_gen_inst_i_13_n_0),
        .O(p_0_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    fifo_gen_inst_i_4
       (.I0(\S_AXI_AADDR_Q_reg[3] [1]),
        .I1(\split_addr_mask_q_reg[1] ),
        .I2(din[4]),
        .I3(fifo_gen_inst_i_12_n_0),
        .I4(fifo_gen_inst_i_13_n_0),
        .O(p_0_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    fifo_gen_inst_i_5
       (.I0(\S_AXI_AADDR_Q_reg[3] [0]),
        .I1(\split_addr_mask_q_reg[0] ),
        .I2(din[3]),
        .I3(fifo_gen_inst_i_12_n_0),
        .I4(fifo_gen_inst_i_13_n_0),
        .O(p_0_out[22]));
  LUT5 #(
    .INIT(32'h44404040)) 
    fifo_gen_inst_i_6
       (.I0(din[6]),
        .I1(\S_AXI_AADDR_Q_reg[3] [3]),
        .I2(fifo_gen_inst_i_12_n_0),
        .I3(fifo_gen_inst_i_13_n_0),
        .I4(\split_addr_mask_q_reg[3] [1]),
        .O(p_0_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h4)) 
    fifo_gen_inst_i_6__0
       (.I0(cmd_b_push_block),
        .I1(m_axi_awvalid),
        .O(wr_en));
  LUT5 #(
    .INIT(32'h44404040)) 
    fifo_gen_inst_i_7__0
       (.I0(din[5]),
        .I1(\S_AXI_AADDR_Q_reg[3] [2]),
        .I2(fifo_gen_inst_i_12_n_0),
        .I3(fifo_gen_inst_i_13_n_0),
        .I4(\split_addr_mask_q_reg[3] [0]),
        .O(p_0_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h44404040)) 
    fifo_gen_inst_i_8__0
       (.I0(din[4]),
        .I1(\S_AXI_AADDR_Q_reg[3] [1]),
        .I2(fifo_gen_inst_i_12_n_0),
        .I3(fifo_gen_inst_i_13_n_0),
        .I4(\split_addr_mask_q_reg[1] ),
        .O(p_0_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h44404040)) 
    fifo_gen_inst_i_9
       (.I0(din[3]),
        .I1(\S_AXI_AADDR_Q_reg[3] [0]),
        .I2(fifo_gen_inst_i_12_n_0),
        .I3(fifo_gen_inst_i_13_n_0),
        .I4(\split_addr_mask_q_reg[0] ),
        .O(p_0_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    first_word_i_1
       (.I0(empty),
        .I1(m_axi_wready),
        .I2(s_axi_wvalid),
        .O(first_word_reg));
  LUT6 #(
    .INIT(64'hBABBBFBB45444044)) 
    \m_axi_awlen[0]_INST_0 
       (.I0(\m_axi_awlen[0]_INST_0_i_1_n_0 ),
        .I1(\unalignment_addr_q_reg[4] [0]),
        .I2(split_ongoing),
        .I3(wrap_need_to_split_q),
        .I4(\wrap_unaligned_len_q_reg[7] [0]),
        .I5(\m_axi_awlen[0]_INST_0_i_2_n_0 ),
        .O(\m_axi_awsize[2] [0]));
  LUT6 #(
    .INIT(64'h00000000FFCF0045)) 
    \m_axi_awlen[0]_INST_0_i_1 
       (.I0(wrap_need_to_split_q),
        .I1(din[7]),
        .I2(access_is_incr_q),
        .I3(incr_need_to_split_q),
        .I4(split_ongoing),
        .I5(fix_need_to_split_q),
        .O(\m_axi_awlen[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FF8888)) 
    \m_axi_awlen[0]_INST_0_i_2 
       (.I0(\S_AXI_ALEN_Q_reg[7] [0]),
        .I1(din[7]),
        .I2(\wrap_rest_len_reg[7] [0]),
        .I3(\next_mi_addr_reg[6] ),
        .I4(\m_axi_awlen[7]_INST_0_i_6_n_0 ),
        .I5(\m_axi_awlen[0]_INST_0_i_3_n_0 ),
        .O(\m_axi_awlen[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0C0A00)) 
    \m_axi_awlen[0]_INST_0_i_3 
       (.I0(\downsized_len_q_reg[7] [0]),
        .I1(\fix_len_q_reg[4] [0]),
        .I2(din[7]),
        .I3(\m_axi_awlen[3]_INST_0_i_5_n_0 ),
        .I4(fix_need_to_split_q),
        .O(\m_axi_awlen[0]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \m_axi_awlen[1]_INST_0 
       (.I0(\m_axi_awlen[2]_INST_0_i_5_n_0 ),
        .I1(\m_axi_awlen[2]_INST_0_i_3_n_0 ),
        .I2(\m_axi_awlen[2]_INST_0_i_4_n_0 ),
        .O(\m_axi_awsize[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \m_axi_awlen[2]_INST_0 
       (.I0(\m_axi_awlen[2]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awlen[2]_INST_0_i_2_n_0 ),
        .I2(\m_axi_awlen[2]_INST_0_i_3_n_0 ),
        .I3(\m_axi_awlen[2]_INST_0_i_4_n_0 ),
        .I4(\m_axi_awlen[2]_INST_0_i_5_n_0 ),
        .O(\m_axi_awsize[2] [2]));
  LUT5 #(
    .INIT(32'hBABBBFBB)) 
    \m_axi_awlen[2]_INST_0_i_1 
       (.I0(\m_axi_awlen[0]_INST_0_i_1_n_0 ),
        .I1(\unalignment_addr_q_reg[4] [2]),
        .I2(split_ongoing),
        .I3(wrap_need_to_split_q),
        .I4(\wrap_unaligned_len_q_reg[7] [2]),
        .O(\m_axi_awlen[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FF8888)) 
    \m_axi_awlen[2]_INST_0_i_2 
       (.I0(\S_AXI_ALEN_Q_reg[7] [2]),
        .I1(din[7]),
        .I2(\wrap_rest_len_reg[7] [2]),
        .I3(\next_mi_addr_reg[6] ),
        .I4(\m_axi_awlen[7]_INST_0_i_6_n_0 ),
        .I5(\m_axi_awlen[2]_INST_0_i_6_n_0 ),
        .O(\m_axi_awlen[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBFBB)) 
    \m_axi_awlen[2]_INST_0_i_3 
       (.I0(\m_axi_awlen[0]_INST_0_i_1_n_0 ),
        .I1(\unalignment_addr_q_reg[4] [1]),
        .I2(split_ongoing),
        .I3(wrap_need_to_split_q),
        .I4(\wrap_unaligned_len_q_reg[7] [1]),
        .O(\m_axi_awlen[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FF8888)) 
    \m_axi_awlen[2]_INST_0_i_4 
       (.I0(\S_AXI_ALEN_Q_reg[7] [1]),
        .I1(din[7]),
        .I2(\wrap_rest_len_reg[7] [1]),
        .I3(\next_mi_addr_reg[6] ),
        .I4(\m_axi_awlen[7]_INST_0_i_6_n_0 ),
        .I5(\m_axi_awlen[2]_INST_0_i_7_n_0 ),
        .O(\m_axi_awlen[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \m_axi_awlen[2]_INST_0_i_5 
       (.I0(\downsized_len_q_reg[7] [0]),
        .I1(\m_axi_awlen[7]_INST_0_i_8_n_0 ),
        .I2(\fix_len_q_reg[4] [0]),
        .I3(\m_axi_awlen[4]_INST_0_i_5_n_0 ),
        .I4(\m_axi_awlen[2]_INST_0_i_8_n_0 ),
        .I5(\m_axi_awlen[2]_INST_0_i_9_n_0 ),
        .O(\m_axi_awlen[2]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0A0C0A00)) 
    \m_axi_awlen[2]_INST_0_i_6 
       (.I0(\downsized_len_q_reg[7] [2]),
        .I1(\fix_len_q_reg[4] [2]),
        .I2(din[7]),
        .I3(\m_axi_awlen[3]_INST_0_i_5_n_0 ),
        .I4(fix_need_to_split_q),
        .O(\m_axi_awlen[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0A0C0A00)) 
    \m_axi_awlen[2]_INST_0_i_7 
       (.I0(\downsized_len_q_reg[7] [1]),
        .I1(\fix_len_q_reg[4] [1]),
        .I2(din[7]),
        .I3(\m_axi_awlen[3]_INST_0_i_5_n_0 ),
        .I4(fix_need_to_split_q),
        .O(\m_axi_awlen[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF110100001101)) 
    \m_axi_awlen[2]_INST_0_i_8 
       (.I0(fix_need_to_split_q),
        .I1(\m_axi_awlen[3]_INST_0_i_5_n_0 ),
        .I2(\next_mi_addr_reg[6] ),
        .I3(\wrap_rest_len_reg[7] [0]),
        .I4(din[7]),
        .I5(\S_AXI_ALEN_Q_reg[7] [0]),
        .O(\m_axi_awlen[2]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBFBB)) 
    \m_axi_awlen[2]_INST_0_i_9 
       (.I0(\m_axi_awlen[0]_INST_0_i_1_n_0 ),
        .I1(\unalignment_addr_q_reg[4] [0]),
        .I2(split_ongoing),
        .I3(wrap_need_to_split_q),
        .I4(\wrap_unaligned_len_q_reg[7] [0]),
        .O(\m_axi_awlen[2]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \m_axi_awlen[3]_INST_0 
       (.I0(\m_axi_awlen[3]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awlen[3]_INST_0_i_2_n_0 ),
        .I2(\m_axi_awlen[3]_INST_0_i_3_n_0 ),
        .O(\m_axi_awsize[2] [3]));
  LUT5 #(
    .INIT(32'hBABBBFBB)) 
    \m_axi_awlen[3]_INST_0_i_1 
       (.I0(\m_axi_awlen[0]_INST_0_i_1_n_0 ),
        .I1(\unalignment_addr_q_reg[4] [3]),
        .I2(split_ongoing),
        .I3(wrap_need_to_split_q),
        .I4(\wrap_unaligned_len_q_reg[7] [3]),
        .O(\m_axi_awlen[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FF8888)) 
    \m_axi_awlen[3]_INST_0_i_2 
       (.I0(\S_AXI_ALEN_Q_reg[7] [3]),
        .I1(din[7]),
        .I2(\wrap_rest_len_reg[7] [3]),
        .I3(\next_mi_addr_reg[6] ),
        .I4(\m_axi_awlen[7]_INST_0_i_6_n_0 ),
        .I5(\m_axi_awlen[3]_INST_0_i_4_n_0 ),
        .O(\m_axi_awlen[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \m_axi_awlen[3]_INST_0_i_3 
       (.I0(\m_axi_awlen[2]_INST_0_i_2_n_0 ),
        .I1(\m_axi_awlen[2]_INST_0_i_5_n_0 ),
        .I2(\m_axi_awlen[2]_INST_0_i_4_n_0 ),
        .I3(\m_axi_awlen[2]_INST_0_i_3_n_0 ),
        .I4(\m_axi_awlen[2]_INST_0_i_1_n_0 ),
        .O(\m_axi_awlen[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0A0C0A00)) 
    \m_axi_awlen[3]_INST_0_i_4 
       (.I0(\downsized_len_q_reg[7] [3]),
        .I1(\fix_len_q_reg[4] [3]),
        .I2(din[7]),
        .I3(\m_axi_awlen[3]_INST_0_i_5_n_0 ),
        .I4(fix_need_to_split_q),
        .O(\m_axi_awlen[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEEEA)) 
    \m_axi_awlen[3]_INST_0_i_5 
       (.I0(\m_axi_awlen[7]_INST_0_i_10_n_0 ),
        .I1(access_is_incr_q),
        .I2(S_AXI_AREADY_I_i_4_n_0),
        .I3(\m_axi_awlen[3]_INST_0_i_6_n_0 ),
        .I4(\pushed_commands_reg[7]_0 [6]),
        .I5(\pushed_commands_reg[7]_0 [7]),
        .O(\m_axi_awlen[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    \m_axi_awlen[3]_INST_0_i_6 
       (.I0(S_AXI_AREADY_I_i_7_n_0),
        .I1(\m_axi_awlen[3]_INST_0_i_7_n_0 ),
        .I2(access_is_fix_q),
        .I3(S_AXI_AREADY_I_i_8_n_0),
        .I4(\m_axi_awlen[3]_INST_0_i_8_n_0 ),
        .I5(access_is_incr_q),
        .O(\m_axi_awlen[3]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \m_axi_awlen[3]_INST_0_i_7 
       (.I0(\S_AXI_ALEN_Q_reg[7] [2]),
        .I1(\pushed_commands_reg[7]_0 [2]),
        .I2(\S_AXI_ALEN_Q_reg[7] [1]),
        .I3(\pushed_commands_reg[7]_0 [1]),
        .O(\m_axi_awlen[3]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \m_axi_awlen[3]_INST_0_i_8 
       (.I0(\num_transactions_q_reg[3] [2]),
        .I1(\pushed_commands_reg[7]_0 [2]),
        .I2(\num_transactions_q_reg[3] [1]),
        .I3(\pushed_commands_reg[7]_0 [1]),
        .O(\m_axi_awlen[3]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axi_awlen[4]_INST_0 
       (.I0(\m_axi_awlen[4]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awlen[4]_INST_0_i_2_n_0 ),
        .I2(\m_axi_awlen[4]_INST_0_i_3_n_0 ),
        .O(\m_axi_awsize[2] [4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hBABBBFBB)) 
    \m_axi_awlen[4]_INST_0_i_1 
       (.I0(\m_axi_awlen[0]_INST_0_i_1_n_0 ),
        .I1(\unalignment_addr_q_reg[4] [4]),
        .I2(split_ongoing),
        .I3(wrap_need_to_split_q),
        .I4(\wrap_unaligned_len_q_reg[7] [4]),
        .O(\m_axi_awlen[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \m_axi_awlen[4]_INST_0_i_2 
       (.I0(\m_axi_awlen[4]_INST_0_i_4_n_0 ),
        .I1(\m_axi_awlen[4]_INST_0_i_5_n_0 ),
        .I2(\fix_len_q_reg[4] [4]),
        .I3(\m_axi_awlen[7]_INST_0_i_8_n_0 ),
        .I4(\downsized_len_q_reg[7] [4]),
        .O(\m_axi_awlen[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \m_axi_awlen[4]_INST_0_i_3 
       (.I0(\m_axi_awlen[3]_INST_0_i_2_n_0 ),
        .I1(\m_axi_awlen[2]_INST_0_i_2_n_0 ),
        .I2(\m_axi_awlen[4]_INST_0_i_6_n_0 ),
        .I3(\m_axi_awlen[2]_INST_0_i_1_n_0 ),
        .I4(\m_axi_awlen[3]_INST_0_i_1_n_0 ),
        .O(\m_axi_awlen[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA2AAA2AAA2A)) 
    \m_axi_awlen[4]_INST_0_i_4 
       (.I0(\m_axi_awlen[7]_INST_0_i_6_n_0 ),
        .I1(access_is_wrap_q),
        .I2(split_ongoing),
        .I3(\wrap_rest_len_reg[7] [4]),
        .I4(din[7]),
        .I5(\S_AXI_ALEN_Q_reg[7] [4]),
        .O(\m_axi_awlen[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h01110000)) 
    \m_axi_awlen[4]_INST_0_i_5 
       (.I0(din[7]),
        .I1(\m_axi_awlen[7]_INST_0_i_10_n_0 ),
        .I2(access_is_incr_q),
        .I3(S_AXI_AREADY_I_reg),
        .I4(fix_need_to_split_q),
        .O(\m_axi_awlen[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFE00)) 
    \m_axi_awlen[4]_INST_0_i_6 
       (.I0(\m_axi_awlen[0]_INST_0_i_3_n_0 ),
        .I1(\m_axi_awlen[2]_INST_0_i_8_n_0 ),
        .I2(\m_axi_awlen[2]_INST_0_i_9_n_0 ),
        .I3(\m_axi_awlen[2]_INST_0_i_7_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_7_n_0 ),
        .I5(\m_axi_awlen[2]_INST_0_i_3_n_0 ),
        .O(\m_axi_awlen[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF110100001101)) 
    \m_axi_awlen[4]_INST_0_i_7 
       (.I0(fix_need_to_split_q),
        .I1(\m_axi_awlen[3]_INST_0_i_5_n_0 ),
        .I2(\next_mi_addr_reg[6] ),
        .I3(\wrap_rest_len_reg[7] [1]),
        .I4(din[7]),
        .I5(\S_AXI_ALEN_Q_reg[7] [1]),
        .O(\m_axi_awlen[4]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    \m_axi_awlen[5]_INST_0 
       (.I0(\wrap_unaligned_len_q_reg[7] [5]),
        .I1(split_ongoing),
        .I2(wrap_need_to_split_q),
        .I3(\m_axi_awlen[5]_INST_0_i_1_n_0 ),
        .I4(\m_axi_awlen[5]_INST_0_i_2_n_0 ),
        .O(\m_axi_awsize[2] [5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \m_axi_awlen[5]_INST_0_i_1 
       (.I0(\m_axi_awlen[4]_INST_0_i_2_n_0 ),
        .I1(\m_axi_awlen[4]_INST_0_i_3_n_0 ),
        .I2(\m_axi_awlen[4]_INST_0_i_1_n_0 ),
        .O(\m_axi_awlen[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \m_axi_awlen[5]_INST_0_i_2 
       (.I0(\m_axi_awlen[7]_INST_0_i_8_n_0 ),
        .I1(\downsized_len_q_reg[7] [5]),
        .I2(\S_AXI_ALEN_Q_reg[7] [5]),
        .I3(din[7]),
        .I4(\m_axi_awlen[5]_INST_0_i_3_n_0 ),
        .O(\m_axi_awlen[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \m_axi_awlen[5]_INST_0_i_3 
       (.I0(\wrap_rest_len_reg[7] [5]),
        .I1(split_ongoing),
        .I2(access_is_wrap_q),
        .I3(\m_axi_awlen[7]_INST_0_i_6_n_0 ),
        .O(\m_axi_awlen[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDF2020DF)) 
    \m_axi_awlen[6]_INST_0 
       (.I0(\wrap_unaligned_len_q_reg[7] [6]),
        .I1(split_ongoing),
        .I2(wrap_need_to_split_q),
        .I3(\m_axi_awlen[7]_INST_0_i_2_n_0 ),
        .I4(\m_axi_awlen[7]_INST_0_i_3_n_0 ),
        .O(\m_axi_awsize[2] [6]));
  LUT6 #(
    .INIT(64'h555559555955AAAA)) 
    \m_axi_awlen[7]_INST_0 
       (.I0(\m_axi_awlen[7]_INST_0_i_1_n_0 ),
        .I1(wrap_need_to_split_q),
        .I2(split_ongoing),
        .I3(\wrap_unaligned_len_q_reg[7] [6]),
        .I4(\m_axi_awlen[7]_INST_0_i_2_n_0 ),
        .I5(\m_axi_awlen[7]_INST_0_i_3_n_0 ),
        .O(\m_axi_awsize[2] [7]));
  LUT6 #(
    .INIT(64'h222222222D22DDDD)) 
    \m_axi_awlen[7]_INST_0_i_1 
       (.I0(\wrap_unaligned_len_q_reg[7] [7]),
        .I1(\m_axi_awlen[7]_INST_0_i_4_n_0 ),
        .I2(\wrap_rest_len_reg[7] [7]),
        .I3(\next_mi_addr_reg[6] ),
        .I4(\m_axi_awlen[7]_INST_0_i_6_n_0 ),
        .I5(\m_axi_awlen[7]_INST_0_i_7_n_0 ),
        .O(\m_axi_awlen[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFF2F2222)) 
    \m_axi_awlen[7]_INST_0_i_10 
       (.I0(access_is_incr_q),
        .I1(incr_need_to_split_q),
        .I2(split_ongoing),
        .I3(legal_wrap_len_q),
        .I4(access_is_wrap_q),
        .O(\m_axi_awlen[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBB0FBB0B0B0)) 
    \m_axi_awlen[7]_INST_0_i_2 
       (.I0(\m_axi_awlen[7]_INST_0_i_4_n_0 ),
        .I1(\wrap_unaligned_len_q_reg[7] [5]),
        .I2(\m_axi_awlen[5]_INST_0_i_2_n_0 ),
        .I3(\m_axi_awlen[4]_INST_0_i_1_n_0 ),
        .I4(\m_axi_awlen[4]_INST_0_i_3_n_0 ),
        .I5(\m_axi_awlen[4]_INST_0_i_2_n_0 ),
        .O(\m_axi_awlen[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \m_axi_awlen[7]_INST_0_i_3 
       (.I0(\m_axi_awlen[7]_INST_0_i_8_n_0 ),
        .I1(\downsized_len_q_reg[7] [6]),
        .I2(\S_AXI_ALEN_Q_reg[7] [6]),
        .I3(din[7]),
        .I4(\m_axi_awlen[7]_INST_0_i_9_n_0 ),
        .O(\m_axi_awlen[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_axi_awlen[7]_INST_0_i_4 
       (.I0(split_ongoing),
        .I1(wrap_need_to_split_q),
        .O(\m_axi_awlen[7]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awlen[7]_INST_0_i_5 
       (.I0(split_ongoing),
        .I1(access_is_wrap_q),
        .O(\next_mi_addr_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000111)) 
    \m_axi_awlen[7]_INST_0_i_6 
       (.I0(din[7]),
        .I1(\m_axi_awlen[7]_INST_0_i_10_n_0 ),
        .I2(access_is_incr_q),
        .I3(S_AXI_AREADY_I_reg),
        .I4(fix_need_to_split_q),
        .O(\m_axi_awlen[7]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axi_awlen[7]_INST_0_i_7 
       (.I0(din[7]),
        .I1(\S_AXI_ALEN_Q_reg[7] [7]),
        .I2(\downsized_len_q_reg[7] [7]),
        .I3(\m_axi_awlen[7]_INST_0_i_8_n_0 ),
        .O(\m_axi_awlen[7]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00F8)) 
    \m_axi_awlen[7]_INST_0_i_8 
       (.I0(S_AXI_AREADY_I_reg),
        .I1(access_is_incr_q),
        .I2(\m_axi_awlen[7]_INST_0_i_10_n_0 ),
        .I3(din[7]),
        .O(\m_axi_awlen[7]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \m_axi_awlen[7]_INST_0_i_9 
       (.I0(\wrap_rest_len_reg[7] [6]),
        .I1(split_ongoing),
        .I2(access_is_wrap_q),
        .I3(\m_axi_awlen[7]_INST_0_i_6_n_0 ),
        .O(\m_axi_awlen[7]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awsize[0]_INST_0 
       (.I0(din[7]),
        .I1(din[0]),
        .O(\m_axi_awsize[2] [8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_axi_awsize[1]_INST_0 
       (.I0(din[1]),
        .I1(din[7]),
        .O(\m_axi_awsize[2] [9]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awsize[2]_INST_0 
       (.I0(din[7]),
        .I1(din[2]),
        .O(\m_axi_awsize[2] [10]));
  LUT3 #(
    .INIT(8'hEA)) 
    m_axi_awvalid_INST_0
       (.I0(m_axi_awvalid_INST_0_i_1_n_0),
        .I1(cmd_push_block),
        .I2(command_ongoing),
        .O(m_axi_awvalid));
  LUT6 #(
    .INIT(64'h0202020002000202)) 
    m_axi_awvalid_INST_0_i_1
       (.I0(command_ongoing),
        .I1(full_0),
        .I2(full),
        .I3(cmd_b_empty),
        .I4(S_AXI_AID_Q),
        .I5(s_axi_bid),
        .O(m_axi_awvalid_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[0]_INST_0 
       (.I0(s_axi_wdata[64]),
        .I1(s_axi_wdata[96]),
        .I2(s_axi_wdata[0]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[32]),
        .O(m_axi_wdata[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[10]_INST_0 
       (.I0(s_axi_wdata[74]),
        .I1(s_axi_wdata[106]),
        .I2(s_axi_wdata[10]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[42]),
        .O(m_axi_wdata[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[11]_INST_0 
       (.I0(s_axi_wdata[75]),
        .I1(s_axi_wdata[107]),
        .I2(s_axi_wdata[11]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[43]),
        .O(m_axi_wdata[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[12]_INST_0 
       (.I0(s_axi_wdata[76]),
        .I1(s_axi_wdata[108]),
        .I2(s_axi_wdata[12]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[44]),
        .O(m_axi_wdata[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[13]_INST_0 
       (.I0(s_axi_wdata[77]),
        .I1(s_axi_wdata[109]),
        .I2(s_axi_wdata[13]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[45]),
        .O(m_axi_wdata[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[14]_INST_0 
       (.I0(s_axi_wdata[78]),
        .I1(s_axi_wdata[110]),
        .I2(s_axi_wdata[14]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[46]),
        .O(m_axi_wdata[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[15]_INST_0 
       (.I0(s_axi_wdata[79]),
        .I1(s_axi_wdata[111]),
        .I2(s_axi_wdata[15]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[47]),
        .O(m_axi_wdata[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[16]_INST_0 
       (.I0(s_axi_wdata[80]),
        .I1(s_axi_wdata[112]),
        .I2(s_axi_wdata[16]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[48]),
        .O(m_axi_wdata[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[17]_INST_0 
       (.I0(s_axi_wdata[81]),
        .I1(s_axi_wdata[113]),
        .I2(s_axi_wdata[17]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[49]),
        .O(m_axi_wdata[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[18]_INST_0 
       (.I0(s_axi_wdata[82]),
        .I1(s_axi_wdata[114]),
        .I2(s_axi_wdata[18]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[50]),
        .O(m_axi_wdata[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[19]_INST_0 
       (.I0(s_axi_wdata[83]),
        .I1(s_axi_wdata[115]),
        .I2(s_axi_wdata[19]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[51]),
        .O(m_axi_wdata[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[1]_INST_0 
       (.I0(s_axi_wdata[65]),
        .I1(s_axi_wdata[97]),
        .I2(s_axi_wdata[1]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[33]),
        .O(m_axi_wdata[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[20]_INST_0 
       (.I0(s_axi_wdata[84]),
        .I1(s_axi_wdata[116]),
        .I2(s_axi_wdata[20]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[52]),
        .O(m_axi_wdata[20]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[21]_INST_0 
       (.I0(s_axi_wdata[85]),
        .I1(s_axi_wdata[117]),
        .I2(s_axi_wdata[21]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[53]),
        .O(m_axi_wdata[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[22]_INST_0 
       (.I0(s_axi_wdata[86]),
        .I1(s_axi_wdata[118]),
        .I2(s_axi_wdata[22]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[54]),
        .O(m_axi_wdata[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[23]_INST_0 
       (.I0(s_axi_wdata[87]),
        .I1(s_axi_wdata[119]),
        .I2(s_axi_wdata[23]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[55]),
        .O(m_axi_wdata[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[24]_INST_0 
       (.I0(s_axi_wdata[88]),
        .I1(s_axi_wdata[120]),
        .I2(s_axi_wdata[24]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[56]),
        .O(m_axi_wdata[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[25]_INST_0 
       (.I0(s_axi_wdata[89]),
        .I1(s_axi_wdata[121]),
        .I2(s_axi_wdata[25]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[57]),
        .O(m_axi_wdata[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[26]_INST_0 
       (.I0(s_axi_wdata[90]),
        .I1(s_axi_wdata[122]),
        .I2(s_axi_wdata[26]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[58]),
        .O(m_axi_wdata[26]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[27]_INST_0 
       (.I0(s_axi_wdata[91]),
        .I1(s_axi_wdata[123]),
        .I2(s_axi_wdata[27]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[59]),
        .O(m_axi_wdata[27]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[28]_INST_0 
       (.I0(s_axi_wdata[92]),
        .I1(s_axi_wdata[124]),
        .I2(s_axi_wdata[28]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[60]),
        .O(m_axi_wdata[28]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[29]_INST_0 
       (.I0(s_axi_wdata[93]),
        .I1(s_axi_wdata[125]),
        .I2(s_axi_wdata[29]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[61]),
        .O(m_axi_wdata[29]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[2]_INST_0 
       (.I0(s_axi_wdata[66]),
        .I1(s_axi_wdata[98]),
        .I2(s_axi_wdata[2]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[34]),
        .O(m_axi_wdata[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[30]_INST_0 
       (.I0(s_axi_wdata[94]),
        .I1(s_axi_wdata[126]),
        .I2(s_axi_wdata[30]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[62]),
        .O(m_axi_wdata[30]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[31]_INST_0 
       (.I0(s_axi_wdata[95]),
        .I1(s_axi_wdata[127]),
        .I2(s_axi_wdata[31]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[63]),
        .O(m_axi_wdata[31]));
  LUT6 #(
    .INIT(64'h999A99956665666A)) 
    \m_axi_wdata[31]_INST_0_i_1 
       (.I0(\USE_WRITE.wr_cmd_offset [3]),
        .I1(\USE_WRITE.wr_cmd_first_word [3]),
        .I2(\USE_WRITE.wr_cmd_fix ),
        .I3(first_mi_word),
        .I4(\current_word_1_reg[3]_0 [3]),
        .I5(\m_axi_wdata[31]_INST_0_i_3_n_0 ),
        .O(\USE_WRITE.write_data_inst/current_index [1]));
  LUT6 #(
    .INIT(64'h999A99956665666A)) 
    \m_axi_wdata[31]_INST_0_i_2 
       (.I0(\USE_WRITE.wr_cmd_offset [2]),
        .I1(\USE_WRITE.wr_cmd_first_word [2]),
        .I2(\USE_WRITE.wr_cmd_fix ),
        .I3(first_mi_word),
        .I4(\current_word_1_reg[3]_0 [2]),
        .I5(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .O(\USE_WRITE.write_data_inst/current_index [0]));
  LUT6 #(
    .INIT(64'hEEEEEEE8888888E8)) 
    \m_axi_wdata[31]_INST_0_i_3 
       (.I0(\USE_WRITE.wr_cmd_offset [2]),
        .I1(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I2(\current_word_1_reg[3]_0 [2]),
        .I3(first_mi_word),
        .I4(\USE_WRITE.wr_cmd_fix ),
        .I5(\USE_WRITE.wr_cmd_first_word [2]),
        .O(\m_axi_wdata[31]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \m_axi_wdata[31]_INST_0_i_4 
       (.I0(\USE_WRITE.write_data_inst/current_word__3 [0]),
        .I1(\USE_WRITE.wr_cmd_offset [0]),
        .I2(\USE_WRITE.write_data_inst/current_word__3 [1]),
        .I3(\USE_WRITE.wr_cmd_offset [1]),
        .O(\m_axi_wdata[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[3]_INST_0 
       (.I0(s_axi_wdata[67]),
        .I1(s_axi_wdata[99]),
        .I2(s_axi_wdata[3]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[35]),
        .O(m_axi_wdata[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[4]_INST_0 
       (.I0(s_axi_wdata[68]),
        .I1(s_axi_wdata[100]),
        .I2(s_axi_wdata[4]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[36]),
        .O(m_axi_wdata[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[5]_INST_0 
       (.I0(s_axi_wdata[69]),
        .I1(s_axi_wdata[101]),
        .I2(s_axi_wdata[5]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[37]),
        .O(m_axi_wdata[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[6]_INST_0 
       (.I0(s_axi_wdata[70]),
        .I1(s_axi_wdata[102]),
        .I2(s_axi_wdata[6]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[38]),
        .O(m_axi_wdata[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[7]_INST_0 
       (.I0(s_axi_wdata[71]),
        .I1(s_axi_wdata[103]),
        .I2(s_axi_wdata[7]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[39]),
        .O(m_axi_wdata[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[8]_INST_0 
       (.I0(s_axi_wdata[72]),
        .I1(s_axi_wdata[104]),
        .I2(s_axi_wdata[8]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[40]),
        .O(m_axi_wdata[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wdata[9]_INST_0 
       (.I0(s_axi_wdata[73]),
        .I1(s_axi_wdata[105]),
        .I2(s_axi_wdata[9]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wdata[41]),
        .O(m_axi_wdata[9]));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    m_axi_wlast_INST_0
       (.I0(\length_counter_1_reg[7] [1]),
        .I1(\length_counter_1_reg[7] [0]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(\length_counter_1_reg[1] ),
        .I5(\length_counter_1_reg[2] ),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_axi_wlast_INST_0_i_1
       (.I0(\length_counter_1_reg[7] [2]),
        .I1(\length_counter_1_reg[7] [3]),
        .I2(\length_counter_1_reg[7] [4]),
        .I3(\length_counter_1_reg[7] [5]),
        .I4(\length_counter_1_reg[7] [7]),
        .I5(\length_counter_1_reg[7] [6]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wstrb[0]_INST_0 
       (.I0(s_axi_wstrb[8]),
        .I1(s_axi_wstrb[12]),
        .I2(s_axi_wstrb[0]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wstrb[4]),
        .O(m_axi_wstrb[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wstrb[1]_INST_0 
       (.I0(s_axi_wstrb[9]),
        .I1(s_axi_wstrb[13]),
        .I2(s_axi_wstrb[1]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wstrb[5]),
        .O(m_axi_wstrb[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wstrb[2]_INST_0 
       (.I0(s_axi_wstrb[10]),
        .I1(s_axi_wstrb[14]),
        .I2(s_axi_wstrb[2]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wstrb[6]),
        .O(m_axi_wstrb[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \m_axi_wstrb[3]_INST_0 
       (.I0(s_axi_wstrb[11]),
        .I1(s_axi_wstrb[15]),
        .I2(s_axi_wstrb[3]),
        .I3(\USE_WRITE.write_data_inst/current_index [1]),
        .I4(\USE_WRITE.write_data_inst/current_index [0]),
        .I5(s_axi_wstrb[7]),
        .O(m_axi_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \queue_id[0]_i_1 
       (.I0(S_AXI_AID_Q),
        .I1(m_axi_awvalid),
        .I2(cmd_push_block),
        .I3(s_axi_bid),
        .O(\queue_id_reg[0] ));
  LUT6 #(
    .INIT(64'hFEFFFEFE00000000)) 
    s_axi_wready_INST_0
       (.I0(\USE_WRITE.wr_cmd_mirror ),
        .I1(\USE_WRITE.wr_cmd_fix ),
        .I2(m_axi_wlast),
        .I3(s_axi_wready_INST_0_i_1_n_0),
        .I4(s_axi_wready_INST_0_i_2_n_0),
        .I5(s_axi_wready_INST_0_i_3_n_0),
        .O(s_axi_wready));
  LUT6 #(
    .INIT(64'hFF80AA80AA80AA80)) 
    s_axi_wready_INST_0_i_1
       (.I0(\USE_WRITE.wr_cmd_size [2]),
        .I1(\USE_WRITE.wr_cmd_mask [3]),
        .I2(s_axi_wready_INST_0_i_4_n_0),
        .I3(\current_word_1_reg[3] [2]),
        .I4(\USE_WRITE.wr_cmd_size [0]),
        .I5(\USE_WRITE.wr_cmd_size [1]),
        .O(s_axi_wready_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h010103FF)) 
    s_axi_wready_INST_0_i_2
       (.I0(\USE_WRITE.wr_cmd_size [0]),
        .I1(\USE_WRITE.wr_cmd_size [1]),
        .I2(\USE_WRITE.wr_cmd_size [2]),
        .I3(\current_word_1_reg[3] [1]),
        .I4(\current_word_1_reg[3] [0]),
        .O(s_axi_wready_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_wready_INST_0_i_3
       (.I0(m_axi_wready),
        .I1(empty),
        .O(s_axi_wready_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h77777717888888E8)) 
    s_axi_wready_INST_0_i_4
       (.I0(\USE_WRITE.write_data_inst/current_word__3 [2]),
        .I1(\current_word_1[2]_i_3_n_0 ),
        .I2(cmd_size_ii[1]),
        .I3(cmd_size_ii[2]),
        .I4(cmd_size_ii[0]),
        .I5(\USE_WRITE.write_data_inst/current_word__3 [3]),
        .O(s_axi_wready_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hABA8)) 
    s_axi_wready_INST_0_i_5
       (.I0(\USE_WRITE.wr_cmd_first_word [3]),
        .I1(\USE_WRITE.wr_cmd_fix ),
        .I2(first_mi_word),
        .I3(\current_word_1_reg[3]_0 [3]),
        .O(\USE_WRITE.write_data_inst/current_word__3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    split_ongoing_i_1
       (.I0(m_axi_awvalid),
        .I1(m_axi_awready),
        .O(\pushed_commands_reg[7] ));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_15_a_downsizer" *) 
module design_1_auto_ds_0_axi_dwidth_converter_v2_1_15_a_downsizer
   (dout,
    SR,
    \length_counter_1_reg[7] ,
    din,
    s_axi_awready,
    s_axi_bid,
    m_axi_awvalid,
    m_axi_wvalid,
    s_axi_wready,
    m_axi_wlast,
    E,
    m_axi_awaddr,
    m_axi_awlock,
    m_axi_wdata,
    m_axi_wstrb,
    D,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    CLK,
    s_axi_awid,
    s_axi_awlock,
    out,
    m_axi_awready,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_bready,
    last_word,
    m_axi_bvalid,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_wvalid,
    m_axi_wready,
    first_mi_word,
    \length_counter_1_reg[1] ,
    \length_counter_1_reg[2] ,
    s_axi_wdata,
    s_axi_wstrb,
    Q,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos);
  output [8:0]dout;
  output [0:0]SR;
  output [7:0]\length_counter_1_reg[7] ;
  output [10:0]din;
  output s_axi_awready;
  output [0:0]s_axi_bid;
  output m_axi_awvalid;
  output m_axi_wvalid;
  output s_axi_wready;
  output m_axi_wlast;
  output [0:0]E;
  output [48:0]m_axi_awaddr;
  output [0:0]m_axi_awlock;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [3:0]D;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  input CLK;
  input [0:0]s_axi_awid;
  input [0:0]s_axi_awlock;
  input out;
  input m_axi_awready;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input s_axi_bready;
  input last_word;
  input m_axi_bvalid;
  input s_axi_awvalid;
  input [48:0]s_axi_awaddr;
  input s_axi_wvalid;
  input m_axi_wready;
  input first_mi_word;
  input \length_counter_1_reg[1] ;
  input \length_counter_1_reg[2] ;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input [3:0]Q;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \S_AXI_AADDR_Q_reg_n_0_[0] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[10] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[11] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[12] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[13] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[14] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[15] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[16] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[17] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[18] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[19] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[1] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[20] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[21] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[22] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[23] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[24] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[25] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[26] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[27] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[28] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[29] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[2] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[30] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[31] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[32] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[33] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[34] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[35] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[36] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[37] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[38] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[39] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[3] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[40] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[41] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[42] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[43] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[44] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[45] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[46] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[47] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[48] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[4] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[5] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[6] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[7] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[8] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[9] ;
  wire [1:0]S_AXI_ABURST_Q;
  wire S_AXI_AID_Q;
  wire \S_AXI_ALEN_Q_reg_n_0_[0] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[1] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[2] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[3] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[4] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[5] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[6] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[7] ;
  wire [0:0]S_AXI_ALOCK_Q;
  wire [2:0]S_AXI_ASIZE_Q;
  wire \USE_B_CHANNEL.cmd_b_depth[0]_i_1_n_0 ;
  wire [5:0]\USE_B_CHANNEL.cmd_b_depth_reg__0 ;
  wire \USE_B_CHANNEL.cmd_b_empty_i_i_2_n_0 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_11 ;
  wire access_fit_mi_side_q;
  wire access_is_fix;
  wire access_is_fix_q;
  wire access_is_incr;
  wire access_is_incr_q;
  wire access_is_wrap;
  wire access_is_wrap_q;
  wire [1:0]areset_d;
  wire [10:5]burst_mask__0;
  wire cmd_b_empty;
  wire cmd_b_push;
  wire cmd_b_push_block;
  wire cmd_first_word_ii2__0;
  wire [3:2]cmd_mask_i;
  wire cmd_mask_q;
  wire \cmd_mask_q[0]_i_1_n_0 ;
  wire \cmd_mask_q[1]_i_1_n_0 ;
  wire \cmd_mask_q[2]_i_1_n_0 ;
  wire \cmd_mask_q[3]_i_1_n_0 ;
  wire \cmd_mask_q_reg_n_0_[0] ;
  wire \cmd_mask_q_reg_n_0_[1] ;
  wire \cmd_mask_q_reg_n_0_[2] ;
  wire \cmd_mask_q_reg_n_0_[3] ;
  wire cmd_push_block;
  wire cmd_queue_n_20;
  wire cmd_queue_n_22;
  wire cmd_queue_n_23;
  wire cmd_queue_n_24;
  wire cmd_queue_n_25;
  wire cmd_queue_n_26;
  wire cmd_queue_n_28;
  wire cmd_queue_n_29;
  wire cmd_queue_n_30;
  wire cmd_queue_n_78;
  wire cmd_queue_n_79;
  wire cmd_queue_n_80;
  wire cmd_split_i;
  wire command_ongoing;
  wire [10:0]din;
  wire [8:0]dout;
  wire [7:0]downsized_len_q;
  wire \downsized_len_q[0]_i_1_n_0 ;
  wire \downsized_len_q[1]_i_1_n_0 ;
  wire \downsized_len_q[2]_i_1_n_0 ;
  wire \downsized_len_q[3]_i_1_n_0 ;
  wire \downsized_len_q[4]_i_1_n_0 ;
  wire \downsized_len_q[5]_i_1_n_0 ;
  wire \downsized_len_q[6]_i_1_n_0 ;
  wire \downsized_len_q[7]_i_1_n_0 ;
  wire first_mi_word;
  wire [4:0]fix_len;
  wire [4:0]fix_len_q;
  wire fix_need_to_split_q;
  wire fix_need_to_split_q_i_1_n_0;
  wire incr_need_to_split;
  wire incr_need_to_split_q;
  wire incr_need_to_split_q_i_2_n_0;
  wire incr_need_to_split_q_i_3_n_0;
  wire \inst/full ;
  wire last_split__8;
  wire last_word;
  wire legal_wrap_len_q;
  wire legal_wrap_len_q_i_1_n_0;
  wire legal_wrap_len_q_i_2_n_0;
  wire legal_wrap_len_q_i_3_n_0;
  wire \length_counter_1_reg[1] ;
  wire \length_counter_1_reg[2] ;
  wire [7:0]\length_counter_1_reg[7] ;
  wire [48:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [14:0]masked_addr;
  wire [48:0]masked_addr_q;
  wire \masked_addr_q[12]_i_2_n_0 ;
  wire \masked_addr_q[4]_i_2_n_0 ;
  wire \masked_addr_q[6]_i_3_n_0 ;
  wire \masked_addr_q[6]_i_4_n_0 ;
  wire \masked_addr_q[6]_i_5_n_0 ;
  wire \masked_addr_q[7]_i_3_n_0 ;
  wire \masked_addr_q[8]_i_2_n_0 ;
  wire \masked_addr_q[9]_i_3_n_0 ;
  wire \masked_addr_q[9]_i_4_n_0 ;
  wire \masked_addr_q[9]_i_5_n_0 ;
  wire [48:2]next_mi_addr;
  wire next_mi_addr0_carry__0_n_0;
  wire next_mi_addr0_carry__0_n_1;
  wire next_mi_addr0_carry__0_n_10;
  wire next_mi_addr0_carry__0_n_11;
  wire next_mi_addr0_carry__0_n_12;
  wire next_mi_addr0_carry__0_n_13;
  wire next_mi_addr0_carry__0_n_14;
  wire next_mi_addr0_carry__0_n_15;
  wire next_mi_addr0_carry__0_n_2;
  wire next_mi_addr0_carry__0_n_3;
  wire next_mi_addr0_carry__0_n_5;
  wire next_mi_addr0_carry__0_n_6;
  wire next_mi_addr0_carry__0_n_7;
  wire next_mi_addr0_carry__0_n_8;
  wire next_mi_addr0_carry__0_n_9;
  wire next_mi_addr0_carry__1_n_0;
  wire next_mi_addr0_carry__1_n_1;
  wire next_mi_addr0_carry__1_n_10;
  wire next_mi_addr0_carry__1_n_11;
  wire next_mi_addr0_carry__1_n_12;
  wire next_mi_addr0_carry__1_n_13;
  wire next_mi_addr0_carry__1_n_14;
  wire next_mi_addr0_carry__1_n_15;
  wire next_mi_addr0_carry__1_n_2;
  wire next_mi_addr0_carry__1_n_3;
  wire next_mi_addr0_carry__1_n_5;
  wire next_mi_addr0_carry__1_n_6;
  wire next_mi_addr0_carry__1_n_7;
  wire next_mi_addr0_carry__1_n_8;
  wire next_mi_addr0_carry__1_n_9;
  wire next_mi_addr0_carry__2_n_0;
  wire next_mi_addr0_carry__2_n_1;
  wire next_mi_addr0_carry__2_n_10;
  wire next_mi_addr0_carry__2_n_11;
  wire next_mi_addr0_carry__2_n_12;
  wire next_mi_addr0_carry__2_n_13;
  wire next_mi_addr0_carry__2_n_14;
  wire next_mi_addr0_carry__2_n_15;
  wire next_mi_addr0_carry__2_n_2;
  wire next_mi_addr0_carry__2_n_3;
  wire next_mi_addr0_carry__2_n_5;
  wire next_mi_addr0_carry__2_n_6;
  wire next_mi_addr0_carry__2_n_7;
  wire next_mi_addr0_carry__2_n_8;
  wire next_mi_addr0_carry__2_n_9;
  wire next_mi_addr0_carry__3_n_1;
  wire next_mi_addr0_carry__3_n_10;
  wire next_mi_addr0_carry__3_n_11;
  wire next_mi_addr0_carry__3_n_12;
  wire next_mi_addr0_carry__3_n_13;
  wire next_mi_addr0_carry__3_n_14;
  wire next_mi_addr0_carry__3_n_15;
  wire next_mi_addr0_carry__3_n_2;
  wire next_mi_addr0_carry__3_n_3;
  wire next_mi_addr0_carry__3_n_5;
  wire next_mi_addr0_carry__3_n_6;
  wire next_mi_addr0_carry__3_n_7;
  wire next_mi_addr0_carry__3_n_8;
  wire next_mi_addr0_carry__3_n_9;
  wire next_mi_addr0_carry_i_8_n_0;
  wire next_mi_addr0_carry_n_0;
  wire next_mi_addr0_carry_n_1;
  wire next_mi_addr0_carry_n_10;
  wire next_mi_addr0_carry_n_11;
  wire next_mi_addr0_carry_n_12;
  wire next_mi_addr0_carry_n_13;
  wire next_mi_addr0_carry_n_14;
  wire next_mi_addr0_carry_n_15;
  wire next_mi_addr0_carry_n_2;
  wire next_mi_addr0_carry_n_3;
  wire next_mi_addr0_carry_n_5;
  wire next_mi_addr0_carry_n_6;
  wire next_mi_addr0_carry_n_7;
  wire next_mi_addr0_carry_n_8;
  wire next_mi_addr0_carry_n_9;
  wire \next_mi_addr[8]_i_2_n_0 ;
  wire \next_mi_addr[8]_i_3_n_0 ;
  wire \next_mi_addr[8]_i_4_n_0 ;
  wire \num_transactions_q[0]_i_1_n_0 ;
  wire \num_transactions_q[0]_i_3_n_0 ;
  wire \num_transactions_q[1]_i_1_n_0 ;
  wire \num_transactions_q[1]_i_2_n_0 ;
  wire \num_transactions_q[2]_i_1_n_0 ;
  wire \num_transactions_q[3]_i_1_n_0 ;
  wire \num_transactions_q_reg_n_0_[0] ;
  wire \num_transactions_q_reg_n_0_[1] ;
  wire \num_transactions_q_reg_n_0_[2] ;
  wire \num_transactions_q_reg_n_0_[3] ;
  wire out;
  wire [7:0]p_0_in;
  wire p_18_in;
  wire [8:2]pre_mi_addr;
  wire [48:9]pre_mi_addr__0;
  wire \pushed_commands[7]_i_1_n_0 ;
  wire \pushed_commands[7]_i_3_n_0 ;
  wire [7:0]pushed_commands_reg__0;
  wire pushed_new_cmd;
  wire [48:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [127:0]s_axi_wdata;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire si_full_size;
  wire si_full_size_q;
  wire [6:0]split_addr_mask;
  wire \split_addr_mask_q_reg_n_0_[0] ;
  wire \split_addr_mask_q_reg_n_0_[1] ;
  wire \split_addr_mask_q_reg_n_0_[2] ;
  wire \split_addr_mask_q_reg_n_0_[3] ;
  wire \split_addr_mask_q_reg_n_0_[48] ;
  wire \split_addr_mask_q_reg_n_0_[4] ;
  wire \split_addr_mask_q_reg_n_0_[5] ;
  wire \split_addr_mask_q_reg_n_0_[6] ;
  wire split_ongoing;
  wire [4:0]unalignment_addr;
  wire [4:0]unalignment_addr_q;
  wire wrap_need_to_split;
  wire wrap_need_to_split_q;
  wire wrap_need_to_split_q_i_2_n_0;
  wire wrap_need_to_split_q_i_3_n_0;
  wire [7:0]wrap_rest_len;
  wire [7:0]wrap_rest_len0;
  wire \wrap_rest_len[7]_i_2_n_0 ;
  wire [7:0]wrap_unaligned_len;
  wire [7:0]wrap_unaligned_len_q;
  wire [3:3]NLW_next_mi_addr0_carry_CO_UNCONNECTED;
  wire [3:3]NLW_next_mi_addr0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_next_mi_addr0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_next_mi_addr0_carry__2_CO_UNCONNECTED;
  wire [7:3]NLW_next_mi_addr0_carry__3_CO_UNCONNECTED;

  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[0]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[10]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[11]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[12]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[13]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[14]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[15]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[16]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[17]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[18]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[19]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[1]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[20]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[21]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[22]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[23]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[24]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[25]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[26]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[27]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[28]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[29]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[2]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[30]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[31]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[32] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[32]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[33] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[33]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[34] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[34]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[35] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[35]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[36] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[36]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[37] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[37]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[38] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[38]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[39] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[39]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[3]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[40] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[40]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[41] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[41]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[42] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[42]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[43] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[43]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[44] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[44]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[45] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[45]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[46] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[46]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[47] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[47]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[48] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[48]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[4]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[5]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[6]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[7]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[8]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[9]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awburst[0]),
        .Q(S_AXI_ABURST_Q[0]),
        .R(1'b0));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awburst[1]),
        .Q(S_AXI_ABURST_Q[1]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(1'b0));
  FDRE \S_AXI_AID_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awid),
        .Q(S_AXI_AID_Q),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[0]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[1]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[2]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[3]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[4]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[5] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[5]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[6] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[6]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[7] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[7]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlock),
        .Q(S_AXI_ALOCK_Q),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_78),
        .Q(s_axi_awready),
        .R(SR));
  FDRE \S_AXI_AREGION_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awregion[0]),
        .Q(m_axi_awregion[0]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awregion[1]),
        .Q(m_axi_awregion[1]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awregion[2]),
        .Q(m_axi_awregion[2]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awregion[3]),
        .Q(m_axi_awregion[3]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awsize[0]),
        .Q(S_AXI_ASIZE_Q[0]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awsize[1]),
        .Q(S_AXI_ASIZE_Q[1]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awsize[2]),
        .Q(S_AXI_ASIZE_Q[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \USE_B_CHANNEL.cmd_b_depth[0]_i_1 
       (.I0(\USE_B_CHANNEL.cmd_b_depth_reg__0 [0]),
        .O(\USE_B_CHANNEL.cmd_b_depth[0]_i_1_n_0 ));
  FDRE \USE_B_CHANNEL.cmd_b_depth_reg[0] 
       (.C(CLK),
        .CE(cmd_queue_n_29),
        .D(\USE_B_CHANNEL.cmd_b_depth[0]_i_1_n_0 ),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 [0]),
        .R(SR));
  FDRE \USE_B_CHANNEL.cmd_b_depth_reg[1] 
       (.C(CLK),
        .CE(cmd_queue_n_29),
        .D(cmd_queue_n_26),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 [1]),
        .R(SR));
  FDRE \USE_B_CHANNEL.cmd_b_depth_reg[2] 
       (.C(CLK),
        .CE(cmd_queue_n_29),
        .D(cmd_queue_n_25),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 [2]),
        .R(SR));
  FDRE \USE_B_CHANNEL.cmd_b_depth_reg[3] 
       (.C(CLK),
        .CE(cmd_queue_n_29),
        .D(cmd_queue_n_24),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 [3]),
        .R(SR));
  FDRE \USE_B_CHANNEL.cmd_b_depth_reg[4] 
       (.C(CLK),
        .CE(cmd_queue_n_29),
        .D(cmd_queue_n_23),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 [4]),
        .R(SR));
  FDRE \USE_B_CHANNEL.cmd_b_depth_reg[5] 
       (.C(CLK),
        .CE(cmd_queue_n_29),
        .D(cmd_queue_n_22),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 [5]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \USE_B_CHANNEL.cmd_b_empty_i_i_2 
       (.I0(\USE_B_CHANNEL.cmd_b_depth_reg__0 [2]),
        .I1(\USE_B_CHANNEL.cmd_b_depth_reg__0 [3]),
        .I2(\USE_B_CHANNEL.cmd_b_depth_reg__0 [0]),
        .I3(\USE_B_CHANNEL.cmd_b_depth_reg__0 [1]),
        .I4(\USE_B_CHANNEL.cmd_b_depth_reg__0 [5]),
        .I5(\USE_B_CHANNEL.cmd_b_depth_reg__0 [4]),
        .O(\USE_B_CHANNEL.cmd_b_empty_i_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \USE_B_CHANNEL.cmd_b_empty_i_reg 
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_30),
        .Q(cmd_b_empty),
        .S(SR));
  design_1_auto_ds_0_axi_data_fifo_v2_1_14_axic_fifo \USE_B_CHANNEL.cmd_b_queue 
       (.CLK(CLK),
        .Q({\num_transactions_q_reg_n_0_[3] ,\num_transactions_q_reg_n_0_[2] ,\num_transactions_q_reg_n_0_[1] ,\num_transactions_q_reg_n_0_[0] }),
        .SR(SR),
        .\S_AXI_ALEN_Q_reg[3] ({\S_AXI_ALEN_Q_reg_n_0_[3] ,\S_AXI_ALEN_Q_reg_n_0_[2] ,\S_AXI_ALEN_Q_reg_n_0_[1] ,\S_AXI_ALEN_Q_reg_n_0_[0] }),
        .\USE_B_CHANNEL.cmd_b_empty_i_reg (\USE_B_CHANNEL.cmd_b_queue_n_11 ),
        .din(cmd_split_i),
        .dout(dout),
        .fix_need_to_split_q(fix_need_to_split_q),
        .full(\inst/full ),
        .incr_need_to_split_q(incr_need_to_split_q),
        .last_split__8(last_split__8),
        .last_word(last_word),
        .m_axi_bvalid(m_axi_bvalid),
        .s_axi_bready(s_axi_bready),
        .wr_en(cmd_b_push),
        .wrap_need_to_split_q(wrap_need_to_split_q));
  FDRE #(
    .INIT(1'b0)) 
    access_fit_mi_side_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[2]),
        .Q(access_fit_mi_side_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    access_is_fix_q_i_1
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .O(access_is_fix));
  FDRE #(
    .INIT(1'b0)) 
    access_is_fix_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(access_is_fix),
        .Q(access_is_fix_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    access_is_incr_q_i_1
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awburst[1]),
        .O(access_is_incr));
  FDRE #(
    .INIT(1'b0)) 
    access_is_incr_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(access_is_incr),
        .Q(access_is_incr_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    access_is_wrap_q_i_1
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .O(access_is_wrap));
  FDRE #(
    .INIT(1'b0)) 
    access_is_wrap_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(access_is_wrap),
        .Q(access_is_wrap_q),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_b_push_block_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_28),
        .Q(cmd_b_push_block),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \cmd_mask_q[0]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awburst[0]),
        .I5(s_axi_awburst[1]),
        .O(\cmd_mask_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFB8)) 
    \cmd_mask_q[1]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .I5(cmd_mask_q),
        .O(\cmd_mask_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \cmd_mask_q[1]_i_2 
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awready),
        .O(cmd_mask_q));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \cmd_mask_q[2]_i_1 
       (.I0(cmd_mask_i[2]),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awburst[1]),
        .O(\cmd_mask_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \cmd_mask_q[3]_i_1 
       (.I0(cmd_mask_i[3]),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awburst[1]),
        .O(\cmd_mask_q[3]_i_1_n_0 ));
  FDRE \cmd_mask_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\cmd_mask_q[0]_i_1_n_0 ),
        .Q(\cmd_mask_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \cmd_mask_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\cmd_mask_q[1]_i_1_n_0 ),
        .Q(\cmd_mask_q_reg_n_0_[1] ),
        .R(SR));
  FDRE \cmd_mask_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\cmd_mask_q[2]_i_1_n_0 ),
        .Q(\cmd_mask_q_reg_n_0_[2] ),
        .R(SR));
  FDRE \cmd_mask_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\cmd_mask_q[3]_i_1_n_0 ),
        .Q(\cmd_mask_q_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_20),
        .Q(cmd_push_block),
        .R(1'b0));
  design_1_auto_ds_0_axi_data_fifo_v2_1_14_axic_fifo__parameterized0 cmd_queue
       (.CLK(CLK),
        .D({cmd_queue_n_22,cmd_queue_n_23,cmd_queue_n_24,cmd_queue_n_25,cmd_queue_n_26}),
        .E(s_axi_awready),
        .Q(\USE_B_CHANNEL.cmd_b_depth_reg__0 ),
        .SR(SR),
        .\S_AXI_AADDR_Q_reg[3] ({\S_AXI_AADDR_Q_reg_n_0_[3] ,\S_AXI_AADDR_Q_reg_n_0_[2] ,\S_AXI_AADDR_Q_reg_n_0_[1] ,\S_AXI_AADDR_Q_reg_n_0_[0] }),
        .S_AXI_AID_Q(S_AXI_AID_Q),
        .\S_AXI_ALEN_Q_reg[7] ({\S_AXI_ALEN_Q_reg_n_0_[7] ,\S_AXI_ALEN_Q_reg_n_0_[6] ,\S_AXI_ALEN_Q_reg_n_0_[5] ,\S_AXI_ALEN_Q_reg_n_0_[4] ,\S_AXI_ALEN_Q_reg_n_0_[3] ,\S_AXI_ALEN_Q_reg_n_0_[2] ,\S_AXI_ALEN_Q_reg_n_0_[1] ,\S_AXI_ALEN_Q_reg_n_0_[0] }),
        .S_AXI_AREADY_I_reg(cmd_queue_n_78),
        .\USE_B_CHANNEL.cmd_b_depth_reg[0] (cmd_queue_n_29),
        .\USE_B_CHANNEL.cmd_b_depth_reg[2] (\USE_B_CHANNEL.cmd_b_empty_i_i_2_n_0 ),
        .\USE_B_CHANNEL.cmd_b_empty_i_reg (cmd_queue_n_30),
        .access_is_fix_q(access_is_fix_q),
        .access_is_incr_q(access_is_incr_q),
        .access_is_wrap_q(access_is_wrap_q),
        .\areset_d_reg[1] (areset_d),
        .cmd_b_empty(cmd_b_empty),
        .cmd_b_push_block(cmd_b_push_block),
        .cmd_b_push_block_reg(cmd_queue_n_28),
        .cmd_first_word_ii2__0(cmd_first_word_ii2__0),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(cmd_queue_n_20),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(cmd_queue_n_80),
        .\current_word_1_reg[3] (D),
        .\current_word_1_reg[3]_0 (Q),
        .din({cmd_split_i,access_fit_mi_side_q,\cmd_mask_q_reg_n_0_[3] ,\cmd_mask_q_reg_n_0_[2] ,\cmd_mask_q_reg_n_0_[1] ,\cmd_mask_q_reg_n_0_[0] ,S_AXI_ASIZE_Q}),
        .\downsized_len_q_reg[7] (downsized_len_q),
        .empty_fwft_i_reg(\USE_B_CHANNEL.cmd_b_queue_n_11 ),
        .first_mi_word(first_mi_word),
        .first_word_reg(E),
        .\fix_len_q_reg[4] (fix_len_q),
        .fix_need_to_split_q(fix_need_to_split_q),
        .full(\inst/full ),
        .incr_need_to_split_q(incr_need_to_split_q),
        .last_split__8(last_split__8),
        .legal_wrap_len_q(legal_wrap_len_q),
        .\length_counter_1_reg[1] (\length_counter_1_reg[1] ),
        .\length_counter_1_reg[2] (\length_counter_1_reg[2] ),
        .\length_counter_1_reg[7] (\length_counter_1_reg[7] ),
        .m_axi_awready(m_axi_awready),
        .\m_axi_awsize[2] (din),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\num_transactions_q_reg[3] ({\num_transactions_q_reg_n_0_[3] ,\num_transactions_q_reg_n_0_[2] ,\num_transactions_q_reg_n_0_[1] ,\num_transactions_q_reg_n_0_[0] }),
        .out(out),
        .\pushed_commands_reg[7] (pushed_new_cmd),
        .\pushed_commands_reg[7]_0 (pushed_commands_reg__0),
        .\queue_id_reg[0] (cmd_queue_n_79),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .si_full_size_q(si_full_size_q),
        .\split_addr_mask_q_reg[0] (\split_addr_mask_q_reg_n_0_[0] ),
        .\split_addr_mask_q_reg[1] (\split_addr_mask_q_reg_n_0_[1] ),
        .\split_addr_mask_q_reg[3] ({\split_addr_mask_q_reg_n_0_[3] ,\split_addr_mask_q_reg_n_0_[2] }),
        .\split_addr_mask_q_reg[48] (\split_addr_mask_q_reg_n_0_[48] ),
        .split_ongoing(split_ongoing),
        .\unalignment_addr_q_reg[4] (unalignment_addr_q),
        .wr_en(cmd_b_push),
        .wrap_need_to_split_q(wrap_need_to_split_q),
        .\wrap_rest_len_reg[7] (wrap_rest_len),
        .\wrap_unaligned_len_q_reg[7] (wrap_unaligned_len_q));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_80),
        .Q(command_ongoing),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \downsized_len_q[0]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[0]),
        .O(\downsized_len_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hEFFFECCC)) 
    \downsized_len_q[1]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[1]),
        .O(\downsized_len_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFAFFCF0F0A0)) 
    \downsized_len_q[2]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(\masked_addr_q[4]_i_2_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awlen[2]),
        .O(\downsized_len_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \downsized_len_q[3]_i_1 
       (.I0(burst_mask__0[5]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[3]),
        .O(\downsized_len_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \downsized_len_q[4]_i_1 
       (.I0(burst_mask__0[6]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[4]),
        .O(\downsized_len_q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \downsized_len_q[5]_i_1 
       (.I0(burst_mask__0[7]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[5]),
        .O(\downsized_len_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \downsized_len_q[6]_i_1 
       (.I0(\masked_addr_q[8]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[6]),
        .O(\downsized_len_q[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \downsized_len_q[7]_i_1 
       (.I0(burst_mask__0[9]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[7]),
        .O(\downsized_len_q[7]_i_1_n_0 ));
  FDRE \downsized_len_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[0]_i_1_n_0 ),
        .Q(downsized_len_q[0]),
        .R(SR));
  FDRE \downsized_len_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[1]_i_1_n_0 ),
        .Q(downsized_len_q[1]),
        .R(SR));
  FDRE \downsized_len_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[2]_i_1_n_0 ),
        .Q(downsized_len_q[2]),
        .R(SR));
  FDRE \downsized_len_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[3]_i_1_n_0 ),
        .Q(downsized_len_q[3]),
        .R(SR));
  FDRE \downsized_len_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[4]_i_1_n_0 ),
        .Q(downsized_len_q[4]),
        .R(SR));
  FDRE \downsized_len_q_reg[5] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[5]_i_1_n_0 ),
        .Q(downsized_len_q[5]),
        .R(SR));
  FDRE \downsized_len_q_reg[6] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[6]_i_1_n_0 ),
        .Q(downsized_len_q[6]),
        .R(SR));
  FDRE \downsized_len_q_reg[7] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[7]_i_1_n_0 ),
        .Q(downsized_len_q[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \fix_len_q[0]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .O(fix_len[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \fix_len_q[2]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(fix_len[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fix_len_q[3]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .O(fix_len[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \fix_len_q[4]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(fix_len[4]));
  FDRE \fix_len_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(fix_len[0]),
        .Q(fix_len_q[0]),
        .R(SR));
  FDRE \fix_len_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awsize[2]),
        .Q(fix_len_q[1]),
        .R(SR));
  FDRE \fix_len_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(fix_len[2]),
        .Q(fix_len_q[2]),
        .R(SR));
  FDRE \fix_len_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(fix_len[3]),
        .Q(fix_len_q[3]),
        .R(SR));
  FDRE \fix_len_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(fix_len[4]),
        .Q(fix_len_q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h11111000)) 
    fix_need_to_split_q_i_1
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[2]),
        .O(fix_need_to_split_q_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fix_need_to_split_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(fix_need_to_split_q_i_1_n_0),
        .Q(fix_need_to_split_q),
        .R(SR));
  LUT6 #(
    .INIT(64'h8888888888080808)) 
    incr_need_to_split_q_i_1
       (.I0(fix_len[0]),
        .I1(access_is_incr),
        .I2(incr_need_to_split_q_i_2_n_0),
        .I3(s_axi_awsize[2]),
        .I4(incr_need_to_split_q_i_3_n_0),
        .I5(burst_mask__0[10]),
        .O(incr_need_to_split));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h777FFF7F)) 
    incr_need_to_split_q_i_2
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[6]),
        .O(incr_need_to_split_q_i_2_n_0));
  LUT6 #(
    .INIT(64'hEFFFEFF0ECFFEC00)) 
    incr_need_to_split_q_i_3
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awlen[7]),
        .I5(s_axi_awlen[6]),
        .O(incr_need_to_split_q_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    incr_need_to_split_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(incr_need_to_split),
        .Q(incr_need_to_split_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h88888FFF)) 
    legal_wrap_len_q_i_1
       (.I0(legal_wrap_len_q_i_2_n_0),
        .I1(legal_wrap_len_q_i_3_n_0),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[2]),
        .O(legal_wrap_len_q_i_1_n_0));
  LUT6 #(
    .INIT(64'h00011155FFFF1155)) 
    legal_wrap_len_q_i_2
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(legal_wrap_len_q_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    legal_wrap_len_q_i_3
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[4]),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awlen[7]),
        .I4(s_axi_awlen[6]),
        .O(legal_wrap_len_q_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    legal_wrap_len_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(legal_wrap_len_q_i_1_n_0),
        .Q(legal_wrap_len_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h0A0CCCCC)) 
    \m_axi_awaddr[0]_INST_0 
       (.I0(masked_addr_q[0]),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[0] ),
        .I2(access_is_incr_q),
        .I3(access_is_wrap_q),
        .I4(split_ongoing),
        .O(m_axi_awaddr[0]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[10]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .I2(masked_addr_q[10]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[10]),
        .O(m_axi_awaddr[10]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[11]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .I2(masked_addr_q[11]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[11]),
        .O(m_axi_awaddr[11]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[12]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .I2(masked_addr_q[12]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[12]),
        .O(m_axi_awaddr[12]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[13]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .I2(masked_addr_q[13]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[13]),
        .O(m_axi_awaddr[13]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[14]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .I2(masked_addr_q[14]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[14]),
        .O(m_axi_awaddr[14]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[15]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .I2(masked_addr_q[15]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[15]),
        .O(m_axi_awaddr[15]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[16]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .I2(masked_addr_q[16]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[16]),
        .O(m_axi_awaddr[16]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[17]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .I2(masked_addr_q[17]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[17]),
        .O(m_axi_awaddr[17]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[18]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .I2(masked_addr_q[18]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[18]),
        .O(m_axi_awaddr[18]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[19]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .I2(masked_addr_q[19]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[19]),
        .O(m_axi_awaddr[19]));
  LUT5 #(
    .INIT(32'h0A0CCCCC)) 
    \m_axi_awaddr[1]_INST_0 
       (.I0(masked_addr_q[1]),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[1] ),
        .I2(access_is_incr_q),
        .I3(access_is_wrap_q),
        .I4(split_ongoing),
        .O(m_axi_awaddr[1]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[20]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .I2(masked_addr_q[20]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[20]),
        .O(m_axi_awaddr[20]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[21]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .I2(masked_addr_q[21]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[21]),
        .O(m_axi_awaddr[21]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[22]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .I2(masked_addr_q[22]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[22]),
        .O(m_axi_awaddr[22]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[23]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .I2(masked_addr_q[23]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[23]),
        .O(m_axi_awaddr[23]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[24]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .I2(masked_addr_q[24]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[24]),
        .O(m_axi_awaddr[24]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[25]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .I2(masked_addr_q[25]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[25]),
        .O(m_axi_awaddr[25]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[26]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .I2(masked_addr_q[26]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[26]),
        .O(m_axi_awaddr[26]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[27]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .I2(masked_addr_q[27]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[27]),
        .O(m_axi_awaddr[27]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[28]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .I2(masked_addr_q[28]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[28]),
        .O(m_axi_awaddr[28]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[29]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .I2(masked_addr_q[29]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[29]),
        .O(m_axi_awaddr[29]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00C000)) 
    \m_axi_awaddr[2]_INST_0 
       (.I0(masked_addr_q[2]),
        .I1(next_mi_addr[2]),
        .I2(access_is_incr_q),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .O(m_axi_awaddr[2]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[30]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .I2(masked_addr_q[30]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[30]),
        .O(m_axi_awaddr[30]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[31]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .I2(masked_addr_q[31]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[31]),
        .O(m_axi_awaddr[31]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[32]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[32] ),
        .I2(masked_addr_q[32]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[32]),
        .O(m_axi_awaddr[32]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[33]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[33] ),
        .I2(masked_addr_q[33]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[33]),
        .O(m_axi_awaddr[33]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[34]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[34] ),
        .I2(masked_addr_q[34]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[34]),
        .O(m_axi_awaddr[34]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[35]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[35] ),
        .I2(masked_addr_q[35]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[35]),
        .O(m_axi_awaddr[35]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[36]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[36] ),
        .I2(masked_addr_q[36]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[36]),
        .O(m_axi_awaddr[36]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[37]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[37] ),
        .I2(masked_addr_q[37]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[37]),
        .O(m_axi_awaddr[37]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[38]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[38] ),
        .I2(masked_addr_q[38]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[38]),
        .O(m_axi_awaddr[38]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[39]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[39] ),
        .I2(masked_addr_q[39]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[39]),
        .O(m_axi_awaddr[39]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00C000)) 
    \m_axi_awaddr[3]_INST_0 
       (.I0(masked_addr_q[3]),
        .I1(next_mi_addr[3]),
        .I2(access_is_incr_q),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .O(m_axi_awaddr[3]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[40]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[40] ),
        .I2(masked_addr_q[40]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[40]),
        .O(m_axi_awaddr[40]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[41]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[41] ),
        .I2(masked_addr_q[41]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[41]),
        .O(m_axi_awaddr[41]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[42]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[42] ),
        .I2(masked_addr_q[42]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[42]),
        .O(m_axi_awaddr[42]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[43]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[43] ),
        .I2(masked_addr_q[43]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[43]),
        .O(m_axi_awaddr[43]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[44]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[44] ),
        .I2(masked_addr_q[44]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[44]),
        .O(m_axi_awaddr[44]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[45]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[45] ),
        .I2(masked_addr_q[45]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[45]),
        .O(m_axi_awaddr[45]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[46]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[46] ),
        .I2(masked_addr_q[46]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[46]),
        .O(m_axi_awaddr[46]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[47]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[47] ),
        .I2(masked_addr_q[47]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[47]),
        .O(m_axi_awaddr[47]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[48]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[48] ),
        .I2(masked_addr_q[48]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[48]),
        .O(m_axi_awaddr[48]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00C000)) 
    \m_axi_awaddr[4]_INST_0 
       (.I0(masked_addr_q[4]),
        .I1(next_mi_addr[4]),
        .I2(access_is_incr_q),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .O(m_axi_awaddr[4]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00C000)) 
    \m_axi_awaddr[5]_INST_0 
       (.I0(masked_addr_q[5]),
        .I1(next_mi_addr[5]),
        .I2(access_is_incr_q),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .O(m_axi_awaddr[5]));
  LUT6 #(
    .INIT(64'hCAFFCFFFCA00C000)) 
    \m_axi_awaddr[6]_INST_0 
       (.I0(masked_addr_q[6]),
        .I1(next_mi_addr[6]),
        .I2(access_is_incr_q),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .O(m_axi_awaddr[6]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[7]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .I2(masked_addr_q[7]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[7]),
        .O(m_axi_awaddr[7]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[8]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .I2(masked_addr_q[8]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[8]),
        .O(m_axi_awaddr[8]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \m_axi_awaddr[9]_INST_0 
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .I2(masked_addr_q[9]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .I5(next_mi_addr[9]),
        .O(m_axi_awaddr[9]));
  LUT5 #(
    .INIT(32'hAAAAEEFE)) 
    \m_axi_awburst[0]_INST_0 
       (.I0(S_AXI_ABURST_Q[0]),
        .I1(access_is_fix_q),
        .I2(access_is_wrap_q),
        .I3(legal_wrap_len_q),
        .I4(access_fit_mi_side_q),
        .O(m_axi_awburst[0]));
  LUT5 #(
    .INIT(32'hFF510000)) 
    \m_axi_awburst[1]_INST_0 
       (.I0(access_is_fix_q),
        .I1(access_is_wrap_q),
        .I2(legal_wrap_len_q),
        .I3(access_fit_mi_side_q),
        .I4(S_AXI_ABURST_Q[1]),
        .O(m_axi_awburst[1]));
  LUT4 #(
    .INIT(16'h0002)) 
    \m_axi_awlock[0]_INST_0 
       (.I0(S_AXI_ALOCK_Q),
        .I1(wrap_need_to_split_q),
        .I2(incr_need_to_split_q),
        .I3(fix_need_to_split_q),
        .O(m_axi_awlock));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \masked_addr_q[0]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[0]),
        .O(masked_addr[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[10]_i_1 
       (.I0(s_axi_awaddr[10]),
        .I1(burst_mask__0[10]),
        .O(masked_addr[10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \masked_addr_q[11]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(\num_transactions_q[1]_i_2_n_0 ),
        .I2(s_axi_awaddr[11]),
        .O(masked_addr[11]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \masked_addr_q[12]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(\masked_addr_q[12]_i_2_n_0 ),
        .I2(s_axi_awaddr[12]),
        .O(masked_addr[12]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFCA00CA0)) 
    \masked_addr_q[12]_i_2 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awlen[7]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[5]),
        .O(\masked_addr_q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h47FFFFFF00000000)) 
    \masked_addr_q[13]_i_1 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awaddr[13]),
        .O(masked_addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \masked_addr_q[14]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[7]),
        .I4(s_axi_awaddr[14]),
        .O(masked_addr[14]));
  LUT6 #(
    .INIT(64'h0000000000004700)) 
    \masked_addr_q[1]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(masked_addr[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[2]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(cmd_mask_i[2]),
        .O(masked_addr[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBCBF8C8)) 
    \masked_addr_q[2]_i_2 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awlen[2]),
        .I5(s_axi_awsize[2]),
        .O(cmd_mask_i[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[3]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(cmd_mask_i[3]),
        .O(masked_addr[3]));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    \masked_addr_q[3]_i_2 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awsize[1]),
        .I5(\masked_addr_q[7]_i_3_n_0 ),
        .O(cmd_mask_i[3]));
  LUT6 #(
    .INIT(64'h02020202020202A2)) 
    \masked_addr_q[4]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(\masked_addr_q[4]_i_2_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[0]),
        .O(masked_addr[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \masked_addr_q[4]_i_2 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awlen[4]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awlen[2]),
        .O(\masked_addr_q[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[5]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(burst_mask__0[5]),
        .O(masked_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFCFFFC88)) 
    \masked_addr_q[5]_i_2 
       (.I0(\masked_addr_q[9]_i_4_n_0 ),
        .I1(s_axi_awsize[1]),
        .I2(\masked_addr_q[7]_i_3_n_0 ),
        .I3(s_axi_awsize[2]),
        .I4(\masked_addr_q[9]_i_5_n_0 ),
        .O(burst_mask__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[6]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(burst_mask__0[6]),
        .O(masked_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFECE)) 
    \masked_addr_q[6]_i_2 
       (.I0(\masked_addr_q[6]_i_3_n_0 ),
        .I1(\masked_addr_q[6]_i_4_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(\masked_addr_q[6]_i_5_n_0 ),
        .O(burst_mask__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h2320)) 
    \masked_addr_q[6]_i_3 
       (.I0(s_axi_awlen[5]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[6]),
        .O(\masked_addr_q[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h20203000)) 
    \masked_addr_q[6]_i_4 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[4]),
        .I4(s_axi_awsize[0]),
        .O(\masked_addr_q[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFCAF0CA)) 
    \masked_addr_q[6]_i_5 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awlen[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[1]),
        .O(\masked_addr_q[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[7]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(burst_mask__0[7]),
        .O(masked_addr[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFACA0ACA)) 
    \masked_addr_q[7]_i_2 
       (.I0(\num_transactions_q[1]_i_2_n_0 ),
        .I1(\masked_addr_q[9]_i_4_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[1]),
        .I4(\masked_addr_q[7]_i_3_n_0 ),
        .O(burst_mask__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[7]_i_3 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[1]),
        .O(\masked_addr_q[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[8]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(\masked_addr_q[8]_i_2_n_0 ),
        .O(masked_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[8]_i_2 
       (.I0(\masked_addr_q[4]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(\masked_addr_q[12]_i_2_n_0 ),
        .O(\masked_addr_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[9]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(burst_mask__0[9]),
        .O(masked_addr[9]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFF88C088)) 
    \masked_addr_q[9]_i_2 
       (.I0(\masked_addr_q[9]_i_3_n_0 ),
        .I1(s_axi_awsize[1]),
        .I2(\masked_addr_q[9]_i_4_n_0 ),
        .I3(s_axi_awsize[2]),
        .I4(\masked_addr_q[9]_i_5_n_0 ),
        .O(burst_mask__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[9]_i_3 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[7]),
        .O(\masked_addr_q[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[9]_i_4 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[3]),
        .O(\masked_addr_q[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2320)) 
    \masked_addr_q[9]_i_5 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[5]),
        .O(\masked_addr_q[9]_i_5_n_0 ));
  FDRE \masked_addr_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[0]),
        .Q(masked_addr_q[0]),
        .R(SR));
  FDRE \masked_addr_q_reg[10] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[10]),
        .Q(masked_addr_q[10]),
        .R(SR));
  FDRE \masked_addr_q_reg[11] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[11]),
        .Q(masked_addr_q[11]),
        .R(SR));
  FDRE \masked_addr_q_reg[12] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[12]),
        .Q(masked_addr_q[12]),
        .R(SR));
  FDRE \masked_addr_q_reg[13] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[13]),
        .Q(masked_addr_q[13]),
        .R(SR));
  FDRE \masked_addr_q_reg[14] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[14]),
        .Q(masked_addr_q[14]),
        .R(SR));
  FDRE \masked_addr_q_reg[15] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[15]),
        .Q(masked_addr_q[15]),
        .R(SR));
  FDRE \masked_addr_q_reg[16] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[16]),
        .Q(masked_addr_q[16]),
        .R(SR));
  FDRE \masked_addr_q_reg[17] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[17]),
        .Q(masked_addr_q[17]),
        .R(SR));
  FDRE \masked_addr_q_reg[18] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[18]),
        .Q(masked_addr_q[18]),
        .R(SR));
  FDRE \masked_addr_q_reg[19] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[19]),
        .Q(masked_addr_q[19]),
        .R(SR));
  FDRE \masked_addr_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[1]),
        .Q(masked_addr_q[1]),
        .R(SR));
  FDRE \masked_addr_q_reg[20] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[20]),
        .Q(masked_addr_q[20]),
        .R(SR));
  FDRE \masked_addr_q_reg[21] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[21]),
        .Q(masked_addr_q[21]),
        .R(SR));
  FDRE \masked_addr_q_reg[22] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[22]),
        .Q(masked_addr_q[22]),
        .R(SR));
  FDRE \masked_addr_q_reg[23] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[23]),
        .Q(masked_addr_q[23]),
        .R(SR));
  FDRE \masked_addr_q_reg[24] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[24]),
        .Q(masked_addr_q[24]),
        .R(SR));
  FDRE \masked_addr_q_reg[25] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[25]),
        .Q(masked_addr_q[25]),
        .R(SR));
  FDRE \masked_addr_q_reg[26] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[26]),
        .Q(masked_addr_q[26]),
        .R(SR));
  FDRE \masked_addr_q_reg[27] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[27]),
        .Q(masked_addr_q[27]),
        .R(SR));
  FDRE \masked_addr_q_reg[28] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[28]),
        .Q(masked_addr_q[28]),
        .R(SR));
  FDRE \masked_addr_q_reg[29] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[29]),
        .Q(masked_addr_q[29]),
        .R(SR));
  FDRE \masked_addr_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[2]),
        .Q(masked_addr_q[2]),
        .R(SR));
  FDRE \masked_addr_q_reg[30] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[30]),
        .Q(masked_addr_q[30]),
        .R(SR));
  FDRE \masked_addr_q_reg[31] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[31]),
        .Q(masked_addr_q[31]),
        .R(SR));
  FDRE \masked_addr_q_reg[32] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[32]),
        .Q(masked_addr_q[32]),
        .R(SR));
  FDRE \masked_addr_q_reg[33] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[33]),
        .Q(masked_addr_q[33]),
        .R(SR));
  FDRE \masked_addr_q_reg[34] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[34]),
        .Q(masked_addr_q[34]),
        .R(SR));
  FDRE \masked_addr_q_reg[35] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[35]),
        .Q(masked_addr_q[35]),
        .R(SR));
  FDRE \masked_addr_q_reg[36] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[36]),
        .Q(masked_addr_q[36]),
        .R(SR));
  FDRE \masked_addr_q_reg[37] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[37]),
        .Q(masked_addr_q[37]),
        .R(SR));
  FDRE \masked_addr_q_reg[38] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[38]),
        .Q(masked_addr_q[38]),
        .R(SR));
  FDRE \masked_addr_q_reg[39] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[39]),
        .Q(masked_addr_q[39]),
        .R(SR));
  FDRE \masked_addr_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[3]),
        .Q(masked_addr_q[3]),
        .R(SR));
  FDRE \masked_addr_q_reg[40] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[40]),
        .Q(masked_addr_q[40]),
        .R(SR));
  FDRE \masked_addr_q_reg[41] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[41]),
        .Q(masked_addr_q[41]),
        .R(SR));
  FDRE \masked_addr_q_reg[42] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[42]),
        .Q(masked_addr_q[42]),
        .R(SR));
  FDRE \masked_addr_q_reg[43] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[43]),
        .Q(masked_addr_q[43]),
        .R(SR));
  FDRE \masked_addr_q_reg[44] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[44]),
        .Q(masked_addr_q[44]),
        .R(SR));
  FDRE \masked_addr_q_reg[45] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[45]),
        .Q(masked_addr_q[45]),
        .R(SR));
  FDRE \masked_addr_q_reg[46] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[46]),
        .Q(masked_addr_q[46]),
        .R(SR));
  FDRE \masked_addr_q_reg[47] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[47]),
        .Q(masked_addr_q[47]),
        .R(SR));
  FDRE \masked_addr_q_reg[48] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[48]),
        .Q(masked_addr_q[48]),
        .R(SR));
  FDRE \masked_addr_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[4]),
        .Q(masked_addr_q[4]),
        .R(SR));
  FDRE \masked_addr_q_reg[5] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[5]),
        .Q(masked_addr_q[5]),
        .R(SR));
  FDRE \masked_addr_q_reg[6] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[6]),
        .Q(masked_addr_q[6]),
        .R(SR));
  FDRE \masked_addr_q_reg[7] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[7]),
        .Q(masked_addr_q[7]),
        .R(SR));
  FDRE \masked_addr_q_reg[8] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[8]),
        .Q(masked_addr_q[8]),
        .R(SR));
  FDRE \masked_addr_q_reg[9] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[9]),
        .Q(masked_addr_q[9]),
        .R(SR));
  CARRY8 next_mi_addr0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({next_mi_addr0_carry_n_0,next_mi_addr0_carry_n_1,next_mi_addr0_carry_n_2,next_mi_addr0_carry_n_3,NLW_next_mi_addr0_carry_CO_UNCONNECTED[3],next_mi_addr0_carry_n_5,next_mi_addr0_carry_n_6,next_mi_addr0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pre_mi_addr__0[10],1'b0}),
        .O({next_mi_addr0_carry_n_8,next_mi_addr0_carry_n_9,next_mi_addr0_carry_n_10,next_mi_addr0_carry_n_11,next_mi_addr0_carry_n_12,next_mi_addr0_carry_n_13,next_mi_addr0_carry_n_14,next_mi_addr0_carry_n_15}),
        .S({pre_mi_addr__0[16:11],next_mi_addr0_carry_i_8_n_0,pre_mi_addr__0[9]}));
  CARRY8 next_mi_addr0_carry__0
       (.CI(next_mi_addr0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({next_mi_addr0_carry__0_n_0,next_mi_addr0_carry__0_n_1,next_mi_addr0_carry__0_n_2,next_mi_addr0_carry__0_n_3,NLW_next_mi_addr0_carry__0_CO_UNCONNECTED[3],next_mi_addr0_carry__0_n_5,next_mi_addr0_carry__0_n_6,next_mi_addr0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({next_mi_addr0_carry__0_n_8,next_mi_addr0_carry__0_n_9,next_mi_addr0_carry__0_n_10,next_mi_addr0_carry__0_n_11,next_mi_addr0_carry__0_n_12,next_mi_addr0_carry__0_n_13,next_mi_addr0_carry__0_n_14,next_mi_addr0_carry__0_n_15}),
        .S(pre_mi_addr__0[24:17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__0_i_1
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[24]),
        .I4(next_mi_addr[24]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__0_i_2
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[23]),
        .I4(next_mi_addr[23]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__0_i_3
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[22]),
        .I4(next_mi_addr[22]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__0_i_4
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[21]),
        .I4(next_mi_addr[21]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__0_i_5
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[20]),
        .I4(next_mi_addr[20]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__0_i_6
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[19]),
        .I4(next_mi_addr[19]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__0_i_7
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[18]),
        .I4(next_mi_addr[18]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__0_i_8
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[17]),
        .I4(next_mi_addr[17]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[17]));
  CARRY8 next_mi_addr0_carry__1
       (.CI(next_mi_addr0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({next_mi_addr0_carry__1_n_0,next_mi_addr0_carry__1_n_1,next_mi_addr0_carry__1_n_2,next_mi_addr0_carry__1_n_3,NLW_next_mi_addr0_carry__1_CO_UNCONNECTED[3],next_mi_addr0_carry__1_n_5,next_mi_addr0_carry__1_n_6,next_mi_addr0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({next_mi_addr0_carry__1_n_8,next_mi_addr0_carry__1_n_9,next_mi_addr0_carry__1_n_10,next_mi_addr0_carry__1_n_11,next_mi_addr0_carry__1_n_12,next_mi_addr0_carry__1_n_13,next_mi_addr0_carry__1_n_14,next_mi_addr0_carry__1_n_15}),
        .S(pre_mi_addr__0[32:25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__1_i_1
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[32] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[32]),
        .I4(next_mi_addr[32]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[32]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__1_i_2
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[31]),
        .I4(next_mi_addr[31]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__1_i_3
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[30]),
        .I4(next_mi_addr[30]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__1_i_4
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[29]),
        .I4(next_mi_addr[29]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__1_i_5
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[28]),
        .I4(next_mi_addr[28]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__1_i_6
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[27]),
        .I4(next_mi_addr[27]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__1_i_7
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[26]),
        .I4(next_mi_addr[26]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__1_i_8
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[25]),
        .I4(next_mi_addr[25]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[25]));
  CARRY8 next_mi_addr0_carry__2
       (.CI(next_mi_addr0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({next_mi_addr0_carry__2_n_0,next_mi_addr0_carry__2_n_1,next_mi_addr0_carry__2_n_2,next_mi_addr0_carry__2_n_3,NLW_next_mi_addr0_carry__2_CO_UNCONNECTED[3],next_mi_addr0_carry__2_n_5,next_mi_addr0_carry__2_n_6,next_mi_addr0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({next_mi_addr0_carry__2_n_8,next_mi_addr0_carry__2_n_9,next_mi_addr0_carry__2_n_10,next_mi_addr0_carry__2_n_11,next_mi_addr0_carry__2_n_12,next_mi_addr0_carry__2_n_13,next_mi_addr0_carry__2_n_14,next_mi_addr0_carry__2_n_15}),
        .S(pre_mi_addr__0[40:33]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__2_i_1
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[40] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[40]),
        .I4(next_mi_addr[40]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[40]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__2_i_2
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[39] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[39]),
        .I4(next_mi_addr[39]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[39]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__2_i_3
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[38] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[38]),
        .I4(next_mi_addr[38]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[38]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__2_i_4
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[37] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[37]),
        .I4(next_mi_addr[37]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[37]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__2_i_5
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[36] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[36]),
        .I4(next_mi_addr[36]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[36]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__2_i_6
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[35] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[35]),
        .I4(next_mi_addr[35]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[35]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__2_i_7
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[34] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[34]),
        .I4(next_mi_addr[34]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[34]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__2_i_8
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[33] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[33]),
        .I4(next_mi_addr[33]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[33]));
  CARRY8 next_mi_addr0_carry__3
       (.CI(next_mi_addr0_carry__2_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_next_mi_addr0_carry__3_CO_UNCONNECTED[7],next_mi_addr0_carry__3_n_1,next_mi_addr0_carry__3_n_2,next_mi_addr0_carry__3_n_3,NLW_next_mi_addr0_carry__3_CO_UNCONNECTED[3],next_mi_addr0_carry__3_n_5,next_mi_addr0_carry__3_n_6,next_mi_addr0_carry__3_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({next_mi_addr0_carry__3_n_8,next_mi_addr0_carry__3_n_9,next_mi_addr0_carry__3_n_10,next_mi_addr0_carry__3_n_11,next_mi_addr0_carry__3_n_12,next_mi_addr0_carry__3_n_13,next_mi_addr0_carry__3_n_14,next_mi_addr0_carry__3_n_15}),
        .S(pre_mi_addr__0[48:41]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__3_i_1
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[48] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[48]),
        .I4(next_mi_addr[48]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[48]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__3_i_2
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[47] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[47]),
        .I4(next_mi_addr[47]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[47]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__3_i_3
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[46] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[46]),
        .I4(next_mi_addr[46]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[46]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__3_i_4
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[45] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[45]),
        .I4(next_mi_addr[45]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[45]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__3_i_5
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[44] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[44]),
        .I4(next_mi_addr[44]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[44]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__3_i_6
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[43] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[43]),
        .I4(next_mi_addr[43]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[43]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__3_i_7
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[42] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[42]),
        .I4(next_mi_addr[42]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[42]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry__3_i_8
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[41] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[41]),
        .I4(next_mi_addr[41]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[41]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry_i_1
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[10]),
        .I4(next_mi_addr[10]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry_i_2
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[16]),
        .I4(next_mi_addr[16]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry_i_3
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[15]),
        .I4(next_mi_addr[15]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry_i_4
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[14]),
        .I4(next_mi_addr[14]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry_i_5
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[13]),
        .I4(next_mi_addr[13]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry_i_6
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[12]),
        .I4(next_mi_addr[12]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry_i_7
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[11]),
        .I4(next_mi_addr[11]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[11]));
  LUT6 #(
    .INIT(64'h00FF1BFFFFFF1BFF)) 
    next_mi_addr0_carry_i_8
       (.I0(cmd_first_word_ii2__0),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .I2(masked_addr_q[10]),
        .I3(\split_addr_mask_q_reg_n_0_[48] ),
        .I4(p_18_in),
        .I5(next_mi_addr[10]),
        .O(next_mi_addr0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    next_mi_addr0_carry_i_9
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[9]),
        .I4(next_mi_addr[9]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr__0[9]));
  LUT6 #(
    .INIT(64'hFE0EF20200000000)) 
    \next_mi_addr[2]_i_1 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .I1(cmd_first_word_ii2__0),
        .I2(p_18_in),
        .I3(next_mi_addr[2]),
        .I4(masked_addr_q[2]),
        .I5(\split_addr_mask_q_reg_n_0_[2] ),
        .O(pre_mi_addr[2]));
  LUT6 #(
    .INIT(64'hFE0EF20200000000)) 
    \next_mi_addr[3]_i_1 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .I1(cmd_first_word_ii2__0),
        .I2(p_18_in),
        .I3(next_mi_addr[3]),
        .I4(masked_addr_q[3]),
        .I5(\split_addr_mask_q_reg_n_0_[3] ),
        .O(pre_mi_addr[3]));
  LUT6 #(
    .INIT(64'hFE0EF20200000000)) 
    \next_mi_addr[4]_i_1 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .I1(cmd_first_word_ii2__0),
        .I2(p_18_in),
        .I3(next_mi_addr[4]),
        .I4(masked_addr_q[4]),
        .I5(\split_addr_mask_q_reg_n_0_[4] ),
        .O(pre_mi_addr[4]));
  LUT6 #(
    .INIT(64'hFE0EF20200000000)) 
    \next_mi_addr[5]_i_1 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .I1(cmd_first_word_ii2__0),
        .I2(p_18_in),
        .I3(next_mi_addr[5]),
        .I4(masked_addr_q[5]),
        .I5(\split_addr_mask_q_reg_n_0_[5] ),
        .O(pre_mi_addr[5]));
  LUT6 #(
    .INIT(64'hFE0EF20200000000)) 
    \next_mi_addr[6]_i_1 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .I1(cmd_first_word_ii2__0),
        .I2(p_18_in),
        .I3(next_mi_addr[6]),
        .I4(masked_addr_q[6]),
        .I5(\split_addr_mask_q_reg_n_0_[6] ),
        .O(pre_mi_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \next_mi_addr[6]_i_2 
       (.I0(split_ongoing),
        .I1(access_is_incr_q),
        .O(p_18_in));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \next_mi_addr[7]_i_1 
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[7]),
        .I4(next_mi_addr[7]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \next_mi_addr[8]_i_1 
       (.I0(\next_mi_addr[8]_i_2_n_0 ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .I2(\next_mi_addr[8]_i_3_n_0 ),
        .I3(masked_addr_q[8]),
        .I4(next_mi_addr[8]),
        .I5(\next_mi_addr[8]_i_4_n_0 ),
        .O(pre_mi_addr[8]));
  LUT4 #(
    .INIT(16'h5700)) 
    \next_mi_addr[8]_i_2 
       (.I0(split_ongoing),
        .I1(access_is_wrap_q),
        .I2(access_is_incr_q),
        .I3(\split_addr_mask_q_reg_n_0_[48] ),
        .O(\next_mi_addr[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \next_mi_addr[8]_i_3 
       (.I0(split_ongoing),
        .I1(access_is_incr_q),
        .I2(access_is_wrap_q),
        .I3(\split_addr_mask_q_reg_n_0_[48] ),
        .O(\next_mi_addr[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \next_mi_addr[8]_i_4 
       (.I0(\split_addr_mask_q_reg_n_0_[48] ),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .O(\next_mi_addr[8]_i_4_n_0 ));
  FDRE \next_mi_addr_reg[10] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_14),
        .Q(next_mi_addr[10]),
        .R(SR));
  FDRE \next_mi_addr_reg[11] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_13),
        .Q(next_mi_addr[11]),
        .R(SR));
  FDRE \next_mi_addr_reg[12] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_12),
        .Q(next_mi_addr[12]),
        .R(SR));
  FDRE \next_mi_addr_reg[13] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_11),
        .Q(next_mi_addr[13]),
        .R(SR));
  FDRE \next_mi_addr_reg[14] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_10),
        .Q(next_mi_addr[14]),
        .R(SR));
  FDRE \next_mi_addr_reg[15] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_9),
        .Q(next_mi_addr[15]),
        .R(SR));
  FDRE \next_mi_addr_reg[16] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_8),
        .Q(next_mi_addr[16]),
        .R(SR));
  FDRE \next_mi_addr_reg[17] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_15),
        .Q(next_mi_addr[17]),
        .R(SR));
  FDRE \next_mi_addr_reg[18] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_14),
        .Q(next_mi_addr[18]),
        .R(SR));
  FDRE \next_mi_addr_reg[19] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_13),
        .Q(next_mi_addr[19]),
        .R(SR));
  FDRE \next_mi_addr_reg[20] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_12),
        .Q(next_mi_addr[20]),
        .R(SR));
  FDRE \next_mi_addr_reg[21] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_11),
        .Q(next_mi_addr[21]),
        .R(SR));
  FDRE \next_mi_addr_reg[22] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_10),
        .Q(next_mi_addr[22]),
        .R(SR));
  FDRE \next_mi_addr_reg[23] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_9),
        .Q(next_mi_addr[23]),
        .R(SR));
  FDRE \next_mi_addr_reg[24] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_8),
        .Q(next_mi_addr[24]),
        .R(SR));
  FDRE \next_mi_addr_reg[25] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_15),
        .Q(next_mi_addr[25]),
        .R(SR));
  FDRE \next_mi_addr_reg[26] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_14),
        .Q(next_mi_addr[26]),
        .R(SR));
  FDRE \next_mi_addr_reg[27] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_13),
        .Q(next_mi_addr[27]),
        .R(SR));
  FDRE \next_mi_addr_reg[28] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_12),
        .Q(next_mi_addr[28]),
        .R(SR));
  FDRE \next_mi_addr_reg[29] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_11),
        .Q(next_mi_addr[29]),
        .R(SR));
  FDRE \next_mi_addr_reg[2] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[2]),
        .Q(next_mi_addr[2]),
        .R(SR));
  FDRE \next_mi_addr_reg[30] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_10),
        .Q(next_mi_addr[30]),
        .R(SR));
  FDRE \next_mi_addr_reg[31] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_9),
        .Q(next_mi_addr[31]),
        .R(SR));
  FDRE \next_mi_addr_reg[32] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_8),
        .Q(next_mi_addr[32]),
        .R(SR));
  FDRE \next_mi_addr_reg[33] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_15),
        .Q(next_mi_addr[33]),
        .R(SR));
  FDRE \next_mi_addr_reg[34] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_14),
        .Q(next_mi_addr[34]),
        .R(SR));
  FDRE \next_mi_addr_reg[35] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_13),
        .Q(next_mi_addr[35]),
        .R(SR));
  FDRE \next_mi_addr_reg[36] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_12),
        .Q(next_mi_addr[36]),
        .R(SR));
  FDRE \next_mi_addr_reg[37] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_11),
        .Q(next_mi_addr[37]),
        .R(SR));
  FDRE \next_mi_addr_reg[38] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_10),
        .Q(next_mi_addr[38]),
        .R(SR));
  FDRE \next_mi_addr_reg[39] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_9),
        .Q(next_mi_addr[39]),
        .R(SR));
  FDRE \next_mi_addr_reg[3] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[3]),
        .Q(next_mi_addr[3]),
        .R(SR));
  FDRE \next_mi_addr_reg[40] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_8),
        .Q(next_mi_addr[40]),
        .R(SR));
  FDRE \next_mi_addr_reg[41] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_15),
        .Q(next_mi_addr[41]),
        .R(SR));
  FDRE \next_mi_addr_reg[42] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_14),
        .Q(next_mi_addr[42]),
        .R(SR));
  FDRE \next_mi_addr_reg[43] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_13),
        .Q(next_mi_addr[43]),
        .R(SR));
  FDRE \next_mi_addr_reg[44] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_12),
        .Q(next_mi_addr[44]),
        .R(SR));
  FDRE \next_mi_addr_reg[45] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_11),
        .Q(next_mi_addr[45]),
        .R(SR));
  FDRE \next_mi_addr_reg[46] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_10),
        .Q(next_mi_addr[46]),
        .R(SR));
  FDRE \next_mi_addr_reg[47] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_9),
        .Q(next_mi_addr[47]),
        .R(SR));
  FDRE \next_mi_addr_reg[48] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_8),
        .Q(next_mi_addr[48]),
        .R(SR));
  FDRE \next_mi_addr_reg[4] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[4]),
        .Q(next_mi_addr[4]),
        .R(SR));
  FDRE \next_mi_addr_reg[5] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[5]),
        .Q(next_mi_addr[5]),
        .R(SR));
  FDRE \next_mi_addr_reg[6] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[6]),
        .Q(next_mi_addr[6]),
        .R(SR));
  FDRE \next_mi_addr_reg[7] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[7]),
        .Q(next_mi_addr[7]),
        .R(SR));
  FDRE \next_mi_addr_reg[8] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[8]),
        .Q(next_mi_addr[8]),
        .R(SR));
  FDRE \next_mi_addr_reg[9] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_15),
        .Q(next_mi_addr[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \num_transactions_q[0]_i_1 
       (.I0(burst_mask__0[10]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[2]),
        .O(\num_transactions_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAEEAABAAAAAAA)) 
    \num_transactions_q[0]_i_2 
       (.I0(\num_transactions_q[0]_i_3_n_0 ),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[4]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .I5(s_axi_awlen[7]),
        .O(burst_mask__0[10]));
  LUT6 #(
    .INIT(64'h88C000CC88C00000)) 
    \num_transactions_q[0]_i_3 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[6]),
        .O(\num_transactions_q[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num_transactions_q[1]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(\num_transactions_q[1]_i_2_n_0 ),
        .O(\num_transactions_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \num_transactions_q[1]_i_2 
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[4]),
        .O(\num_transactions_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA0880000A08800)) 
    \num_transactions_q[2]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[5]),
        .O(\num_transactions_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hB8000000)) 
    \num_transactions_q[3]_i_1 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .O(\num_transactions_q[3]_i_1_n_0 ));
  FDRE \num_transactions_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\num_transactions_q[0]_i_1_n_0 ),
        .Q(\num_transactions_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \num_transactions_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\num_transactions_q[1]_i_1_n_0 ),
        .Q(\num_transactions_q_reg_n_0_[1] ),
        .R(SR));
  FDRE \num_transactions_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\num_transactions_q[2]_i_1_n_0 ),
        .Q(\num_transactions_q_reg_n_0_[2] ),
        .R(SR));
  FDRE \num_transactions_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\num_transactions_q[3]_i_1_n_0 ),
        .Q(\num_transactions_q_reg_n_0_[3] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \pushed_commands[0]_i_1 
       (.I0(pushed_commands_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[1]_i_1 
       (.I0(pushed_commands_reg__0[0]),
        .I1(pushed_commands_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pushed_commands[2]_i_1 
       (.I0(pushed_commands_reg__0[0]),
        .I1(pushed_commands_reg__0[1]),
        .I2(pushed_commands_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pushed_commands[3]_i_1 
       (.I0(pushed_commands_reg__0[2]),
        .I1(pushed_commands_reg__0[1]),
        .I2(pushed_commands_reg__0[0]),
        .I3(pushed_commands_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pushed_commands[4]_i_1 
       (.I0(pushed_commands_reg__0[3]),
        .I1(pushed_commands_reg__0[0]),
        .I2(pushed_commands_reg__0[1]),
        .I3(pushed_commands_reg__0[2]),
        .I4(pushed_commands_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pushed_commands[5]_i_1 
       (.I0(pushed_commands_reg__0[2]),
        .I1(pushed_commands_reg__0[1]),
        .I2(pushed_commands_reg__0[0]),
        .I3(pushed_commands_reg__0[3]),
        .I4(pushed_commands_reg__0[4]),
        .I5(pushed_commands_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pushed_commands[6]_i_1 
       (.I0(\pushed_commands[7]_i_3_n_0 ),
        .I1(pushed_commands_reg__0[6]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \pushed_commands[7]_i_1 
       (.I0(s_axi_awready),
        .I1(out),
        .O(\pushed_commands[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \pushed_commands[7]_i_2 
       (.I0(pushed_commands_reg__0[6]),
        .I1(\pushed_commands[7]_i_3_n_0 ),
        .I2(pushed_commands_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pushed_commands[7]_i_3 
       (.I0(pushed_commands_reg__0[5]),
        .I1(pushed_commands_reg__0[2]),
        .I2(pushed_commands_reg__0[1]),
        .I3(pushed_commands_reg__0[0]),
        .I4(pushed_commands_reg__0[3]),
        .I5(pushed_commands_reg__0[4]),
        .O(\pushed_commands[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[0] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[0]),
        .Q(pushed_commands_reg__0[0]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[1] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[1]),
        .Q(pushed_commands_reg__0[1]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[2] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[2]),
        .Q(pushed_commands_reg__0[2]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[3] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[3]),
        .Q(pushed_commands_reg__0[3]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[4] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[4]),
        .Q(pushed_commands_reg__0[4]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[5] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[5]),
        .Q(pushed_commands_reg__0[5]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[6] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[6]),
        .Q(pushed_commands_reg__0[6]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[7] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[7]),
        .Q(pushed_commands_reg__0[7]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \queue_id_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_79),
        .Q(s_axi_bid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    si_full_size_q_i_1
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .O(si_full_size));
  FDRE #(
    .INIT(1'b0)) 
    si_full_size_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(si_full_size),
        .Q(si_full_size_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \split_addr_mask_q[0]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(split_addr_mask[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \split_addr_mask_q[1]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .O(split_addr_mask[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \split_addr_mask_q[2]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(split_addr_mask[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \split_addr_mask_q[3]_i_1 
       (.I0(s_axi_awsize[2]),
        .O(split_addr_mask[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \split_addr_mask_q[4]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(split_addr_mask[4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \split_addr_mask_q[5]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .O(split_addr_mask[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \split_addr_mask_q[6]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .O(split_addr_mask[6]));
  FDRE \split_addr_mask_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[0]),
        .Q(\split_addr_mask_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[1]),
        .Q(\split_addr_mask_q_reg_n_0_[1] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[2]),
        .Q(\split_addr_mask_q_reg_n_0_[2] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[3]),
        .Q(\split_addr_mask_q_reg_n_0_[3] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[48] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(1'b1),
        .Q(\split_addr_mask_q_reg_n_0_[48] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[4]),
        .Q(\split_addr_mask_q_reg_n_0_[4] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[5] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[5]),
        .Q(\split_addr_mask_q_reg_n_0_[5] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[6] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[6]),
        .Q(\split_addr_mask_q_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    split_ongoing_reg
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(cmd_split_i),
        .Q(split_ongoing),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hF800)) 
    \unalignment_addr_q[0]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awaddr[2]),
        .O(unalignment_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \unalignment_addr_q[1]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awsize[2]),
        .O(unalignment_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \unalignment_addr_q[2]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .O(unalignment_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \unalignment_addr_q[3]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(unalignment_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \unalignment_addr_q[4]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[1]),
        .O(unalignment_addr[4]));
  FDRE \unalignment_addr_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(unalignment_addr[0]),
        .Q(unalignment_addr_q[0]),
        .R(SR));
  FDRE \unalignment_addr_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(unalignment_addr[1]),
        .Q(unalignment_addr_q[1]),
        .R(SR));
  FDRE \unalignment_addr_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(unalignment_addr[2]),
        .Q(unalignment_addr_q[2]),
        .R(SR));
  FDRE \unalignment_addr_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(unalignment_addr[3]),
        .Q(unalignment_addr_q[3]),
        .R(SR));
  FDRE \unalignment_addr_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(unalignment_addr[4]),
        .Q(unalignment_addr_q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    wrap_need_to_split_q_i_1
       (.I0(legal_wrap_len_q_i_1_n_0),
        .I1(fix_len[0]),
        .I2(s_axi_awburst[1]),
        .I3(s_axi_awburst[0]),
        .I4(wrap_need_to_split_q_i_2_n_0),
        .O(wrap_need_to_split));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    wrap_need_to_split_q_i_2
       (.I0(wrap_unaligned_len[2]),
        .I1(wrap_unaligned_len[4]),
        .I2(wrap_need_to_split_q_i_3_n_0),
        .I3(wrap_unaligned_len[5]),
        .I4(s_axi_awaddr[3]),
        .I5(cmd_mask_i[3]),
        .O(wrap_need_to_split_q_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    wrap_need_to_split_q_i_3
       (.I0(wrap_unaligned_len[7]),
        .I1(wrap_unaligned_len[3]),
        .I2(\masked_addr_q[8]_i_2_n_0 ),
        .I3(s_axi_awaddr[8]),
        .I4(cmd_mask_i[2]),
        .I5(s_axi_awaddr[2]),
        .O(wrap_need_to_split_q_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wrap_need_to_split_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_need_to_split),
        .Q(wrap_need_to_split_q),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \wrap_rest_len[0]_i_1 
       (.I0(wrap_unaligned_len_q[0]),
        .O(wrap_rest_len0[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wrap_rest_len[1]_i_1 
       (.I0(wrap_unaligned_len_q[0]),
        .I1(wrap_unaligned_len_q[1]),
        .O(wrap_rest_len0[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \wrap_rest_len[2]_i_1 
       (.I0(wrap_unaligned_len_q[2]),
        .I1(wrap_unaligned_len_q[1]),
        .I2(wrap_unaligned_len_q[0]),
        .O(wrap_rest_len0[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wrap_rest_len[3]_i_1 
       (.I0(wrap_unaligned_len_q[3]),
        .I1(wrap_unaligned_len_q[0]),
        .I2(wrap_unaligned_len_q[1]),
        .I3(wrap_unaligned_len_q[2]),
        .O(wrap_rest_len0[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \wrap_rest_len[4]_i_1 
       (.I0(wrap_unaligned_len_q[3]),
        .I1(wrap_unaligned_len_q[0]),
        .I2(wrap_unaligned_len_q[1]),
        .I3(wrap_unaligned_len_q[2]),
        .I4(wrap_unaligned_len_q[4]),
        .O(wrap_rest_len0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wrap_rest_len[5]_i_1 
       (.I0(wrap_unaligned_len_q[5]),
        .I1(wrap_unaligned_len_q[3]),
        .I2(wrap_unaligned_len_q[0]),
        .I3(wrap_unaligned_len_q[1]),
        .I4(wrap_unaligned_len_q[2]),
        .I5(wrap_unaligned_len_q[4]),
        .O(wrap_rest_len0[5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wrap_rest_len[6]_i_1 
       (.I0(wrap_unaligned_len_q[6]),
        .I1(\wrap_rest_len[7]_i_2_n_0 ),
        .O(wrap_rest_len0[6]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \wrap_rest_len[7]_i_1 
       (.I0(wrap_unaligned_len_q[6]),
        .I1(\wrap_rest_len[7]_i_2_n_0 ),
        .I2(wrap_unaligned_len_q[7]),
        .O(wrap_rest_len0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wrap_rest_len[7]_i_2 
       (.I0(wrap_unaligned_len_q[4]),
        .I1(wrap_unaligned_len_q[2]),
        .I2(wrap_unaligned_len_q[1]),
        .I3(wrap_unaligned_len_q[0]),
        .I4(wrap_unaligned_len_q[3]),
        .I5(wrap_unaligned_len_q[5]),
        .O(\wrap_rest_len[7]_i_2_n_0 ));
  FDRE \wrap_rest_len_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[0]),
        .Q(wrap_rest_len[0]),
        .R(SR));
  FDRE \wrap_rest_len_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[1]),
        .Q(wrap_rest_len[1]),
        .R(SR));
  FDRE \wrap_rest_len_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[2]),
        .Q(wrap_rest_len[2]),
        .R(SR));
  FDRE \wrap_rest_len_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[3]),
        .Q(wrap_rest_len[3]),
        .R(SR));
  FDRE \wrap_rest_len_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[4]),
        .Q(wrap_rest_len[4]),
        .R(SR));
  FDRE \wrap_rest_len_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[5]),
        .Q(wrap_rest_len[5]),
        .R(SR));
  FDRE \wrap_rest_len_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[6]),
        .Q(wrap_rest_len[6]),
        .R(SR));
  FDRE \wrap_rest_len_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[7]),
        .Q(wrap_rest_len[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[0]_i_1 
       (.I0(cmd_mask_i[2]),
        .I1(s_axi_awaddr[2]),
        .O(wrap_unaligned_len[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[1]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(cmd_mask_i[3]),
        .O(wrap_unaligned_len[1]));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A808)) 
    \wrap_unaligned_len_q[2]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(\masked_addr_q[4]_i_2_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[0]),
        .O(wrap_unaligned_len[2]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[3]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(burst_mask__0[5]),
        .O(wrap_unaligned_len[3]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[4]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(burst_mask__0[6]),
        .O(wrap_unaligned_len[4]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[5]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(burst_mask__0[7]),
        .O(wrap_unaligned_len[5]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[6]_i_1 
       (.I0(\masked_addr_q[8]_i_2_n_0 ),
        .I1(s_axi_awaddr[8]),
        .O(wrap_unaligned_len[6]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[7]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(burst_mask__0[9]),
        .O(wrap_unaligned_len[7]));
  FDRE \wrap_unaligned_len_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[0]),
        .Q(wrap_unaligned_len_q[0]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[1]),
        .Q(wrap_unaligned_len_q[1]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[2]),
        .Q(wrap_unaligned_len_q[2]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[3]),
        .Q(wrap_unaligned_len_q[3]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[4]),
        .Q(wrap_unaligned_len_q[4]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[5] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[5]),
        .Q(wrap_unaligned_len_q[5]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[6] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[6]),
        .Q(wrap_unaligned_len_q[6]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[7] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[7]),
        .Q(wrap_unaligned_len_q[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_15_axi_downsizer" *) 
module design_1_auto_ds_0_axi_dwidth_converter_v2_1_15_axi_downsizer
   (m_axi_awvalid,
    E,
    din,
    s_axi_bresp,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_wlast,
    m_axi_bready,
    s_axi_bvalid,
    s_axi_bid,
    m_axi_wvalid,
    s_axi_wready,
    m_axi_awaddr,
    m_axi_awlock,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_awburst,
    out,
    m_axi_awready,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_awburst,
    CLK,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_bready,
    m_axi_bvalid,
    s_axi_awvalid,
    s_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    s_axi_wdata,
    s_axi_wstrb);
  output m_axi_awvalid;
  output [0:0]E;
  output [10:0]din;
  output [1:0]s_axi_bresp;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_wlast;
  output m_axi_bready;
  output s_axi_bvalid;
  output [0:0]s_axi_bid;
  output m_axi_wvalid;
  output s_axi_wready;
  output [48:0]m_axi_awaddr;
  output [0:0]m_axi_awlock;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [1:0]m_axi_awburst;
  input out;
  input m_axi_awready;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input CLK;
  input [0:0]s_axi_awid;
  input [48:0]s_axi_awaddr;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_bready;
  input m_axi_bvalid;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;

  wire CLK;
  wire [0:0]E;
  wire [7:0]\USE_WRITE.wr_cmd_b_repeat ;
  wire \USE_WRITE.wr_cmd_b_split ;
  wire [7:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.write_addr_inst_n_9 ;
  wire \USE_WRITE.write_data_inst_n_1 ;
  wire \USE_WRITE.write_data_inst_n_2 ;
  wire [3:0]current_word_1;
  wire [10:0]din;
  wire first_mi_word;
  wire last_word;
  wire [48:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire out;
  wire [3:0]p_0_in;
  wire p_2_in;
  wire [48:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;

  design_1_auto_ds_0_axi_dwidth_converter_v2_1_15_b_downsizer \USE_WRITE.USE_SPLIT.write_resp_inst 
       (.CLK(CLK),
        .SR(\USE_WRITE.write_addr_inst_n_9 ),
        .dout({\USE_WRITE.wr_cmd_b_split ,\USE_WRITE.wr_cmd_b_repeat }),
        .last_word(last_word),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid));
  design_1_auto_ds_0_axi_dwidth_converter_v2_1_15_a_downsizer \USE_WRITE.write_addr_inst 
       (.CLK(CLK),
        .D(p_0_in),
        .E(p_2_in),
        .Q(current_word_1),
        .SR(\USE_WRITE.write_addr_inst_n_9 ),
        .din(din),
        .dout({\USE_WRITE.wr_cmd_b_split ,\USE_WRITE.wr_cmd_b_repeat }),
        .first_mi_word(first_mi_word),
        .last_word(last_word),
        .\length_counter_1_reg[1] (\USE_WRITE.write_data_inst_n_1 ),
        .\length_counter_1_reg[2] (\USE_WRITE.write_data_inst_n_2 ),
        .\length_counter_1_reg[7] (\USE_WRITE.wr_cmd_length ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .out(out),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(E),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_auto_ds_0_axi_dwidth_converter_v2_1_15_w_downsizer \USE_WRITE.write_data_inst 
       (.CLK(CLK),
        .D(p_0_in),
        .E(p_2_in),
        .Q(current_word_1),
        .SR(\USE_WRITE.write_addr_inst_n_9 ),
        .first_mi_word(first_mi_word),
        .first_word_reg_0(\USE_WRITE.write_data_inst_n_1 ),
        .first_word_reg_1(\USE_WRITE.write_data_inst_n_2 ),
        .\goreg_dm.dout_i_reg[10] (\USE_WRITE.wr_cmd_length ),
        .\goreg_dm.dout_i_reg[4] (m_axi_wlast));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_15_b_downsizer" *) 
module design_1_auto_ds_0_axi_dwidth_converter_v2_1_15_b_downsizer
   (last_word,
    m_axi_bready,
    s_axi_bvalid,
    s_axi_bresp,
    SR,
    CLK,
    s_axi_bready,
    m_axi_bvalid,
    dout,
    m_axi_bresp);
  output last_word;
  output m_axi_bready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input [0:0]SR;
  input CLK;
  input s_axi_bready;
  input m_axi_bvalid;
  input [8:0]dout;
  input [1:0]m_axi_bresp;

  wire CLK;
  wire [0:0]SR;
  wire [1:0]S_AXI_BRESP_ACC;
  wire [8:0]dout;
  wire first_mi_word;
  wire last_word;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [7:0]next_repeat_cnt;
  wire p_1_in;
  wire \repeat_cnt[3]_i_2_n_0 ;
  wire \repeat_cnt[5]_i_2_n_0 ;
  wire \repeat_cnt[7]_i_2_n_0 ;
  wire [7:0]repeat_cnt_reg__0;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_bvalid_INST_0_i_2_n_0;

  FDRE \S_AXI_BRESP_ACC_reg[0] 
       (.C(CLK),
        .CE(p_1_in),
        .D(s_axi_bresp[0]),
        .Q(S_AXI_BRESP_ACC[0]),
        .R(SR));
  FDRE \S_AXI_BRESP_ACC_reg[1] 
       (.C(CLK),
        .CE(p_1_in),
        .D(s_axi_bresp[1]),
        .Q(S_AXI_BRESP_ACC[1]),
        .R(SR));
  LUT3 #(
    .INIT(8'hD0)) 
    first_mi_word_i_1
       (.I0(last_word),
        .I1(s_axi_bready),
        .I2(m_axi_bvalid),
        .O(p_1_in));
  FDSE first_mi_word_reg
       (.C(CLK),
        .CE(p_1_in),
        .D(last_word),
        .Q(first_mi_word),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    m_axi_bready_INST_0
       (.I0(s_axi_bready),
        .I1(last_word),
        .O(m_axi_bready));
  LUT3 #(
    .INIT(8'h1D)) 
    \repeat_cnt[0]_i_1 
       (.I0(repeat_cnt_reg__0[0]),
        .I1(first_mi_word),
        .I2(dout[0]),
        .O(next_repeat_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8748B47)) 
    \repeat_cnt[1]_i_1 
       (.I0(dout[1]),
        .I1(first_mi_word),
        .I2(repeat_cnt_reg__0[1]),
        .I3(dout[0]),
        .I4(repeat_cnt_reg__0[0]),
        .O(next_repeat_cnt[1]));
  LUT4 #(
    .INIT(16'hB847)) 
    \repeat_cnt[2]_i_1 
       (.I0(dout[2]),
        .I1(first_mi_word),
        .I2(repeat_cnt_reg__0[2]),
        .I3(\repeat_cnt[3]_i_2_n_0 ),
        .O(next_repeat_cnt[2]));
  LUT6 #(
    .INIT(64'hB8B8B88BB874B847)) 
    \repeat_cnt[3]_i_1 
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(repeat_cnt_reg__0[3]),
        .I3(\repeat_cnt[3]_i_2_n_0 ),
        .I4(repeat_cnt_reg__0[2]),
        .I5(dout[2]),
        .O(next_repeat_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \repeat_cnt[3]_i_2 
       (.I0(repeat_cnt_reg__0[0]),
        .I1(dout[0]),
        .I2(repeat_cnt_reg__0[1]),
        .I3(first_mi_word),
        .I4(dout[1]),
        .O(\repeat_cnt[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \repeat_cnt[4]_i_1 
       (.I0(\repeat_cnt[5]_i_2_n_0 ),
        .I1(repeat_cnt_reg__0[4]),
        .I2(first_mi_word),
        .I3(dout[4]),
        .O(next_repeat_cnt[4]));
  LUT6 #(
    .INIT(64'hB8B8B88BB874B847)) 
    \repeat_cnt[5]_i_1 
       (.I0(dout[5]),
        .I1(first_mi_word),
        .I2(repeat_cnt_reg__0[5]),
        .I3(\repeat_cnt[5]_i_2_n_0 ),
        .I4(repeat_cnt_reg__0[4]),
        .I5(dout[4]),
        .O(next_repeat_cnt[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFCFAFAFFFC)) 
    \repeat_cnt[5]_i_2 
       (.I0(dout[2]),
        .I1(repeat_cnt_reg__0[2]),
        .I2(\repeat_cnt[3]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[3]),
        .I4(first_mi_word),
        .I5(dout[3]),
        .O(\repeat_cnt[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \repeat_cnt[6]_i_1 
       (.I0(dout[6]),
        .I1(first_mi_word),
        .I2(repeat_cnt_reg__0[6]),
        .I3(\repeat_cnt[7]_i_2_n_0 ),
        .O(next_repeat_cnt[6]));
  LUT6 #(
    .INIT(64'hFAFAFC030505FC03)) 
    \repeat_cnt[7]_i_1 
       (.I0(dout[6]),
        .I1(repeat_cnt_reg__0[6]),
        .I2(\repeat_cnt[7]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[7]),
        .I4(first_mi_word),
        .I5(dout[7]),
        .O(next_repeat_cnt[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFCFAFAFFFC)) 
    \repeat_cnt[7]_i_2 
       (.I0(dout[4]),
        .I1(repeat_cnt_reg__0[4]),
        .I2(\repeat_cnt[5]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[5]),
        .I4(first_mi_word),
        .I5(dout[5]),
        .O(\repeat_cnt[7]_i_2_n_0 ));
  FDRE \repeat_cnt_reg[0] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[0]),
        .Q(repeat_cnt_reg__0[0]),
        .R(SR));
  FDRE \repeat_cnt_reg[1] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[1]),
        .Q(repeat_cnt_reg__0[1]),
        .R(SR));
  FDRE \repeat_cnt_reg[2] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[2]),
        .Q(repeat_cnt_reg__0[2]),
        .R(SR));
  FDRE \repeat_cnt_reg[3] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[3]),
        .Q(repeat_cnt_reg__0[3]),
        .R(SR));
  FDRE \repeat_cnt_reg[4] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[4]),
        .Q(repeat_cnt_reg__0[4]),
        .R(SR));
  FDRE \repeat_cnt_reg[5] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[5]),
        .Q(repeat_cnt_reg__0[5]),
        .R(SR));
  FDRE \repeat_cnt_reg[6] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[6]),
        .Q(repeat_cnt_reg__0[6]),
        .R(SR));
  FDRE \repeat_cnt_reg[7] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[7]),
        .Q(repeat_cnt_reg__0[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hCCCCECAECCCCCCCC)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(S_AXI_BRESP_ACC[0]),
        .I1(m_axi_bresp[0]),
        .I2(S_AXI_BRESP_ACC[1]),
        .I3(m_axi_bresp[1]),
        .I4(first_mi_word),
        .I5(dout[8]),
        .O(s_axi_bresp[0]));
  LUT4 #(
    .INIT(16'hCECC)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(S_AXI_BRESP_ACC[1]),
        .I1(m_axi_bresp[1]),
        .I2(first_mi_word),
        .I3(dout[8]),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s_axi_bvalid_INST_0
       (.I0(last_word),
        .I1(m_axi_bvalid),
        .O(s_axi_bvalid));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    s_axi_bvalid_INST_0_i_1
       (.I0(repeat_cnt_reg__0[2]),
        .I1(repeat_cnt_reg__0[1]),
        .I2(repeat_cnt_reg__0[0]),
        .I3(s_axi_bvalid_INST_0_i_2_n_0),
        .I4(dout[8]),
        .O(last_word));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_bvalid_INST_0_i_2
       (.I0(repeat_cnt_reg__0[3]),
        .I1(repeat_cnt_reg__0[4]),
        .I2(repeat_cnt_reg__0[5]),
        .I3(repeat_cnt_reg__0[6]),
        .I4(first_mi_word),
        .I5(repeat_cnt_reg__0[7]),
        .O(s_axi_bvalid_INST_0_i_2_n_0));
endmodule

(* C_AXI_ADDR_WIDTH = "49" *) (* C_AXI_IS_ACLK_ASYNC = "0" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_SUPPORTS_READ = "0" *) (* C_AXI_SUPPORTS_WRITE = "1" *) (* C_FAMILY = "zynquplus" *) 
(* C_FIFO_MODE = "0" *) (* C_MAX_SPLIT_BEATS = "256" *) (* C_M_AXI_ACLK_RATIO = "2" *) 
(* C_M_AXI_BYTES_LOG = "2" *) (* C_M_AXI_DATA_WIDTH = "32" *) (* C_PACKING_LEVEL = "1" *) 
(* C_RATIO = "4" *) (* C_RATIO_LOG = "2" *) (* C_SUPPORTS_ID = "1" *) 
(* C_SYNCHRONIZER_STAGE = "3" *) (* C_S_AXI_ACLK_RATIO = "1" *) (* C_S_AXI_BYTES_LOG = "4" *) 
(* C_S_AXI_DATA_WIDTH = "128" *) (* C_S_AXI_ID_WIDTH = "1" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_15_top" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_CONVERSION = "2" *) (* P_MAX_SPLIT_BEATS = "256" *) 
module design_1_auto_ds_0_axi_dwidth_converter_v2_1_15_top
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
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
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
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
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* keep = "true" *) input s_axi_aclk;
  (* keep = "true" *) input s_axi_aresetn;
  input [0:0]s_axi_awid;
  input [48:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [48:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  (* keep = "true" *) input m_axi_aclk;
  (* keep = "true" *) input m_axi_aresetn;
  output [48:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [48:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  (* RTL_KEEP = "true" *) wire m_axi_aclk;
  (* RTL_KEEP = "true" *) wire m_axi_aresetn;
  wire [48:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  (* RTL_KEEP = "true" *) wire s_axi_aclk;
  (* RTL_KEEP = "true" *) wire s_axi_aresetn;
  wire [48:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[48] = \<const0> ;
  assign m_axi_araddr[47] = \<const0> ;
  assign m_axi_araddr[46] = \<const0> ;
  assign m_axi_araddr[45] = \<const0> ;
  assign m_axi_araddr[44] = \<const0> ;
  assign m_axi_araddr[43] = \<const0> ;
  assign m_axi_araddr[42] = \<const0> ;
  assign m_axi_araddr[41] = \<const0> ;
  assign m_axi_araddr[40] = \<const0> ;
  assign m_axi_araddr[39] = \<const0> ;
  assign m_axi_araddr[38] = \<const0> ;
  assign m_axi_araddr[37] = \<const0> ;
  assign m_axi_araddr[36] = \<const0> ;
  assign m_axi_araddr[35] = \<const0> ;
  assign m_axi_araddr[34] = \<const0> ;
  assign m_axi_araddr[33] = \<const0> ;
  assign m_axi_araddr[32] = \<const0> ;
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
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign s_axi_arready = \<const0> ;
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
  assign s_axi_rvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_ds_0_axi_dwidth_converter_v2_1_15_axi_downsizer \gen_downsizer.gen_simple_downsizer.axi_downsizer_inst 
       (.CLK(s_axi_aclk),
        .E(s_axi_awready),
        .din({m_axi_awsize,m_axi_awlen}),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .out(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_15_w_downsizer" *) 
module design_1_auto_ds_0_axi_dwidth_converter_v2_1_15_w_downsizer
   (first_mi_word,
    first_word_reg_0,
    first_word_reg_1,
    Q,
    SR,
    E,
    \goreg_dm.dout_i_reg[4] ,
    CLK,
    \goreg_dm.dout_i_reg[10] ,
    D);
  output first_mi_word;
  output first_word_reg_0;
  output first_word_reg_1;
  output [3:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input \goreg_dm.dout_i_reg[4] ;
  input CLK;
  input [7:0]\goreg_dm.dout_i_reg[10] ;
  input [3:0]D;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire first_mi_word;
  wire first_word_reg_0;
  wire first_word_reg_1;
  wire [7:0]\goreg_dm.dout_i_reg[10] ;
  wire \goreg_dm.dout_i_reg[4] ;
  wire \length_counter_1[3]_i_2_n_0 ;
  wire \length_counter_1[5]_i_2_n_0 ;
  wire \length_counter_1[7]_i_2_n_0 ;
  wire [7:0]length_counter_1_reg__0;
  wire [7:0]next_length_counter;

  FDRE \current_word_1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \current_word_1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \current_word_1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \current_word_1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDSE first_word_reg
       (.C(CLK),
        .CE(E),
        .D(\goreg_dm.dout_i_reg[4] ),
        .Q(first_mi_word),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \length_counter_1[0]_i_1 
       (.I0(length_counter_1_reg__0[0]),
        .I1(first_mi_word),
        .I2(\goreg_dm.dout_i_reg[10] [0]),
        .O(next_length_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hB8748B47)) 
    \length_counter_1[1]_i_1 
       (.I0(\goreg_dm.dout_i_reg[10] [1]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg__0[1]),
        .I3(\goreg_dm.dout_i_reg[10] [0]),
        .I4(length_counter_1_reg__0[0]),
        .O(next_length_counter[1]));
  LUT4 #(
    .INIT(16'hB847)) 
    \length_counter_1[2]_i_1 
       (.I0(\goreg_dm.dout_i_reg[10] [2]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg__0[2]),
        .I3(\length_counter_1[3]_i_2_n_0 ),
        .O(next_length_counter[2]));
  LUT6 #(
    .INIT(64'hB8B8B88BB874B847)) 
    \length_counter_1[3]_i_1 
       (.I0(\goreg_dm.dout_i_reg[10] [3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg__0[3]),
        .I3(\length_counter_1[3]_i_2_n_0 ),
        .I4(length_counter_1_reg__0[2]),
        .I5(\goreg_dm.dout_i_reg[10] [2]),
        .O(next_length_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \length_counter_1[3]_i_2 
       (.I0(length_counter_1_reg__0[0]),
        .I1(\goreg_dm.dout_i_reg[10] [0]),
        .I2(length_counter_1_reg__0[1]),
        .I3(first_mi_word),
        .I4(\goreg_dm.dout_i_reg[10] [1]),
        .O(\length_counter_1[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \length_counter_1[4]_i_1 
       (.I0(\length_counter_1[5]_i_2_n_0 ),
        .I1(length_counter_1_reg__0[4]),
        .I2(first_mi_word),
        .I3(\goreg_dm.dout_i_reg[10] [4]),
        .O(next_length_counter[4]));
  LUT6 #(
    .INIT(64'hB8B8B88BB874B847)) 
    \length_counter_1[5]_i_1 
       (.I0(\goreg_dm.dout_i_reg[10] [5]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg__0[5]),
        .I3(\length_counter_1[5]_i_2_n_0 ),
        .I4(length_counter_1_reg__0[4]),
        .I5(\goreg_dm.dout_i_reg[10] [4]),
        .O(next_length_counter[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFCFAFAFFFC)) 
    \length_counter_1[5]_i_2 
       (.I0(\goreg_dm.dout_i_reg[10] [2]),
        .I1(length_counter_1_reg__0[2]),
        .I2(\length_counter_1[3]_i_2_n_0 ),
        .I3(length_counter_1_reg__0[3]),
        .I4(first_mi_word),
        .I5(\goreg_dm.dout_i_reg[10] [3]),
        .O(\length_counter_1[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB847)) 
    \length_counter_1[6]_i_1 
       (.I0(\goreg_dm.dout_i_reg[10] [6]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg__0[6]),
        .I3(\length_counter_1[7]_i_2_n_0 ),
        .O(next_length_counter[6]));
  LUT6 #(
    .INIT(64'hFAFAFC030505FC03)) 
    \length_counter_1[7]_i_1 
       (.I0(\goreg_dm.dout_i_reg[10] [6]),
        .I1(length_counter_1_reg__0[6]),
        .I2(\length_counter_1[7]_i_2_n_0 ),
        .I3(length_counter_1_reg__0[7]),
        .I4(first_mi_word),
        .I5(\goreg_dm.dout_i_reg[10] [7]),
        .O(next_length_counter[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFCFAFAFFFC)) 
    \length_counter_1[7]_i_2 
       (.I0(\goreg_dm.dout_i_reg[10] [4]),
        .I1(length_counter_1_reg__0[4]),
        .I2(\length_counter_1[5]_i_2_n_0 ),
        .I3(length_counter_1_reg__0[5]),
        .I4(first_mi_word),
        .I5(\goreg_dm.dout_i_reg[10] [5]),
        .O(\length_counter_1[7]_i_2_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[0]),
        .Q(length_counter_1_reg__0[0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[1]),
        .Q(length_counter_1_reg__0[1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[2]),
        .Q(length_counter_1_reg__0[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[3]),
        .Q(length_counter_1_reg__0[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[4]),
        .Q(length_counter_1_reg__0[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[5]),
        .Q(length_counter_1_reg__0[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[6]),
        .Q(length_counter_1_reg__0[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[7]),
        .Q(length_counter_1_reg__0[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h01)) 
    m_axi_wlast_INST_0_i_2
       (.I0(length_counter_1_reg__0[1]),
        .I1(length_counter_1_reg__0[0]),
        .I2(first_mi_word),
        .O(first_word_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_axi_wlast_INST_0_i_3
       (.I0(length_counter_1_reg__0[2]),
        .I1(length_counter_1_reg__0[3]),
        .I2(length_counter_1_reg__0[4]),
        .I3(length_counter_1_reg__0[5]),
        .I4(length_counter_1_reg__0[7]),
        .I5(length_counter_1_reg__0[6]),
        .O(first_word_reg_1));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_ds_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "ASYNC_RST" *) 
module design_1_auto_ds_0_xpm_cdc_async_rst__2
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_auto_ds_0_dmem
   (dout_i,
    clk,
    EN,
    din,
    \gc0.count_d1_reg[4] ,
    I18,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [8:0]dout_i;
  input clk;
  input EN;
  input [4:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]I18;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire EN;
  wire [4:0]I18;
  wire clk;
  wire [4:0]din;
  wire [8:0]dout_i;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire [8:0]p_0_out;
  wire [1:1]NLW_RAM_reg_0_31_0_5_DOE_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOF_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOG_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOH_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M16 RAM_reg_0_31_0_5
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gc0.count_d1_reg[4] ),
        .ADDRE(\gc0.count_d1_reg[4] ),
        .ADDRF(\gc0.count_d1_reg[4] ),
        .ADDRG(\gc0.count_d1_reg[4] ),
        .ADDRH(I18),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,din[4]}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(p_0_out[7:6]),
        .DOE({NLW_RAM_reg_0_31_0_5_DOE_UNCONNECTED[1],p_0_out[8]}),
        .DOF(NLW_RAM_reg_0_31_0_5_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_RAM_reg_0_31_0_5_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_RAM_reg_0_31_0_5_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[0]),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[1]),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[2]),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[3]),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[4]),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[5]),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[6]),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[7]),
        .Q(dout_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[8]),
        .Q(dout_i[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module design_1_auto_ds_0_dmem__parameterized0
   (dout_i,
    clk,
    EN,
    din,
    \gc0.count_d1_reg[4] ,
    Q,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [27:0]dout_i;
  input clk;
  input EN;
  input [28:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]Q;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire EN;
  wire [4:0]Q;
  wire RAM_reg_0_31_6_11_n_12;
  wire clk;
  wire [28:0]din;
  wire [27:0]dout_i;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire [28:0]p_0_out;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOH_UNCONNECTED;
  wire [1:1]NLW_RAM_reg_0_31_12_17_DOA_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOE_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOF_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOG_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOH_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_11_DOH_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M16 RAM_reg_0_31_0_5
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gc0.count_d1_reg[4] ),
        .ADDRE(\gc0.count_d1_reg[4] ),
        .ADDRF(\gc0.count_d1_reg[4] ),
        .ADDRG(\gc0.count_d1_reg[4] ),
        .ADDRH(Q),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID(din[7:6]),
        .DIE(din[9:8]),
        .DIF(din[11:10]),
        .DIG(din[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(p_0_out[7:6]),
        .DOE(p_0_out[9:8]),
        .DOF(p_0_out[11:10]),
        .DOG(p_0_out[13:12]),
        .DOH(NLW_RAM_reg_0_31_0_5_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M16 RAM_reg_0_31_12_17
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gc0.count_d1_reg[4] ),
        .ADDRE(\gc0.count_d1_reg[4] ),
        .ADDRF(\gc0.count_d1_reg[4] ),
        .ADDRG(\gc0.count_d1_reg[4] ),
        .ADDRH(Q),
        .DIA({1'b0,din[28]}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA({NLW_RAM_reg_0_31_12_17_DOA_UNCONNECTED[1],p_0_out[28]}),
        .DOB(NLW_RAM_reg_0_31_12_17_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_RAM_reg_0_31_12_17_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .DOE(NLW_RAM_reg_0_31_12_17_DOE_UNCONNECTED[1:0]),
        .DOF(NLW_RAM_reg_0_31_12_17_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_RAM_reg_0_31_12_17_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_RAM_reg_0_31_12_17_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M16 RAM_reg_0_31_6_11
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gc0.count_d1_reg[4] ),
        .ADDRE(\gc0.count_d1_reg[4] ),
        .ADDRF(\gc0.count_d1_reg[4] ),
        .ADDRG(\gc0.count_d1_reg[4] ),
        .ADDRH(Q),
        .DIA(din[15:14]),
        .DIB(din[17:16]),
        .DIC(din[19:18]),
        .DID(din[21:20]),
        .DIE(din[23:22]),
        .DIF(din[25:24]),
        .DIG(din[27:26]),
        .DIH({1'b0,1'b0}),
        .DOA(p_0_out[15:14]),
        .DOB(p_0_out[17:16]),
        .DOC(p_0_out[19:18]),
        .DOD(p_0_out[21:20]),
        .DOE(p_0_out[23:22]),
        .DOF(p_0_out[25:24]),
        .DOG({RAM_reg_0_31_6_11_n_12,p_0_out[26]}),
        .DOH(NLW_RAM_reg_0_31_6_11_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(EN));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[0]),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[10]),
        .Q(dout_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[11]),
        .Q(dout_i[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[12]),
        .Q(dout_i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[13]),
        .Q(dout_i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[14]),
        .Q(dout_i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[15]),
        .Q(dout_i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[16]),
        .Q(dout_i[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[17]),
        .Q(dout_i[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[18]),
        .Q(dout_i[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[19]),
        .Q(dout_i[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[1]),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[20]),
        .Q(dout_i[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[21]),
        .Q(dout_i[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[22]),
        .Q(dout_i[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[23]),
        .Q(dout_i[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[24]),
        .Q(dout_i[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[25]),
        .Q(dout_i[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[26]),
        .Q(dout_i[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[28]),
        .Q(dout_i[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[2]),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[3]),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[4]),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[5]),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[6]),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[7]),
        .Q(dout_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[8]),
        .Q(dout_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[9]),
        .Q(dout_i[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_auto_ds_0_fifo_generator_ramfifo
   (empty,
    full,
    dout,
    rst,
    clk,
    din,
    rd_en,
    wr_en);
  output empty;
  output full;
  output [8:0]dout;
  input rst;
  input clk;
  input [4:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [4:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.rd_n_0 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_13 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_6 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_0 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_3 ;
  wire [0:0]\gr1.gr1_int.rfwft/p_0_in ;
  wire [4:0]p_0_out_0;
  wire [4:0]p_12_out;
  wire p_19_out;
  wire ram_rd_en_i;
  wire rd_en;
  wire [2:0]rd_pntr_plus1;
  wire rst;
  wire rstblk_n_0;
  wire rstblk_n_1;
  wire wr_en;

  design_1_auto_ds_0_rd_logic_0 \gntv_or_sync_fifo.gl0.rd 
       (.AR(rstblk_n_0),
        .E(ram_rd_en_i),
        .FULL_FB(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .Q(rd_pntr_plus1),
        .clk(clk),
        .empty(empty),
        .\gcc0.gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .\gcc0.gc0.count_d1_reg[4] (p_12_out),
        .\gpr1.dout_i_reg[1] (p_0_out_0),
        .out({\gntv_or_sync_fifo.gl0.rd_n_0 ,\gr1.gr1_int.rfwft/p_0_in }),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_6 ),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_13 ),
        .rd_en(rd_en),
        .wr_en(wr_en));
  design_1_auto_ds_0_wr_logic_1 \gntv_or_sync_fifo.gl0.wr 
       (.AS(rstblk_n_0),
        .E(p_19_out),
        .FULL_FB(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .Q(p_12_out),
        .clk(clk),
        .full(full),
        .\gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.rd_n_6 ),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gc0.count_reg[2] (rd_pntr_plus1),
        .\gpregsm1.curr_fwft_state_reg[0] (\gntv_or_sync_fifo.gl0.rd_n_13 ),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .wr_en(wr_en));
  design_1_auto_ds_0_memory \gntv_or_sync_fifo.mem 
       (.E(rstblk_n_1),
        .EN(p_19_out),
        .I18(p_12_out),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gpregsm1.curr_fwft_state_reg[1] (ram_rd_en_i));
  design_1_auto_ds_0_reset_blk_ramfifo__xdcDup__1 rstblk
       (.AS(rstblk_n_0),
        .E(rstblk_n_1),
        .clk(clk),
        .out({\gntv_or_sync_fifo.gl0.rd_n_0 ,\gr1.gr1_int.rfwft/p_0_in }),
        .rd_en(rd_en),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module design_1_auto_ds_0_fifo_generator_ramfifo__parameterized0
   (empty,
    full,
    dout,
    rst,
    clk,
    din,
    rd_en,
    wr_en);
  output empty;
  output full;
  output [27:0]dout;
  input rst;
  input clk;
  input [28:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [28:0]din;
  wire [27:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.rd_n_0 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_13 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_6 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_0 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_3 ;
  wire [0:0]\gr1.gr1_int.rfwft/p_0_in ;
  wire [4:0]p_0_out_0;
  wire [4:0]p_12_out;
  wire p_19_out;
  wire ram_rd_en_i;
  wire rd_en;
  wire [2:0]rd_pntr_plus1;
  wire rst;
  wire rstblk_n_0;
  wire rstblk_n_1;
  wire wr_en;

  design_1_auto_ds_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.AR(rstblk_n_0),
        .E(ram_rd_en_i),
        .FULL_FB(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .Q(rd_pntr_plus1),
        .clk(clk),
        .empty(empty),
        .\gcc0.gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .\gcc0.gc0.count_d1_reg[4] (p_12_out),
        .\gpr1.dout_i_reg[1] (p_0_out_0),
        .out({\gntv_or_sync_fifo.gl0.rd_n_0 ,\gr1.gr1_int.rfwft/p_0_in }),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_6 ),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_13 ),
        .rd_en(rd_en),
        .wr_en(wr_en));
  design_1_auto_ds_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AS(rstblk_n_0),
        .E(p_19_out),
        .FULL_FB(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .Q(p_12_out),
        .clk(clk),
        .full(full),
        .\gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.rd_n_6 ),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gc0.count_reg[2] (rd_pntr_plus1),
        .\gpregsm1.curr_fwft_state_reg[0] (\gntv_or_sync_fifo.gl0.rd_n_13 ),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .wr_en(wr_en));
  design_1_auto_ds_0_memory__parameterized0 \gntv_or_sync_fifo.mem 
       (.E(rstblk_n_1),
        .EN(p_19_out),
        .Q(p_12_out),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gpregsm1.curr_fwft_state_reg[1] (ram_rd_en_i));
  design_1_auto_ds_0_reset_blk_ramfifo rstblk
       (.AS(rstblk_n_0),
        .E(rstblk_n_1),
        .clk(clk),
        .out({\gntv_or_sync_fifo.gl0.rd_n_0 ,\gr1.gr1_int.rfwft/p_0_in }),
        .rd_en(rd_en),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_auto_ds_0_fifo_generator_top
   (empty,
    full,
    dout,
    rst,
    clk,
    din,
    rd_en,
    wr_en);
  output empty;
  output full;
  output [8:0]dout;
  input rst;
  input clk;
  input [4:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [4:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  design_1_auto_ds_0_fifo_generator_ramfifo \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module design_1_auto_ds_0_fifo_generator_top__parameterized0
   (empty,
    full,
    dout,
    rst,
    clk,
    din,
    rd_en,
    wr_en);
  output empty;
  output full;
  output [27:0]dout;
  input rst;
  input clk;
  input [28:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [28:0]din;
  wire [27:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  design_1_auto_ds_0_fifo_generator_ramfifo__parameterized0 \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "6" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "9" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "9" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "zynquplus" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "0" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "0" *) (* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "6" *) 
(* C_RD_DEPTH = "32" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "5" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "3" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "1" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "6" *) 
(* C_WR_DEPTH = "32" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "5" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_1" *) 
module design_1_auto_ds_0_fifo_generator_v13_2_1
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
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
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
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
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
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
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [8:0]din;
  input wr_en;
  input rd_en;
  input [4:0]prog_empty_thresh;
  input [4:0]prog_empty_thresh_assert;
  input [4:0]prog_empty_thresh_negate;
  input [4:0]prog_full_thresh;
  input [4:0]prog_full_thresh_assert;
  input [4:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [8:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [5:0]data_count;
  output [5:0]rd_data_count;
  output [5:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire clk;
  wire [8:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const0> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const0> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const0> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const0> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const0> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
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
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
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
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_ds_0_fifo_generator_v13_2_1_synth inst_fifo_gen
       (.clk(clk),
        .din({din[8],din[3:0]}),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "6" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "29" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "29" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "zynquplus" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "0" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "0" *) (* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "6" *) 
(* C_RD_DEPTH = "32" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "5" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "3" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "1" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "6" *) 
(* C_WR_DEPTH = "32" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "5" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_1" *) 
module design_1_auto_ds_0_fifo_generator_v13_2_1__parameterized0
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
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
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
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
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
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
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [28:0]din;
  input wr_en;
  input rd_en;
  input [4:0]prog_empty_thresh;
  input [4:0]prog_empty_thresh_assert;
  input [4:0]prog_empty_thresh_negate;
  input [4:0]prog_full_thresh;
  input [4:0]prog_full_thresh_assert;
  input [4:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [28:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [5:0]data_count;
  output [5:0]rd_data_count;
  output [5:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire clk;
  wire [28:0]din;
  wire [28:0]\^dout ;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const0> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const0> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const0> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const0> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const0> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[28] = \^dout [28];
  assign dout[27] = \<const0> ;
  assign dout[26:0] = \^dout [26:0];
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
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
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
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_auto_ds_0_fifo_generator_v13_2_1_synth__parameterized0 inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout({\^dout [28],\^dout [26:0]}),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_1_synth" *) 
module design_1_auto_ds_0_fifo_generator_v13_2_1_synth
   (empty,
    full,
    dout,
    rst,
    clk,
    din,
    rd_en,
    wr_en);
  output empty;
  output full;
  output [8:0]dout;
  input rst;
  input clk;
  input [4:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [4:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  design_1_auto_ds_0_fifo_generator_top \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_1_synth" *) 
module design_1_auto_ds_0_fifo_generator_v13_2_1_synth__parameterized0
   (empty,
    full,
    dout,
    rst,
    clk,
    din,
    rd_en,
    wr_en);
  output empty;
  output full;
  output [27:0]dout;
  input rst;
  input clk;
  input [28:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [28:0]din;
  wire [27:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  design_1_auto_ds_0_fifo_generator_top__parameterized0 \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_auto_ds_0_memory
   (dout,
    E,
    clk,
    EN,
    din,
    \gc0.count_d1_reg[4] ,
    I18,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [8:0]dout;
  input [0:0]E;
  input clk;
  input EN;
  input [4:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]I18;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire [0:0]E;
  wire EN;
  wire [4:0]I18;
  wire clk;
  wire [4:0]din;
  wire [8:0]dout;
  wire [8:0]dout_i;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  design_1_auto_ds_0_dmem \gdm.dm_gen.dm 
       (.EN(EN),
        .I18(I18),
        .clk(clk),
        .din(din),
        .dout_i(dout_i),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gpregsm1.curr_fwft_state_reg[1] (\gpregsm1.curr_fwft_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(clk),
        .CE(E),
        .D(dout_i[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(clk),
        .CE(E),
        .D(dout_i[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(clk),
        .CE(E),
        .D(dout_i[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(clk),
        .CE(E),
        .D(dout_i[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(clk),
        .CE(E),
        .D(dout_i[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(clk),
        .CE(E),
        .D(dout_i[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(clk),
        .CE(E),
        .D(dout_i[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(clk),
        .CE(E),
        .D(dout_i[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(clk),
        .CE(E),
        .D(dout_i[8]),
        .Q(dout[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module design_1_auto_ds_0_memory__parameterized0
   (dout,
    E,
    clk,
    EN,
    din,
    \gc0.count_d1_reg[4] ,
    Q,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [27:0]dout;
  input [0:0]E;
  input clk;
  input EN;
  input [28:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]Q;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire [0:0]E;
  wire EN;
  wire [4:0]Q;
  wire clk;
  wire [28:0]din;
  wire [27:0]dout;
  wire [28:0]dout_i;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  design_1_auto_ds_0_dmem__parameterized0 \gdm.dm_gen.dm 
       (.EN(EN),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout_i({dout_i[28],dout_i[26:0]}),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gpregsm1.curr_fwft_state_reg[1] (\gpregsm1.curr_fwft_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(clk),
        .CE(E),
        .D(dout_i[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(clk),
        .CE(E),
        .D(dout_i[10]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(clk),
        .CE(E),
        .D(dout_i[11]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(clk),
        .CE(E),
        .D(dout_i[12]),
        .Q(dout[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(clk),
        .CE(E),
        .D(dout_i[13]),
        .Q(dout[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(clk),
        .CE(E),
        .D(dout_i[14]),
        .Q(dout[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(clk),
        .CE(E),
        .D(dout_i[15]),
        .Q(dout[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(clk),
        .CE(E),
        .D(dout_i[16]),
        .Q(dout[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(clk),
        .CE(E),
        .D(dout_i[17]),
        .Q(dout[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(clk),
        .CE(E),
        .D(dout_i[18]),
        .Q(dout[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(clk),
        .CE(E),
        .D(dout_i[19]),
        .Q(dout[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(clk),
        .CE(E),
        .D(dout_i[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(clk),
        .CE(E),
        .D(dout_i[20]),
        .Q(dout[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(clk),
        .CE(E),
        .D(dout_i[21]),
        .Q(dout[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(clk),
        .CE(E),
        .D(dout_i[22]),
        .Q(dout[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(clk),
        .CE(E),
        .D(dout_i[23]),
        .Q(dout[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(clk),
        .CE(E),
        .D(dout_i[24]),
        .Q(dout[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(clk),
        .CE(E),
        .D(dout_i[25]),
        .Q(dout[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(clk),
        .CE(E),
        .D(dout_i[26]),
        .Q(dout[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(clk),
        .CE(E),
        .D(dout_i[28]),
        .Q(dout[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(clk),
        .CE(E),
        .D(dout_i[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(clk),
        .CE(E),
        .D(dout_i[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(clk),
        .CE(E),
        .D(dout_i[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(clk),
        .CE(E),
        .D(dout_i[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(clk),
        .CE(E),
        .D(dout_i[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(clk),
        .CE(E),
        .D(dout_i[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(clk),
        .CE(E),
        .D(dout_i[8]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(clk),
        .CE(E),
        .D(dout_i[9]),
        .Q(dout[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_auto_ds_0_rd_bin_cntr
   (Q,
    ram_empty_fb_i_reg,
    ram_empty_fb_i_reg_0,
    \gpr1.dout_i_reg[1] ,
    wr_en,
    FULL_FB,
    out,
    \gcc0.gc0.count_d1_reg[4] ,
    \gpregsm1.curr_fwft_state_reg[0] ,
    \gcc0.gc0.count_d1_reg[2] ,
    E,
    clk,
    AR);
  output [2:0]Q;
  output ram_empty_fb_i_reg;
  output ram_empty_fb_i_reg_0;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input wr_en;
  input FULL_FB;
  input out;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input \gcc0.gc0.count_d1_reg[2] ;
  input [0:0]E;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire FULL_FB;
  wire [2:0]Q;
  wire clk;
  wire \gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire out;
  wire [4:0]plusOp;
  wire ram_empty_fb_i_i_2_n_0;
  wire ram_empty_fb_i_i_6_n_0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire [4:3]rd_pntr_plus1;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(Q[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(AR),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]));
  LUT5 #(
    .INIT(32'hFFA2F3A2)) 
    ram_empty_fb_i_i_1
       (.I0(ram_empty_fb_i_i_2_n_0),
        .I1(wr_en),
        .I2(FULL_FB),
        .I3(out),
        .I4(ram_empty_fb_i_reg_0),
        .O(ram_empty_fb_i_reg));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    ram_empty_fb_i_i_2
       (.I0(rd_pntr_plus1[3]),
        .I1(\gcc0.gc0.count_d1_reg[4] [3]),
        .I2(rd_pntr_plus1[4]),
        .I3(\gcc0.gc0.count_d1_reg[4] [4]),
        .I4(\gpregsm1.curr_fwft_state_reg[0] ),
        .I5(\gcc0.gc0.count_d1_reg[2] ),
        .O(ram_empty_fb_i_i_2_n_0));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    ram_empty_fb_i_i_3
       (.I0(ram_empty_fb_i_i_6_n_0),
        .I1(\gpr1.dout_i_reg[1] [2]),
        .I2(\gcc0.gc0.count_d1_reg[4] [2]),
        .I3(\gpr1.dout_i_reg[1] [1]),
        .I4(\gcc0.gc0.count_d1_reg[4] [1]),
        .O(ram_empty_fb_i_reg_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ram_empty_fb_i_i_6
       (.I0(\gpr1.dout_i_reg[1] [4]),
        .I1(\gcc0.gc0.count_d1_reg[4] [4]),
        .I2(\gpr1.dout_i_reg[1] [3]),
        .I3(\gcc0.gc0.count_d1_reg[4] [3]),
        .I4(\gcc0.gc0.count_d1_reg[4] [0]),
        .I5(\gpr1.dout_i_reg[1] [0]),
        .O(ram_empty_fb_i_i_6_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module design_1_auto_ds_0_rd_bin_cntr_6
   (Q,
    ram_empty_fb_i_reg,
    ram_empty_fb_i_reg_0,
    \gpr1.dout_i_reg[1] ,
    wr_en,
    FULL_FB,
    out,
    \gcc0.gc0.count_d1_reg[4] ,
    \gpregsm1.curr_fwft_state_reg[0] ,
    \gcc0.gc0.count_d1_reg[2] ,
    E,
    clk,
    AR);
  output [2:0]Q;
  output ram_empty_fb_i_reg;
  output ram_empty_fb_i_reg_0;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input wr_en;
  input FULL_FB;
  input out;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input \gcc0.gc0.count_d1_reg[2] ;
  input [0:0]E;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire FULL_FB;
  wire [2:0]Q;
  wire clk;
  wire \gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire out;
  wire [4:0]plusOp;
  wire ram_empty_fb_i_i_2_n_0;
  wire ram_empty_fb_i_i_6_n_0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire [4:3]rd_pntr_plus1;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(Q[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(AR),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]));
  LUT5 #(
    .INIT(32'hFFA2F3A2)) 
    ram_empty_fb_i_i_1
       (.I0(ram_empty_fb_i_i_2_n_0),
        .I1(wr_en),
        .I2(FULL_FB),
        .I3(out),
        .I4(ram_empty_fb_i_reg_0),
        .O(ram_empty_fb_i_reg));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    ram_empty_fb_i_i_2
       (.I0(rd_pntr_plus1[3]),
        .I1(\gcc0.gc0.count_d1_reg[4] [3]),
        .I2(rd_pntr_plus1[4]),
        .I3(\gcc0.gc0.count_d1_reg[4] [4]),
        .I4(\gpregsm1.curr_fwft_state_reg[0] ),
        .I5(\gcc0.gc0.count_d1_reg[2] ),
        .O(ram_empty_fb_i_i_2_n_0));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    ram_empty_fb_i_i_3
       (.I0(ram_empty_fb_i_i_6_n_0),
        .I1(\gpr1.dout_i_reg[1] [2]),
        .I2(\gcc0.gc0.count_d1_reg[4] [2]),
        .I3(\gpr1.dout_i_reg[1] [1]),
        .I4(\gcc0.gc0.count_d1_reg[4] [1]),
        .O(ram_empty_fb_i_reg_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ram_empty_fb_i_i_6
       (.I0(\gpr1.dout_i_reg[1] [4]),
        .I1(\gcc0.gc0.count_d1_reg[4] [4]),
        .I2(\gpr1.dout_i_reg[1] [3]),
        .I3(\gcc0.gc0.count_d1_reg[4] [3]),
        .I4(\gcc0.gc0.count_d1_reg[4] [0]),
        .I5(\gpr1.dout_i_reg[1] [0]),
        .O(ram_empty_fb_i_i_6_n_0));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_auto_ds_0_rd_fwft
   (out,
    empty,
    E,
    ram_empty_fb_i_reg,
    ram_full_fb_i_reg,
    clk,
    AR,
    rd_en,
    ram_empty_fb_i_reg_0);
  output [1:0]out;
  output empty;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output ram_full_fb_i_reg;
  input clk;
  input [0:0]AR;
  input rd_en;
  input ram_empty_fb_i_reg_0;

  wire [0:0]AR;
  wire [0:0]E;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  wire clk;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire [1:0]next_fwft_state;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire ram_full_fb_i_reg;
  wire rd_en;
  (* DONT_TOUCH *) wire user_valid;

  assign empty = empty_fwft_i;
  assign out[1:0] = curr_fwft_state;
  LUT5 #(
    .INIT(32'hFAEF8000)) 
    aempty_fwft_fb_i_i_1
       (.I0(ram_empty_fb_i_reg_0),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .I4(aempty_fwft_fb_i),
        .O(aempty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(AR),
        .Q(aempty_fwft_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(AR),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hB2A2)) 
    empty_fwft_fb_i_i_1
       (.I0(empty_fwft_fb_i),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(empty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(AR),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hB2A2)) 
    empty_fwft_fb_o_i_i_1
       (.I0(empty_fwft_fb_o_i),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(empty_fwft_fb_o_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i0),
        .PRE(AR),
        .Q(empty_fwft_fb_o_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(AR),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[4]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_fb_i_reg_0),
        .O(E));
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(rd_en),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_fb_i_reg_0),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(next_fwft_state[0]),
        .Q(user_valid));
  LUT3 #(
    .INIT(8'hDF)) 
    ram_empty_fb_i_i_4
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .O(ram_empty_fb_i_reg));
  LUT4 #(
    .INIT(16'hFF08)) 
    ram_full_fb_i_i_3
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .I3(ram_empty_fb_i_reg_0),
        .O(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module design_1_auto_ds_0_rd_fwft_4
   (out,
    empty,
    E,
    ram_empty_fb_i_reg,
    ram_full_fb_i_reg,
    clk,
    AR,
    rd_en,
    ram_empty_fb_i_reg_0);
  output [1:0]out;
  output empty;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output ram_full_fb_i_reg;
  input clk;
  input [0:0]AR;
  input rd_en;
  input ram_empty_fb_i_reg_0;

  wire [0:0]AR;
  wire [0:0]E;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  wire clk;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire [1:0]next_fwft_state;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire ram_full_fb_i_reg;
  wire rd_en;
  (* DONT_TOUCH *) wire user_valid;

  assign empty = empty_fwft_i;
  assign out[1:0] = curr_fwft_state;
  LUT5 #(
    .INIT(32'hFAEF8000)) 
    aempty_fwft_fb_i_i_1
       (.I0(ram_empty_fb_i_reg_0),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(curr_fwft_state[1]),
        .I4(aempty_fwft_fb_i),
        .O(aempty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(AR),
        .Q(aempty_fwft_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(AR),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hB2A2)) 
    empty_fwft_fb_i_i_1
       (.I0(empty_fwft_fb_i),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(empty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(AR),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hB2A2)) 
    empty_fwft_fb_o_i_i_1
       (.I0(empty_fwft_fb_o_i),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(empty_fwft_fb_o_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i0),
        .PRE(AR),
        .Q(empty_fwft_fb_o_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(AR),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[4]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_fb_i_reg_0),
        .O(E));
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(rd_en),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_fb_i_reg_0),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(next_fwft_state[0]),
        .Q(user_valid));
  LUT3 #(
    .INIT(8'hDF)) 
    ram_empty_fb_i_i_4
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .O(ram_empty_fb_i_reg));
  LUT4 #(
    .INIT(16'hFF08)) 
    ram_full_fb_i_i_3
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .I3(ram_empty_fb_i_reg_0),
        .O(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_auto_ds_0_rd_logic
   (out,
    empty,
    Q,
    ram_empty_fb_i_reg,
    E,
    \gpr1.dout_i_reg[1] ,
    ram_full_fb_i_reg,
    clk,
    AR,
    rd_en,
    wr_en,
    FULL_FB,
    \gcc0.gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[2] );
  output [1:0]out;
  output empty;
  output [2:0]Q;
  output ram_empty_fb_i_reg;
  output [0:0]E;
  output [4:0]\gpr1.dout_i_reg[1] ;
  output ram_full_fb_i_reg;
  input clk;
  input [0:0]AR;
  input rd_en;
  input wr_en;
  input FULL_FB;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input \gcc0.gc0.count_d1_reg[2] ;

  wire [0:0]AR;
  wire [0:0]E;
  wire FULL_FB;
  wire [2:0]Q;
  wire clk;
  wire empty;
  wire \gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gr1.gr1_int.rfwft_n_4 ;
  wire [1:0]out;
  wire p_2_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_fb_i_reg;
  wire rd_en;
  wire rpntr_n_3;
  wire wr_en;

  design_1_auto_ds_0_rd_fwft \gr1.gr1_int.rfwft 
       (.AR(AR),
        .E(E),
        .clk(clk),
        .empty(empty),
        .out(out),
        .ram_empty_fb_i_reg(\gr1.gr1_int.rfwft_n_4 ),
        .ram_empty_fb_i_reg_0(p_2_out),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_en(rd_en));
  design_1_auto_ds_0_rd_status_flags_ss \grss.rsts 
       (.AR(AR),
        .clk(clk),
        .out(p_2_out),
        .ram_full_fb_i_reg(rpntr_n_3));
  design_1_auto_ds_0_rd_bin_cntr rpntr
       (.AR(AR),
        .E(E),
        .FULL_FB(FULL_FB),
        .Q(Q),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[2] (\gcc0.gc0.count_d1_reg[2] ),
        .\gcc0.gc0.count_d1_reg[4] (\gcc0.gc0.count_d1_reg[4] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gr1.gr1_int.rfwft_n_4 ),
        .out(p_2_out),
        .ram_empty_fb_i_reg(rpntr_n_3),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module design_1_auto_ds_0_rd_logic_0
   (out,
    empty,
    Q,
    ram_empty_fb_i_reg,
    E,
    \gpr1.dout_i_reg[1] ,
    ram_full_fb_i_reg,
    clk,
    AR,
    rd_en,
    wr_en,
    FULL_FB,
    \gcc0.gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[2] );
  output [1:0]out;
  output empty;
  output [2:0]Q;
  output ram_empty_fb_i_reg;
  output [0:0]E;
  output [4:0]\gpr1.dout_i_reg[1] ;
  output ram_full_fb_i_reg;
  input clk;
  input [0:0]AR;
  input rd_en;
  input wr_en;
  input FULL_FB;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input \gcc0.gc0.count_d1_reg[2] ;

  wire [0:0]AR;
  wire [0:0]E;
  wire FULL_FB;
  wire [2:0]Q;
  wire clk;
  wire empty;
  wire \gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gr1.gr1_int.rfwft_n_4 ;
  wire [1:0]out;
  wire p_2_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_fb_i_reg;
  wire rd_en;
  wire rpntr_n_3;
  wire wr_en;

  design_1_auto_ds_0_rd_fwft_4 \gr1.gr1_int.rfwft 
       (.AR(AR),
        .E(E),
        .clk(clk),
        .empty(empty),
        .out(out),
        .ram_empty_fb_i_reg(\gr1.gr1_int.rfwft_n_4 ),
        .ram_empty_fb_i_reg_0(p_2_out),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_en(rd_en));
  design_1_auto_ds_0_rd_status_flags_ss_5 \grss.rsts 
       (.AR(AR),
        .clk(clk),
        .out(p_2_out),
        .ram_full_fb_i_reg(rpntr_n_3));
  design_1_auto_ds_0_rd_bin_cntr_6 rpntr
       (.AR(AR),
        .E(E),
        .FULL_FB(FULL_FB),
        .Q(Q),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[2] (\gcc0.gc0.count_d1_reg[2] ),
        .\gcc0.gc0.count_d1_reg[4] (\gcc0.gc0.count_d1_reg[4] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gr1.gr1_int.rfwft_n_4 ),
        .out(p_2_out),
        .ram_empty_fb_i_reg(rpntr_n_3),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module design_1_auto_ds_0_rd_status_flags_ss
   (out,
    ram_full_fb_i_reg,
    clk,
    AR);
  output out;
  input ram_full_fb_i_reg;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire clk;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_full_fb_i_reg;

  assign out = ram_empty_fb_i;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg),
        .PRE(AR),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg),
        .PRE(AR),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module design_1_auto_ds_0_rd_status_flags_ss_5
   (out,
    ram_full_fb_i_reg,
    clk,
    AR);
  output out;
  input ram_full_fb_i_reg;
  input clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire clk;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_full_fb_i_reg;

  assign out = ram_empty_fb_i;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg),
        .PRE(AR),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg),
        .PRE(AR),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_auto_ds_0_reset_blk_ramfifo
   (AS,
    E,
    rst,
    clk,
    out,
    rd_en);
  output [0:0]AS;
  output [0:0]E;
  input rst;
  input clk;
  input [1:0]out;
  input rd_en;

  wire [0:0]AS;
  wire [0:0]E;
  wire clk;
  wire [1:0]out;
  wire rd_en;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire [1:0]sckt_wr_rst_cc;

  LUT3 #(
    .INIT(8'hFE)) 
    \gc0.count_d1[4]_i_2 
       (.I0(sckt_wr_rst_cc[1]),
        .I1(sckt_wr_rst_cc[0]),
        .I2(rst_wr_reg2),
        .O(AS));
  LUT6 #(
    .INIT(64'h0010001000000010)) 
    \goreg_dm.dout_i[28]_i_1 
       (.I0(rst_wr_reg2),
        .I1(sckt_wr_rst_cc[0]),
        .I2(out[1]),
        .I3(sckt_wr_rst_cc[1]),
        .I4(out[0]),
        .I5(rd_en),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rst_wr_reg2),
        .Q(sckt_wr_rst_cc[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(sckt_wr_rst_cc[0]),
        .Q(sckt_wr_rst_cc[1]),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_ds_0_xpm_cdc_async_rst \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(clk),
        .src_arst(rst));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module design_1_auto_ds_0_reset_blk_ramfifo__xdcDup__1
   (AS,
    E,
    rst,
    clk,
    out,
    rd_en);
  output [0:0]AS;
  output [0:0]E;
  input rst;
  input clk;
  input [1:0]out;
  input rd_en;

  wire [0:0]AS;
  wire [0:0]E;
  wire clk;
  wire [1:0]out;
  wire rd_en;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire [1:0]sckt_wr_rst_cc;

  LUT3 #(
    .INIT(8'hFE)) 
    \gc0.count_d1[4]_i_2 
       (.I0(sckt_wr_rst_cc[1]),
        .I1(sckt_wr_rst_cc[0]),
        .I2(rst_wr_reg2),
        .O(AS));
  LUT6 #(
    .INIT(64'h0010001000000010)) 
    \goreg_dm.dout_i[8]_i_1 
       (.I0(rst_wr_reg2),
        .I1(sckt_wr_rst_cc[0]),
        .I2(out[1]),
        .I3(sckt_wr_rst_cc[1]),
        .I4(out[0]),
        .I5(rd_en),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rst_wr_reg2),
        .Q(sckt_wr_rst_cc[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(sckt_wr_rst_cc[0]),
        .Q(sckt_wr_rst_cc[1]),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_auto_ds_0_xpm_cdc_async_rst__2 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(clk),
        .src_arst(rst));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_auto_ds_0_wr_bin_cntr
   (ram_full_comb,
    ram_empty_fb_i_reg,
    Q,
    \gpregsm1.curr_fwft_state_reg[0] ,
    FULL_FB,
    \gc0.count_d1_reg[2] ,
    \gc0.count_reg[2] ,
    wr_en,
    \gc0.count_d1_reg[4] ,
    E,
    clk,
    AS);
  output ram_full_comb;
  output ram_empty_fb_i_reg;
  output [4:0]Q;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input FULL_FB;
  input \gc0.count_d1_reg[2] ;
  input [2:0]\gc0.count_reg[2] ;
  input wr_en;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]AS;

  wire [0:0]AS;
  wire [0:0]E;
  wire FULL_FB;
  wire [4:0]Q;
  wire clk;
  wire \gc0.count_d1_reg[2] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gc0.count_reg[2] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire [4:0]p_13_out;
  wire [4:0]plusOp__0;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire ram_full_fb_i_i_2_n_0;
  wire ram_full_fb_i_i_4_n_0;
  wire ram_full_fb_i_i_5_n_0;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(p_13_out[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(p_13_out[0]),
        .I1(p_13_out[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(p_13_out[1]),
        .I1(p_13_out[0]),
        .I2(p_13_out[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(p_13_out[2]),
        .I1(p_13_out[0]),
        .I2(p_13_out[1]),
        .I3(p_13_out[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(p_13_out[3]),
        .I1(p_13_out[1]),
        .I2(p_13_out[0]),
        .I3(p_13_out[2]),
        .I4(p_13_out[4]),
        .O(plusOp__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(p_13_out[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(p_13_out[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(p_13_out[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(p_13_out[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(p_13_out[4]),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(AS),
        .Q(p_13_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(plusOp__0[1]),
        .Q(p_13_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(plusOp__0[2]),
        .Q(p_13_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(plusOp__0[3]),
        .Q(p_13_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(plusOp__0[4]),
        .Q(p_13_out[4]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_5
       (.I0(Q[2]),
        .I1(\gc0.count_reg[2] [2]),
        .I2(Q[1]),
        .I3(\gc0.count_reg[2] [1]),
        .I4(\gc0.count_reg[2] [0]),
        .I5(Q[0]),
        .O(ram_empty_fb_i_reg));
  LUT4 #(
    .INIT(16'hF8C8)) 
    ram_full_fb_i_i_1
       (.I0(ram_full_fb_i_i_2_n_0),
        .I1(\gpregsm1.curr_fwft_state_reg[0] ),
        .I2(FULL_FB),
        .I3(\gc0.count_d1_reg[2] ),
        .O(ram_full_comb));
  LUT5 #(
    .INIT(32'h80000080)) 
    ram_full_fb_i_i_2
       (.I0(ram_full_fb_i_i_4_n_0),
        .I1(ram_full_fb_i_i_5_n_0),
        .I2(wr_en),
        .I3(\gc0.count_d1_reg[4] [4]),
        .I4(p_13_out[4]),
        .O(ram_full_fb_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_fb_i_i_4
       (.I0(p_13_out[2]),
        .I1(\gc0.count_d1_reg[4] [2]),
        .I2(p_13_out[3]),
        .I3(\gc0.count_d1_reg[4] [3]),
        .O(ram_full_fb_i_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_fb_i_i_5
       (.I0(p_13_out[0]),
        .I1(\gc0.count_d1_reg[4] [0]),
        .I2(p_13_out[1]),
        .I3(\gc0.count_d1_reg[4] [1]),
        .O(ram_full_fb_i_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module design_1_auto_ds_0_wr_bin_cntr_3
   (ram_full_comb,
    ram_empty_fb_i_reg,
    Q,
    \gpregsm1.curr_fwft_state_reg[0] ,
    FULL_FB,
    \gc0.count_d1_reg[2] ,
    \gc0.count_reg[2] ,
    wr_en,
    \gc0.count_d1_reg[4] ,
    E,
    clk,
    AS);
  output ram_full_comb;
  output ram_empty_fb_i_reg;
  output [4:0]Q;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input FULL_FB;
  input \gc0.count_d1_reg[2] ;
  input [2:0]\gc0.count_reg[2] ;
  input wr_en;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]AS;

  wire [0:0]AS;
  wire [0:0]E;
  wire FULL_FB;
  wire [4:0]Q;
  wire clk;
  wire \gc0.count_d1_reg[2] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gc0.count_reg[2] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire [4:0]p_13_out;
  wire [4:0]plusOp__0;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire ram_full_fb_i_i_2_n_0;
  wire ram_full_fb_i_i_4_n_0;
  wire ram_full_fb_i_i_5_n_0;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(p_13_out[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(p_13_out[0]),
        .I1(p_13_out[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(p_13_out[1]),
        .I1(p_13_out[0]),
        .I2(p_13_out[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(p_13_out[2]),
        .I1(p_13_out[0]),
        .I2(p_13_out[1]),
        .I3(p_13_out[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(p_13_out[3]),
        .I1(p_13_out[1]),
        .I2(p_13_out[0]),
        .I3(p_13_out[2]),
        .I4(p_13_out[4]),
        .O(plusOp__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(p_13_out[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(p_13_out[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(p_13_out[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(p_13_out[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(p_13_out[4]),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(AS),
        .Q(p_13_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(plusOp__0[1]),
        .Q(p_13_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(plusOp__0[2]),
        .Q(p_13_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(plusOp__0[3]),
        .Q(p_13_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(AS),
        .D(plusOp__0[4]),
        .Q(p_13_out[4]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_5
       (.I0(Q[2]),
        .I1(\gc0.count_reg[2] [2]),
        .I2(Q[1]),
        .I3(\gc0.count_reg[2] [1]),
        .I4(\gc0.count_reg[2] [0]),
        .I5(Q[0]),
        .O(ram_empty_fb_i_reg));
  LUT4 #(
    .INIT(16'hF8C8)) 
    ram_full_fb_i_i_1
       (.I0(ram_full_fb_i_i_2_n_0),
        .I1(\gpregsm1.curr_fwft_state_reg[0] ),
        .I2(FULL_FB),
        .I3(\gc0.count_d1_reg[2] ),
        .O(ram_full_comb));
  LUT5 #(
    .INIT(32'h80000080)) 
    ram_full_fb_i_i_2
       (.I0(ram_full_fb_i_i_4_n_0),
        .I1(ram_full_fb_i_i_5_n_0),
        .I2(wr_en),
        .I3(\gc0.count_d1_reg[4] [4]),
        .I4(p_13_out[4]),
        .O(ram_full_fb_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_fb_i_i_4
       (.I0(p_13_out[2]),
        .I1(\gc0.count_d1_reg[4] [2]),
        .I2(p_13_out[3]),
        .I3(\gc0.count_d1_reg[4] [3]),
        .O(ram_full_fb_i_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_fb_i_i_5
       (.I0(p_13_out[0]),
        .I1(\gc0.count_d1_reg[4] [0]),
        .I2(p_13_out[1]),
        .I3(\gc0.count_d1_reg[4] [1]),
        .O(ram_full_fb_i_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_auto_ds_0_wr_logic
   (FULL_FB,
    full,
    E,
    ram_empty_fb_i_reg,
    Q,
    clk,
    AS,
    wr_en,
    \gpregsm1.curr_fwft_state_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_reg[2] ,
    \gc0.count_d1_reg[4] );
  output FULL_FB;
  output full;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output [4:0]Q;
  input clk;
  input [0:0]AS;
  input wr_en;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input [2:0]\gc0.count_reg[2] ;
  input [4:0]\gc0.count_d1_reg[4] ;

  wire [0:0]AS;
  wire [0:0]E;
  wire FULL_FB;
  wire [4:0]Q;
  wire clk;
  wire full;
  wire \gc0.count_d1_reg[2] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gc0.count_reg[2] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire wr_en;

  design_1_auto_ds_0_wr_status_flags_ss \gwss.wsts 
       (.AS(AS),
        .E(E),
        .FULL_FB(FULL_FB),
        .clk(clk),
        .full(full),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
  design_1_auto_ds_0_wr_bin_cntr wpntr
       (.AS(AS),
        .E(E),
        .FULL_FB(FULL_FB),
        .Q(Q),
        .clk(clk),
        .\gc0.count_d1_reg[2] (\gc0.count_d1_reg[2] ),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gc0.count_reg[2] (\gc0.count_reg[2] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gpregsm1.curr_fwft_state_reg[0] ),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module design_1_auto_ds_0_wr_logic_1
   (FULL_FB,
    full,
    E,
    ram_empty_fb_i_reg,
    Q,
    clk,
    AS,
    wr_en,
    \gpregsm1.curr_fwft_state_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_reg[2] ,
    \gc0.count_d1_reg[4] );
  output FULL_FB;
  output full;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output [4:0]Q;
  input clk;
  input [0:0]AS;
  input wr_en;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input [2:0]\gc0.count_reg[2] ;
  input [4:0]\gc0.count_d1_reg[4] ;

  wire [0:0]AS;
  wire [0:0]E;
  wire FULL_FB;
  wire [4:0]Q;
  wire clk;
  wire full;
  wire \gc0.count_d1_reg[2] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gc0.count_reg[2] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire wr_en;

  design_1_auto_ds_0_wr_status_flags_ss_2 \gwss.wsts 
       (.AS(AS),
        .E(E),
        .FULL_FB(FULL_FB),
        .clk(clk),
        .full(full),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
  design_1_auto_ds_0_wr_bin_cntr_3 wpntr
       (.AS(AS),
        .E(E),
        .FULL_FB(FULL_FB),
        .Q(Q),
        .clk(clk),
        .\gc0.count_d1_reg[2] (\gc0.count_d1_reg[2] ),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gc0.count_reg[2] (\gc0.count_reg[2] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gpregsm1.curr_fwft_state_reg[0] ),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module design_1_auto_ds_0_wr_status_flags_ss
   (FULL_FB,
    full,
    E,
    ram_full_comb,
    clk,
    AS,
    wr_en);
  output FULL_FB;
  output full;
  output [0:0]E;
  input ram_full_comb;
  input clk;
  input [0:0]AS;
  input wr_en;

  wire [0:0]AS;
  wire [0:0]E;
  wire clk;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire ram_full_comb;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire wr_en;

  assign FULL_FB = ram_full_fb_i;
  assign full = ram_full_i;
  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[4]_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(ram_afull_fb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AS),
        .D(ram_full_comb),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AS),
        .D(ram_full_comb),
        .Q(ram_full_i));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module design_1_auto_ds_0_wr_status_flags_ss_2
   (FULL_FB,
    full,
    E,
    ram_full_comb,
    clk,
    AS,
    wr_en);
  output FULL_FB;
  output full;
  output [0:0]E;
  input ram_full_comb;
  input clk;
  input [0:0]AS;
  input wr_en;

  wire [0:0]AS;
  wire [0:0]E;
  wire clk;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire ram_full_comb;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire wr_en;

  assign FULL_FB = ram_full_fb_i;
  assign full = ram_full_i;
  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[4]_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(ram_afull_fb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AS),
        .D(ram_full_comb),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AS),
        .D(ram_full_comb),
        .Q(ram_full_i));
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
