//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Thu Oct 22 22:16:10 2020
//Host        : CELSIUS running 64-bit Ubuntu 16.04.7 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=10,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (Q_0_kill_the_core_0,
    Q_1_kill_the_core_0,
    Q_2_kill_the_core_0,
    Q_3_kill_the_core_0,
    aclk_0,
    aresetn_0);
  output Q_0_kill_the_core_0;
  output Q_1_kill_the_core_0;
  output Q_2_kill_the_core_0;
  output Q_3_kill_the_core_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN design_1_aclk_0, FREQ_HZ 100000000, PHASE 0.000" *) input aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_0, POLARITY ACTIVE_LOW" *) input aresetn_0;

  wire MemorEDF_0_Q_0_kill_the_core;
  wire MemorEDF_0_Q_1_kill_the_core;
  wire MemorEDF_0_Q_2_kill_the_core;
  wire MemorEDF_0_Q_3_kill_the_core;
  wire [39:0]MemorEDF_0_m00_axi_ARADDR;
  wire [1:0]MemorEDF_0_m00_axi_ARBURST;
  wire [3:0]MemorEDF_0_m00_axi_ARCACHE;
  wire [15:0]MemorEDF_0_m00_axi_ARID;
  wire [7:0]MemorEDF_0_m00_axi_ARLEN;
  wire MemorEDF_0_m00_axi_ARLOCK;
  wire [2:0]MemorEDF_0_m00_axi_ARPROT;
  wire [3:0]MemorEDF_0_m00_axi_ARQOS;
  wire MemorEDF_0_m00_axi_ARREADY;
  wire [2:0]MemorEDF_0_m00_axi_ARSIZE;
  wire [15:0]MemorEDF_0_m00_axi_ARUSER;
  wire MemorEDF_0_m00_axi_ARVALID;
  wire [39:0]MemorEDF_0_m00_axi_AWADDR;
  wire [1:0]MemorEDF_0_m00_axi_AWBURST;
  wire [3:0]MemorEDF_0_m00_axi_AWCACHE;
  wire [15:0]MemorEDF_0_m00_axi_AWID;
  wire [7:0]MemorEDF_0_m00_axi_AWLEN;
  wire MemorEDF_0_m00_axi_AWLOCK;
  wire [2:0]MemorEDF_0_m00_axi_AWPROT;
  wire [3:0]MemorEDF_0_m00_axi_AWQOS;
  wire MemorEDF_0_m00_axi_AWREADY;
  wire [2:0]MemorEDF_0_m00_axi_AWSIZE;
  wire [15:0]MemorEDF_0_m00_axi_AWUSER;
  wire MemorEDF_0_m00_axi_AWVALID;
  wire [15:0]MemorEDF_0_m00_axi_BID;
  wire MemorEDF_0_m00_axi_BREADY;
  wire [1:0]MemorEDF_0_m00_axi_BRESP;
  wire MemorEDF_0_m00_axi_BVALID;
  wire [127:0]MemorEDF_0_m00_axi_RDATA;
  wire [15:0]MemorEDF_0_m00_axi_RID;
  wire MemorEDF_0_m00_axi_RLAST;
  wire MemorEDF_0_m00_axi_RREADY;
  wire [1:0]MemorEDF_0_m00_axi_RRESP;
  wire MemorEDF_0_m00_axi_RVALID;
  wire [127:0]MemorEDF_0_m00_axi_WDATA;
  wire MemorEDF_0_m00_axi_WLAST;
  wire MemorEDF_0_m00_axi_WREADY;
  wire [15:0]MemorEDF_0_m00_axi_WSTRB;
  wire MemorEDF_0_m00_axi_WVALID;
  wire aclk_0_1;
  wire aresetn_0_1;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire [1:0]axi_vip_0_M_AXI_ARBURST;
  wire [3:0]axi_vip_0_M_AXI_ARCACHE;
  wire [15:0]axi_vip_0_M_AXI_ARID;
  wire [7:0]axi_vip_0_M_AXI_ARLEN;
  wire [0:0]axi_vip_0_M_AXI_ARLOCK;
  wire [2:0]axi_vip_0_M_AXI_ARPROT;
  wire [3:0]axi_vip_0_M_AXI_ARQOS;
  wire axi_vip_0_M_AXI_ARREADY;
  wire [3:0]axi_vip_0_M_AXI_ARREGION;
  wire [2:0]axi_vip_0_M_AXI_ARSIZE;
  wire [15:0]axi_vip_0_M_AXI_ARUSER;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire [1:0]axi_vip_0_M_AXI_AWBURST;
  wire [3:0]axi_vip_0_M_AXI_AWCACHE;
  wire [15:0]axi_vip_0_M_AXI_AWID;
  wire [7:0]axi_vip_0_M_AXI_AWLEN;
  wire [0:0]axi_vip_0_M_AXI_AWLOCK;
  wire [2:0]axi_vip_0_M_AXI_AWPROT;
  wire [3:0]axi_vip_0_M_AXI_AWQOS;
  wire axi_vip_0_M_AXI_AWREADY;
  wire [3:0]axi_vip_0_M_AXI_AWREGION;
  wire [2:0]axi_vip_0_M_AXI_AWSIZE;
  wire [15:0]axi_vip_0_M_AXI_AWUSER;
  wire axi_vip_0_M_AXI_AWVALID;
  wire [15:0]axi_vip_0_M_AXI_BID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [127:0]axi_vip_0_M_AXI_RDATA;
  wire [15:0]axi_vip_0_M_AXI_RID;
  wire axi_vip_0_M_AXI_RLAST;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [127:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WLAST;
  wire axi_vip_0_M_AXI_WREADY;
  wire [15:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire [31:0]axi_vip_2_M_AXI_ARADDR;
  wire [1:0]axi_vip_2_M_AXI_ARBURST;
  wire [3:0]axi_vip_2_M_AXI_ARCACHE;
  wire [15:0]axi_vip_2_M_AXI_ARID;
  wire [7:0]axi_vip_2_M_AXI_ARLEN;
  wire [0:0]axi_vip_2_M_AXI_ARLOCK;
  wire [2:0]axi_vip_2_M_AXI_ARPROT;
  wire [3:0]axi_vip_2_M_AXI_ARQOS;
  wire axi_vip_2_M_AXI_ARREADY;
  wire [3:0]axi_vip_2_M_AXI_ARREGION;
  wire [2:0]axi_vip_2_M_AXI_ARSIZE;
  wire [15:0]axi_vip_2_M_AXI_ARUSER;
  wire axi_vip_2_M_AXI_ARVALID;
  wire [31:0]axi_vip_2_M_AXI_AWADDR;
  wire [1:0]axi_vip_2_M_AXI_AWBURST;
  wire [3:0]axi_vip_2_M_AXI_AWCACHE;
  wire [15:0]axi_vip_2_M_AXI_AWID;
  wire [7:0]axi_vip_2_M_AXI_AWLEN;
  wire [0:0]axi_vip_2_M_AXI_AWLOCK;
  wire [2:0]axi_vip_2_M_AXI_AWPROT;
  wire [3:0]axi_vip_2_M_AXI_AWQOS;
  wire axi_vip_2_M_AXI_AWREADY;
  wire [3:0]axi_vip_2_M_AXI_AWREGION;
  wire [2:0]axi_vip_2_M_AXI_AWSIZE;
  wire [15:0]axi_vip_2_M_AXI_AWUSER;
  wire axi_vip_2_M_AXI_AWVALID;
  wire [15:0]axi_vip_2_M_AXI_BID;
  wire axi_vip_2_M_AXI_BREADY;
  wire [1:0]axi_vip_2_M_AXI_BRESP;
  wire axi_vip_2_M_AXI_BVALID;
  wire [127:0]axi_vip_2_M_AXI_RDATA;
  wire [15:0]axi_vip_2_M_AXI_RID;
  wire axi_vip_2_M_AXI_RLAST;
  wire axi_vip_2_M_AXI_RREADY;
  wire [1:0]axi_vip_2_M_AXI_RRESP;
  wire axi_vip_2_M_AXI_RVALID;
  wire [127:0]axi_vip_2_M_AXI_WDATA;
  wire axi_vip_2_M_AXI_WLAST;
  wire axi_vip_2_M_AXI_WREADY;
  wire [15:0]axi_vip_2_M_AXI_WSTRB;
  wire axi_vip_2_M_AXI_WVALID;
  wire [31:0]axi_vip_3_M_AXI_ARADDR;
  wire [1:0]axi_vip_3_M_AXI_ARBURST;
  wire [3:0]axi_vip_3_M_AXI_ARCACHE;
  wire [15:0]axi_vip_3_M_AXI_ARID;
  wire [7:0]axi_vip_3_M_AXI_ARLEN;
  wire [0:0]axi_vip_3_M_AXI_ARLOCK;
  wire [2:0]axi_vip_3_M_AXI_ARPROT;
  wire [3:0]axi_vip_3_M_AXI_ARQOS;
  wire axi_vip_3_M_AXI_ARREADY;
  wire [3:0]axi_vip_3_M_AXI_ARREGION;
  wire [2:0]axi_vip_3_M_AXI_ARSIZE;
  wire [15:0]axi_vip_3_M_AXI_ARUSER;
  wire axi_vip_3_M_AXI_ARVALID;
  wire [31:0]axi_vip_3_M_AXI_AWADDR;
  wire [1:0]axi_vip_3_M_AXI_AWBURST;
  wire [3:0]axi_vip_3_M_AXI_AWCACHE;
  wire [15:0]axi_vip_3_M_AXI_AWID;
  wire [7:0]axi_vip_3_M_AXI_AWLEN;
  wire [0:0]axi_vip_3_M_AXI_AWLOCK;
  wire [2:0]axi_vip_3_M_AXI_AWPROT;
  wire [3:0]axi_vip_3_M_AXI_AWQOS;
  wire axi_vip_3_M_AXI_AWREADY;
  wire [3:0]axi_vip_3_M_AXI_AWREGION;
  wire [2:0]axi_vip_3_M_AXI_AWSIZE;
  wire [15:0]axi_vip_3_M_AXI_AWUSER;
  wire axi_vip_3_M_AXI_AWVALID;
  wire [15:0]axi_vip_3_M_AXI_BID;
  wire axi_vip_3_M_AXI_BREADY;
  wire [1:0]axi_vip_3_M_AXI_BRESP;
  wire axi_vip_3_M_AXI_BVALID;
  wire [127:0]axi_vip_3_M_AXI_RDATA;
  wire [15:0]axi_vip_3_M_AXI_RID;
  wire axi_vip_3_M_AXI_RLAST;
  wire axi_vip_3_M_AXI_RREADY;
  wire [1:0]axi_vip_3_M_AXI_RRESP;
  wire axi_vip_3_M_AXI_RVALID;
  wire [127:0]axi_vip_3_M_AXI_WDATA;
  wire axi_vip_3_M_AXI_WLAST;
  wire axi_vip_3_M_AXI_WREADY;
  wire [15:0]axi_vip_3_M_AXI_WSTRB;
  wire axi_vip_3_M_AXI_WVALID;

  assign Q_0_kill_the_core_0 = MemorEDF_0_Q_0_kill_the_core;
  assign Q_1_kill_the_core_0 = MemorEDF_0_Q_1_kill_the_core;
  assign Q_2_kill_the_core_0 = MemorEDF_0_Q_2_kill_the_core;
  assign Q_3_kill_the_core_0 = MemorEDF_0_Q_3_kill_the_core;
  assign aclk_0_1 = aclk_0;
  assign aresetn_0_1 = aresetn_0;
  design_1_MemorEDF_0_0 MemorEDF_0
       (.Q_0_kill_the_core(MemorEDF_0_Q_0_kill_the_core),
        .Q_1_kill_the_core(MemorEDF_0_Q_1_kill_the_core),
        .Q_2_kill_the_core(MemorEDF_0_Q_2_kill_the_core),
        .Q_3_kill_the_core(MemorEDF_0_Q_3_kill_the_core),
        .m00_axi_aclk(aclk_0_1),
        .m00_axi_araddr(MemorEDF_0_m00_axi_ARADDR),
        .m00_axi_arburst(MemorEDF_0_m00_axi_ARBURST),
        .m00_axi_arcache(MemorEDF_0_m00_axi_ARCACHE),
        .m00_axi_aresetn(aresetn_0_1),
        .m00_axi_arid(MemorEDF_0_m00_axi_ARID),
        .m00_axi_arlen(MemorEDF_0_m00_axi_ARLEN),
        .m00_axi_arlock(MemorEDF_0_m00_axi_ARLOCK),
        .m00_axi_arprot(MemorEDF_0_m00_axi_ARPROT),
        .m00_axi_arqos(MemorEDF_0_m00_axi_ARQOS),
        .m00_axi_arready(MemorEDF_0_m00_axi_ARREADY),
        .m00_axi_arsize(MemorEDF_0_m00_axi_ARSIZE),
        .m00_axi_aruser(MemorEDF_0_m00_axi_ARUSER),
        .m00_axi_arvalid(MemorEDF_0_m00_axi_ARVALID),
        .m00_axi_awaddr(MemorEDF_0_m00_axi_AWADDR),
        .m00_axi_awburst(MemorEDF_0_m00_axi_AWBURST),
        .m00_axi_awcache(MemorEDF_0_m00_axi_AWCACHE),
        .m00_axi_awid(MemorEDF_0_m00_axi_AWID),
        .m00_axi_awlen(MemorEDF_0_m00_axi_AWLEN),
        .m00_axi_awlock(MemorEDF_0_m00_axi_AWLOCK),
        .m00_axi_awprot(MemorEDF_0_m00_axi_AWPROT),
        .m00_axi_awqos(MemorEDF_0_m00_axi_AWQOS),
        .m00_axi_awready(MemorEDF_0_m00_axi_AWREADY),
        .m00_axi_awsize(MemorEDF_0_m00_axi_AWSIZE),
        .m00_axi_awuser(MemorEDF_0_m00_axi_AWUSER),
        .m00_axi_awvalid(MemorEDF_0_m00_axi_AWVALID),
        .m00_axi_bid(MemorEDF_0_m00_axi_BID),
        .m00_axi_bready(MemorEDF_0_m00_axi_BREADY),
        .m00_axi_bresp(MemorEDF_0_m00_axi_BRESP),
        .m00_axi_bvalid(MemorEDF_0_m00_axi_BVALID),
        .m00_axi_rdata(MemorEDF_0_m00_axi_RDATA),
        .m00_axi_rid(MemorEDF_0_m00_axi_RID),
        .m00_axi_rlast(MemorEDF_0_m00_axi_RLAST),
        .m00_axi_rready(MemorEDF_0_m00_axi_RREADY),
        .m00_axi_rresp(MemorEDF_0_m00_axi_RRESP),
        .m00_axi_rvalid(MemorEDF_0_m00_axi_RVALID),
        .m00_axi_wdata(MemorEDF_0_m00_axi_WDATA),
        .m00_axi_wlast(MemorEDF_0_m00_axi_WLAST),
        .m00_axi_wready(MemorEDF_0_m00_axi_WREADY),
        .m00_axi_wstrb(MemorEDF_0_m00_axi_WSTRB),
        .m00_axi_wvalid(MemorEDF_0_m00_axi_WVALID),
        .s00_axi_aclk(aclk_0_1),
        .s00_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_vip_2_M_AXI_ARADDR}),
        .s00_axi_arburst(axi_vip_2_M_AXI_ARBURST),
        .s00_axi_arcache(axi_vip_2_M_AXI_ARCACHE),
        .s00_axi_aresetn(aresetn_0_1),
        .s00_axi_arid(axi_vip_2_M_AXI_ARID),
        .s00_axi_arlen(axi_vip_2_M_AXI_ARLEN),
        .s00_axi_arlock(axi_vip_2_M_AXI_ARLOCK),
        .s00_axi_arprot(axi_vip_2_M_AXI_ARPROT),
        .s00_axi_arqos(axi_vip_2_M_AXI_ARQOS),
        .s00_axi_arready(axi_vip_2_M_AXI_ARREADY),
        .s00_axi_arregion(axi_vip_2_M_AXI_ARREGION),
        .s00_axi_arsize(axi_vip_2_M_AXI_ARSIZE),
        .s00_axi_aruser(axi_vip_2_M_AXI_ARUSER),
        .s00_axi_arvalid(axi_vip_2_M_AXI_ARVALID),
        .s00_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_vip_2_M_AXI_AWADDR}),
        .s00_axi_awburst(axi_vip_2_M_AXI_AWBURST),
        .s00_axi_awcache(axi_vip_2_M_AXI_AWCACHE),
        .s00_axi_awid(axi_vip_2_M_AXI_AWID),
        .s00_axi_awlen(axi_vip_2_M_AXI_AWLEN),
        .s00_axi_awlock(axi_vip_2_M_AXI_AWLOCK),
        .s00_axi_awprot(axi_vip_2_M_AXI_AWPROT),
        .s00_axi_awqos(axi_vip_2_M_AXI_AWQOS),
        .s00_axi_awready(axi_vip_2_M_AXI_AWREADY),
        .s00_axi_awregion(axi_vip_2_M_AXI_AWREGION),
        .s00_axi_awsize(axi_vip_2_M_AXI_AWSIZE),
        .s00_axi_awuser(axi_vip_2_M_AXI_AWUSER),
        .s00_axi_awvalid(axi_vip_2_M_AXI_AWVALID),
        .s00_axi_bid(axi_vip_2_M_AXI_BID),
        .s00_axi_bready(axi_vip_2_M_AXI_BREADY),
        .s00_axi_bresp(axi_vip_2_M_AXI_BRESP),
        .s00_axi_bvalid(axi_vip_2_M_AXI_BVALID),
        .s00_axi_rdata(axi_vip_2_M_AXI_RDATA),
        .s00_axi_rid(axi_vip_2_M_AXI_RID),
        .s00_axi_rlast(axi_vip_2_M_AXI_RLAST),
        .s00_axi_rready(axi_vip_2_M_AXI_RREADY),
        .s00_axi_rresp(axi_vip_2_M_AXI_RRESP),
        .s00_axi_rvalid(axi_vip_2_M_AXI_RVALID),
        .s00_axi_wdata(axi_vip_2_M_AXI_WDATA),
        .s00_axi_wlast(axi_vip_2_M_AXI_WLAST),
        .s00_axi_wready(axi_vip_2_M_AXI_WREADY),
        .s00_axi_wstrb(axi_vip_2_M_AXI_WSTRB),
        .s00_axi_wvalid(axi_vip_2_M_AXI_WVALID),
        .s01_axi_aclk(aclk_0_1),
        .s01_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_vip_0_M_AXI_ARADDR}),
        .s01_axi_arburst(axi_vip_0_M_AXI_ARBURST),
        .s01_axi_arcache(axi_vip_0_M_AXI_ARCACHE),
        .s01_axi_aresetn(aresetn_0_1),
        .s01_axi_arid(axi_vip_0_M_AXI_ARID),
        .s01_axi_arlen(axi_vip_0_M_AXI_ARLEN),
        .s01_axi_arlock(axi_vip_0_M_AXI_ARLOCK),
        .s01_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .s01_axi_arqos(axi_vip_0_M_AXI_ARQOS),
        .s01_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .s01_axi_arregion(axi_vip_0_M_AXI_ARREGION),
        .s01_axi_arsize(axi_vip_0_M_AXI_ARSIZE),
        .s01_axi_aruser(axi_vip_0_M_AXI_ARUSER),
        .s01_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .s01_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_vip_0_M_AXI_AWADDR}),
        .s01_axi_awburst(axi_vip_0_M_AXI_AWBURST),
        .s01_axi_awcache(axi_vip_0_M_AXI_AWCACHE),
        .s01_axi_awid(axi_vip_0_M_AXI_AWID),
        .s01_axi_awlen(axi_vip_0_M_AXI_AWLEN),
        .s01_axi_awlock(axi_vip_0_M_AXI_AWLOCK),
        .s01_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .s01_axi_awqos(axi_vip_0_M_AXI_AWQOS),
        .s01_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .s01_axi_awregion(axi_vip_0_M_AXI_AWREGION),
        .s01_axi_awsize(axi_vip_0_M_AXI_AWSIZE),
        .s01_axi_awuser(axi_vip_0_M_AXI_AWUSER),
        .s01_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .s01_axi_bid(axi_vip_0_M_AXI_BID),
        .s01_axi_bready(axi_vip_0_M_AXI_BREADY),
        .s01_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .s01_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .s01_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .s01_axi_rid(axi_vip_0_M_AXI_RID),
        .s01_axi_rlast(axi_vip_0_M_AXI_RLAST),
        .s01_axi_rready(axi_vip_0_M_AXI_RREADY),
        .s01_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .s01_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .s01_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .s01_axi_wlast(axi_vip_0_M_AXI_WLAST),
        .s01_axi_wready(axi_vip_0_M_AXI_WREADY),
        .s01_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .s01_axi_wvalid(axi_vip_0_M_AXI_WVALID),
        .s02_axi_aclk(aclk_0_1),
        .s02_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_vip_3_M_AXI_ARADDR}),
        .s02_axi_arburst(axi_vip_3_M_AXI_ARBURST),
        .s02_axi_arcache(axi_vip_3_M_AXI_ARCACHE),
        .s02_axi_aresetn(aresetn_0_1),
        .s02_axi_arid(axi_vip_3_M_AXI_ARID),
        .s02_axi_arlen(axi_vip_3_M_AXI_ARLEN),
        .s02_axi_arlock(axi_vip_3_M_AXI_ARLOCK),
        .s02_axi_arprot(axi_vip_3_M_AXI_ARPROT),
        .s02_axi_arqos(axi_vip_3_M_AXI_ARQOS),
        .s02_axi_arready(axi_vip_3_M_AXI_ARREADY),
        .s02_axi_arregion(axi_vip_3_M_AXI_ARREGION),
        .s02_axi_arsize(axi_vip_3_M_AXI_ARSIZE),
        .s02_axi_aruser(axi_vip_3_M_AXI_ARUSER),
        .s02_axi_arvalid(axi_vip_3_M_AXI_ARVALID),
        .s02_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_vip_3_M_AXI_AWADDR}),
        .s02_axi_awburst(axi_vip_3_M_AXI_AWBURST),
        .s02_axi_awcache(axi_vip_3_M_AXI_AWCACHE),
        .s02_axi_awid(axi_vip_3_M_AXI_AWID),
        .s02_axi_awlen(axi_vip_3_M_AXI_AWLEN),
        .s02_axi_awlock(axi_vip_3_M_AXI_AWLOCK),
        .s02_axi_awprot(axi_vip_3_M_AXI_AWPROT),
        .s02_axi_awqos(axi_vip_3_M_AXI_AWQOS),
        .s02_axi_awready(axi_vip_3_M_AXI_AWREADY),
        .s02_axi_awregion(axi_vip_3_M_AXI_AWREGION),
        .s02_axi_awsize(axi_vip_3_M_AXI_AWSIZE),
        .s02_axi_awuser(axi_vip_3_M_AXI_AWUSER),
        .s02_axi_awvalid(axi_vip_3_M_AXI_AWVALID),
        .s02_axi_bid(axi_vip_3_M_AXI_BID),
        .s02_axi_bready(axi_vip_3_M_AXI_BREADY),
        .s02_axi_bresp(axi_vip_3_M_AXI_BRESP),
        .s02_axi_bvalid(axi_vip_3_M_AXI_BVALID),
        .s02_axi_rdata(axi_vip_3_M_AXI_RDATA),
        .s02_axi_rid(axi_vip_3_M_AXI_RID),
        .s02_axi_rlast(axi_vip_3_M_AXI_RLAST),
        .s02_axi_rready(axi_vip_3_M_AXI_RREADY),
        .s02_axi_rresp(axi_vip_3_M_AXI_RRESP),
        .s02_axi_rvalid(axi_vip_3_M_AXI_RVALID),
        .s02_axi_wdata(axi_vip_3_M_AXI_WDATA),
        .s02_axi_wlast(axi_vip_3_M_AXI_WLAST),
        .s02_axi_wready(axi_vip_3_M_AXI_WREADY),
        .s02_axi_wstrb(axi_vip_3_M_AXI_WSTRB),
        .s02_axi_wvalid(axi_vip_3_M_AXI_WVALID));
  design_1_axi_vip_0_0 axi_vip_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_0_M_AXI_ARCACHE),
        .m_axi_arid(axi_vip_0_M_AXI_ARID),
        .m_axi_arlen(axi_vip_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_0_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_0_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_0_M_AXI_ARSIZE),
        .m_axi_aruser(axi_vip_0_M_AXI_ARUSER),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_0_M_AXI_AWCACHE),
        .m_axi_awid(axi_vip_0_M_AXI_AWID),
        .m_axi_awlen(axi_vip_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_0_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_0_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_0_M_AXI_AWSIZE),
        .m_axi_awuser(axi_vip_0_M_AXI_AWUSER),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bid(axi_vip_0_M_AXI_BID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rid(axi_vip_0_M_AXI_RID),
        .m_axi_rlast(axi_vip_0_M_AXI_RLAST),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_0_M_AXI_WLAST),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  design_1_axi_vip_1_0 axi_vip_1
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .s_axi_araddr(MemorEDF_0_m00_axi_ARADDR),
        .s_axi_arburst(MemorEDF_0_m00_axi_ARBURST),
        .s_axi_arcache(MemorEDF_0_m00_axi_ARCACHE),
        .s_axi_arid(MemorEDF_0_m00_axi_ARID),
        .s_axi_arlen(MemorEDF_0_m00_axi_ARLEN),
        .s_axi_arlock(MemorEDF_0_m00_axi_ARLOCK),
        .s_axi_arprot(MemorEDF_0_m00_axi_ARPROT),
        .s_axi_arqos(MemorEDF_0_m00_axi_ARQOS),
        .s_axi_arready(MemorEDF_0_m00_axi_ARREADY),
        .s_axi_arsize(MemorEDF_0_m00_axi_ARSIZE),
        .s_axi_aruser(MemorEDF_0_m00_axi_ARUSER),
        .s_axi_arvalid(MemorEDF_0_m00_axi_ARVALID),
        .s_axi_awaddr(MemorEDF_0_m00_axi_AWADDR),
        .s_axi_awburst(MemorEDF_0_m00_axi_AWBURST),
        .s_axi_awcache(MemorEDF_0_m00_axi_AWCACHE),
        .s_axi_awid(MemorEDF_0_m00_axi_AWID),
        .s_axi_awlen(MemorEDF_0_m00_axi_AWLEN),
        .s_axi_awlock(MemorEDF_0_m00_axi_AWLOCK),
        .s_axi_awprot(MemorEDF_0_m00_axi_AWPROT),
        .s_axi_awqos(MemorEDF_0_m00_axi_AWQOS),
        .s_axi_awready(MemorEDF_0_m00_axi_AWREADY),
        .s_axi_awsize(MemorEDF_0_m00_axi_AWSIZE),
        .s_axi_awuser(MemorEDF_0_m00_axi_AWUSER),
        .s_axi_awvalid(MemorEDF_0_m00_axi_AWVALID),
        .s_axi_bid(MemorEDF_0_m00_axi_BID),
        .s_axi_bready(MemorEDF_0_m00_axi_BREADY),
        .s_axi_bresp(MemorEDF_0_m00_axi_BRESP),
        .s_axi_bvalid(MemorEDF_0_m00_axi_BVALID),
        .s_axi_rdata(MemorEDF_0_m00_axi_RDATA),
        .s_axi_rid(MemorEDF_0_m00_axi_RID),
        .s_axi_rlast(MemorEDF_0_m00_axi_RLAST),
        .s_axi_rready(MemorEDF_0_m00_axi_RREADY),
        .s_axi_rresp(MemorEDF_0_m00_axi_RRESP),
        .s_axi_rvalid(MemorEDF_0_m00_axi_RVALID),
        .s_axi_wdata(MemorEDF_0_m00_axi_WDATA),
        .s_axi_wlast(MemorEDF_0_m00_axi_WLAST),
        .s_axi_wready(MemorEDF_0_m00_axi_WREADY),
        .s_axi_wstrb(MemorEDF_0_m00_axi_WSTRB),
        .s_axi_wvalid(MemorEDF_0_m00_axi_WVALID));
  design_1_axi_vip_0_2 axi_vip_2
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axi_araddr(axi_vip_2_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_2_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_2_M_AXI_ARCACHE),
        .m_axi_arid(axi_vip_2_M_AXI_ARID),
        .m_axi_arlen(axi_vip_2_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_2_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_2_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_2_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_2_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_2_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_2_M_AXI_ARSIZE),
        .m_axi_aruser(axi_vip_2_M_AXI_ARUSER),
        .m_axi_arvalid(axi_vip_2_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_2_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_2_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_2_M_AXI_AWCACHE),
        .m_axi_awid(axi_vip_2_M_AXI_AWID),
        .m_axi_awlen(axi_vip_2_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_2_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_2_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_2_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_2_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_2_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_2_M_AXI_AWSIZE),
        .m_axi_awuser(axi_vip_2_M_AXI_AWUSER),
        .m_axi_awvalid(axi_vip_2_M_AXI_AWVALID),
        .m_axi_bid(axi_vip_2_M_AXI_BID),
        .m_axi_bready(axi_vip_2_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_2_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_2_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_2_M_AXI_RDATA),
        .m_axi_rid(axi_vip_2_M_AXI_RID),
        .m_axi_rlast(axi_vip_2_M_AXI_RLAST),
        .m_axi_rready(axi_vip_2_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_2_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_2_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_2_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_2_M_AXI_WLAST),
        .m_axi_wready(axi_vip_2_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_2_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_2_M_AXI_WVALID));
  design_1_axi_vip_2_0 axi_vip_3
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axi_araddr(axi_vip_3_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_3_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_3_M_AXI_ARCACHE),
        .m_axi_arid(axi_vip_3_M_AXI_ARID),
        .m_axi_arlen(axi_vip_3_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_3_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_3_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_3_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_3_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_3_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_3_M_AXI_ARSIZE),
        .m_axi_aruser(axi_vip_3_M_AXI_ARUSER),
        .m_axi_arvalid(axi_vip_3_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_3_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_3_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_3_M_AXI_AWCACHE),
        .m_axi_awid(axi_vip_3_M_AXI_AWID),
        .m_axi_awlen(axi_vip_3_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_3_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_3_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_3_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_3_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_3_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_3_M_AXI_AWSIZE),
        .m_axi_awuser(axi_vip_3_M_AXI_AWUSER),
        .m_axi_awvalid(axi_vip_3_M_AXI_AWVALID),
        .m_axi_bid(axi_vip_3_M_AXI_BID),
        .m_axi_bready(axi_vip_3_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_3_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_3_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_3_M_AXI_RDATA),
        .m_axi_rid(axi_vip_3_M_AXI_RID),
        .m_axi_rlast(axi_vip_3_M_AXI_RLAST),
        .m_axi_rready(axi_vip_3_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_3_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_3_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_3_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_3_M_AXI_WLAST),
        .m_axi_wready(axi_vip_3_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_3_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_3_M_AXI_WVALID));
endmodule