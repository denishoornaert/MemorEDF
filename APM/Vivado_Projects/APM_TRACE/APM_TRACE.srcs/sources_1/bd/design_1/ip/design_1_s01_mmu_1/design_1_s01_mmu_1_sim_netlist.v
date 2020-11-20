// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon May 11 18:19:11 2020
// Host        : buflightdev running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/renato/MemorEDF_old/Vivado_Projects/APM_TRACE/APM_TRACE.srcs/sources_1/bd/design_1/ip/design_1_s01_mmu_1/design_1_s01_mmu_1_sim_netlist.v
// Design      : design_1_s01_mmu_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_s01_mmu_1,axi_mmu_v2_1_13_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_mmu_v2_1_13_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_s01_mmu_1
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
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
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 96969000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [0:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 96969000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_BASE_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_DEST = "1'b0" *) 
  (* C_DEST_WIDTH = "1" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_M_AXI_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_SUPPORTS_READ = "1'b1" *) 
  (* C_M_AXI_SUPPORTS_WRITE = "1'b1" *) 
  (* C_NUM_RANGES = "1" *) 
  (* C_PREFIX = "1'b0" *) 
  (* C_PREFIX_WIDTH = "1" *) 
  (* C_RANGE_SIZE = "32'b00000000000000000000000000011110" *) 
  (* C_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_SUPPORTS_READ = "1" *) 
  (* C_S_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_USES_DEST = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_NUM_RANGES_LOG = "1" *) 
  (* R_DECERR = "2'b11" *) 
  (* R_IDLE = "2'b00" *) 
  (* R_PENDING = "2'b01" *) 
  (* W_DECERR = "2'b11" *) 
  (* W_IDLE = "2'b00" *) 
  (* W_PENDING = "2'b01" *) 
  design_1_s01_mmu_1_axi_mmu_v2_1_13_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_mmu_v2_1_13_decerr_slave" *) 
module design_1_s01_mmu_1_axi_mmu_v2_1_13_decerr_slave
   (err_awready,
    err_rvalid,
    err_arready,
    s_axi_bvalid,
    s_axi_bid,
    s_axi_wready,
    E,
    \gen_axi.gen_write.s_axi_awready_i_reg_0 ,
    \gen_read.r_state_reg[0] ,
    s_axi_rvalid,
    s_axi_rlast,
    s_axi_rid,
    m_valid_i_reg,
    aclk,
    SR,
    \m_payload_i_reg[32] ,
    s_axi_rready,
    \aresetn_d_reg[1] ,
    m_axi_bvalid,
    Q,
    m_axi_bid,
    \gen_write.w_cnt_reg[3] ,
    m_axi_wready,
    \gen_write.w_state_reg[1] ,
    s_axi_bready,
    \m_payload_i_reg[32]_0 ,
    s_axi_wlast,
    s_axi_wvalid,
    m_valid_i_reg_0,
    \gen_read.ar_cnt_reg[3] ,
    \gen_read.r_state_reg[1] ,
    m_axi_rvalid,
    m_axi_rlast,
    m_axi_rid,
    \m_payload_i_reg[54] ,
    mr_axi_arvalid,
    m_axi_awid,
    \gen_axi.gen_read.read_cs_reg[0]_0 );
  output err_awready;
  output err_rvalid;
  output err_arready;
  output s_axi_bvalid;
  output [0:0]s_axi_bid;
  output s_axi_wready;
  output [0:0]E;
  output \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  output [0:0]\gen_read.r_state_reg[0] ;
  output s_axi_rvalid;
  output s_axi_rlast;
  output [0:0]s_axi_rid;
  output m_valid_i_reg;
  input aclk;
  input [0:0]SR;
  input \m_payload_i_reg[32] ;
  input s_axi_rready;
  input \aresetn_d_reg[1] ;
  input m_axi_bvalid;
  input [1:0]Q;
  input [0:0]m_axi_bid;
  input \gen_write.w_cnt_reg[3] ;
  input m_axi_wready;
  input \gen_write.w_state_reg[1] ;
  input s_axi_bready;
  input \m_payload_i_reg[32]_0 ;
  input s_axi_wlast;
  input s_axi_wvalid;
  input m_valid_i_reg_0;
  input \gen_read.ar_cnt_reg[3] ;
  input [1:0]\gen_read.r_state_reg[1] ;
  input m_axi_rvalid;
  input m_axi_rlast;
  input [0:0]m_axi_rid;
  input [9:0]\m_payload_i_reg[54] ;
  input mr_axi_arvalid;
  input [0:0]m_axi_awid;
  input \gen_axi.gen_read.read_cs_reg[0]_0 ;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \aresetn_d_reg[1] ;
  wire err_arready;
  wire err_awready;
  wire err_bid;
  wire err_bvalid;
  wire err_rid;
  wire err_rlast;
  wire err_rvalid;
  wire err_wready;
  wire \gen_axi.gen_read.read_cnt[0]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[1]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[2]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[2]_i_2_n_0 ;
  wire \gen_axi.gen_read.read_cnt[3]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[3]_i_2_n_0 ;
  wire \gen_axi.gen_read.read_cnt[4]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[4]_i_2_n_0 ;
  wire \gen_axi.gen_read.read_cnt[5]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[5]_i_2_n_0 ;
  wire \gen_axi.gen_read.read_cnt[6]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[6]_i_2_n_0 ;
  wire \gen_axi.gen_read.read_cnt[7]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[7]_i_2_n_0 ;
  wire \gen_axi.gen_read.read_cnt[7]_i_3_n_0 ;
  wire \gen_axi.gen_read.read_cnt[7]_i_4_n_0 ;
  wire [7:1]\gen_axi.gen_read.read_cnt_reg ;
  wire [0:0]\gen_axi.gen_read.read_cnt_reg__0 ;
  wire \gen_axi.gen_read.read_cs[0]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cs_reg[0]_0 ;
  wire \gen_axi.gen_read.s_axi_arready_i_i_1_n_0 ;
  wire \gen_axi.gen_read.s_axi_rid_i ;
  wire \gen_axi.gen_read.s_axi_rid_i[0]_i_1_n_0 ;
  wire \gen_axi.gen_read.s_axi_rlast_i__5 ;
  wire \gen_axi.gen_read.s_axi_rlast_i_i_1_n_0 ;
  wire \gen_axi.gen_read.s_axi_rlast_i_i_3_n_0 ;
  wire \gen_axi.gen_write.s_axi_awready_i_i_1_n_0 ;
  wire \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  wire \gen_axi.gen_write.s_axi_bid_i[0]_i_1_n_0 ;
  wire \gen_axi.gen_write.s_axi_bid_i[0]_i_2_n_0 ;
  wire \gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_axi.gen_write.s_axi_bvalid_i_i_2_n_0 ;
  wire \gen_axi.gen_write.s_axi_wready_i_i_1_n_0 ;
  wire [1:0]\gen_axi.gen_write.write_cs ;
  wire \gen_axi.gen_write.write_cs[0]_i_1_n_0 ;
  wire \gen_axi.gen_write.write_cs[1]_i_2_n_0 ;
  wire \gen_axi.gen_write.write_cs[1]_i_3_n_0 ;
  wire \gen_read.ar_cnt_reg[3] ;
  wire \gen_read.r_state[1]_i_4_n_0 ;
  wire [0:0]\gen_read.r_state_reg[0] ;
  wire [1:0]\gen_read.r_state_reg[1] ;
  wire \gen_write.w_cnt_reg[3] ;
  wire \gen_write.w_state_reg[1] ;
  wire [0:0]m_axi_awid;
  wire [0:0]m_axi_bid;
  wire m_axi_bvalid;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire \m_payload_i_reg[32] ;
  wire \m_payload_i_reg[32]_0 ;
  wire [9:0]\m_payload_i_reg[54] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire mr_axi_arvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wvalid;

  LUT5 #(
    .INIT(32'h5C00AA00)) 
    \gen_axi.gen_read.read_cnt[0]_i_1 
       (.I0(\gen_axi.gen_read.read_cnt_reg__0 ),
        .I1(\m_payload_i_reg[54] [1]),
        .I2(err_rvalid),
        .I3(\aresetn_d_reg[1] ),
        .I4(\gen_axi.gen_read.read_cnt[7]_i_2_n_0 ),
        .O(\gen_axi.gen_read.read_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC44C4408008880)) 
    \gen_axi.gen_read.read_cnt[1]_i_1 
       (.I0(\gen_axi.gen_read.read_cnt[7]_i_2_n_0 ),
        .I1(\aresetn_d_reg[1] ),
        .I2(err_rvalid),
        .I3(\m_payload_i_reg[54] [2]),
        .I4(\gen_axi.gen_read.read_cnt_reg__0 ),
        .I5(\gen_axi.gen_read.read_cnt_reg [1]),
        .O(\gen_axi.gen_read.read_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC408004C448880)) 
    \gen_axi.gen_read.read_cnt[2]_i_1 
       (.I0(\gen_axi.gen_read.read_cnt[7]_i_2_n_0 ),
        .I1(\aresetn_d_reg[1] ),
        .I2(err_rvalid),
        .I3(\m_payload_i_reg[54] [3]),
        .I4(\gen_axi.gen_read.read_cnt_reg [2]),
        .I5(\gen_axi.gen_read.read_cnt[2]_i_2_n_0 ),
        .O(\gen_axi.gen_read.read_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_axi.gen_read.read_cnt[2]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt_reg [1]),
        .I1(\gen_axi.gen_read.read_cnt_reg__0 ),
        .O(\gen_axi.gen_read.read_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC44C4408008880)) 
    \gen_axi.gen_read.read_cnt[3]_i_1 
       (.I0(\gen_axi.gen_read.read_cnt[7]_i_2_n_0 ),
        .I1(\aresetn_d_reg[1] ),
        .I2(err_rvalid),
        .I3(\m_payload_i_reg[54] [4]),
        .I4(\gen_axi.gen_read.read_cnt[3]_i_2_n_0 ),
        .I5(\gen_axi.gen_read.read_cnt_reg [3]),
        .O(\gen_axi.gen_read.read_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_axi.gen_read.read_cnt[3]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt_reg__0 ),
        .I1(\gen_axi.gen_read.read_cnt_reg [1]),
        .I2(\gen_axi.gen_read.read_cnt_reg [2]),
        .O(\gen_axi.gen_read.read_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC408004C448880)) 
    \gen_axi.gen_read.read_cnt[4]_i_1 
       (.I0(\gen_axi.gen_read.read_cnt[7]_i_2_n_0 ),
        .I1(\aresetn_d_reg[1] ),
        .I2(err_rvalid),
        .I3(\m_payload_i_reg[54] [5]),
        .I4(\gen_axi.gen_read.read_cnt_reg [4]),
        .I5(\gen_axi.gen_read.read_cnt[4]_i_2_n_0 ),
        .O(\gen_axi.gen_read.read_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_axi.gen_read.read_cnt[4]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt_reg [3]),
        .I1(\gen_axi.gen_read.read_cnt_reg [2]),
        .I2(\gen_axi.gen_read.read_cnt_reg [1]),
        .I3(\gen_axi.gen_read.read_cnt_reg__0 ),
        .O(\gen_axi.gen_read.read_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCC408004C448880)) 
    \gen_axi.gen_read.read_cnt[5]_i_1 
       (.I0(\gen_axi.gen_read.read_cnt[7]_i_2_n_0 ),
        .I1(\aresetn_d_reg[1] ),
        .I2(err_rvalid),
        .I3(\m_payload_i_reg[54] [6]),
        .I4(\gen_axi.gen_read.read_cnt_reg [5]),
        .I5(\gen_axi.gen_read.read_cnt[5]_i_2_n_0 ),
        .O(\gen_axi.gen_read.read_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_axi.gen_read.read_cnt[5]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt_reg__0 ),
        .I1(\gen_axi.gen_read.read_cnt_reg [1]),
        .I2(\gen_axi.gen_read.read_cnt_reg [2]),
        .I3(\gen_axi.gen_read.read_cnt_reg [3]),
        .I4(\gen_axi.gen_read.read_cnt_reg [4]),
        .O(\gen_axi.gen_read.read_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0B0008030B0C080)) 
    \gen_axi.gen_read.read_cnt[6]_i_1 
       (.I0(\m_payload_i_reg[54] [7]),
        .I1(\gen_axi.gen_read.read_cnt[7]_i_2_n_0 ),
        .I2(\aresetn_d_reg[1] ),
        .I3(err_rvalid),
        .I4(\gen_axi.gen_read.read_cnt_reg [6]),
        .I5(\gen_axi.gen_read.read_cnt[6]_i_2_n_0 ),
        .O(\gen_axi.gen_read.read_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_axi.gen_read.read_cnt[6]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt_reg [4]),
        .I1(\gen_axi.gen_read.read_cnt_reg [3]),
        .I2(\gen_axi.gen_read.read_cnt_reg [2]),
        .I3(\gen_axi.gen_read.read_cnt_reg [1]),
        .I4(\gen_axi.gen_read.read_cnt_reg__0 ),
        .I5(\gen_axi.gen_read.read_cnt_reg [5]),
        .O(\gen_axi.gen_read.read_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB0A070A080A040A0)) 
    \gen_axi.gen_read.read_cnt[7]_i_1 
       (.I0(\gen_axi.gen_read.read_cnt_reg [7]),
        .I1(err_rvalid),
        .I2(\aresetn_d_reg[1] ),
        .I3(\gen_axi.gen_read.read_cnt[7]_i_2_n_0 ),
        .I4(\gen_axi.gen_read.read_cnt[7]_i_3_n_0 ),
        .I5(\m_payload_i_reg[54] [8]),
        .O(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFD000)) 
    \gen_axi.gen_read.read_cnt[7]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt[7]_i_4_n_0 ),
        .I1(\gen_axi.gen_read.read_cnt[4]_i_2_n_0 ),
        .I2(err_rvalid),
        .I3(s_axi_rready),
        .I4(\gen_axi.gen_read.s_axi_rid_i ),
        .O(\gen_axi.gen_read.read_cnt[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_axi.gen_read.read_cnt[7]_i_3 
       (.I0(\gen_axi.gen_read.read_cnt_reg [5]),
        .I1(\gen_axi.gen_read.read_cnt[4]_i_2_n_0 ),
        .I2(\gen_axi.gen_read.read_cnt_reg [4]),
        .I3(\gen_axi.gen_read.read_cnt_reg [6]),
        .O(\gen_axi.gen_read.read_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_axi.gen_read.read_cnt[7]_i_4 
       (.I0(\gen_axi.gen_read.read_cnt_reg [7]),
        .I1(\gen_axi.gen_read.read_cnt_reg [6]),
        .I2(\gen_axi.gen_read.read_cnt_reg [5]),
        .I3(\gen_axi.gen_read.read_cnt_reg [4]),
        .O(\gen_axi.gen_read.read_cnt[7]_i_4_n_0 ));
  FDRE \gen_axi.gen_read.read_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[0]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg__0 ),
        .R(1'b0));
  FDRE \gen_axi.gen_read.read_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[1]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [1]),
        .R(1'b0));
  FDRE \gen_axi.gen_read.read_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[2]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [2]),
        .R(1'b0));
  FDRE \gen_axi.gen_read.read_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[3]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [3]),
        .R(1'b0));
  FDRE \gen_axi.gen_read.read_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[4]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [4]),
        .R(1'b0));
  FDRE \gen_axi.gen_read.read_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[5]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [5]),
        .R(1'b0));
  FDRE \gen_axi.gen_read.read_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[6]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [6]),
        .R(1'b0));
  FDRE \gen_axi.gen_read.read_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ),
        .Q(\gen_axi.gen_read.read_cnt_reg [7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF8C)) 
    \gen_axi.gen_read.read_cs[0]_i_1 
       (.I0(\gen_axi.gen_read.s_axi_rlast_i__5 ),
        .I1(err_rvalid),
        .I2(s_axi_rready),
        .I3(\gen_axi.gen_read.s_axi_rid_i ),
        .O(\gen_axi.gen_read.read_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_axi.gen_read.read_cs[0]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt_reg [7]),
        .I1(\gen_axi.gen_read.read_cnt_reg [6]),
        .I2(\gen_axi.gen_read.read_cnt_reg [5]),
        .I3(\gen_axi.gen_read.read_cnt_reg [4]),
        .I4(\gen_axi.gen_read.read_cnt[4]_i_2_n_0 ),
        .O(\gen_axi.gen_read.s_axi_rlast_i__5 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \gen_axi.gen_read.read_cs[0]_i_3 
       (.I0(\gen_read.r_state_reg[1] [1]),
        .I1(\gen_read.r_state_reg[1] [0]),
        .I2(err_arready),
        .I3(mr_axi_arvalid),
        .I4(\m_payload_i_reg[54] [0]),
        .I5(err_rvalid),
        .O(\gen_axi.gen_read.s_axi_rid_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_read.read_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cs[0]_i_1_n_0 ),
        .Q(err_rvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF550C5500000000)) 
    \gen_axi.gen_read.s_axi_arready_i_i_1 
       (.I0(\m_payload_i_reg[32] ),
        .I1(s_axi_rready),
        .I2(\gen_axi.gen_read.s_axi_rlast_i__5 ),
        .I3(err_rvalid),
        .I4(err_arready),
        .I5(\aresetn_d_reg[1] ),
        .O(\gen_axi.gen_read.s_axi_arready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_read.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.s_axi_arready_i_i_1_n_0 ),
        .Q(err_arready),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_axi.gen_read.s_axi_rid_i[0]_i_1 
       (.I0(\m_payload_i_reg[54] [9]),
        .I1(\gen_axi.gen_read.s_axi_rid_i ),
        .I2(err_rid),
        .O(\gen_axi.gen_read.s_axi_rid_i[0]_i_1_n_0 ));
  FDRE \gen_axi.gen_read.s_axi_rid_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.s_axi_rid_i[0]_i_1_n_0 ),
        .Q(err_rid),
        .R(SR));
  LUT6 #(
    .INIT(64'hF8F8F8FFF8F8F800)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_1 
       (.I0(err_rvalid),
        .I1(\gen_axi.gen_read.s_axi_rlast_i__5 ),
        .I2(\gen_axi.gen_read.read_cs_reg[0]_0 ),
        .I3(\gen_axi.gen_read.s_axi_rlast_i_i_3_n_0 ),
        .I4(\gen_axi.gen_read.s_axi_rid_i ),
        .I5(err_rlast),
        .O(\gen_axi.gen_read.s_axi_rlast_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_3 
       (.I0(err_rvalid),
        .I1(s_axi_rready),
        .I2(\gen_axi.gen_read.read_cnt[7]_i_4_n_0 ),
        .I3(\gen_axi.gen_read.read_cnt_reg [1]),
        .I4(\gen_axi.gen_read.read_cnt_reg [2]),
        .I5(\gen_axi.gen_read.read_cnt_reg [3]),
        .O(\gen_axi.gen_read.s_axi_rlast_i_i_3_n_0 ));
  FDRE \gen_axi.gen_read.s_axi_rlast_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.s_axi_rlast_i_i_1_n_0 ),
        .Q(err_rlast),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFEFFFE00FF000F)) 
    \gen_axi.gen_write.s_axi_awready_i_i_1 
       (.I0(\gen_axi.gen_write.s_axi_awready_i_reg_0 ),
        .I1(\m_payload_i_reg[32]_0 ),
        .I2(\gen_axi.gen_write.write_cs [1]),
        .I3(\gen_axi.gen_write.write_cs [0]),
        .I4(s_axi_bready),
        .I5(err_awready),
        .O(\gen_axi.gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_awready_i_i_1_n_0 ),
        .Q(err_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \gen_axi.gen_write.s_axi_bid_i[0]_i_1 
       (.I0(m_axi_awid),
        .I1(\gen_axi.gen_write.write_cs [0]),
        .I2(\m_payload_i_reg[32]_0 ),
        .I3(err_awready),
        .I4(\gen_axi.gen_write.s_axi_bid_i[0]_i_2_n_0 ),
        .I5(err_bid),
        .O(\gen_axi.gen_write.s_axi_bid_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_axi.gen_write.s_axi_bid_i[0]_i_2 
       (.I0(\gen_axi.gen_write.write_cs [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\gen_axi.gen_write.s_axi_bid_i[0]_i_2_n_0 ));
  FDRE \gen_axi.gen_write.s_axi_bid_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_bid_i[0]_i_1_n_0 ),
        .Q(err_bid),
        .R(SR));
  LUT6 #(
    .INIT(64'hDD555555C8000000)) 
    \gen_axi.gen_write.s_axi_bvalid_i_i_1 
       (.I0(\gen_axi.gen_write.s_axi_bvalid_i_i_2_n_0 ),
        .I1(\gen_axi.gen_write.s_axi_bid_i[0]_i_2_n_0 ),
        .I2(\gen_axi.gen_write.write_cs [0]),
        .I3(s_axi_wlast),
        .I4(s_axi_wvalid),
        .I5(err_bvalid),
        .O(\gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_axi.gen_write.s_axi_bvalid_i_i_2 
       (.I0(\gen_axi.gen_write.write_cs [0]),
        .I1(\gen_axi.gen_write.write_cs [1]),
        .I2(s_axi_bready),
        .O(\gen_axi.gen_write.s_axi_bvalid_i_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ),
        .Q(err_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'h0010FFFF00100000)) 
    \gen_axi.gen_write.s_axi_wready_i_i_1 
       (.I0(\gen_axi.gen_write.s_axi_awready_i_reg_0 ),
        .I1(\m_payload_i_reg[32]_0 ),
        .I2(err_awready),
        .I3(\gen_axi.gen_write.write_cs [0]),
        .I4(\gen_axi.gen_write.write_cs[1]_i_3_n_0 ),
        .I5(err_wready),
        .O(\gen_axi.gen_write.s_axi_wready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_wready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_wready_i_i_1_n_0 ),
        .Q(err_wready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_axi.gen_write.write_cs[0]_i_1 
       (.I0(\gen_axi.gen_write.write_cs [0]),
        .I1(\gen_axi.gen_write.write_cs [1]),
        .O(\gen_axi.gen_write.write_cs[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \gen_axi.gen_write.write_cs[1]_i_2 
       (.I0(s_axi_bready),
        .I1(\gen_axi.gen_write.write_cs [1]),
        .I2(\gen_axi.gen_write.write_cs [0]),
        .I3(\gen_axi.gen_write.write_cs[1]_i_3_n_0 ),
        .O(\gen_axi.gen_write.write_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF202020200000000)) 
    \gen_axi.gen_write.write_cs[1]_i_3 
       (.I0(err_awready),
        .I1(\m_payload_i_reg[32]_0 ),
        .I2(\gen_axi.gen_write.write_cs [0]),
        .I3(s_axi_wlast),
        .I4(s_axi_wvalid),
        .I5(\gen_axi.gen_write.s_axi_bid_i[0]_i_2_n_0 ),
        .O(\gen_axi.gen_write.write_cs[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.write_cs_reg[0] 
       (.C(aclk),
        .CE(\gen_axi.gen_write.write_cs[1]_i_2_n_0 ),
        .D(\gen_axi.gen_write.write_cs[0]_i_1_n_0 ),
        .Q(\gen_axi.gen_write.write_cs [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.write_cs_reg[1] 
       (.C(aclk),
        .CE(\gen_axi.gen_write.write_cs[1]_i_2_n_0 ),
        .D(\gen_axi.gen_write.write_cs [0]),
        .Q(\gen_axi.gen_write.write_cs [1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hC0C0AAAA00FFAAAA)) 
    \gen_read.r_state[1]_i_1 
       (.I0(m_valid_i_reg_0),
        .I1(err_rlast),
        .I2(\gen_read.r_state[1]_i_4_n_0 ),
        .I3(\gen_read.ar_cnt_reg[3] ),
        .I4(\gen_read.r_state_reg[1] [0]),
        .I5(\gen_read.r_state_reg[1] [1]),
        .O(\gen_read.r_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_read.r_state[1]_i_4 
       (.I0(err_rvalid),
        .I1(s_axi_rready),
        .O(\gen_read.r_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAEAFFAAFF)) 
    \gen_write.w_state[1]_i_1 
       (.I0(\gen_write.w_state_reg[1] ),
        .I1(s_axi_bready),
        .I2(err_bvalid),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\m_payload_i_reg[32]_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    m_valid_i_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\gen_axi.gen_write.s_axi_awready_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    m_valid_i_i_2__0
       (.I0(\gen_read.r_state_reg[1] [1]),
        .I1(\gen_read.r_state_reg[1] [0]),
        .I2(err_arready),
        .O(m_valid_i_reg));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \s_axi_bid[0]_INST_0 
       (.I0(m_axi_bid),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(err_bid),
        .O(s_axi_bid));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    s_axi_bvalid_INST_0
       (.I0(m_axi_bvalid),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(err_bvalid),
        .O(s_axi_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \s_axi_rid[0]_INST_0 
       (.I0(m_axi_rid),
        .I1(\gen_read.r_state_reg[1] [0]),
        .I2(\gen_read.r_state_reg[1] [1]),
        .I3(err_rid),
        .O(s_axi_rid));
  LUT4 #(
    .INIT(16'hEA2A)) 
    s_axi_rlast_INST_0
       (.I0(m_axi_rlast),
        .I1(\gen_read.r_state_reg[1] [0]),
        .I2(\gen_read.r_state_reg[1] [1]),
        .I3(err_rlast),
        .O(s_axi_rlast));
  LUT4 #(
    .INIT(16'hEA2A)) 
    s_axi_rvalid_INST_0
       (.I0(m_axi_rvalid),
        .I1(\gen_read.r_state_reg[1] [0]),
        .I2(\gen_read.r_state_reg[1] [1]),
        .I3(err_rvalid),
        .O(s_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF8880888)) 
    s_axi_wready_INST_0
       (.I0(\gen_write.w_cnt_reg[3] ),
        .I1(m_axi_wready),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(err_wready),
        .O(s_axi_wready));
endmodule

(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_BASE_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_DEST = "1'b0" *) (* C_DEST_WIDTH = "1" *) 
(* C_FAMILY = "zynquplus" *) (* C_M_AXI_ADDR_WIDTH = "32" *) (* C_M_AXI_SUPPORTS_READ = "1'b1" *) 
(* C_M_AXI_SUPPORTS_WRITE = "1'b1" *) (* C_NUM_RANGES = "1" *) (* C_PREFIX = "1'b0" *) 
(* C_PREFIX_WIDTH = "1" *) (* C_RANGE_SIZE = "32'b00000000000000000000000000011110" *) (* C_S_AXI_ADDR_WIDTH = "32" *) 
(* C_S_AXI_SUPPORTS_READ = "1" *) (* C_S_AXI_SUPPORTS_WRITE = "1" *) (* C_USES_DEST = "0" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_mmu_v2_1_13_top" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_DECERR = "2'b11" *) 
(* P_NUM_RANGES_LOG = "1" *) (* R_DECERR = "2'b11" *) (* R_IDLE = "2'b00" *) 
(* R_PENDING = "2'b01" *) (* W_DECERR = "2'b11" *) (* W_IDLE = "2'b00" *) 
(* W_PENDING = "2'b01" *) 
module design_1_s01_mmu_1_axi_mmu_v2_1_13_top
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
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
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
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
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
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
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire ar_pop;
  wire aresetn;
  wire decerr_slave_inst_n_12;
  wire decerr_slave_inst_n_6;
  wire decerr_slave_inst_n_7;
  wire decerr_slave_inst_n_8;
  wire err_arready;
  wire err_awready;
  wire err_rvalid;
  wire \gen_read.ar_cnt[0]_i_1_n_0 ;
  wire \gen_read.ar_cnt[5]_i_5_n_0 ;
  wire [5:0]\gen_read.ar_cnt_reg__0 ;
  wire \gen_read.r_state[1]_i_5_n_0 ;
  wire \gen_read.r_state_reg_n_0_[0] ;
  wire \gen_read.r_state_reg_n_0_[1] ;
  wire \gen_write.aw_cnt[0]_i_1_n_0 ;
  wire \gen_write.aw_cnt[5]_i_3_n_0 ;
  wire [5:0]\gen_write.aw_cnt_reg__0 ;
  wire \gen_write.w_cnt[0]_i_1_n_0 ;
  wire \gen_write.w_cnt[1]_i_1_n_0 ;
  wire \gen_write.w_cnt[2]_i_1_n_0 ;
  wire \gen_write.w_cnt[3]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_1_n_0 ;
  wire \gen_write.w_cnt[5]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_4_n_0 ;
  wire \gen_write.w_cnt[5]_i_5_n_0 ;
  wire [5:0]\gen_write.w_cnt_reg__0 ;
  wire \gen_write.w_state[1]_i_2_n_0 ;
  wire \gen_write.w_state[1]_i_3_n_0 ;
  wire \gen_write.w_state[1]_i_5_n_0 ;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [0:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [32:32]mr_axi_araddr;
  wire mr_axi_arvalid;
  wire p_14_in;
  wire [1:0]r_state;
  wire register_slice_inst_n_0;
  wire register_slice_inst_n_11;
  wire register_slice_inst_n_12;
  wire register_slice_inst_n_2;
  wire register_slice_inst_n_3;
  wire register_slice_inst_n_4;
  wire register_slice_inst_n_5;
  wire register_slice_inst_n_6;
  wire register_slice_inst_n_7;
  wire register_slice_inst_n_74;
  wire register_slice_inst_n_75;
  wire register_slice_inst_n_76;
  wire register_slice_inst_n_77;
  wire register_slice_inst_n_78;
  wire register_slice_inst_n_79;
  wire register_slice_inst_n_8;
  wire register_slice_inst_n_80;
  wire register_slice_inst_n_81;
  wire register_slice_inst_n_84;
  wire register_slice_inst_n_9;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire w_mask;
  wire w_pop;
  wire [1:0]w_state;

  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[31:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = s_axi_wlast;
  assign m_axi_wstrb[3:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_s01_mmu_1_axi_mmu_v2_1_13_decerr_slave decerr_slave_inst
       (.E(decerr_slave_inst_n_6),
        .Q(w_state),
        .SR(register_slice_inst_n_0),
        .aclk(aclk),
        .\aresetn_d_reg[1] (register_slice_inst_n_2),
        .err_arready(err_arready),
        .err_awready(err_awready),
        .err_rvalid(err_rvalid),
        .\gen_axi.gen_read.read_cs_reg[0]_0 (register_slice_inst_n_84),
        .\gen_axi.gen_write.s_axi_awready_i_reg_0 (decerr_slave_inst_n_7),
        .\gen_read.ar_cnt_reg[3] (\gen_read.r_state[1]_i_5_n_0 ),
        .\gen_read.r_state_reg[0] (decerr_slave_inst_n_8),
        .\gen_read.r_state_reg[1] ({\gen_read.r_state_reg_n_0_[1] ,\gen_read.r_state_reg_n_0_[0] }),
        .\gen_write.w_cnt_reg[3] (s_axi_wready_INST_0_i_1_n_0),
        .\gen_write.w_state_reg[1] (\gen_write.w_state[1]_i_3_n_0 ),
        .m_axi_awid(m_axi_awid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .\m_payload_i_reg[32] (register_slice_inst_n_74),
        .\m_payload_i_reg[32]_0 (register_slice_inst_n_12),
        .\m_payload_i_reg[54] ({m_axi_arid,m_axi_arlen,mr_axi_araddr}),
        .m_valid_i_reg(decerr_slave_inst_n_12),
        .m_valid_i_reg_0(register_slice_inst_n_75),
        .mr_axi_arvalid(mr_axi_arvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_read.ar_cnt[0]_i_1 
       (.I0(\gen_read.ar_cnt_reg__0 [0]),
        .O(\gen_read.ar_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_read.ar_cnt[5]_i_3 
       (.I0(m_axi_rlast),
        .I1(m_axi_rvalid),
        .I2(s_axi_rready),
        .I3(\gen_read.r_state[1]_i_5_n_0 ),
        .O(ar_pop));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gen_read.ar_cnt[5]_i_5 
       (.I0(s_axi_rready),
        .I1(m_axi_rvalid),
        .I2(m_axi_rlast),
        .O(\gen_read.ar_cnt[5]_i_5_n_0 ));
  FDRE \gen_read.ar_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_76),
        .D(\gen_read.ar_cnt[0]_i_1_n_0 ),
        .Q(\gen_read.ar_cnt_reg__0 [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_76),
        .D(register_slice_inst_n_81),
        .Q(\gen_read.ar_cnt_reg__0 [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_76),
        .D(register_slice_inst_n_80),
        .Q(\gen_read.ar_cnt_reg__0 [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_76),
        .D(register_slice_inst_n_79),
        .Q(\gen_read.ar_cnt_reg__0 [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_76),
        .D(register_slice_inst_n_78),
        .Q(\gen_read.ar_cnt_reg__0 [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_76),
        .D(register_slice_inst_n_77),
        .Q(\gen_read.ar_cnt_reg__0 [5]),
        .R(register_slice_inst_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_read.r_state[1]_i_5 
       (.I0(\gen_read.ar_cnt_reg__0 [3]),
        .I1(\gen_read.ar_cnt_reg__0 [2]),
        .I2(\gen_read.ar_cnt_reg__0 [4]),
        .I3(\gen_read.ar_cnt_reg__0 [5]),
        .I4(\gen_read.ar_cnt_reg__0 [0]),
        .I5(\gen_read.ar_cnt_reg__0 [1]),
        .O(\gen_read.r_state[1]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_read.r_state_reg[0] 
       (.C(aclk),
        .CE(decerr_slave_inst_n_8),
        .D(r_state[0]),
        .Q(\gen_read.r_state_reg_n_0_[0] ),
        .R(register_slice_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_read.r_state_reg[1] 
       (.C(aclk),
        .CE(decerr_slave_inst_n_8),
        .D(r_state[1]),
        .Q(\gen_read.r_state_reg_n_0_[1] ),
        .R(register_slice_inst_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.aw_cnt[0]_i_1 
       (.I0(\gen_write.aw_cnt_reg__0 [0]),
        .O(\gen_write.aw_cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \gen_write.aw_cnt[5]_i_3 
       (.I0(s_axi_bready),
        .I1(m_axi_bvalid),
        .I2(\gen_write.w_state[1]_i_5_n_0 ),
        .O(\gen_write.aw_cnt[5]_i_3_n_0 ));
  FDRE \gen_write.aw_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_3),
        .D(\gen_write.aw_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.aw_cnt_reg__0 [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_3),
        .D(register_slice_inst_n_8),
        .Q(\gen_write.aw_cnt_reg__0 [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_3),
        .D(register_slice_inst_n_7),
        .Q(\gen_write.aw_cnt_reg__0 [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_3),
        .D(register_slice_inst_n_6),
        .Q(\gen_write.aw_cnt_reg__0 [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_3),
        .D(register_slice_inst_n_5),
        .Q(\gen_write.aw_cnt_reg__0 [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_3),
        .D(register_slice_inst_n_4),
        .Q(\gen_write.aw_cnt_reg__0 [5]),
        .R(register_slice_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.w_cnt[0]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gen_write.w_cnt[1]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [1]),
        .I1(\gen_write.w_cnt_reg__0 [0]),
        .I2(\gen_write.w_cnt[4]_i_2_n_0 ),
        .O(\gen_write.w_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hA96A)) 
    \gen_write.w_cnt[2]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [2]),
        .I1(\gen_write.w_cnt_reg__0 [1]),
        .I2(\gen_write.w_cnt_reg__0 [0]),
        .I3(\gen_write.w_cnt[4]_i_2_n_0 ),
        .O(\gen_write.w_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAAA96AAA)) 
    \gen_write.w_cnt[3]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [3]),
        .I1(\gen_write.w_cnt_reg__0 [1]),
        .I2(\gen_write.w_cnt_reg__0 [2]),
        .I3(\gen_write.w_cnt_reg__0 [0]),
        .I4(\gen_write.w_cnt[4]_i_2_n_0 ),
        .O(\gen_write.w_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA96AAAAAAA)) 
    \gen_write.w_cnt[4]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [4]),
        .I1(\gen_write.w_cnt_reg__0 [2]),
        .I2(\gen_write.w_cnt_reg__0 [3]),
        .I3(\gen_write.w_cnt_reg__0 [1]),
        .I4(\gen_write.w_cnt_reg__0 [0]),
        .I5(\gen_write.w_cnt[4]_i_2_n_0 ),
        .O(\gen_write.w_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \gen_write.w_cnt[4]_i_2 
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .I3(s_axi_wlast),
        .I4(decerr_slave_inst_n_7),
        .I5(p_14_in),
        .O(\gen_write.w_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000100)) 
    \gen_write.w_cnt[5]_i_1 
       (.I0(w_mask),
        .I1(s_axi_awaddr[30]),
        .I2(s_axi_awaddr[31]),
        .I3(s_axi_awvalid),
        .I4(\gen_write.aw_cnt_reg__0 [5]),
        .I5(w_pop),
        .O(\gen_write.w_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_write.w_cnt[5]_i_2 
       (.I0(\gen_write.w_cnt_reg__0 [5]),
        .I1(\gen_write.w_cnt_reg__0 [3]),
        .I2(\gen_write.w_cnt_reg__0 [4]),
        .I3(\gen_write.w_cnt_reg__0 [2]),
        .I4(\gen_write.w_cnt[5]_i_4_n_0 ),
        .O(\gen_write.w_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7000000000000000)) 
    \gen_write.w_cnt[5]_i_3 
       (.I0(w_state[0]),
        .I1(w_state[1]),
        .I2(s_axi_wlast),
        .I3(m_axi_wready),
        .I4(s_axi_wvalid),
        .I5(s_axi_wready_INST_0_i_1_n_0),
        .O(w_pop));
  LUT6 #(
    .INIT(64'h7000FFFF0000FF70)) 
    \gen_write.w_cnt[5]_i_4 
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(\gen_write.w_cnt[5]_i_5_n_0 ),
        .I2(p_14_in),
        .I3(\gen_write.w_cnt_reg__0 [0]),
        .I4(\gen_write.w_cnt_reg__0 [2]),
        .I5(\gen_write.w_cnt_reg__0 [1]),
        .O(\gen_write.w_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00808080)) 
    \gen_write.w_cnt[5]_i_5 
       (.I0(s_axi_wvalid),
        .I1(m_axi_wready),
        .I2(s_axi_wlast),
        .I3(w_state[1]),
        .I4(w_state[0]),
        .O(\gen_write.w_cnt[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \gen_write.w_cnt[5]_i_6 
       (.I0(w_mask),
        .I1(s_axi_awaddr[30]),
        .I2(s_axi_awaddr[31]),
        .I3(s_axi_awvalid),
        .I4(\gen_write.aw_cnt_reg__0 [5]),
        .O(p_14_in));
  FDRE \gen_write.w_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[1]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[2]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[3]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[4]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[5]_i_2_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [5]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_mask_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_9),
        .Q(w_mask),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_write.w_state[1]_i_2 
       (.I0(w_state[0]),
        .I1(w_state[1]),
        .O(\gen_write.w_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_write.w_state[1]_i_3 
       (.I0(w_state[1]),
        .I1(w_state[0]),
        .I2(\gen_write.w_state[1]_i_5_n_0 ),
        .I3(s_axi_wready_INST_0_i_1_n_0),
        .O(\gen_write.w_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_write.w_state[1]_i_5 
       (.I0(\gen_write.aw_cnt_reg__0 [3]),
        .I1(\gen_write.aw_cnt_reg__0 [2]),
        .I2(\gen_write.aw_cnt_reg__0 [4]),
        .I3(\gen_write.aw_cnt_reg__0 [5]),
        .I4(\gen_write.aw_cnt_reg__0 [0]),
        .I5(\gen_write.aw_cnt_reg__0 [1]),
        .O(\gen_write.w_state[1]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.w_state_reg[0] 
       (.C(aclk),
        .CE(decerr_slave_inst_n_6),
        .D(register_slice_inst_n_11),
        .Q(w_state[0]),
        .R(register_slice_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.w_state_reg[1] 
       (.C(aclk),
        .CE(decerr_slave_inst_n_6),
        .D(\gen_write.w_state[1]_i_2_n_0 ),
        .Q(w_state[1]),
        .R(register_slice_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(w_state[0]),
        .I2(w_state[1]),
        .I3(s_axi_wready_INST_0_i_1_n_0),
        .O(m_axi_wvalid));
  design_1_s01_mmu_1_axi_register_slice_v2_1_15_axi_register_slice register_slice_inst
       (.D({register_slice_inst_n_4,register_slice_inst_n_5,register_slice_inst_n_6,register_slice_inst_n_7,register_slice_inst_n_8}),
        .E(register_slice_inst_n_3),
        .Q(\gen_write.aw_cnt_reg__0 ),
        .SR(register_slice_inst_n_0),
        .aclk(aclk),
        .ar_pop(ar_pop),
        .aresetn(aresetn),
        .err_arready(err_arready),
        .err_awready(err_awready),
        .err_rvalid(err_rvalid),
        .\gen_axi.gen_read.s_axi_arready_i_reg (register_slice_inst_n_74),
        .\gen_axi.gen_read.s_axi_rlast_i_reg (register_slice_inst_n_84),
        .\gen_axi.gen_write.s_axi_awready_i_reg (register_slice_inst_n_12),
        .\gen_read.ar_cnt_reg[3] (\gen_read.r_state[1]_i_5_n_0 ),
        .\gen_read.ar_cnt_reg[5] (register_slice_inst_n_76),
        .\gen_read.ar_cnt_reg[5]_0 ({register_slice_inst_n_77,register_slice_inst_n_78,register_slice_inst_n_79,register_slice_inst_n_80,register_slice_inst_n_81}),
        .\gen_read.ar_cnt_reg[5]_1 (\gen_read.ar_cnt_reg__0 ),
        .\gen_read.r_state_reg[0] (register_slice_inst_n_75),
        .\gen_read.r_state_reg[1] (r_state),
        .\gen_read.r_state_reg[1]_0 ({\gen_read.r_state_reg_n_0_[1] ,\gen_read.r_state_reg_n_0_[0] }),
        .\gen_read.r_state_reg[1]_1 (decerr_slave_inst_n_12),
        .\gen_write.aw_cnt_reg[3] (\gen_write.aw_cnt[5]_i_3_n_0 ),
        .\gen_write.aw_cnt_reg[3]_0 (\gen_write.w_state[1]_i_5_n_0 ),
        .\gen_write.w_mask_reg (register_slice_inst_n_9),
        .\gen_write.w_state_reg[0] (register_slice_inst_n_11),
        .\gen_write.w_state_reg[0]_0 (decerr_slave_inst_n_7),
        .\gen_write.w_state_reg[1] (\gen_write.w_state[1]_i_3_n_0 ),
        .\gen_write.w_state_reg[1]_0 (w_state),
        .\m_axi_arqos[3] ({m_axi_arqos,m_axi_arid,m_axi_arlock,m_axi_arlen,m_axi_arcache,m_axi_arburst,m_axi_arsize,m_axi_arprot,mr_axi_araddr,m_axi_araddr}),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_axi_awqos[3] ({m_axi_awqos,m_axi_awid,m_axi_awlock,m_axi_awlen,m_axi_awcache,m_axi_awburst,m_axi_awsize,m_axi_awprot,m_axi_awaddr}),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rlast_0(\gen_read.ar_cnt[5]_i_5_n_0 ),
        .m_axi_rvalid(m_axi_rvalid),
        .m_valid_i_reg(register_slice_inst_n_2),
        .mr_axi_arvalid(mr_axi_arvalid),
        .s_axi_araddr(s_axi_araddr),
        .\s_axi_arqos[3] ({s_axi_arqos,s_axi_arid,s_axi_arlock,s_axi_arlen,s_axi_arcache,s_axi_arburst,s_axi_arsize,s_axi_arprot}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awqos[3] ({s_axi_awqos,s_axi_awid,s_axi_awlock,s_axi_awlen,s_axi_awcache,s_axi_awburst,s_axi_awsize,s_axi_awprot}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rready(s_axi_rready),
        .w_mask(w_mask));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(m_axi_bresp[0]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .O(s_axi_bresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(m_axi_bresp[1]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(m_axi_rdata[0]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(m_axi_rdata[10]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(m_axi_rdata[11]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(m_axi_rdata[12]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(m_axi_rdata[13]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(m_axi_rdata[14]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(m_axi_rdata[15]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(m_axi_rdata[16]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(m_axi_rdata[17]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(m_axi_rdata[18]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(m_axi_rdata[19]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(m_axi_rdata[1]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(m_axi_rdata[20]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(m_axi_rdata[21]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(m_axi_rdata[22]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(m_axi_rdata[23]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(m_axi_rdata[24]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(m_axi_rdata[25]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(m_axi_rdata[26]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(m_axi_rdata[27]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(m_axi_rdata[28]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(m_axi_rdata[29]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(m_axi_rdata[2]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(m_axi_rdata[30]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(m_axi_rdata[31]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(m_axi_rdata[3]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(m_axi_rdata[4]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(m_axi_rdata[5]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(m_axi_rdata[6]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(m_axi_rdata[7]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(m_axi_rdata[8]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(m_axi_rdata[9]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(m_axi_rresp[0]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(m_axi_rresp[1]),
        .I1(\gen_read.r_state_reg_n_0_[1] ),
        .I2(\gen_read.r_state_reg_n_0_[0] ),
        .O(s_axi_rresp[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    s_axi_wready_INST_0_i_1
       (.I0(\gen_write.w_cnt_reg__0 [3]),
        .I1(\gen_write.w_cnt_reg__0 [2]),
        .I2(\gen_write.w_cnt_reg__0 [0]),
        .I3(\gen_write.w_cnt_reg__0 [1]),
        .I4(\gen_write.w_cnt_reg__0 [5]),
        .I5(\gen_write.w_cnt_reg__0 [4]),
        .O(s_axi_wready_INST_0_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_15_axi_register_slice" *) 
module design_1_s01_mmu_1_axi_register_slice_v2_1_15_axi_register_slice
   (SR,
    mr_axi_arvalid,
    m_valid_i_reg,
    E,
    D,
    \gen_write.w_mask_reg ,
    s_axi_awready,
    \gen_write.w_state_reg[0] ,
    \gen_axi.gen_write.s_axi_awready_i_reg ,
    \gen_read.r_state_reg[1] ,
    \m_axi_arqos[3] ,
    \gen_axi.gen_read.s_axi_arready_i_reg ,
    \gen_read.r_state_reg[0] ,
    \gen_read.ar_cnt_reg[5] ,
    \gen_read.ar_cnt_reg[5]_0 ,
    s_axi_arready,
    m_axi_arvalid,
    \gen_axi.gen_read.s_axi_rlast_i_reg ,
    m_axi_awvalid,
    \m_axi_awqos[3] ,
    aclk,
    s_axi_awaddr,
    s_axi_awvalid,
    Q,
    \gen_write.aw_cnt_reg[3] ,
    \gen_write.aw_cnt_reg[3]_0 ,
    m_axi_bvalid,
    s_axi_bready,
    w_mask,
    \gen_write.w_state_reg[1] ,
    \gen_write.w_state_reg[1]_0 ,
    err_awready,
    \gen_write.w_state_reg[0]_0 ,
    \gen_read.r_state_reg[1]_0 ,
    \gen_read.r_state_reg[1]_1 ,
    m_axi_arready,
    \gen_read.ar_cnt_reg[5]_1 ,
    s_axi_arvalid,
    err_arready,
    m_axi_awready,
    s_axi_araddr,
    ar_pop,
    \gen_read.ar_cnt_reg[3] ,
    m_axi_rlast_0,
    s_axi_rready,
    m_axi_rvalid,
    m_axi_rlast,
    err_rvalid,
    aresetn,
    \s_axi_awqos[3] ,
    \s_axi_arqos[3] );
  output [0:0]SR;
  output mr_axi_arvalid;
  output m_valid_i_reg;
  output [0:0]E;
  output [4:0]D;
  output \gen_write.w_mask_reg ;
  output s_axi_awready;
  output [0:0]\gen_write.w_state_reg[0] ;
  output \gen_axi.gen_write.s_axi_awready_i_reg ;
  output [1:0]\gen_read.r_state_reg[1] ;
  output [58:0]\m_axi_arqos[3] ;
  output \gen_axi.gen_read.s_axi_arready_i_reg ;
  output \gen_read.r_state_reg[0] ;
  output [0:0]\gen_read.ar_cnt_reg[5] ;
  output [4:0]\gen_read.ar_cnt_reg[5]_0 ;
  output s_axi_arready;
  output m_axi_arvalid;
  output \gen_axi.gen_read.s_axi_rlast_i_reg ;
  output m_axi_awvalid;
  output [57:0]\m_axi_awqos[3] ;
  input aclk;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  input [5:0]Q;
  input \gen_write.aw_cnt_reg[3] ;
  input \gen_write.aw_cnt_reg[3]_0 ;
  input m_axi_bvalid;
  input s_axi_bready;
  input w_mask;
  input \gen_write.w_state_reg[1] ;
  input [1:0]\gen_write.w_state_reg[1]_0 ;
  input err_awready;
  input \gen_write.w_state_reg[0]_0 ;
  input [1:0]\gen_read.r_state_reg[1]_0 ;
  input \gen_read.r_state_reg[1]_1 ;
  input m_axi_arready;
  input [5:0]\gen_read.ar_cnt_reg[5]_1 ;
  input s_axi_arvalid;
  input err_arready;
  input m_axi_awready;
  input [31:0]s_axi_araddr;
  input ar_pop;
  input \gen_read.ar_cnt_reg[3] ;
  input m_axi_rlast_0;
  input s_axi_rready;
  input m_axi_rvalid;
  input m_axi_rlast;
  input err_rvalid;
  input aresetn;
  input [25:0]\s_axi_awqos[3] ;
  input [25:0]\s_axi_arqos[3] ;

  wire [4:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \ar.ar_pipe_n_3 ;
  wire ar_pop;
  wire aresetn;
  wire \aw.aw_pipe_n_1 ;
  wire err_arready;
  wire err_awready;
  wire err_rvalid;
  wire \gen_axi.gen_read.s_axi_arready_i_reg ;
  wire \gen_axi.gen_read.s_axi_rlast_i_reg ;
  wire \gen_axi.gen_write.s_axi_awready_i_reg ;
  wire \gen_read.ar_cnt_reg[3] ;
  wire [0:0]\gen_read.ar_cnt_reg[5] ;
  wire [4:0]\gen_read.ar_cnt_reg[5]_0 ;
  wire [5:0]\gen_read.ar_cnt_reg[5]_1 ;
  wire \gen_read.r_state_reg[0] ;
  wire [1:0]\gen_read.r_state_reg[1] ;
  wire [1:0]\gen_read.r_state_reg[1]_0 ;
  wire \gen_read.r_state_reg[1]_1 ;
  wire \gen_write.aw_cnt_reg[3] ;
  wire \gen_write.aw_cnt_reg[3]_0 ;
  wire \gen_write.w_mask_reg ;
  wire [0:0]\gen_write.w_state_reg[0] ;
  wire \gen_write.w_state_reg[0]_0 ;
  wire \gen_write.w_state_reg[1] ;
  wire [1:0]\gen_write.w_state_reg[1]_0 ;
  wire [58:0]\m_axi_arqos[3] ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [57:0]\m_axi_awqos[3] ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire m_axi_rlast;
  wire m_axi_rlast_0;
  wire m_axi_rvalid;
  wire m_valid_i_reg;
  wire mr_axi_arvalid;
  wire p_1_in;
  wire [31:0]s_axi_araddr;
  wire [25:0]\s_axi_arqos[3] ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [25:0]\s_axi_awqos[3] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire w_mask;

  design_1_s01_mmu_1_axi_register_slice_v2_1_15_axic_register_slice \ar.ar_pipe 
       (.D({\s_axi_arqos[3] ,s_axi_araddr}),
        .Q(\m_axi_arqos[3] ),
        .SR(SR),
        .aclk(aclk),
        .ar_pop(ar_pop),
        .aresetn(aresetn),
        .\aresetn_d_reg[0] (\aw.aw_pipe_n_1 ),
        .\aresetn_d_reg[1]_0 (\ar.ar_pipe_n_3 ),
        .err_arready(err_arready),
        .err_rvalid(err_rvalid),
        .\gen_axi.gen_read.s_axi_arready_i_reg (\gen_axi.gen_read.s_axi_arready_i_reg ),
        .\gen_axi.gen_read.s_axi_rlast_i_reg (\gen_axi.gen_read.s_axi_rlast_i_reg ),
        .\gen_read.ar_cnt_reg[3] (\gen_read.ar_cnt_reg[3] ),
        .\gen_read.ar_cnt_reg[5] (\gen_read.ar_cnt_reg[5] ),
        .\gen_read.ar_cnt_reg[5]_0 (\gen_read.ar_cnt_reg[5]_0 ),
        .\gen_read.ar_cnt_reg[5]_1 (\gen_read.ar_cnt_reg[5]_1 ),
        .\gen_read.r_state_reg[0] (\gen_read.r_state_reg[0] ),
        .\gen_read.r_state_reg[1] (\gen_read.r_state_reg[1] ),
        .\gen_read.r_state_reg[1]_0 (\gen_read.r_state_reg[1]_0 ),
        .\gen_read.r_state_reg[1]_1 (\gen_read.r_state_reg[1]_1 ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rlast_0(m_axi_rlast_0),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[0]_0 (mr_axi_arvalid),
        .m_valid_i_reg_0(m_valid_i_reg),
        .p_1_in(p_1_in),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rready(s_axi_rready));
  design_1_s01_mmu_1_axi_register_slice_v2_1_15_axic_register_slice_0 \aw.aw_pipe 
       (.D({\s_axi_awqos[3] ,s_axi_awaddr}),
        .E(E),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .aresetn(\ar.ar_pipe_n_3 ),
        .\aresetn_d_reg[1] (\aw.aw_pipe_n_1 ),
        .\aresetn_d_reg[1]_0 (m_valid_i_reg),
        .err_awready(err_awready),
        .\gen_axi.gen_write.s_axi_awready_i_reg (\gen_axi.gen_write.s_axi_awready_i_reg ),
        .\gen_write.aw_cnt_reg[3] (\gen_write.aw_cnt_reg[3] ),
        .\gen_write.aw_cnt_reg[3]_0 (\gen_write.aw_cnt_reg[3]_0 ),
        .\gen_write.aw_cnt_reg[5] (D),
        .\gen_write.w_mask_reg (\gen_write.w_mask_reg ),
        .\gen_write.w_state_reg[0] (\gen_write.w_state_reg[0] ),
        .\gen_write.w_state_reg[0]_0 (\gen_write.w_state_reg[0]_0 ),
        .\gen_write.w_state_reg[1] (\gen_write.w_state_reg[1] ),
        .\gen_write.w_state_reg[1]_0 (\gen_write.w_state_reg[1]_0 ),
        .\m_axi_awqos[3] (\m_axi_awqos[3] ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bvalid(m_axi_bvalid),
        .p_1_in(p_1_in),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .w_mask(w_mask));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_15_axic_register_slice" *) 
module design_1_s01_mmu_1_axi_register_slice_v2_1_15_axic_register_slice
   (\m_payload_i_reg[0]_0 ,
    SR,
    m_valid_i_reg_0,
    \aresetn_d_reg[1]_0 ,
    \gen_read.r_state_reg[1] ,
    Q,
    \gen_axi.gen_read.s_axi_arready_i_reg ,
    \gen_read.r_state_reg[0] ,
    \gen_read.ar_cnt_reg[5] ,
    \gen_read.ar_cnt_reg[5]_0 ,
    s_axi_arready,
    m_axi_arvalid,
    \gen_axi.gen_read.s_axi_rlast_i_reg ,
    aclk,
    p_1_in,
    \aresetn_d_reg[0] ,
    \gen_read.r_state_reg[1]_0 ,
    \gen_read.r_state_reg[1]_1 ,
    m_axi_arready,
    \gen_read.ar_cnt_reg[5]_1 ,
    s_axi_arvalid,
    err_arready,
    D,
    ar_pop,
    \gen_read.ar_cnt_reg[3] ,
    m_axi_rlast_0,
    s_axi_rready,
    m_axi_rvalid,
    m_axi_rlast,
    err_rvalid,
    aresetn);
  output \m_payload_i_reg[0]_0 ;
  output [0:0]SR;
  output m_valid_i_reg_0;
  output \aresetn_d_reg[1]_0 ;
  output [1:0]\gen_read.r_state_reg[1] ;
  output [58:0]Q;
  output \gen_axi.gen_read.s_axi_arready_i_reg ;
  output \gen_read.r_state_reg[0] ;
  output [0:0]\gen_read.ar_cnt_reg[5] ;
  output [4:0]\gen_read.ar_cnt_reg[5]_0 ;
  output s_axi_arready;
  output m_axi_arvalid;
  output \gen_axi.gen_read.s_axi_rlast_i_reg ;
  input aclk;
  input p_1_in;
  input \aresetn_d_reg[0] ;
  input [1:0]\gen_read.r_state_reg[1]_0 ;
  input \gen_read.r_state_reg[1]_1 ;
  input m_axi_arready;
  input [5:0]\gen_read.ar_cnt_reg[5]_1 ;
  input s_axi_arvalid;
  input err_arready;
  input [57:0]D;
  input ar_pop;
  input \gen_read.ar_cnt_reg[3] ;
  input m_axi_rlast_0;
  input s_axi_rready;
  input m_axi_rvalid;
  input m_axi_rlast;
  input err_rvalid;
  input aresetn;

  wire [57:0]D;
  wire [58:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire ar_pop;
  wire aresetn;
  wire \aresetn_d_reg[0] ;
  wire \aresetn_d_reg[1]_0 ;
  wire err_arready;
  wire err_rvalid;
  wire \gen_axi.gen_read.s_axi_arready_i_reg ;
  wire \gen_axi.gen_read.s_axi_rlast_i_i_4_n_0 ;
  wire \gen_axi.gen_read.s_axi_rlast_i_reg ;
  wire \gen_read.ar_cnt[4]_i_2_n_0 ;
  wire \gen_read.ar_cnt[5]_i_4_n_0 ;
  wire \gen_read.ar_cnt_reg[3] ;
  wire [0:0]\gen_read.ar_cnt_reg[5] ;
  wire [4:0]\gen_read.ar_cnt_reg[5]_0 ;
  wire [5:0]\gen_read.ar_cnt_reg[5]_1 ;
  wire \gen_read.r_state_reg[0] ;
  wire [1:0]\gen_read.r_state_reg[1] ;
  wire [1:0]\gen_read.r_state_reg[1]_0 ;
  wire \gen_read.r_state_reg[1]_1 ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rlast_0;
  wire m_axi_rvalid;
  wire \m_payload_i[54]_i_1__0_n_0 ;
  wire \m_payload_i_reg[0]_0 ;
  wire m_valid_i_i_1__0_n_0;
  wire m_valid_i_i_3__0_n_0;
  wire m_valid_i_reg_0;
  wire p_1_in;
  wire p_2_in;
  wire r_match;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_rready;
  wire s_ready_i_i_1__0_n_0;
  wire s_ready_i_i_2_n_0;
  wire s_ready_i_i_3__0_n_0;
  wire sr_axi_arready;

  LUT1 #(
    .INIT(2'h1)) 
    \aresetn_d[0]_i_1 
       (.I0(aresetn),
        .O(\aresetn_d_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[0] ),
        .Q(m_valid_i_reg_0),
        .R(\aresetn_d_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \gen_axi.gen_read.s_axi_arready_i_i_2 
       (.I0(Q[32]),
        .I1(\m_payload_i_reg[0]_0 ),
        .I2(err_arready),
        .I3(\gen_read.r_state_reg[1]_0 [0]),
        .I4(\gen_read.r_state_reg[1]_0 [1]),
        .O(\gen_axi.gen_read.s_axi_arready_i_reg ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_2 
       (.I0(\gen_axi.gen_read.s_axi_rlast_i_i_4_n_0 ),
        .I1(err_rvalid),
        .I2(Q[45]),
        .I3(Q[46]),
        .O(\gen_axi.gen_read.s_axi_rlast_i_reg ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_4 
       (.I0(Q[47]),
        .I1(Q[48]),
        .I2(Q[49]),
        .I3(Q[50]),
        .I4(Q[52]),
        .I5(Q[51]),
        .O(\gen_axi.gen_read.s_axi_rlast_i_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_axi.gen_write.write_cs[1]_i_1 
       (.I0(m_valid_i_reg_0),
        .O(SR));
  LUT3 #(
    .INIT(8'h96)) 
    \gen_read.ar_cnt[1]_i_1 
       (.I0(\gen_read.ar_cnt_reg[5]_1 [1]),
        .I1(\gen_read.ar_cnt_reg[5]_1 [0]),
        .I2(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .O(\gen_read.ar_cnt_reg[5]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA96A)) 
    \gen_read.ar_cnt[2]_i_1 
       (.I0(\gen_read.ar_cnt_reg[5]_1 [2]),
        .I1(\gen_read.ar_cnt_reg[5]_1 [1]),
        .I2(\gen_read.ar_cnt_reg[5]_1 [0]),
        .I3(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .O(\gen_read.ar_cnt_reg[5]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAAA96AAA)) 
    \gen_read.ar_cnt[3]_i_1 
       (.I0(\gen_read.ar_cnt_reg[5]_1 [3]),
        .I1(\gen_read.ar_cnt_reg[5]_1 [1]),
        .I2(\gen_read.ar_cnt_reg[5]_1 [2]),
        .I3(\gen_read.ar_cnt_reg[5]_1 [0]),
        .I4(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .O(\gen_read.ar_cnt_reg[5]_0 [2]));
  LUT6 #(
    .INIT(64'hAAAAAAA96AAAAAAA)) 
    \gen_read.ar_cnt[4]_i_1 
       (.I0(\gen_read.ar_cnt_reg[5]_1 [4]),
        .I1(\gen_read.ar_cnt_reg[5]_1 [2]),
        .I2(\gen_read.ar_cnt_reg[5]_1 [3]),
        .I3(\gen_read.ar_cnt_reg[5]_1 [1]),
        .I4(\gen_read.ar_cnt_reg[5]_1 [0]),
        .I5(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .O(\gen_read.ar_cnt_reg[5]_0 [3]));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \gen_read.ar_cnt[4]_i_2 
       (.I0(\gen_read.ar_cnt_reg[3] ),
        .I1(s_axi_rready),
        .I2(m_axi_rvalid),
        .I3(m_axi_rlast),
        .I4(p_2_in),
        .O(\gen_read.ar_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000400)) 
    \gen_read.ar_cnt[5]_i_1 
       (.I0(D[30]),
        .I1(sr_axi_arready),
        .I2(D[31]),
        .I3(s_axi_arvalid),
        .I4(\gen_read.ar_cnt_reg[5]_1 [5]),
        .I5(ar_pop),
        .O(\gen_read.ar_cnt_reg[5] ));
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_read.ar_cnt[5]_i_2 
       (.I0(\gen_read.ar_cnt_reg[5]_1 [5]),
        .I1(\gen_read.ar_cnt_reg[5]_1 [3]),
        .I2(\gen_read.ar_cnt_reg[5]_1 [4]),
        .I3(\gen_read.ar_cnt_reg[5]_1 [2]),
        .I4(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .O(\gen_read.ar_cnt_reg[5]_0 [4]));
  LUT6 #(
    .INIT(64'h7000FFFF0000FF70)) 
    \gen_read.ar_cnt[5]_i_4 
       (.I0(\gen_read.ar_cnt_reg[3] ),
        .I1(m_axi_rlast_0),
        .I2(p_2_in),
        .I3(\gen_read.ar_cnt_reg[5]_1 [0]),
        .I4(\gen_read.ar_cnt_reg[5]_1 [2]),
        .I5(\gen_read.ar_cnt_reg[5]_1 [1]),
        .O(\gen_read.ar_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \gen_read.ar_cnt[5]_i_6 
       (.I0(D[30]),
        .I1(sr_axi_arready),
        .I2(D[31]),
        .I3(s_axi_arvalid),
        .I4(\gen_read.ar_cnt_reg[5]_1 [5]),
        .O(p_2_in));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4FFF)) 
    \gen_read.r_state[0]_i_1 
       (.I0(Q[32]),
        .I1(\m_payload_i_reg[0]_0 ),
        .I2(\gen_read.r_state_reg[1]_0 [1]),
        .I3(\gen_read.r_state_reg[1]_0 [0]),
        .O(\gen_read.r_state_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h44C4)) 
    \gen_read.r_state[1]_i_2 
       (.I0(\gen_read.r_state_reg[1]_0 [1]),
        .I1(\gen_read.r_state_reg[1]_0 [0]),
        .I2(\m_payload_i_reg[0]_0 ),
        .I3(Q[32]),
        .O(\gen_read.r_state_reg[1] [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_read.r_state[1]_i_3 
       (.I0(\m_payload_i_reg[0]_0 ),
        .I1(Q[32]),
        .O(\gen_read.r_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    m_axi_arvalid_INST_0
       (.I0(\gen_read.r_state_reg[1]_0 [0]),
        .I1(Q[32]),
        .I2(\m_payload_i_reg[0]_0 ),
        .O(m_axi_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_payload_i[32]_i_1__0 
       (.I0(D[30]),
        .I1(D[31]),
        .O(r_match));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[54]_i_1__0 
       (.I0(\m_payload_i_reg[0]_0 ),
        .O(\m_payload_i[54]_i_1__0_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(r_match),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[32]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[33]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[34]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[35]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[36]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[37]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[38]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[39]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[40]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[41]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[42]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[43]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[44]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[45]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[46]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[47]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[48]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[49]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[50]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[51]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[52]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[53]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[54]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[55]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[56]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[57]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1__0_n_0 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FFFFEE4EEE4E)) 
    m_valid_i_i_1__0
       (.I0(Q[32]),
        .I1(\gen_read.r_state_reg[1]_1 ),
        .I2(m_axi_arready),
        .I3(\gen_read.r_state_reg[1]_0 [0]),
        .I4(m_valid_i_i_3__0_n_0),
        .I5(sr_axi_arready),
        .O(m_valid_i_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    m_valid_i_i_3__0
       (.I0(\gen_read.ar_cnt_reg[5]_1 [5]),
        .I1(s_axi_arvalid),
        .O(m_valid_i_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__0_n_0),
        .Q(\m_payload_i_reg[0]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(sr_axi_arready),
        .I1(\gen_read.ar_cnt_reg[5]_1 [5]),
        .O(s_axi_arready));
  LUT6 #(
    .INIT(64'hFFFF0080FFFFFFFF)) 
    s_ready_i_i_1__0
       (.I0(Q[32]),
        .I1(\m_payload_i_reg[0]_0 ),
        .I2(m_axi_arready),
        .I3(\gen_read.r_state_reg[1]_0 [0]),
        .I4(s_ready_i_i_2_n_0),
        .I5(m_valid_i_reg_0),
        .O(s_ready_i_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000BBBB0F00BBBB)) 
    s_ready_i_i_2
       (.I0(\gen_read.ar_cnt_reg[5]_1 [5]),
        .I1(s_axi_arvalid),
        .I2(s_ready_i_i_3__0_n_0),
        .I3(err_arready),
        .I4(\m_payload_i_reg[0]_0 ),
        .I5(Q[32]),
        .O(s_ready_i_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    s_ready_i_i_3__0
       (.I0(\gen_read.r_state_reg[1]_0 [0]),
        .I1(\gen_read.r_state_reg[1]_0 [1]),
        .O(s_ready_i_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__0_n_0),
        .Q(sr_axi_arready),
        .R(p_1_in));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_15_axic_register_slice" *) 
module design_1_s01_mmu_1_axi_register_slice_v2_1_15_axic_register_slice_0
   (p_1_in,
    \aresetn_d_reg[1] ,
    E,
    \gen_write.aw_cnt_reg[5] ,
    \gen_write.w_mask_reg ,
    s_axi_awready,
    \gen_write.w_state_reg[0] ,
    \gen_axi.gen_write.s_axi_awready_i_reg ,
    m_axi_awvalid,
    \m_axi_awqos[3] ,
    SR,
    aclk,
    aresetn,
    D,
    s_axi_awvalid,
    Q,
    \gen_write.aw_cnt_reg[3] ,
    \gen_write.aw_cnt_reg[3]_0 ,
    m_axi_bvalid,
    s_axi_bready,
    w_mask,
    \gen_write.w_state_reg[1] ,
    \aresetn_d_reg[1]_0 ,
    \gen_write.w_state_reg[1]_0 ,
    err_awready,
    \gen_write.w_state_reg[0]_0 ,
    m_axi_awready);
  output p_1_in;
  output \aresetn_d_reg[1] ;
  output [0:0]E;
  output [4:0]\gen_write.aw_cnt_reg[5] ;
  output \gen_write.w_mask_reg ;
  output s_axi_awready;
  output [0:0]\gen_write.w_state_reg[0] ;
  output \gen_axi.gen_write.s_axi_awready_i_reg ;
  output m_axi_awvalid;
  output [57:0]\m_axi_awqos[3] ;
  input [0:0]SR;
  input aclk;
  input aresetn;
  input [57:0]D;
  input s_axi_awvalid;
  input [5:0]Q;
  input \gen_write.aw_cnt_reg[3] ;
  input \gen_write.aw_cnt_reg[3]_0 ;
  input m_axi_bvalid;
  input s_axi_bready;
  input w_mask;
  input \gen_write.w_state_reg[1] ;
  input \aresetn_d_reg[1]_0 ;
  input [1:0]\gen_write.w_state_reg[1]_0 ;
  input err_awready;
  input \gen_write.w_state_reg[0]_0 ;
  input m_axi_awready;

  wire [57:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire aw_cnt119_out;
  wire err_awready;
  wire \gen_axi.gen_write.s_axi_awready_i_reg ;
  wire \gen_write.aw_cnt[5]_i_4_n_0 ;
  wire \gen_write.aw_cnt_reg[3] ;
  wire \gen_write.aw_cnt_reg[3]_0 ;
  wire [4:0]\gen_write.aw_cnt_reg[5] ;
  wire \gen_write.w_mask_reg ;
  wire [0:0]\gen_write.w_state_reg[0] ;
  wire \gen_write.w_state_reg[0]_0 ;
  wire \gen_write.w_state_reg[1] ;
  wire [1:0]\gen_write.w_state_reg[1]_0 ;
  wire [57:0]\m_axi_awqos[3] ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bvalid;
  wire \m_payload_i[54]_i_1_n_0 ;
  wire m_valid_i_i_1_n_0;
  wire m_valid_i_i_3_n_0;
  wire m_valid_i_i_4_n_0;
  wire [32:32]mr_axi_awaddr;
  wire mr_axi_awvalid;
  wire p_18_in;
  wire p_1_in;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_ready_i_i_2__0_n_0;
  wire s_ready_i_i_3_n_0;
  wire sr_axi_awready;
  wire w_mask;
  wire w_match;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\aresetn_d_reg[1] ),
        .R(aresetn));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_write.aw_cnt[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(aw_cnt119_out),
        .O(\gen_write.aw_cnt_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_write.aw_cnt[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(aw_cnt119_out),
        .O(\gen_write.aw_cnt_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_write.aw_cnt[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(aw_cnt119_out),
        .O(\gen_write.aw_cnt_reg[5] [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_write.aw_cnt[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(aw_cnt119_out),
        .O(\gen_write.aw_cnt_reg[5] [3]));
  LUT6 #(
    .INIT(64'h007F000000000000)) 
    \gen_write.aw_cnt[4]_i_2 
       (.I0(\gen_write.aw_cnt_reg[3]_0 ),
        .I1(m_axi_bvalid),
        .I2(s_axi_bready),
        .I3(m_valid_i_i_4_n_0),
        .I4(w_match),
        .I5(sr_axi_awready),
        .O(aw_cnt119_out));
  LUT6 #(
    .INIT(64'h00000200FFFFFDFF)) 
    \gen_write.aw_cnt[5]_i_1 
       (.I0(sr_axi_awready),
        .I1(D[30]),
        .I2(D[31]),
        .I3(s_axi_awvalid),
        .I4(Q[5]),
        .I5(\gen_write.aw_cnt_reg[3] ),
        .O(E));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_write.aw_cnt[5]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\gen_write.aw_cnt[5]_i_4_n_0 ),
        .O(\gen_write.aw_cnt_reg[5] [4]));
  LUT6 #(
    .INIT(64'h7F00FFFF00007F00)) 
    \gen_write.aw_cnt[5]_i_4 
       (.I0(\gen_write.aw_cnt_reg[3]_0 ),
        .I1(m_axi_bvalid),
        .I2(s_axi_bready),
        .I3(p_18_in),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\gen_write.aw_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \gen_write.aw_cnt[5]_i_5 
       (.I0(sr_axi_awready),
        .I1(D[30]),
        .I2(D[31]),
        .I3(s_axi_awvalid),
        .I4(Q[5]),
        .O(p_18_in));
  LUT6 #(
    .INIT(64'h000D0D0D00000000)) 
    \gen_write.w_mask_i_1 
       (.I0(m_valid_i_i_4_n_0),
        .I1(w_mask),
        .I2(\gen_write.w_state_reg[1] ),
        .I3(w_match),
        .I4(s_axi_awready),
        .I5(\aresetn_d_reg[1]_0 ),
        .O(\gen_write.w_mask_reg ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h77F7)) 
    \gen_write.w_state[0]_i_1 
       (.I0(\gen_write.w_state_reg[1]_0 [1]),
        .I1(\gen_write.w_state_reg[1]_0 [0]),
        .I2(mr_axi_awvalid),
        .I3(mr_axi_awaddr),
        .O(\gen_write.w_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_write.w_state[1]_i_4 
       (.I0(mr_axi_awaddr),
        .I1(mr_axi_awvalid),
        .O(\gen_axi.gen_write.s_axi_awready_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    m_axi_awvalid_INST_0
       (.I0(mr_axi_awaddr),
        .I1(mr_axi_awvalid),
        .I2(\gen_write.w_state_reg[1]_0 [0]),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_payload_i[32]_i_1 
       (.I0(D[30]),
        .I1(D[31]),
        .O(w_match));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[54]_i_1 
       (.I0(mr_axi_awvalid),
        .O(\m_payload_i[54]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[0]),
        .Q(\m_axi_awqos[3] [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[10]),
        .Q(\m_axi_awqos[3] [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[11]),
        .Q(\m_axi_awqos[3] [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[12]),
        .Q(\m_axi_awqos[3] [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[13]),
        .Q(\m_axi_awqos[3] [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[14]),
        .Q(\m_axi_awqos[3] [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[15]),
        .Q(\m_axi_awqos[3] [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[16]),
        .Q(\m_axi_awqos[3] [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[17]),
        .Q(\m_axi_awqos[3] [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[18]),
        .Q(\m_axi_awqos[3] [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[19]),
        .Q(\m_axi_awqos[3] [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[1]),
        .Q(\m_axi_awqos[3] [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[20]),
        .Q(\m_axi_awqos[3] [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[21]),
        .Q(\m_axi_awqos[3] [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[22]),
        .Q(\m_axi_awqos[3] [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[23]),
        .Q(\m_axi_awqos[3] [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[24]),
        .Q(\m_axi_awqos[3] [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[25]),
        .Q(\m_axi_awqos[3] [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[26]),
        .Q(\m_axi_awqos[3] [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[27]),
        .Q(\m_axi_awqos[3] [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[28]),
        .Q(\m_axi_awqos[3] [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[29]),
        .Q(\m_axi_awqos[3] [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[2]),
        .Q(\m_axi_awqos[3] [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[30]),
        .Q(\m_axi_awqos[3] [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[31]),
        .Q(\m_axi_awqos[3] [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(w_match),
        .Q(mr_axi_awaddr),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[32]),
        .Q(\m_axi_awqos[3] [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[33]),
        .Q(\m_axi_awqos[3] [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[34]),
        .Q(\m_axi_awqos[3] [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[35]),
        .Q(\m_axi_awqos[3] [35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[36]),
        .Q(\m_axi_awqos[3] [36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[37]),
        .Q(\m_axi_awqos[3] [37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[38]),
        .Q(\m_axi_awqos[3] [38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[3]),
        .Q(\m_axi_awqos[3] [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[39]),
        .Q(\m_axi_awqos[3] [39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[40]),
        .Q(\m_axi_awqos[3] [40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[41]),
        .Q(\m_axi_awqos[3] [41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[42]),
        .Q(\m_axi_awqos[3] [42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[43]),
        .Q(\m_axi_awqos[3] [43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[44]),
        .Q(\m_axi_awqos[3] [44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[45]),
        .Q(\m_axi_awqos[3] [45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[46]),
        .Q(\m_axi_awqos[3] [46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[47]),
        .Q(\m_axi_awqos[3] [47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[48]),
        .Q(\m_axi_awqos[3] [48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[4]),
        .Q(\m_axi_awqos[3] [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[49]),
        .Q(\m_axi_awqos[3] [49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[50]),
        .Q(\m_axi_awqos[3] [50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[51]),
        .Q(\m_axi_awqos[3] [51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[52]),
        .Q(\m_axi_awqos[3] [52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[53]),
        .Q(\m_axi_awqos[3] [53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[54]),
        .Q(\m_axi_awqos[3] [54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[55]),
        .Q(\m_axi_awqos[3] [55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[56]),
        .Q(\m_axi_awqos[3] [56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[57]),
        .Q(\m_axi_awqos[3] [57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[5]),
        .Q(\m_axi_awqos[3] [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[6]),
        .Q(\m_axi_awqos[3] [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[7]),
        .Q(\m_axi_awqos[3] [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[8]),
        .Q(\m_axi_awqos[3] [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[54]_i_1_n_0 ),
        .D(D[9]),
        .Q(\m_axi_awqos[3] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FFFFFB51FB51)) 
    m_valid_i_i_1
       (.I0(mr_axi_awaddr),
        .I1(err_awready),
        .I2(\gen_write.w_state_reg[0]_0 ),
        .I3(m_valid_i_i_3_n_0),
        .I4(m_valid_i_i_4_n_0),
        .I5(sr_axi_awready),
        .O(m_valid_i_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    m_valid_i_i_3
       (.I0(\gen_write.w_state_reg[1]_0 [0]),
        .I1(m_axi_awready),
        .O(m_valid_i_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    m_valid_i_i_4
       (.I0(Q[5]),
        .I1(s_axi_awvalid),
        .O(m_valid_i_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(mr_axi_awvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_awready_INST_0
       (.I0(sr_axi_awready),
        .I1(Q[5]),
        .O(s_axi_awready));
  LUT1 #(
    .INIT(2'h1)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg[1] ),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'hBAFFBAAAFFFFFFFF)) 
    s_ready_i_i_2__0
       (.I0(s_ready_i_i_3_n_0),
        .I1(m_valid_i_i_3_n_0),
        .I2(mr_axi_awaddr),
        .I3(mr_axi_awvalid),
        .I4(m_valid_i_i_4_n_0),
        .I5(\aresetn_d_reg[1]_0 ),
        .O(s_ready_i_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    s_ready_i_i_3
       (.I0(err_awready),
        .I1(mr_axi_awaddr),
        .I2(mr_axi_awvalid),
        .I3(\gen_write.w_state_reg[1]_0 [1]),
        .I4(\gen_write.w_state_reg[1]_0 [0]),
        .O(s_ready_i_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_2__0_n_0),
        .Q(sr_axi_awready),
        .R(p_1_in));
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