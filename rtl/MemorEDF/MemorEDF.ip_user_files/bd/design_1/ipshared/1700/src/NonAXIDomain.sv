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
		parameter integer WRITE_DATA_SIZE        = (102+(4*16)+(4*128)),
        parameter integer READ_DATA_SIZE         = 102,
        parameter integer READ_QUEUE_LENGTH      = 16,
        parameter integer WRITE_QUEUE_LENGTH     = 16,
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
        parameter integer NUMBER_OF_SCHEDULERS   = 6
    )(
        input  wire                                                                                  clock,
        input  wire                                                                                  reset,
        input  wire                         [READ_DATA_SIZE-1 : 0]  read_packetizer_1_to_dispatcher_packet,
        input  wire                                                  read_packetizer_1_to_dispatcher_valid,
        input  wire                                        [1 : 0]      read_packetizer_1_to_dispatcher_id,
        input  wire                        [WRITE_DATA_SIZE-1 : 0] write_packetizer_1_to_dispatcher_packet,
        input  wire                                                 write_packetizer_1_to_dispatcher_valid,
        input  wire                                        [1 : 0]     write_packetizer_1_to_dispatcher_id,
        input  wire                         [READ_DATA_SIZE-1 : 0]  read_packetizer_2_to_dispatcher_packet,
        input  wire                                                  read_packetizer_2_to_dispatcher_valid,
        input  wire                                        [1 : 0]      read_packetizer_2_to_dispatcher_id,
        input  wire                        [WRITE_DATA_SIZE-1 : 0] write_packetizer_2_to_dispatcher_packet,
        input  wire                                                 write_packetizer_2_to_dispatcher_valid,
        input  wire                                        [1 : 0]     write_packetizer_2_to_dispatcher_id,
        input  wire           [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0]                         scheduling_mode,
        input  wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0]                     scheduler_deadlines,
        input  wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0]                       scheduler_periods,
        input  wire [NUMBER_OF_QUEUES-1 : 0] [PRIORITY_SIZE-1 : 0]                    scheduler_priorities,
        input  wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0]                       scheduler_budgets,
        input  wire                          [REGISTER_SIZE-1 : 0]                  scheduler_hyper_period,
        input  wire                          [REGISTER_SIZE-1 : 0]                 scheduler_counter_reset,
        input  wire                                                       serializer_to_scheduler_consumed,
        input  wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0]                       queues_thresholds,
        
        output wire                        [WRITE_DATA_SIZE-1 : 0]           selector_to_serializer_packet,
        output wire                                                scheduler_to_serializer_activate_signal,
        output wire                                                                      Q_0_kill_the_core,
        output wire                                                                      Q_1_kill_the_core,
        output wire                                                                      Q_2_kill_the_core,
        output wire                                                                      Q_3_kill_the_core
    );
    
    wire  [(READ_DATA_SIZE*(NUMBER_OF_QUEUES/2))-1 : 0]  read_dispatcher_to_queues_1_2_packets;
    wire  [(READ_DATA_SIZE*(NUMBER_OF_QUEUES/2))-1 : 0]  read_dispatcher_to_queues_3_4_packets;
    wire [(WRITE_DATA_SIZE*(NUMBER_OF_QUEUES/2))-1 : 0] write_dispatcher_to_queues_1_2_packets;
    wire [(WRITE_DATA_SIZE*(NUMBER_OF_QUEUES/2))-1 : 0] write_dispatcher_to_queues_3_4_packets;
    wire      [(READ_DATA_SIZE*NUMBER_OF_QUEUES)-1 : 0]      read_dispatcher_to_queues_packets;
    wire     [(WRITE_DATA_SIZE*NUMBER_OF_QUEUES)-1 : 0]     write_dispatcher_to_queues_packets;
    wire                   [(NUMBER_OF_QUEUES/2)-1 : 0]    read_dispatcher_to_queues_1_2_valid;
    wire                   [(NUMBER_OF_QUEUES/2)-1 : 0]    read_dispatcher_to_queues_3_4_valid;
    wire                   [(NUMBER_OF_QUEUES/2)-1 : 0]   write_dispatcher_to_queues_1_2_valid;
    wire                   [(NUMBER_OF_QUEUES/2)-1 : 0]   write_dispatcher_to_queues_3_4_valid;
    wire                       [NUMBER_OF_QUEUES-1 : 0]        read_dispatcher_to_queues_valid;
    wire                       [NUMBER_OF_QUEUES-1 : 0]       write_dispatcher_to_queues_valid;
    wire                       [NUMBER_OF_QUEUES-1 : 0]           scheduler_to_queues_consumed;
    wire                        [WRITE_DATA_SIZE-1 : 0]             queues_to_selector_packets [NUMBER_OF_QUEUES];
    wire                       [NUMBER_OF_QUEUES-1 : 0]                                  empty;
    wire                       [NUMBER_OF_QUEUES-1 : 0]                                   full;
    wire                       [NUMBER_OF_QUEUES-1 : 0]                               lastElem;
    wire               [$clog2(NUMBER_OF_QUEUES)-1 : 0]               scheduler_to_selector_id;
    
    assign  read_dispatcher_to_queues_packets = {read_dispatcher_to_queues_3_4_packets[READ_DATA_SIZE +: READ_DATA_SIZE], read_dispatcher_to_queues_3_4_packets[0 +: READ_DATA_SIZE], read_dispatcher_to_queues_1_2_packets[READ_DATA_SIZE +: READ_DATA_SIZE], read_dispatcher_to_queues_1_2_packets[0 +: READ_DATA_SIZE]};
    assign write_dispatcher_to_queues_packets = {write_dispatcher_to_queues_3_4_packets[WRITE_DATA_SIZE +: WRITE_DATA_SIZE], write_dispatcher_to_queues_3_4_packets[0 +: WRITE_DATA_SIZE], write_dispatcher_to_queues_1_2_packets[WRITE_DATA_SIZE +: WRITE_DATA_SIZE], write_dispatcher_to_queues_1_2_packets[0 +: WRITE_DATA_SIZE]};
    assign    read_dispatcher_to_queues_valid = {read_dispatcher_to_queues_3_4_valid[1], read_dispatcher_to_queues_3_4_valid[0], read_dispatcher_to_queues_1_2_valid[1], read_dispatcher_to_queues_1_2_valid[0]};
    assign   write_dispatcher_to_queues_valid = {write_dispatcher_to_queues_3_4_valid[1], write_dispatcher_to_queues_3_4_valid[0], write_dispatcher_to_queues_1_2_valid[1], write_dispatcher_to_queues_1_2_valid[0]};

    wire     [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] queues_higher_threshold;
    wire                                            [3 : 0] Qs_kill_the_core;

    assign {Q_3_kill_the_core, Q_2_kill_the_core, Q_1_kill_the_core, Q_0_kill_the_core} = Qs_kill_the_core;
    assign queues_higher_threshold = {scheduler_deadlines[3][REGISTER_SIZE-1 : 0], scheduler_deadlines[2][REGISTER_SIZE-1 : 0], scheduler_deadlines[1][REGISTER_SIZE-1 : 0], scheduler_deadlines[0][REGISTER_SIZE-1 : 0]};

    // Instantiation of the Dispatcher module
    // Read
    Dispatcher # (
        .OUTPUTS(NUMBER_OF_QUEUES/2),
        .INPUT_SIZE(READ_DATA_SIZE)
    ) read_dispatcher_1 (
        .clock(clock),
        .reset(reset),
        .packetIn(read_packetizer_1_to_dispatcher_packet),
        .valid(read_packetizer_1_to_dispatcher_valid),
        .id(read_packetizer_1_to_dispatcher_id[0]),
        .packetsOut(read_dispatcher_to_queues_1_2_packets),
        .produced(read_dispatcher_to_queues_1_2_valid)
    );
    Dispatcher # (
        .OUTPUTS(NUMBER_OF_QUEUES/2),
        .INPUT_SIZE(READ_DATA_SIZE)
    ) read_dispatcher_2 (
        .clock(clock),
        .reset(reset),
        .packetIn(read_packetizer_2_to_dispatcher_packet),
        .valid(read_packetizer_2_to_dispatcher_valid),
        .id(read_packetizer_2_to_dispatcher_id[0]),
        .packetsOut(read_dispatcher_to_queues_3_4_packets),
        .produced(read_dispatcher_to_queues_3_4_valid)
    );
    // Write
	Dispatcher # (
        .OUTPUTS(NUMBER_OF_QUEUES/2),
        .INPUT_SIZE(WRITE_DATA_SIZE)
    ) write_dispatcher_1 (
        .clock(clock),
        .reset(reset),
        .packetIn(write_packetizer_1_to_dispatcher_packet),
        .valid(write_packetizer_1_to_dispatcher_valid),
        .id(write_packetizer_1_to_dispatcher_id[0]),
        .packetsOut(write_dispatcher_to_queues_1_2_packets),
        .produced(write_dispatcher_to_queues_1_2_valid)
    );
    Dispatcher # (
        .OUTPUTS(NUMBER_OF_QUEUES/2),
        .INPUT_SIZE(WRITE_DATA_SIZE)
    ) write_dispatcher_2 (
        .clock(clock),
        .reset(reset),
        .packetIn(write_packetizer_2_to_dispatcher_packet),
        .valid(write_packetizer_2_to_dispatcher_valid),
        .id(write_packetizer_2_to_dispatcher_id[0]),
        .packetsOut(write_dispatcher_to_queues_3_4_packets),
        .produced(write_dispatcher_to_queues_3_4_valid)
    );
	
	// Instantiation of the Queue moludes
	genvar i;
	for (i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
	begin
	   RWQueue # (
           .READ_DATA_SIZE(READ_DATA_SIZE),
	       .WRITE_DATA_SIZE(WRITE_DATA_SIZE),
	       .READ_QUEUE_LENGTH(READ_QUEUE_LENGTH),
           .WRITE_QUEUE_LENGTH(WRITE_QUEUE_LENGTH),
           .REGISTER_SIZE(REGISTER_SIZE)
	   ) rwqueue (
	       .clock(clock),
           .reset(reset),
           .higher_threshold(queues_higher_threshold[i]),
           .read_valueIn(read_dispatcher_to_queues_packets[(i*READ_DATA_SIZE) +: READ_DATA_SIZE]),
           .read_valueInValid(read_dispatcher_to_queues_valid[i]),
           .write_valueIn(write_dispatcher_to_queues_packets[(i*WRITE_DATA_SIZE) +: WRITE_DATA_SIZE]),
           .write_valueInValid(write_dispatcher_to_queues_valid[i]),
           .consumed(scheduler_to_queues_consumed[i]),
           .valueOut(queues_to_selector_packets[i]),
           .empty(empty[i]),
           .full(full[i]),
           .lastElem(lastElem[i]),
           .kill_the_core(Qs_kill_the_core[i])
	   );
	end

	// Instantiation of the Selector module
	Selector # (
	   .INPUTS(NUMBER_OF_QUEUES),
	   .INPUT_SIZE(WRITE_DATA_SIZE)
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
       .full(full),
       .empty(empty),
       .lastElem(lastElem),
       .deadlines(scheduler_deadlines),
       .periods(scheduler_periods),
       .priorities(scheduler_priorities),
       .budgets(scheduler_budgets),
       .hyper_period(scheduler_hyper_period),
       .counter_reset(scheduler_counter_reset),
       .id(scheduler_to_selector_id),
       .consumed(serializer_to_scheduler_consumed),
       .hasBeenConsumed(scheduler_to_queues_consumed),
       .enable(scheduler_to_serializer_activate_signal)
	);

endmodule
