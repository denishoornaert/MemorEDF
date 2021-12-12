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
		parameter integer PRIORITY_SIZE          = 4,
        parameter integer TDMA_ENABLED           = 1,
        parameter integer EDF_ENABLED            = 1,
        parameter integer FP_ENABLED             = 1,
        parameter integer MG_ENABLED             = 1,
        parameter integer PRNG_FIBONACCI_ENABLED = 1,
        parameter integer PRNG_GALLOIS_ENABLED   = 1,
        parameter integer AGING_ENABLED          = 1,
		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_ID_WIDTH	 = 16,
		parameter integer C_S00_AXI_DATA_WIDTH	 = 128,
		parameter integer C_S00_AXI_ADDR_WIDTH	 = 40,
		parameter integer C_S00_AXI_AWUSER_WIDTH = 16,
		parameter integer C_S00_AXI_ARUSER_WIDTH = 16,
		// Parameters of Axi Slave Bus Interface S01_AXI
        parameter integer C_S01_AXI_ID_WIDTH     = 16,
        parameter integer C_S01_AXI_DATA_WIDTH   = 128,
        parameter integer C_S01_AXI_ADDR_WIDTH   = 40,
        parameter integer C_S01_AXI_AWUSER_WIDTH = 16,
        parameter integer C_S01_AXI_ARUSER_WIDTH = 16,
		// Parameters of Axi Slave Bus Interface S02_AXI
        parameter integer C_S02_AXI_ID_WIDTH     = 16,
        parameter integer C_S02_AXI_DATA_WIDTH     = 128,
        parameter integer C_S02_AXI_ADDR_WIDTH     = 40,
        parameter integer C_S02_AXI_AWUSER_WIDTH = 16,
        parameter integer C_S02_AXI_ARUSER_WIDTH = 16,
		// Parameters of Axi Master Bus Interface M00_AXI
        parameter integer C_M00_AXI_BURST_LEN    = 4,
        parameter integer C_M00_AXI_ID_WIDTH     = 16,
        parameter integer C_M00_AXI_ADDR_WIDTH   = 40,
        parameter integer C_M00_AXI_DATA_WIDTH   = 128,
        parameter integer C_M00_AXI_AWUSER_WIDTH = 16,
        parameter integer C_M00_AXI_ARUSER_WIDTH = 16,
        parameter integer UPPER_BOUND            = 15,
        parameter integer LOWER_BOUND            = 14
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
		output reg                                  s00_axi_awready,
		input wire     [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire                                  s00_axi_wlast,
		input wire                                  s00_axi_wvalid,
		output reg                                  s00_axi_wready,
		output reg       [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_bid,
		output reg                          [1 : 0] s00_axi_bresp,
		output reg                                  s00_axi_bvalid,
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
		output reg                                  s00_axi_arready,
		output reg       [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_rid,
		output reg     [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output reg                          [1 : 0] s00_axi_rresp,
		output reg                                  s00_axi_rlast,
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
        output reg                                  s01_axi_awready,
        input wire     [C_S01_AXI_DATA_WIDTH-1 : 0] s01_axi_wdata,
        input wire [(C_S01_AXI_DATA_WIDTH/8)-1 : 0] s01_axi_wstrb,
        input wire                                  s01_axi_wlast,
        input wire                                  s01_axi_wvalid,
        output reg                                  s01_axi_wready,
        output reg       [C_S01_AXI_ID_WIDTH-1 : 0] s01_axi_bid,
        output reg                          [1 : 0] s01_axi_bresp,
        output reg                                  s01_axi_bvalid,
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
        output reg                                  s01_axi_arready,
        output reg       [C_S01_AXI_ID_WIDTH-1 : 0] s01_axi_rid,
        output reg     [C_S01_AXI_DATA_WIDTH-1 : 0] s01_axi_rdata,
        output reg                          [1 : 0] s01_axi_rresp,
        output reg                                  s01_axi_rlast,
        output reg                                  s01_axi_rvalid,
        input wire                                  s01_axi_rready,
        // Ports of Axi Slave Bus Interface S02_AXI
        input wire                                  s02_axi_aclk,
        input wire                                  s02_axi_aresetn,
        input wire       [C_S02_AXI_ID_WIDTH-1 : 0] s02_axi_awid,
        input wire     [C_S02_AXI_ADDR_WIDTH-1 : 0] s02_axi_awaddr,
        input wire                          [7 : 0] s02_axi_awlen,
        input wire                          [2 : 0] s02_axi_awsize,
        input wire                          [1 : 0] s02_axi_awburst,
        input wire                                  s02_axi_awlock,
        input wire                          [3 : 0] s02_axi_awcache,
        input wire                          [2 : 0] s02_axi_awprot,
        input wire                          [3 : 0] s02_axi_awqos,
        input wire                          [3 : 0] s02_axi_awregion,
        input wire   [C_S02_AXI_AWUSER_WIDTH-1 : 0] s02_axi_awuser,
        input wire                                  s02_axi_awvalid,
        output reg                                  s02_axi_awready,
        input wire     [C_S02_AXI_DATA_WIDTH-1 : 0] s02_axi_wdata,
        input wire [(C_S02_AXI_DATA_WIDTH/8)-1 : 0] s02_axi_wstrb,
        input wire                                  s02_axi_wlast,
        input wire                                  s02_axi_wvalid,
        output reg                                  s02_axi_wready,
        output reg       [C_S02_AXI_ID_WIDTH-1 : 0] s02_axi_bid,
        output reg                          [1 : 0] s02_axi_bresp,
        output reg                                  s02_axi_bvalid,
        input wire                                  s02_axi_bready,
        input wire       [C_S02_AXI_ID_WIDTH-1 : 0] s02_axi_arid,
        input wire     [C_S02_AXI_ADDR_WIDTH-1 : 0] s02_axi_araddr,
        input wire                          [7 : 0] s02_axi_arlen,
        input wire                          [2 : 0] s02_axi_arsize,
        input wire                          [1 : 0] s02_axi_arburst,
        input wire                                  s02_axi_arlock,
        input wire                          [3 : 0] s02_axi_arcache,
        input wire                          [2 : 0] s02_axi_arprot,
        input wire                          [3 : 0] s02_axi_arqos,
        input wire                          [3 : 0] s02_axi_arregion,
        input wire   [C_S02_AXI_ARUSER_WIDTH-1 : 0] s02_axi_aruser,
        input wire                                  s02_axi_arvalid,
        output reg                                  s02_axi_arready,
        output reg       [C_S02_AXI_ID_WIDTH-1 : 0] s02_axi_rid,
        output reg     [C_S02_AXI_DATA_WIDTH-1 : 0] s02_axi_rdata,
        output reg                          [1 : 0] s02_axi_rresp,
        output reg                                  s02_axi_rlast,
        output reg                                  s02_axi_rvalid,
        input wire                                  s02_axi_rready,
		// Ports of Axi Master Bus Interface M00_AXI
        input wire                                  m00_axi_aclk,
        input wire                                  m00_axi_aresetn,
        output reg       [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_awid,
        output reg     [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
        output reg                          [7 : 0] m00_axi_awlen,
        output reg                          [2 : 0] m00_axi_awsize,
        output reg                          [1 : 0] m00_axi_awburst,
        output reg                                  m00_axi_awlock,
        output reg                          [3 : 0] m00_axi_awcache,
        output reg                          [2 : 0] m00_axi_awprot,
        output reg                          [3 : 0] m00_axi_awqos,
        output reg   [C_M00_AXI_AWUSER_WIDTH-1 : 0] m00_axi_awuser,
        output reg                                  m00_axi_awvalid,
        input wire                                  m00_axi_awready,
        output reg     [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
        output reg   [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
        output reg                                  m00_axi_wlast,
        output reg                                  m00_axi_wvalid,
        input wire                                  m00_axi_wready,
        input wire       [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_bid,
        input wire                          [1 : 0] m00_axi_bresp,
        input wire                                  m00_axi_bvalid,
        output reg                                  m00_axi_bready,
        output reg       [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_arid,
        output reg     [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
        output reg                          [7 : 0] m00_axi_arlen,
        output reg                          [2 : 0] m00_axi_arsize,
        output reg                          [1 : 0] m00_axi_arburst,
        output reg                                  m00_axi_arlock,
        output reg                          [3 : 0] m00_axi_arcache,
        output reg                          [2 : 0] m00_axi_arprot,
        output reg                          [3 : 0] m00_axi_arqos,
        output reg   [C_M00_AXI_ARUSER_WIDTH-1 : 0] m00_axi_aruser,
        output reg                                  m00_axi_arvalid,
        input wire                                  m00_axi_arready,
        input wire       [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_rid,
        input wire     [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
        input wire                          [1 : 0] m00_axi_rresp,
        input wire                                  m00_axi_rlast,
        input wire                                  m00_axi_rvalid,
        output reg                                  m00_axi_rready,
        output wire                                 Q_0_kill_the_core,
        output wire                                 Q_1_kill_the_core,
        output wire                                 Q_2_kill_the_core,
        output wire                                 Q_3_kill_the_core
	);

	localparam NUMBER_OF_SCHEDULERS = TDMA_ENABLED + EDF_ENABLED + FP_ENABLED + MG_ENABLED + PRNG_FIBONACCI_ENABLED + PRNG_GALLOIS_ENABLED + AGING_ENABLED;

    // Internal routing
    wire                [DATA_SIZE-1 : 0] packetizer_1_to_dispatcher_packet;
    wire                                  packetizer_1_to_dispatcher_valid;
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] packetizer_1_to_dispatcher_id;
    wire                [DATA_SIZE-1 : 0] packetizer_2_to_dispatcher_packet;
    wire                                  packetizer_2_to_dispatcher_valid;
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] packetizer_2_to_dispatcher_id; 
    wire                [DATA_SIZE-1 : 0] queues_to_serializer_packet;
    wire                                  queues_to_serializer_valid;
    wire                                  serializer_to_scheduler_ready;
    wire                                  scheduler_to_serializer_activate_signal;
    wire                                  write_map_split_came_from;
    wire                                  read_map_split_came_from;

    // Issued from the configuration port
    wire          [((C_S01_AXI_DATA_WIDTH/8)*32)-1 : 0] buffers;
    wire           [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] scheduling_mode;
    wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_deadlines;
    wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_periods;
    wire [NUMBER_OF_QUEUES-1 : 0] [PRIORITY_SIZE-1 : 0] scheduler_priorities;
    wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_budgets;
    wire                          [REGISTER_SIZE-1 : 0] scheduler_hyper_period;
    wire                          [REGISTER_SIZE-1 : 0] counter_reset;

    assign scheduler_periods      = buffers[127 :   0];
    assign scheduler_deadlines    = buffers[255 : 128];
    assign scheduler_priorities   = {buffers[283 : 280], buffers[275 : 272], buffers[267 : 264], buffers[259 : 256]};
    assign scheduler_budgets      = buffers[415 : 288];
    assign scheduler_hyper_period = buffers[447 : 416];
    assign scheduling_mode        = buffers[479 : 448]; // TODO go for 32 bit (or REGISTER_SIZE)
    assign counter_reset          = buffers[511 : 480];
    
    always @(*)
    begin
        if((m00_axi_bid[C_S00_AXI_ID_WIDTH-1:C_S00_AXI_ID_WIDTH-1] == 0))//if((s00_axi_bready & m00_axi_bvalid) & (write_map_split_came_from == 0))
        begin
            // Propagate to slave port 0
            s00_axi_bvalid <= m00_axi_bvalid;
            s00_axi_bid <= {1'b0, m00_axi_bid[C_S00_AXI_ID_WIDTH-2:0]};
            s00_axi_bresp <= m00_axi_bresp;
            // Propagate to slave port 1
            s02_axi_bvalid <= 0;
            s02_axi_bid <= 0;
            s02_axi_bresp <= 0;
            // Repeat signal from adequate input
            m00_axi_bready <= s00_axi_bready;
        end
        else if((m00_axi_bid[C_S00_AXI_ID_WIDTH-1:C_S00_AXI_ID_WIDTH-1] == 1))//else if((s02_axi_bready & m00_axi_bvalid) & (write_map_split_came_from == 1))
        begin
            // Propagate to slave port 0
            s00_axi_bvalid <= 0;
            s00_axi_bid <= 0;
            s00_axi_bresp <= 0;
            // Propagate to slave port 1
            s02_axi_bvalid <= m00_axi_bvalid;
            s02_axi_bid <= {1'b0, m00_axi_bid[C_S00_AXI_ID_WIDTH-2:0]};
            s02_axi_bresp <= m00_axi_bresp;
            // Repeat signal from adequate input
            m00_axi_bready <= s02_axi_bready;
        end
        else
        begin
            // Propagate to slave port 0
            s00_axi_bvalid <= 0;
            s00_axi_bid <= 0;
            s00_axi_bresp <= 0;
            // Propagate to slave port 1
            s02_axi_bvalid <= 0;
            s02_axi_bid <= 0;
            s02_axi_bresp <= 0;
            // Repeat signal from adequate input
            m00_axi_bready <= s00_axi_bready|s02_axi_bready;
        end
    end
    
    always @(*)
    begin
        if((m00_axi_rid[C_S00_AXI_ID_WIDTH-1:C_S00_AXI_ID_WIDTH-1] == 0))//if((s00_axi_rready & m00_axi_rvalid) & (read_map_split_came_from == 0)) // & m00_axi_rlast
        begin
            // Propagate to slave port 0
            s00_axi_rvalid <= m00_axi_rvalid;
            s00_axi_rid <= {1'b0, m00_axi_rid[C_S00_AXI_ID_WIDTH-2:0]};
            s00_axi_rdata <= m00_axi_rdata;
            s00_axi_rresp <= m00_axi_rresp;
            s00_axi_rlast <= m00_axi_rlast;
            // Propagate to slave port 1
            s02_axi_rvalid <= 0;
            s02_axi_rid <= 0;
            s02_axi_rdata <= 0;
            s02_axi_rresp <= 0;
            s02_axi_rlast <= 0;
            // Repeat signal from adequate input
            m00_axi_rready <= s00_axi_rready;
        end
        else if((m00_axi_rid[C_S00_AXI_ID_WIDTH-1:C_S00_AXI_ID_WIDTH-1] == 1)) //else if((s02_axi_rready & m00_axi_rvalid) & (read_map_split_came_from == 1)) // & m00_axi_rlast
        begin
            // Propagate to slave port 0
            s00_axi_rvalid <= 0;
            s00_axi_rid <= 0;
            s00_axi_rdata <= 0;
            s00_axi_rresp <= 0;
            s00_axi_rlast <= 0;
            // Propagate to slave port 1
            s02_axi_rvalid <= m00_axi_rvalid;
            s02_axi_rid <= {1'b0, m00_axi_rid[C_S00_AXI_ID_WIDTH-2:0]};
            s02_axi_rdata <= m00_axi_rdata;
            s02_axi_rresp <= m00_axi_rresp;
            s02_axi_rlast <= m00_axi_rlast;
            // Repeat signal from adequate input
            m00_axi_rready <= s02_axi_rready;
        end
        else
        begin
            // Propagate to slave port 0
            s00_axi_rvalid <= 0;
            s00_axi_rid <= 0;
            s00_axi_rdata <= 0;
            s00_axi_rresp <= 0;
            s00_axi_rlast <= 0;
            // Propagate to slave port 1
            s02_axi_rvalid <= 0;
            s02_axi_rid <= 0;
            s02_axi_rdata <= 0;
            s02_axi_rresp <= 0;
            s02_axi_rlast <= 0;
            // Repeat signal from adequate input
            m00_axi_rready <= s00_axi_rready|s02_axi_rready;
        end
    end
	
    // Instantiation of Axi Bus Interface S00_AXI
	Packetizer # (
		.C_S_AXI_ID_WIDTH(C_S00_AXI_ID_WIDTH),
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
		.C_S_AXI_AWUSER_WIDTH(C_S00_AXI_AWUSER_WIDTH),
		.C_S_AXI_ARUSER_WIDTH(C_S00_AXI_ARUSER_WIDTH),
		.PACKETIZER_NUMBER(1'b0),
		.UPPER_BOUND(UPPER_BOUND),
		.LOWER_BOUND(LOWER_BOUND)
	) packetizer_1 (
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
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
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
		.S_AXI_RREADY(s00_axi_rready),
		// Internal IOs
		.packetOut(packetizer_1_to_dispatcher_packet),
		.packetValid(packetizer_1_to_dispatcher_valid),
		.coreId(packetizer_1_to_dispatcher_id)
	);
    // Instantiation of Axi Bus Interface S02_AXI
    Packetizer # ( 
        .C_S_AXI_ID_WIDTH(C_S02_AXI_ID_WIDTH),
        .C_S_AXI_DATA_WIDTH(C_S02_AXI_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH(C_S02_AXI_ADDR_WIDTH),
        .C_S_AXI_AWUSER_WIDTH(C_S02_AXI_AWUSER_WIDTH),
        .C_S_AXI_ARUSER_WIDTH(C_S02_AXI_ARUSER_WIDTH),
        .PACKETIZER_NUMBER(1'b1),
        .UPPER_BOUND(UPPER_BOUND),
        .LOWER_BOUND(LOWER_BOUND)
    ) packetizer_2 (
        .S_AXI_ACLK(s02_axi_aclk),
        .S_AXI_ARESETN(s02_axi_aresetn),
        .S_AXI_AWID(s02_axi_awid),
        .S_AXI_AWADDR(s02_axi_awaddr),
        .S_AXI_AWLEN(s02_axi_awlen),
        .S_AXI_AWSIZE(s02_axi_awsize),
        .S_AXI_AWBURST(s02_axi_awburst),
        .S_AXI_AWLOCK(s02_axi_awlock),
        .S_AXI_AWCACHE(s02_axi_awcache),
        .S_AXI_AWPROT(s02_axi_awprot),
        .S_AXI_AWQOS(s02_axi_awqos),
        .S_AXI_AWREGION(s02_axi_awregion),
        .S_AXI_AWUSER(s02_axi_awuser),
        .S_AXI_AWVALID(s02_axi_awvalid),
        .S_AXI_AWREADY(s02_axi_awready),
        .S_AXI_WDATA(s02_axi_wdata),
        .S_AXI_WSTRB(s02_axi_wstrb),
        .S_AXI_WLAST(s02_axi_wlast),
        .S_AXI_WVALID(s02_axi_wvalid),
        .S_AXI_WREADY(s02_axi_wready),
        .S_AXI_ARID(s02_axi_arid),
        .S_AXI_ARADDR(s02_axi_araddr),
        .S_AXI_ARLEN(s02_axi_arlen),
        .S_AXI_ARSIZE(s02_axi_arsize),
        .S_AXI_ARBURST(s02_axi_arburst),
        .S_AXI_ARLOCK(s02_axi_arlock),
        .S_AXI_ARCACHE(s02_axi_arcache),
        .S_AXI_ARPROT(s02_axi_arprot),
        .S_AXI_ARQOS(s02_axi_arqos),
        .S_AXI_ARREGION(s02_axi_arregion),
        .S_AXI_ARUSER(s02_axi_aruser),
        .S_AXI_ARVALID(s02_axi_arvalid),
        .S_AXI_ARREADY(s02_axi_arready),
        .S_AXI_RREADY(s02_axi_rready),
        // Internal IOs
        .packetOut(packetizer_2_to_dispatcher_packet),
        .packetValid(packetizer_2_to_dispatcher_valid),
        .coreId(packetizer_2_to_dispatcher_id)
    );
	
	ConfigurationPort # ( 
        .C_S_AXI_ID_WIDTH(C_S01_AXI_ID_WIDTH),
        .C_S_AXI_DATA_WIDTH(C_S01_AXI_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH(C_S01_AXI_ADDR_WIDTH),
        .C_S_AXI_AWUSER_WIDTH(C_S01_AXI_AWUSER_WIDTH),
        .C_S_AXI_ARUSER_WIDTH(C_S01_AXI_ARUSER_WIDTH)
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
        .S_AXI_WVALID(s01_axi_wvalid),
        .S_AXI_WREADY(s01_axi_wready),
        .S_AXI_BID(s01_axi_bid),
        .S_AXI_BRESP(s01_axi_bresp),
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
    ) serializer (
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
        .M_AXI_WVALID(m00_axi_wvalid),
        .M_AXI_WREADY(m00_axi_wready),
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
        .M_AXI_RLAST(m00_axi_rlast),
        // Internal decoupled io
        .valid(queues_to_serializer_valid),
        .ready(serializer_to_scheduler_ready),
        .payload(queues_to_serializer_packet)
    );

    NonAXIDomain #(
        // Global parameters
		.NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
		.DATA_SIZE(DATA_SIZE),
		.QUEUE_LENGTH(QUEUE_LENGTH),
        .REGISTER_SIZE(REGISTER_SIZE),
        .PRIORITY_SIZE(PRIORITY_SIZE),
		// Available/enabled schdulers
        .TDMA_ENABLED(TDMA_ENABLED),
        .EDF_ENABLED(EDF_ENABLED),
        .FP_ENABLED(FP_ENABLED),
        .MG_ENABLED(MG_ENABLED),
        .NUMBER_OF_SCHEDULERS(NUMBER_OF_SCHEDULERS)
    ) nonaxidomain (
        .clock(m00_axi_aclk),
        .reset(!m00_axi_aresetn),
        .packetizer_1_to_dispatcher_packet(packetizer_1_to_dispatcher_packet),
        .packetizer_1_to_dispatcher_valid(packetizer_1_to_dispatcher_valid),
        .packetizer_1_to_dispatcher_id(packetizer_1_to_dispatcher_id),
        .packetizer_2_to_dispatcher_packet(packetizer_2_to_dispatcher_packet),
        .packetizer_2_to_dispatcher_valid(packetizer_2_to_dispatcher_valid),
        .packetizer_2_to_dispatcher_id(packetizer_2_to_dispatcher_id),
        .scheduling_mode(scheduling_mode),
        .scheduler_deadlines(scheduler_deadlines),
        .scheduler_periods(scheduler_periods),
        .scheduler_priorities(scheduler_priorities),
        .scheduler_budgets(scheduler_budgets),
        .scheduler_hyper_period(scheduler_hyper_period),
        .scheduler_counter_reset(counter_reset),
        .queues_thresholds(scheduler_deadlines),
        .queues_to_serializer_valid(queues_to_serializer_valid),
        .serializer_to_scheduler_ready(serializer_to_scheduler_ready),
        .queues_to_serializer_packet(queues_to_serializer_packet),
        .Q_0_kill_the_core(Q_0_kill_the_core),
        .Q_1_kill_the_core(Q_1_kill_the_core),
        .Q_2_kill_the_core(Q_2_kill_the_core),
        .Q_3_kill_the_core(Q_3_kill_the_core)
    );

	endmodule
