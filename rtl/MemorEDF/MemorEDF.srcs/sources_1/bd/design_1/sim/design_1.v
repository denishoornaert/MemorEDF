//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Wed Feb 26 14:04:18 2020
//Host        : CELSIUS running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (aclk_0,
    aresetn_0,
    txn_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN design_1_aclk_0, FREQ_HZ 100000000, PHASE 0.000" *) input aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_0, POLARITY ACTIVE_LOW" *) input aresetn_0;
  input txn_0;

  wire [39:0]MemorEDF_0_m00_axi_ARADDR;
  wire [1:0]MemorEDF_0_m00_axi_ARBURST;
  wire [3:0]MemorEDF_0_m00_axi_ARCACHE;
  wire [0:0]MemorEDF_0_m00_axi_ARID;
  wire [7:0]MemorEDF_0_m00_axi_ARLEN;
  wire MemorEDF_0_m00_axi_ARLOCK;
  wire [2:0]MemorEDF_0_m00_axi_ARPROT;
  wire [3:0]MemorEDF_0_m00_axi_ARQOS;
  wire MemorEDF_0_m00_axi_ARREADY;
  wire [2:0]MemorEDF_0_m00_axi_ARSIZE;
  wire MemorEDF_0_m00_axi_ARVALID;
  wire [39:0]MemorEDF_0_m00_axi_AWADDR;
  wire [1:0]MemorEDF_0_m00_axi_AWBURST;
  wire [3:0]MemorEDF_0_m00_axi_AWCACHE;
  wire [0:0]MemorEDF_0_m00_axi_AWID;
  wire [7:0]MemorEDF_0_m00_axi_AWLEN;
  wire MemorEDF_0_m00_axi_AWLOCK;
  wire [2:0]MemorEDF_0_m00_axi_AWPROT;
  wire [3:0]MemorEDF_0_m00_axi_AWQOS;
  wire MemorEDF_0_m00_axi_AWREADY;
  wire [2:0]MemorEDF_0_m00_axi_AWSIZE;
  wire MemorEDF_0_m00_axi_AWVALID;
  wire [0:0]MemorEDF_0_m00_axi_BID;
  wire MemorEDF_0_m00_axi_BREADY;
  wire [1:0]MemorEDF_0_m00_axi_BRESP;
  wire MemorEDF_0_m00_axi_BVALID;
  wire [127:0]MemorEDF_0_m00_axi_RDATA;
  wire [0:0]MemorEDF_0_m00_axi_RID;
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
  wire [39:0]default_axi_full_master_0_M00_AXI_ARADDR;
  wire [1:0]default_axi_full_master_0_M00_AXI_ARBURST;
  wire [3:0]default_axi_full_master_0_M00_AXI_ARCACHE;
  wire [0:0]default_axi_full_master_0_M00_AXI_ARID;
  wire [7:0]default_axi_full_master_0_M00_AXI_ARLEN;
  wire default_axi_full_master_0_M00_AXI_ARLOCK;
  wire [2:0]default_axi_full_master_0_M00_AXI_ARPROT;
  wire [3:0]default_axi_full_master_0_M00_AXI_ARQOS;
  wire default_axi_full_master_0_M00_AXI_ARREADY;
  wire [2:0]default_axi_full_master_0_M00_AXI_ARSIZE;
  wire default_axi_full_master_0_M00_AXI_ARVALID;
  wire [39:0]default_axi_full_master_0_M00_AXI_AWADDR;
  wire [1:0]default_axi_full_master_0_M00_AXI_AWBURST;
  wire [3:0]default_axi_full_master_0_M00_AXI_AWCACHE;
  wire [0:0]default_axi_full_master_0_M00_AXI_AWID;
  wire [7:0]default_axi_full_master_0_M00_AXI_AWLEN;
  wire default_axi_full_master_0_M00_AXI_AWLOCK;
  wire [2:0]default_axi_full_master_0_M00_AXI_AWPROT;
  wire [3:0]default_axi_full_master_0_M00_AXI_AWQOS;
  wire default_axi_full_master_0_M00_AXI_AWREADY;
  wire [2:0]default_axi_full_master_0_M00_AXI_AWSIZE;
  wire default_axi_full_master_0_M00_AXI_AWVALID;
  wire [0:0]default_axi_full_master_0_M00_AXI_BID;
  wire default_axi_full_master_0_M00_AXI_BREADY;
  wire [1:0]default_axi_full_master_0_M00_AXI_BRESP;
  wire default_axi_full_master_0_M00_AXI_BVALID;
  wire [127:0]default_axi_full_master_0_M00_AXI_RDATA;
  wire [0:0]default_axi_full_master_0_M00_AXI_RID;
  wire default_axi_full_master_0_M00_AXI_RLAST;
  wire default_axi_full_master_0_M00_AXI_RREADY;
  wire [1:0]default_axi_full_master_0_M00_AXI_RRESP;
  wire default_axi_full_master_0_M00_AXI_RVALID;
  wire [127:0]default_axi_full_master_0_M00_AXI_WDATA;
  wire default_axi_full_master_0_M00_AXI_WLAST;
  wire default_axi_full_master_0_M00_AXI_WREADY;
  wire [15:0]default_axi_full_master_0_M00_AXI_WSTRB;
  wire default_axi_full_master_0_M00_AXI_WVALID;
  wire m00_axi_init_axi_txn_0_1;

  assign aclk_0_1 = aclk_0;
  assign aresetn_0_1 = aresetn_0;
  assign m00_axi_init_axi_txn_0_1 = txn_0;
  design_1_MemorEDF_0_0 MemorEDF_0
       (.m00_axi_aclk(aclk_0_1),
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
        .s00_axi_araddr(default_axi_full_master_0_M00_AXI_ARADDR),
        .s00_axi_arburst(default_axi_full_master_0_M00_AXI_ARBURST),
        .s00_axi_arcache(default_axi_full_master_0_M00_AXI_ARCACHE),
        .s00_axi_aresetn(aresetn_0_1),
        .s00_axi_arid(default_axi_full_master_0_M00_AXI_ARID),
        .s00_axi_arlen(default_axi_full_master_0_M00_AXI_ARLEN),
        .s00_axi_arlock(default_axi_full_master_0_M00_AXI_ARLOCK),
        .s00_axi_arprot(default_axi_full_master_0_M00_AXI_ARPROT),
        .s00_axi_arqos(default_axi_full_master_0_M00_AXI_ARQOS),
        .s00_axi_arready(default_axi_full_master_0_M00_AXI_ARREADY),
        .s00_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_arsize(default_axi_full_master_0_M00_AXI_ARSIZE),
        .s00_axi_arvalid(default_axi_full_master_0_M00_AXI_ARVALID),
        .s00_axi_awaddr(default_axi_full_master_0_M00_AXI_AWADDR),
        .s00_axi_awburst(default_axi_full_master_0_M00_AXI_AWBURST),
        .s00_axi_awcache(default_axi_full_master_0_M00_AXI_AWCACHE),
        .s00_axi_awid(default_axi_full_master_0_M00_AXI_AWID),
        .s00_axi_awlen(default_axi_full_master_0_M00_AXI_AWLEN),
        .s00_axi_awlock(default_axi_full_master_0_M00_AXI_AWLOCK),
        .s00_axi_awprot(default_axi_full_master_0_M00_AXI_AWPROT),
        .s00_axi_awqos(default_axi_full_master_0_M00_AXI_AWQOS),
        .s00_axi_awready(default_axi_full_master_0_M00_AXI_AWREADY),
        .s00_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awsize(default_axi_full_master_0_M00_AXI_AWSIZE),
        .s00_axi_awvalid(default_axi_full_master_0_M00_AXI_AWVALID),
        .s00_axi_bid(default_axi_full_master_0_M00_AXI_BID),
        .s00_axi_bready(default_axi_full_master_0_M00_AXI_BREADY),
        .s00_axi_bresp(default_axi_full_master_0_M00_AXI_BRESP),
        .s00_axi_bvalid(default_axi_full_master_0_M00_AXI_BVALID),
        .s00_axi_rdata(default_axi_full_master_0_M00_AXI_RDATA),
        .s00_axi_rid(default_axi_full_master_0_M00_AXI_RID),
        .s00_axi_rlast(default_axi_full_master_0_M00_AXI_RLAST),
        .s00_axi_rready(default_axi_full_master_0_M00_AXI_RREADY),
        .s00_axi_rresp(default_axi_full_master_0_M00_AXI_RRESP),
        .s00_axi_rvalid(default_axi_full_master_0_M00_AXI_RVALID),
        .s00_axi_wdata(default_axi_full_master_0_M00_AXI_WDATA),
        .s00_axi_wlast(default_axi_full_master_0_M00_AXI_WLAST),
        .s00_axi_wready(default_axi_full_master_0_M00_AXI_WREADY),
        .s00_axi_wstrb(default_axi_full_master_0_M00_AXI_WSTRB),
        .s00_axi_wvalid(default_axi_full_master_0_M00_AXI_WVALID));
  design_1_axi_vip_0_1 axi_vip_1
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
  design_1_default_axi_full_master_0_0 default_axi_full_master_0
       (.m00_axi_aclk(aclk_0_1),
        .m00_axi_araddr(default_axi_full_master_0_M00_AXI_ARADDR),
        .m00_axi_arburst(default_axi_full_master_0_M00_AXI_ARBURST),
        .m00_axi_arcache(default_axi_full_master_0_M00_AXI_ARCACHE),
        .m00_axi_aresetn(aresetn_0_1),
        .m00_axi_arid(default_axi_full_master_0_M00_AXI_ARID),
        .m00_axi_arlen(default_axi_full_master_0_M00_AXI_ARLEN),
        .m00_axi_arlock(default_axi_full_master_0_M00_AXI_ARLOCK),
        .m00_axi_arprot(default_axi_full_master_0_M00_AXI_ARPROT),
        .m00_axi_arqos(default_axi_full_master_0_M00_AXI_ARQOS),
        .m00_axi_arready(default_axi_full_master_0_M00_AXI_ARREADY),
        .m00_axi_arsize(default_axi_full_master_0_M00_AXI_ARSIZE),
        .m00_axi_arvalid(default_axi_full_master_0_M00_AXI_ARVALID),
        .m00_axi_awaddr(default_axi_full_master_0_M00_AXI_AWADDR),
        .m00_axi_awburst(default_axi_full_master_0_M00_AXI_AWBURST),
        .m00_axi_awcache(default_axi_full_master_0_M00_AXI_AWCACHE),
        .m00_axi_awid(default_axi_full_master_0_M00_AXI_AWID),
        .m00_axi_awlen(default_axi_full_master_0_M00_AXI_AWLEN),
        .m00_axi_awlock(default_axi_full_master_0_M00_AXI_AWLOCK),
        .m00_axi_awprot(default_axi_full_master_0_M00_AXI_AWPROT),
        .m00_axi_awqos(default_axi_full_master_0_M00_AXI_AWQOS),
        .m00_axi_awready(default_axi_full_master_0_M00_AXI_AWREADY),
        .m00_axi_awsize(default_axi_full_master_0_M00_AXI_AWSIZE),
        .m00_axi_awvalid(default_axi_full_master_0_M00_AXI_AWVALID),
        .m00_axi_bid(default_axi_full_master_0_M00_AXI_BID),
        .m00_axi_bready(default_axi_full_master_0_M00_AXI_BREADY),
        .m00_axi_bresp(default_axi_full_master_0_M00_AXI_BRESP),
        .m00_axi_buser(1'b0),
        .m00_axi_bvalid(default_axi_full_master_0_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(m00_axi_init_axi_txn_0_1),
        .m00_axi_rdata(default_axi_full_master_0_M00_AXI_RDATA),
        .m00_axi_rid(default_axi_full_master_0_M00_AXI_RID),
        .m00_axi_rlast(default_axi_full_master_0_M00_AXI_RLAST),
        .m00_axi_rready(default_axi_full_master_0_M00_AXI_RREADY),
        .m00_axi_rresp(default_axi_full_master_0_M00_AXI_RRESP),
        .m00_axi_ruser(1'b0),
        .m00_axi_rvalid(default_axi_full_master_0_M00_AXI_RVALID),
        .m00_axi_wdata(default_axi_full_master_0_M00_AXI_WDATA),
        .m00_axi_wlast(default_axi_full_master_0_M00_AXI_WLAST),
        .m00_axi_wready(default_axi_full_master_0_M00_AXI_WREADY),
        .m00_axi_wstrb(default_axi_full_master_0_M00_AXI_WSTRB),
        .m00_axi_wvalid(default_axi_full_master_0_M00_AXI_WVALID));
endmodule
