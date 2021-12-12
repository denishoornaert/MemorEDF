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
        // Generic IO
        input  wire                                                 clock,
        input  wire                                                 reset,
        // Decoupled IO to packetizer 1
        input  wire                               [DATA_SIZE-1 : 0] packetizer_1_to_dispatcher_packet,
        input  wire                                                 packetizer_1_to_dispatcher_valid,
        input  wire                [$clog2(NUMBER_OF_QUEUES)-1 : 0] packetizer_1_to_dispatcher_id,
        output wire                                                 queues_to_dispatcher_1_ready,
        // Decoupled IO to packetizer 2
        input  wire                               [DATA_SIZE-1 : 0] packetizer_2_to_dispatcher_packet,
        input  wire                                                 packetizer_2_to_dispatcher_valid,
        input  wire                [$clog2(NUMBER_OF_QUEUES)-1 : 0] packetizer_2_to_dispatcher_id,
        output wire                                                 queues_to_dispatcher_2_ready,
        // Decoupled IO to serializer
        input  wire                                                 serializer_to_scheduler_ready,
        output wire                                                 queues_to_serializer_valid,
        output wire                               [DATA_SIZE-1 : 0] queues_to_serializer_packet,
        // Inputs from the configuration port
        input  wire            [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] scheduling_mode,
        input  wire  [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_deadlines,
        input  wire  [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_periods,
        input  wire  [NUMBER_OF_QUEUES-1 : 0] [PRIORITY_SIZE-1 : 0] scheduler_priorities,
        input  wire  [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_budgets,
        input  wire                           [REGISTER_SIZE-1 : 0] scheduler_hyper_period,
        input  wire                           [REGISTER_SIZE-1 : 0] scheduler_counter_reset,
        input  wire  [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] queues_thresholds,
        // Outputs to outside of the IP
        output wire                                                 Q_0_kill_the_core,
        output wire                                                 Q_1_kill_the_core,
        output wire                                                 Q_2_kill_the_core,
        output wire                                                 Q_3_kill_the_core
    );

    wire   [(DATA_SIZE*NUMBER_OF_QUEUES/2)-1 : 0] dispatcher_to_queues_packet;
    wire                 [NUMBER_OF_QUEUES-1 : 0] dispatcher_to_queues_valid;
    wire                                  [1 : 0] dispatcher_to_queues_id;
    wire                                          queues_to_dispatcher_ready;
    wire                 [NUMBER_OF_QUEUES-1 : 0] scheduler_to_queues_consumed;
    wire                 [NUMBER_OF_QUEUES-1 : 0] scheduler_to_queues_valid;
    wire                 [NUMBER_OF_QUEUES-1 : 0] empty;
    wire                 [NUMBER_OF_QUEUES-1 : 0] full;
    wire         [$clog2(NUMBER_OF_QUEUES)-1 : 0] scheduler_to_selector_id;
    
    wire scheduler_to_serializer_valid;
    
    assign dispatcher_to_queues_packet  = packetizer_2_to_dispatcher_packet|packetizer_1_to_dispatcher_packet;
    assign dispatcher_to_queues_valid   = (packetizer_1_to_dispatcher_valid|packetizer_2_to_dispatcher_valid) << dispatcher_to_queues_id;
    assign dispatcher_to_queues_id      = packetizer_1_to_dispatcher_id|packetizer_1_to_dispatcher_id;
    assign queues_to_dispatcher_1_ready = queues_to_dispatcher_ready;

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
	   // packets decoupled IO
	   .queues_higher_threshold(queues_higher_threshold),
	   .dispatcher_to_queues_packet(dispatcher_to_queues_packet),
	   .dispatcher_to_queues_valid(dispatcher_to_queues_valid),
	   .queues_to_dispatcher_ready(queues_to_dispatcher_ready),
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
       // from configuration port
       .mode(scheduling_mode),
       .deadlines(scheduler_deadlines),
       .periods(scheduler_periods),
       .priorities(scheduler_priorities),
       .budgets(scheduler_budgets),
       .hyper_period(scheduler_hyper_period),
       .counter_reset(scheduler_counter_reset),
       // from queues
       .full(full),
       .empty(empty),
       // outputs
       .id(scheduler_to_selector_id),
       .valid_and_ready(scheduler_to_serializer_valid),
       .ready(serializer_to_scheduler_ready)
	);

endmodule
