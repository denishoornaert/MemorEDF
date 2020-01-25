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
		parameter integer NUMBER_OF_QUEUES       = 4,
		parameter integer DATA_SIZE              = 5*128,
		parameter integer QUEUE_LENGTH           = 16,
		// Available/enabled schdulers
		parameter integer REGISTER_SIZE          = 32,
        parameter integer NUMBER_OF_SCHEDULERS   = 2,
		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_ID_WIDTH	 = 1,
		parameter integer C_S00_AXI_DATA_WIDTH	 = 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	 = 7,
		parameter integer C_S00_AXI_AWUSER_WIDTH = 0,
		parameter integer C_S00_AXI_ARUSER_WIDTH = 0,
		parameter integer C_S00_AXI_WUSER_WIDTH	 = 0,
		parameter integer C_S00_AXI_RUSER_WIDTH	 = 0,
		parameter integer C_S00_AXI_BUSER_WIDTH	 = 0
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_awid,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [7 : 0] s00_axi_awlen,
		input wire [2 : 0] s00_axi_awsize,
		input wire [1 : 0] s00_axi_awburst,
		input wire  s00_axi_awlock,
		input wire [3 : 0] s00_axi_awcache,
		input wire [2 : 0] s00_axi_awprot,
		input wire [3 : 0] s00_axi_awqos,
		input wire [3 : 0] s00_axi_awregion,
		input wire [C_S00_AXI_AWUSER_WIDTH-1 : 0] s00_axi_awuser,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wlast,
		input wire [C_S00_AXI_WUSER_WIDTH-1 : 0] s00_axi_wuser,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_bid,
		output wire [1 : 0] s00_axi_bresp,
		output wire [C_S00_AXI_BUSER_WIDTH-1 : 0] s00_axi_buser,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_arid,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [7 : 0] s00_axi_arlen,
		input wire [2 : 0] s00_axi_arsize,
		input wire [1 : 0] s00_axi_arburst,
		input wire  s00_axi_arlock,
		input wire [3 : 0] s00_axi_arcache,
		input wire [2 : 0] s00_axi_arprot,
		input wire [3 : 0] s00_axi_arqos,
		input wire [3 : 0] s00_axi_arregion,
		input wire [C_S00_AXI_ARUSER_WIDTH-1 : 0] s00_axi_aruser,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_rid,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rlast,
		output wire [C_S00_AXI_RUSER_WIDTH-1 : 0] s00_axi_ruser,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
	
	
    // Internal routing
    wire [C_S00_AXI_DATA_WIDTH-1 : 0] packetizer_to_dispatcher_packet [0 : 5-1];
    wire                              packetizer_to_dispatcher_valid;
    wire                      [1 : 0] packetizer_to_dispatcher_id;
    wire            [DATA_SIZE-1 : 0] dispatcher_to_queues_packets [NUMBER_OF_QUEUES];
    wire     [NUMBER_OF_QUEUES-1 : 0] dispatcher_to_queues_valid;
    wire     [NUMBER_OF_QUEUES-1 : 0] serializer_to_queues_consumed;
    wire            [DATA_SIZE-1 : 0] queues_to_selector_packets [NUMBER_OF_QUEUES];
    wire     [NUMBER_OF_QUEUES-1 : 0] empty;
    wire     [NUMBER_OF_QUEUES-1 : 0] full;
    wire     [NUMBER_OF_QUEUES-1 : 0] scheduler_to_selector_id;
    wire            [DATA_SIZE-1 : 0] selector_to_serializer_packet;
    
    reg   [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] scheduling_mode;
    reg                  [REGISTER_SIZE-1 : 0] scheduler_deadlines [NUMBER_OF_QUEUES];
    reg                  [REGISTER_SIZE-1 : 0] scheduler_periods [NUMBER_OF_QUEUES];
	
    // Instantiation of Axi Bus Interface S00_AXI
	Packetizer # ( 
		.C_S_AXI_ID_WIDTH(C_S00_AXI_ID_WIDTH),
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
		.C_S_AXI_AWUSER_WIDTH(C_S00_AXI_AWUSER_WIDTH),
		.C_S_AXI_ARUSER_WIDTH(C_S00_AXI_ARUSER_WIDTH),
		.C_S_AXI_WUSER_WIDTH(C_S00_AXI_WUSER_WIDTH),
		.C_S_AXI_RUSER_WIDTH(C_S00_AXI_RUSER_WIDTH),
		.C_S_AXI_BUSER_WIDTH(C_S00_AXI_BUSER_WIDTH)
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
		.S_AXI_WUSER(s00_axi_wuser),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BID(s00_axi_bid),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BUSER(s00_axi_buser),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
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
		.S_AXI_RID(s00_axi_rid),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RLAST(s00_axi_rlast),
		.S_AXI_RUSER(s00_axi_ruser),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		// Internal IOs
		.packetOut(packetizer_to_dispatcher_packet),
		.packetValid(packetizer_to_dispatcher_valid),
		.coreId(packetizer_to_dispatcher_id)
	);

    // Instantiation of the Dispatcher module
    Dispatcher # (
        .OUTPUTS(NUMBER_OF_QUEUES),
        .INPUT_SIZE(DATA_SIZE)
    ) dispatcher (
        .clock(s00_axi_aclk),
        .reset(~s00_axi_aresetn),
        .packetIn(packetizer_to_dispatcher_packet),
        .valid(packetizer_to_dispatcher_valid),
        .id(packetizer_to_dispatcher_id),
        .packetsOut(dispatcher_to_queues_packets),
        .produced(dispatcher_to_queues_valid)
    );
	
	
	// Instantiation of the Queue moludes
	genvar i;
	for (i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
	begin
	   Queue # (
	       .DATA_SIZE(DATA_SIZE),
	       .QUEUE_LENGTH(QUEUE_LENGTH)
	   ) queue (
	       .clock(s00_axi_aclk),
           .reset(~s00_axi_aresetn),
           .valueIn(dispatcher_to_queues_packets[i]),
           .valueInValid(dispatcher_to_queues_valid[i]),
           .consumed(serializer_to_queues_consumed),
           .valueOut(queues_to_selector_packets[i]),
           .empty(empty[i]),
           .full(full[i])
	   );
	end
	
	// Instantiation of the Selector module
	Selector # (
	   .INPUTS(NUMBER_OF_QUEUES),
	   .INPUT_SIZE(DATA_SIZE)
	) selector (
	   .clock(s00_axi_aclk),
       .reset(~s00_axi_aresetn),
       .index(scheduler_to_selector_id),
       .values(queues_to_selector_packets),
       .outcome(selector_to_serializer_packet)
	);
	
	// Instantiation of the Scheduler module
	Scheduler # (
	   .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
	   .REGISTER_SIZE(REGISTER_SIZE),
	   .NUMBER_OF_SCHEDULER(NUMBER_OF_SCHEDULERS)
	) scheduler (
	   .clock(s00_axi_aclk),
       .reset(~s00_axi_aresetn),
       .mode(scheduling_mode),
       .full(full),
       .empty(empty),
       .deadlines(scheduler_deadlines),
       .periods(scheduler_periods),
       .id(scheduler_to_selector_id)
	);

	endmodule
