`timescale 1 ns / 1 ps

//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: Root
// Module Name: Root
// Project Name: MemorEDF
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module MemorEDF #
	(
		// Global parameters
		parameter integer CONFIGURATION_PORT_ENABLED = 1,
		parameter integer NUMBER_OF_QUEUES       = 4,
		parameter integer DATA_SIZE              = (102+(4*16)+(4*128)),
		parameter integer QUEUE_LENGTH           = 16,
		// Available/enabled schdulers
		parameter integer REGISTER_SIZE          = 32,
        parameter integer TDMA_ENABLED           = 1,
        parameter integer EDF_ENABLED            = 1,
		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_ID_WIDTH	 = 16,
		parameter integer C_S00_AXI_DATA_WIDTH	 = 128,
		parameter integer C_S00_AXI_ADDR_WIDTH	 = 40,
		parameter integer C_S00_AXI_AWUSER_WIDTH = 16,
		parameter integer C_S00_AXI_ARUSER_WIDTH = 16,
//		parameter integer C_S00_AXI_WUSER_WIDTH	 = 0,
//		parameter integer C_S00_AXI_RUSER_WIDTH	 = 0,
//		parameter integer C_S00_AXI_BUSER_WIDTH	 = 0,
		// Parameters of Axi Slave Bus Interface S01_AXI
        parameter integer C_S01_AXI_ID_WIDTH     = 16,
        parameter integer C_S01_AXI_DATA_WIDTH   = 128,
        parameter integer C_S01_AXI_ADDR_WIDTH   = 40,
        parameter integer C_S01_AXI_AWUSER_WIDTH = 16,
        parameter integer C_S01_AXI_ARUSER_WIDTH = 16,
//        parameter integer C_S01_AXI_WUSER_WIDTH  = 0,
//        parameter integer C_S01_AXI_RUSER_WIDTH  = 0,
//        parameter integer C_S01_AXI_BUSER_WIDTH  = 0,
		// Parameters of Axi Master Bus Interface M00_AXI
        parameter integer C_M00_AXI_BURST_LEN    = 1,
        parameter integer C_M00_AXI_ID_WIDTH     = 16,
        parameter integer C_M00_AXI_ADDR_WIDTH   = 40,
        parameter integer C_M00_AXI_DATA_WIDTH   = 128,
        parameter integer C_M00_AXI_AWUSER_WIDTH = 16,
        parameter integer C_M00_AXI_ARUSER_WIDTH = 16
//        parameter integer C_M00_AXI_WUSER_WIDTH  = 0,
//        parameter integer C_M00_AXI_RUSER_WIDTH  = 0,
//        parameter integer C_M00_AXI_BUSER_WIDTH  = 0
	)
	(
		// Ports of Axi Slave Bus Interface S00_AXI
		input wire                                  s00_axi_aclk,
		input wire                                  s00_axi_aresetn,
		input wire       [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_awid,
		input wire     [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire                          [7 : 0] s00_axi_awlen,
		input wire                          [2 : 0] s00_axi_awsize,
		input wire                          [1 : 0] s00_axi_awburst,
		input wire                                  s00_axi_awlock,
		input wire                          [3 : 0] s00_axi_awcache,
		input wire                          [2 : 0] s00_axi_awprot,
		input wire                          [3 : 0] s00_axi_awqos,
		input wire                          [3 : 0] s00_axi_awregion,
		input wire   [C_S00_AXI_AWUSER_WIDTH-1 : 0] s00_axi_awuser,
		input wire                                  s00_axi_awvalid,
		output wire                                 s00_axi_awready,
		input wire     [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire                                  s00_axi_wlast,
//		input wire    [C_S00_AXI_WUSER_WIDTH-1 : 0] s00_axi_wuser,
		input wire                                  s00_axi_wvalid,
		output wire                                 s00_axi_wready,
		output wire      [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_bid,
		output wire                         [1 : 0] s00_axi_bresp,
//		output wire   [C_S00_AXI_BUSER_WIDTH-1 : 0] s00_axi_buser,
		output wire                                 s00_axi_bvalid,
		input wire                                  s00_axi_bready,
		input wire       [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_arid,
		input wire     [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire                          [7 : 0] s00_axi_arlen,
		input wire                          [2 : 0] s00_axi_arsize,
		input wire                          [1 : 0] s00_axi_arburst,
		input wire                                  s00_axi_arlock,
		input wire                          [3 : 0] s00_axi_arcache,
		input wire                          [2 : 0] s00_axi_arprot,
		input wire                          [3 : 0] s00_axi_arqos,
		input wire                          [3 : 0] s00_axi_arregion,
		input wire   [C_S00_AXI_ARUSER_WIDTH-1 : 0] s00_axi_aruser,
		input wire                                  s00_axi_arvalid,
		output wire                                 s00_axi_arready,
		output reg       [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_rid,
		output reg     [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output reg                          [1 : 0] s00_axi_rresp,
		output reg                                  s00_axi_rlast,
//		output wire   [C_S00_AXI_RUSER_WIDTH-1 : 0] s00_axi_ruser,
		output reg                                  s00_axi_rvalid,
		input wire                                  s00_axi_rready,
		// Ports of Axi Slave Bus Interface S01_AXI
        input wire                                  s01_axi_aclk,
        input wire                                  s01_axi_aresetn,
        input wire       [C_S01_AXI_ID_WIDTH-1 : 0] s01_axi_awid,
        input wire     [C_S01_AXI_ADDR_WIDTH-1 : 0] s01_axi_awaddr,
        input wire                          [7 : 0] s01_axi_awlen,
        input wire                          [2 : 0] s01_axi_awsize,
        input wire                          [1 : 0] s01_axi_awburst,
        input wire                                  s01_axi_awlock,
        input wire                          [3 : 0] s01_axi_awcache,
        input wire                          [2 : 0] s01_axi_awprot,
        input wire                          [3 : 0] s01_axi_awqos,
        input wire                          [3 : 0] s01_axi_awregion,
        input wire   [C_S01_AXI_AWUSER_WIDTH-1 : 0] s01_axi_awuser,
        input wire                                  s01_axi_awvalid,
        output wire                                 s01_axi_awready,
        input wire     [C_S01_AXI_DATA_WIDTH-1 : 0] s01_axi_wdata,
        input wire [(C_S01_AXI_DATA_WIDTH/8)-1 : 0] s01_axi_wstrb,
        input wire                                  s01_axi_wlast,
//        input wire    [C_S01_AXI_WUSER_WIDTH-1 : 0] s01_axi_wuser,
        input wire                                  s01_axi_wvalid,
        output wire                                 s01_axi_wready,
        output wire      [C_S01_AXI_ID_WIDTH-1 : 0] s01_axi_bid,
        output wire                         [1 : 0] s01_axi_bresp,
//        output wire   [C_S01_AXI_BUSER_WIDTH-1 : 0] s01_axi_buser,
        output wire                                 s01_axi_bvalid,
        input wire                                  s01_axi_bready,
        input wire       [C_S01_AXI_ID_WIDTH-1 : 0] s01_axi_arid,
        input wire     [C_S01_AXI_ADDR_WIDTH-1 : 0] s01_axi_araddr,
        input wire                          [7 : 0] s01_axi_arlen,
        input wire                          [2 : 0] s01_axi_arsize,
        input wire                          [1 : 0] s01_axi_arburst,
        input wire                                  s01_axi_arlock,
        input wire                          [3 : 0] s01_axi_arcache,
        input wire                          [2 : 0] s01_axi_arprot,
        input wire                          [3 : 0] s01_axi_arqos,
        input wire                          [3 : 0] s01_axi_arregion,
        input wire   [C_S01_AXI_ARUSER_WIDTH-1 : 0] s01_axi_aruser,
        input wire                                  s01_axi_arvalid,
        output wire                                 s01_axi_arready,
        output wire      [C_S01_AXI_ID_WIDTH-1 : 0] s01_axi_rid,
        output wire    [C_S01_AXI_DATA_WIDTH-1 : 0] s01_axi_rdata,
        output wire                         [1 : 0] s01_axi_rresp,
        output wire                                 s01_axi_rlast,
//        output wire   [C_S01_AXI_RUSER_WIDTH-1 : 0] s01_axi_ruser,
        output wire                                 s01_axi_rvalid,
        input wire                                  s01_axi_rready,
		// Ports of Axi Master Bus Interface M00_AXI
        input wire                                  m00_axi_aclk,
        input wire                                  m00_axi_aresetn,
        output wire      [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_awid,
        output wire    [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
        output wire                         [7 : 0] m00_axi_awlen,
        output wire                         [2 : 0] m00_axi_awsize,
        output wire                         [1 : 0] m00_axi_awburst,
        output wire                                 m00_axi_awlock,
        output wire                         [3 : 0] m00_axi_awcache,
        output wire                         [2 : 0] m00_axi_awprot,
        output wire                         [3 : 0] m00_axi_awqos,
        output wire  [C_M00_AXI_AWUSER_WIDTH-1 : 0] m00_axi_awuser,
        output wire                                 m00_axi_awvalid,
        input wire                                  m00_axi_awready,
        output wire    [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
        output wire  [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
        output wire                                 m00_axi_wlast,
//        output wire   [C_M00_AXI_WUSER_WIDTH-1 : 0] m00_axi_wuser,
        output wire                                 m00_axi_wvalid,
        input wire                                  m00_axi_wready,
        input wire       [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_bid,
        input wire                          [1 : 0] m00_axi_bresp,
//        input wire    [C_M00_AXI_BUSER_WIDTH-1 : 0] m00_axi_buser,
        input wire                                  m00_axi_bvalid,
        output wire                                 m00_axi_bready,
        output wire      [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_arid,
        output wire    [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
        output wire                         [7 : 0] m00_axi_arlen,
        output wire                         [2 : 0] m00_axi_arsize,
        output wire                         [1 : 0] m00_axi_arburst,
        output wire                                 m00_axi_arlock,
        output wire                         [3 : 0] m00_axi_arcache,
        output wire                         [2 : 0] m00_axi_arprot,
        output wire                         [3 : 0] m00_axi_arqos,
        output wire  [C_M00_AXI_ARUSER_WIDTH-1 : 0] m00_axi_aruser,
        output wire                                 m00_axi_arvalid,
        input wire                                  m00_axi_arready,
        input wire       [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_rid,
        input wire     [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
        input wire                          [1 : 0] m00_axi_rresp,
        input wire                                  m00_axi_rlast,
//        input wire    [C_M00_AXI_RUSER_WIDTH-1 : 0] m00_axi_ruser,
        input wire                                  m00_axi_rvalid,
        output reg                                  m00_axi_rready
	);
	
	localparam NUMBER_OF_SCHEDULERS = TDMA_ENABLED+EDF_ENABLED;
	
    // Internal routing
    wire            [DATA_SIZE-1 : 0] packetizer_to_dispatcher_packet;
    wire                              packetizer_to_dispatcher_valid;
    wire   [C_S00_AXI_ID_WIDTH-1 : 0] packetizer_to_dispatcher_id;
    wire            [DATA_SIZE-1 : 0] selector_to_serializer_packet;
    wire                              serializer_to_scheduler_consumed;
    wire                              scheduler_to_serializer_activate_signal;
    wire                              nonaxi_to_packetizer_stall;
    
    // Issued from the configuration port
    wire          [((C_S01_AXI_DATA_WIDTH/8)*32)-1 : 0] buffers;
    wire           [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] scheduling_mode;
    wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_deadlines;
    wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_periods;
    assign scheduler_periods = buffers[(1*C_S01_AXI_DATA_WIDTH)-1 : 0];
    assign scheduler_deadlines = buffers[(2*C_S01_AXI_DATA_WIDTH)-1 : (1*C_S01_AXI_DATA_WIDTH)];
    assign scheduling_mode = buffers[(2*C_S01_AXI_DATA_WIDTH)+$clog2(NUMBER_OF_SCHEDULERS)-1 : (2*C_S01_AXI_DATA_WIDTH)];
    
    // Pass-through channels
    // Response channel
    assign s00_axi_bvalid = m00_axi_bvalid;
    assign m00_axi_bready = s00_axi_bready;
    assign s00_axi_bid = m00_axi_bid;
    assign s00_axi_bresp = m00_axi_bresp;
    // Read response channel
    assign m00_axi_rready = s00_axi_rready;
    assign s00_axi_rvalid = m00_axi_rvalid;
    assign s00_axi_rid = m00_axi_rid;
    assign s00_axi_rdata = m00_axi_rdata;
    assign s00_axi_rresp = m00_axi_rresp;
    assign s00_axi_rlast = m00_axi_rlast;
	
    // Instantiation of Axi Bus Interface S00_AXI
	Packetizer # ( 
		.C_S_AXI_ID_WIDTH(C_S00_AXI_ID_WIDTH),
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
		.C_S_AXI_AWUSER_WIDTH(C_S00_AXI_AWUSER_WIDTH),
		.C_S_AXI_ARUSER_WIDTH(C_S00_AXI_ARUSER_WIDTH)
//		.C_S_AXI_WUSER_WIDTH(C_S00_AXI_WUSER_WIDTH),
//		.C_S_AXI_RUSER_WIDTH(C_S00_AXI_RUSER_WIDTH),
//		.C_S_AXI_BUSER_WIDTH(C_S00_AXI_BUSER_WIDTH)
	) packetizer (
	    // Out of module/IP IOs
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWID(s00_axi_awid),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWLEN(s00_axi_awlen),
		.S_AXI_AWSIZE(s00_axi_awsize),
		.S_AXI_AWBURST(s00_axi_awburst),
		.S_AXI_AWLOCK(s00_axi_awlock),
		.S_AXI_AWCACHE(s00_axi_awcache),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWQOS(s00_axi_awqos),
		.S_AXI_AWREGION(s00_axi_awregion),
		.S_AXI_AWUSER(s00_axi_awuser),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WLAST(s00_axi_wlast),
//		.S_AXI_WUSER(s00_axi_wuser),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
//		.S_AXI_BID(s00_axi_bid),
//		.S_AXI_BRESP(s00_axi_bresp),
//		.S_AXI_BUSER(bp_axi_buser),
//		.S_AXI_BVALID(s00_axi_bvalid),
//		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARID(s00_axi_arid),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARLEN(s00_axi_arlen),
		.S_AXI_ARSIZE(s00_axi_arsize),
		.S_AXI_ARBURST(s00_axi_arburst),
		.S_AXI_ARLOCK(s00_axi_arlock),
		.S_AXI_ARCACHE(s00_axi_arcache),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARQOS(s00_axi_arqos),
		.S_AXI_ARREGION(s00_axi_arregion),
		.S_AXI_ARUSER(s00_axi_aruser),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
//		.S_AXI_RID(bp_axi_rid),
//		.S_AXI_RDATA(bp_axi_rdata),
//		.S_AXI_RRESP(bp_axi_rresp),
//		.S_AXI_RLAST(bp_axi_rlast),
//		.S_AXI_RUSER(bp_axi_ruser),
//		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		// Internal IOs
		.packetOut(packetizer_to_dispatcher_packet),
		.packetValid(packetizer_to_dispatcher_valid),
		.coreId(packetizer_to_dispatcher_id),
		.stall(nonaxi_to_packetizer_stall)
	);
	
	ConfigurationPort # ( 
        .C_S_AXI_ID_WIDTH(C_S01_AXI_ID_WIDTH),
        .C_S_AXI_DATA_WIDTH(C_S01_AXI_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH(C_S01_AXI_ADDR_WIDTH),
        .C_S_AXI_AWUSER_WIDTH(C_S01_AXI_AWUSER_WIDTH),
        .C_S_AXI_ARUSER_WIDTH(C_S01_AXI_ARUSER_WIDTH)
//        .C_S_AXI_WUSER_WIDTH(C_S01_AXI_WUSER_WIDTH),
//        .C_S_AXI_RUSER_WIDTH(C_S01_AXI_RUSER_WIDTH),
//        .C_S_AXI_BUSER_WIDTH(C_S01_AXI_BUSER_WIDTH)
    ) configurationport (
        .S_AXI_ACLK(s01_axi_aclk),
        .S_AXI_ARESETN(s01_axi_aresetn),
        .S_AXI_AWID(s01_axi_awid),
        .S_AXI_AWADDR(s01_axi_awaddr),
        .S_AXI_AWLEN(s01_axi_awlen),
        .S_AXI_AWSIZE(s01_axi_awsize),
        .S_AXI_AWBURST(s01_axi_awburst),
        .S_AXI_AWLOCK(s01_axi_awlock),
        .S_AXI_AWCACHE(s01_axi_awcache),
        .S_AXI_AWPROT(s01_axi_awprot),
        .S_AXI_AWQOS(s01_axi_awqos),
        .S_AXI_AWREGION(s01_axi_awregion),
        .S_AXI_AWUSER(s01_axi_awuser),
        .S_AXI_AWVALID(s01_axi_awvalid),
        .S_AXI_AWREADY(s01_axi_awready),
        .S_AXI_WDATA(s01_axi_wdata),
        .S_AXI_WSTRB(s01_axi_wstrb),
        .S_AXI_WLAST(s01_axi_wlast),
//        .S_AXI_WUSER(s01_axi_wuser),
        .S_AXI_WVALID(s01_axi_wvalid),
        .S_AXI_WREADY(s01_axi_wready),
        .S_AXI_BID(s01_axi_bid),
        .S_AXI_BRESP(s01_axi_bresp),
//        .S_AXI_BUSER(s01_axi_buser),
        .S_AXI_BVALID(s01_axi_bvalid),
        .S_AXI_BREADY(s01_axi_bready),
        .S_AXI_ARID(s01_axi_arid),
        .S_AXI_ARADDR(s01_axi_araddr),
        .S_AXI_ARLEN(s01_axi_arlen),
        .S_AXI_ARSIZE(s01_axi_arsize),
        .S_AXI_ARBURST(s01_axi_arburst),
        .S_AXI_ARLOCK(s01_axi_arlock),
        .S_AXI_ARCACHE(s01_axi_arcache),
        .S_AXI_ARPROT(s01_axi_arprot),
        .S_AXI_ARQOS(s01_axi_arqos),
        .S_AXI_ARREGION(s01_axi_arregion),
        .S_AXI_ARUSER(s01_axi_aruser),
        .S_AXI_ARVALID(s01_axi_arvalid),
        .S_AXI_ARREADY(s01_axi_arready),
        .S_AXI_RID(s01_axi_rid),
        .S_AXI_RDATA(s01_axi_rdata),
        .S_AXI_RRESP(s01_axi_rresp),
        .S_AXI_RLAST(s01_axi_rlast),
//        .S_AXI_RUSER(s01_axi_ruser),
        .S_AXI_RVALID(s01_axi_rvalid),
        .S_AXI_RREADY(s01_axi_rready),
        .memory_out(buffers)
    );
    
    // Instantiation of Axi Bus Interface M00_AXI
    Serializer # (
        .C_M_AXI_BURST_LEN(C_M00_AXI_BURST_LEN),
        .C_M_AXI_ID_WIDTH(C_M00_AXI_ID_WIDTH),
        .C_M_AXI_ADDR_WIDTH(C_M00_AXI_ADDR_WIDTH),
        .C_M_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
        .C_M_AXI_AWUSER_WIDTH(C_M00_AXI_AWUSER_WIDTH),
        .C_M_AXI_ARUSER_WIDTH(C_M00_AXI_ARUSER_WIDTH)
//        .C_M_AXI_WUSER_WIDTH(C_M00_AXI_WUSER_WIDTH),
//        .C_M_AXI_RUSER_WIDTH(C_M00_AXI_RUSER_WIDTH),
//        .C_M_AXI_BUSER_WIDTH(C_M00_AXI_BUSER_WIDTH)
    ) serializer (
        .INIT_AXI_TXN(scheduler_to_serializer_activate_signal),
        .M_AXI_ACLK(m00_axi_aclk),
        .M_AXI_ARESETN(m00_axi_aresetn),
        .M_AXI_AWID(m00_axi_awid),
        .M_AXI_AWADDR(m00_axi_awaddr),
        .M_AXI_AWLEN(m00_axi_awlen),
        .M_AXI_AWSIZE(m00_axi_awsize),
        .M_AXI_AWBURST(m00_axi_awburst),
        .M_AXI_AWLOCK(m00_axi_awlock),
        .M_AXI_AWCACHE(m00_axi_awcache),
        .M_AXI_AWPROT(m00_axi_awprot),
        .M_AXI_AWQOS(m00_axi_awqos),
        .M_AXI_AWUSER(m00_axi_awuser),
        .M_AXI_AWVALID(m00_axi_awvalid),
        .M_AXI_AWREADY(m00_axi_awready),
        .M_AXI_WDATA(m00_axi_wdata),
        .M_AXI_WSTRB(m00_axi_wstrb),
        .M_AXI_WLAST(m00_axi_wlast),
//        .M_AXI_WUSER(m00_axi_wuser),
        .M_AXI_WVALID(m00_axi_wvalid),
        .M_AXI_WREADY(m00_axi_wready),
//        .M_AXI_BID(m00_axi_bid),
//        .M_AXI_BRESP(m00_axi_bresp),
//        .M_AXI_BUSER(bp_axi_buser),
//        .M_AXI_BVALID(m00_axi_bvalid),
//        .M_AXI_BREADY(m00_axi_bready),
        .M_AXI_ARID(m00_axi_arid),
        .M_AXI_ARADDR(m00_axi_araddr),
        .M_AXI_ARLEN(m00_axi_arlen),
        .M_AXI_ARSIZE(m00_axi_arsize),
        .M_AXI_ARBURST(m00_axi_arburst),
        .M_AXI_ARLOCK(m00_axi_arlock),
        .M_AXI_ARCACHE(m00_axi_arcache),
        .M_AXI_ARPROT(m00_axi_arprot),
        .M_AXI_ARQOS(m00_axi_arqos),
        .M_AXI_ARUSER(m00_axi_aruser),
        .M_AXI_ARVALID(m00_axi_arvalid),
        .M_AXI_ARREADY(m00_axi_arready),
//        .M_AXI_RID(bp_axi_rid),
//        .M_AXI_RDATA(bp_axi_rdata),
//        .M_AXI_RRESP(bp_axi_rresp),
        .M_AXI_RLAST(m00_axi_rlast), // bp_axi_rlast
//        .M_AXI_RUSER(bp_axi_ruser),
//        .M_AXI_RVALID(m00_axi_rvalid),
//        .M_AXI_RREADY(bp_axi_rready),
        .packet_in(selector_to_serializer_packet),
        .packetConsumed(serializer_to_scheduler_consumed)
    );

    NonAXIDomain #(
        // Global parameters
		.NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
		.DATA_SIZE(DATA_SIZE),
		.QUEUE_LENGTH(QUEUE_LENGTH),
        .REGISTER_SIZE(REGISTER_SIZE),
		// Available/enabled schdulers
        .TDMA_ENABLED(1),
        .EDF_ENABLED(1),
        .NUMBER_OF_SCHEDULERS(2)
    ) nonaxidomain (
        .clock(m00_axi_aclk),
        .reset(!m00_axi_aresetn),
        .packetizer_to_dispatcher_packet(packetizer_to_dispatcher_packet),
        .packetizer_to_dispatcher_valid(packetizer_to_dispatcher_valid),
        .packetizer_to_dispatcher_id(packetizer_to_dispatcher_id),
        .scheduling_mode(scheduling_mode),
        .scheduler_deadlines(scheduler_deadlines),
        .scheduler_periods(scheduler_periods),
        .selector_to_serializer_packet(selector_to_serializer_packet),
        .serializer_to_scheduler_consumed(serializer_to_scheduler_consumed),
        .scheduler_to_serializer_activate_signal(scheduler_to_serializer_activate_signal),
        .stall(nonaxi_to_packetizer_stall)
    );

	endmodule
