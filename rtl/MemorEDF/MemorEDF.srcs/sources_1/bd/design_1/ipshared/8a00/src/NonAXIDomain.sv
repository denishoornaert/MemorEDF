`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: NonAXIDomain
// Module Name: NonAXIDomain
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


module NonAXIDomain #(
        // Global parameters
		parameter integer NUMBER_OF_QUEUES       = 4,
		parameter integer DATA_SIZE              = 5*128,
		parameter integer QUEUE_LENGTH           = 16,
		// Available/enabled schdulers
		parameter integer REGISTER_SIZE          = 32,
        parameter integer TDMA_ENABLED           = 1,
        parameter integer EDF_ENABLED            = 1,
        parameter integer NUMBER_OF_SCHEDULERS   = 2
    )(
        clock,
        reset,
        packetizer_to_dispatcher_packet,
        packetizer_to_dispatcher_valid,
        packetizer_to_dispatcher_id,
        scheduling_mode,
        scheduler_deadlines,
        scheduler_periods,
        selector_to_serializer_packet,
        serializer_to_scheduler_consumed,
        scheduler_to_serializer_activate_signal,
        stall
    );
    
    input wire                                                clock;
    input wire                                                reset;
    input wire                              [DATA_SIZE-1 : 0] packetizer_to_dispatcher_packet;
    input wire                                                packetizer_to_dispatcher_valid;
    input wire                                        [1 : 0] packetizer_to_dispatcher_id;
    input wire           [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] scheduling_mode;
    input wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_deadlines;
    input wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_periods;
    input wire                                                serializer_to_scheduler_consumed;
    
    output wire                   [DATA_SIZE-1 : 0] selector_to_serializer_packet;
    output wire                                     scheduler_to_serializer_activate_signal;
    output wire                                     stall;

    wire [(DATA_SIZE*NUMBER_OF_QUEUES)-1 : 0] dispatcher_to_queues_packets;
    wire             [NUMBER_OF_QUEUES-1 : 0] dispatcher_to_queues_valid;
    wire             [NUMBER_OF_QUEUES-1 : 0] scheduler_to_queues_consumed;
    wire                    [DATA_SIZE-1 : 0] queues_to_selector_packets [NUMBER_OF_QUEUES];
    wire             [NUMBER_OF_QUEUES-1 : 0] empty;
    wire             [NUMBER_OF_QUEUES-1 : 0] full;
    wire             [NUMBER_OF_QUEUES-1 : 0] lastElem;
    wire     [$clog2(NUMBER_OF_QUEUES)-1 : 0] scheduler_to_selector_id;
    
    assign stall = |full;
    

    // Instantiation of the Dispatcher module
    Dispatcher # (
        .OUTPUTS(NUMBER_OF_QUEUES),
        .INPUT_SIZE(DATA_SIZE)
    ) dispatcher (
        .clock(clock),
        .reset(reset),
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
	       .clock(clock),
           .reset(reset),
           .valueIn(dispatcher_to_queues_packets[(i*DATA_SIZE) +: DATA_SIZE]),
           .valueInValid(dispatcher_to_queues_valid[i]),
           .consumed(scheduler_to_queues_consumed[i]),
           .valueOut(queues_to_selector_packets[i]),
           .empty(empty[i]),
           .full(full[i]),
           .lastElem(lastElem[i])
	   );
	end
	
	// Instantiation of the Selector module
	Selector # (
	   .INPUTS(NUMBER_OF_QUEUES),
	   .INPUT_SIZE(DATA_SIZE)
	) selector (
	   .clock(clock),
       .reset(reset),
       .index(scheduler_to_selector_id),
       .values(queues_to_selector_packets),
       .outcome(selector_to_serializer_packet)
	);
	
	// Instantiation of the Scheduler module
	Scheduler # (
	   .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
	   .REGISTER_SIZE(REGISTER_SIZE),
	   .TDMA_ENABLED(TDMA_ENABLED),
	   .EDF_ENABLED(EDF_ENABLED)
	) scheduler (
	   .clock(clock),
       .reset(reset),
       .mode(scheduling_mode),
       .full(full),
       .empty(empty),
       .lastElem(lastElem),
       .deadlines(scheduler_deadlines),
       .periods(scheduler_periods),
       .id(scheduler_to_selector_id),
       .consumed(serializer_to_scheduler_consumed),
       .hasBeenConsumed(scheduler_to_queues_consumed),
       .enable(scheduler_to_serializer_activate_signal)
	);

endmodule
