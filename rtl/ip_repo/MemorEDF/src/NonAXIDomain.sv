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
		parameter integer DATA_SIZE              = (102+(4*16)+(4*128)),
		parameter integer QUEUE_LENGTH           = 16,
		// Available/enabled schdulers
		parameter integer ID_WIDTH               = 16,
		parameter integer REGISTER_SIZE          = 32,
		parameter integer PRIORITY_SIZE          = 4,
        parameter integer TDMA_ENABLED           = 1,
        parameter integer EDF_ENABLED            = 1,
        parameter integer FP_ENABLED             = 1,
        parameter integer MG_ENABLED             = 1,
        parameter integer PRNG_FIBONACCI_ENABLED = 1,
        parameter integer PRNG_GALLOIS_ENABLED   = 1,
        parameter integer AGING_ENABLED          = 1,
        parameter integer NUMBER_OF_SCHEDULERS   = 7
    )(
        input wire                                                 clock,
        input wire                                                 reset,
        input wire                               [DATA_SIZE-1 : 0] packetizer_1_to_dispatcher_packet,
        input wire                                                 packetizer_1_to_dispatcher_valid,
        input wire                                         [1 : 0] packetizer_1_to_dispatcher_id,
        input wire                               [DATA_SIZE-1 : 0] packetizer_2_to_dispatcher_packet,
        input wire                                                 packetizer_2_to_dispatcher_valid,
        input wire                                         [1 : 0] packetizer_2_to_dispatcher_id,
        input wire            [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] scheduling_mode,
        input wire  [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_deadlines,
        input wire  [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_periods,
        input wire  [NUMBER_OF_QUEUES-1 : 0] [PRIORITY_SIZE-1 : 0] scheduler_priorities,
        input wire  [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_budgets,
        input wire                           [REGISTER_SIZE-1 : 0] scheduler_hyper_period,
        input wire                           [REGISTER_SIZE-1 : 0] scheduler_counter_reset,
        input wire  [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] queues_thresholds,
        output wire                                                Q_0_kill_the_core,
        output wire                                                Q_1_kill_the_core,
        output wire                                                Q_2_kill_the_core,
        output wire                                                Q_3_kill_the_core,
        // Internal decoupled IO
        input wire                                                 serializer_to_scheduler_ready,
        output wire                                                queues_to_serializer_valid,
        output wire                              [DATA_SIZE-1 : 0] queues_to_serializer_packet
    );

    wire [(DATA_SIZE*(NUMBER_OF_QUEUES/2))-1 : 0] dispatcher_to_queues_1_2_packets;
    wire [(DATA_SIZE*(NUMBER_OF_QUEUES/2))-1 : 0] dispatcher_to_queues_3_4_packets;
    wire   [(DATA_SIZE*NUMBER_OF_QUEUES/2)-1 : 0] dispatcher_to_queues_packets;
    wire             [(NUMBER_OF_QUEUES/2)-1 : 0] dispatcher_to_queues_1_2_valid;
    wire             [(NUMBER_OF_QUEUES/2)-1 : 0] dispatcher_to_queues_3_4_valid;
    wire                 [NUMBER_OF_QUEUES-1 : 0] dispatcher_to_queues_valid;
    wire                 [NUMBER_OF_QUEUES-1 : 0] scheduler_to_queues_consumed;
    wire                 [NUMBER_OF_QUEUES-1 : 0] scheduler_to_queues_valid;
    wire                 [NUMBER_OF_QUEUES-1 : 0] empty;
    wire                 [NUMBER_OF_QUEUES-1 : 0] full;
    wire         [$clog2(NUMBER_OF_QUEUES)-1 : 0] scheduler_to_selector_id;
    
    wire scheduler_to_serializer_valid;
    
    assign dispatcher_to_queues_packets = {packetizer_2_to_dispatcher_packet, packetizer_1_to_dispatcher_packet};
    assign dispatcher_to_queues_valid = {dispatcher_to_queues_3_4_valid[1], dispatcher_to_queues_3_4_valid[0], dispatcher_to_queues_1_2_valid[1], dispatcher_to_queues_1_2_valid[0]};

    wire     [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] queues_higher_threshold;
    wire                                            [3 : 0] Qs_kill_the_core;

    assign {Q_3_kill_the_core, Q_2_kill_the_core, Q_1_kill_the_core, Q_0_kill_the_core} = Qs_kill_the_core;
    assign queues_higher_threshold = {scheduler_deadlines[3][REGISTER_SIZE-1 : 0], scheduler_deadlines[2][REGISTER_SIZE-1 : 0], scheduler_deadlines[1][REGISTER_SIZE-1 : 0], scheduler_deadlines[0][REGISTER_SIZE-1 : 0]};
	
	Queueing_domain # (
	   .DATA_SIZE(DATA_SIZE),
	   .QUEUE_LENGTH(QUEUE_LENGTH),
	   .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
	   .REGISTER_SIZE(REGISTER_SIZE)
	) queueing_domain (
	   .clock(clock),
	   .reset(reset),
	   .queues_higher_threshold(queues_higher_threshold),
	   .dispatcher_to_queues_packet(packetizer_1_to_dispatcher_packet),
	   .dispatcher_to_queues_valid((packetizer_1_to_dispatcher_valid << packetizer_1_to_dispatcher_id)),
	   // handshake
	   .scheduler_to_queues_ready(scheduler_to_serializer_valid),
       .queues_to_serializer_valid(queues_to_serializer_valid),
	   .core_id(scheduler_to_selector_id),
	   .queues_to_serializer_packet(queues_to_serializer_packet),
	   // metadata outputs
	   .empty(empty),
	   .full(full),
	   .Qs_kill_the_core(Qs_kill_the_core)
	);

	// Instantiation of the Scheduler module
	Scheduler # (
	   .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
	   .REGISTER_SIZE(REGISTER_SIZE),
	   .TDMA_ENABLED(TDMA_ENABLED),
	   .EDF_ENABLED(EDF_ENABLED),
	   .FP_ENABLED(FP_ENABLED),
	   .MG_ENABLED(MG_ENABLED),
	   .PRNG_FIBONACCI_ENABLED(PRNG_FIBONACCI_ENABLED),
	   .PRNG_GALLOIS_ENABLED(PRNG_GALLOIS_ENABLED),
	   .AGING_ENABLED(AGING_ENABLED)
	) scheduler (
	   .clock(clock),
       .reset(reset),
       .mode(scheduling_mode),
       .deadlines(scheduler_deadlines),
       .periods(scheduler_periods),
       .priorities(scheduler_priorities),
       .budgets(scheduler_budgets),
       .hyper_period(scheduler_hyper_period),
       .counter_reset(scheduler_counter_reset),
       .full(full),
       .empty(empty),
       .id(scheduler_to_selector_id),
       .valid_and_ready(scheduler_to_serializer_valid),
       .ready(serializer_to_scheduler_ready)
	);

endmodule
