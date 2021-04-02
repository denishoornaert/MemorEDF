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
        parameter integer NUMBER_OF_SCHEDULERS   = 6
    )(
        clock,
        reset,
//        packetizer_to_dispatcher_packet,
//        packetizer_to_dispatcher_valid,
//        packetizer_to_dispatcher_id,
        packetizer_1_to_dispatcher_packet,
        packetizer_1_to_dispatcher_valid,
        packetizer_1_to_dispatcher_id,
        packetizer_2_to_dispatcher_packet,
        packetizer_2_to_dispatcher_valid,
        packetizer_2_to_dispatcher_id,
        scheduling_mode,
        scheduler_deadlines,
        scheduler_periods,
        scheduler_priorities,
        scheduler_budgets,
        scheduler_hyper_period,
        scheduler_counter_reset,
        queues_thresholds,
        selector_to_serializer_packet,
        serializer_to_scheduler_consumed,
        scheduler_to_serializer_activate_signal,
        Q_0_kill_the_core,
        Q_1_kill_the_core,
        Q_2_kill_the_core,
        Q_3_kill_the_core,
        bram_clka,
        bram_dina,
        bram_addra,
        bram_wea,
        bram_ena,
        bram_clkb,
        bram_rstb,
        bram_dinb,
        bram_addrb,
        bram_enb,
        bram_doutb
    );
    
    input wire                                                clock;
    input wire                                                reset;
//    input wire                              [DATA_SIZE-1 : 0] packetizer_to_dispatcher_packet;
//    input wire                                                packetizer_to_dispatcher_valid;
//    input wire                               [ID_WIDTH-1 : 0] packetizer_to_dispatcher_id;
    input wire                              [DATA_SIZE-1 : 0] packetizer_1_to_dispatcher_packet;
    input wire                                                packetizer_1_to_dispatcher_valid;
    input wire                                        [1 : 0] packetizer_1_to_dispatcher_id;
    input wire                              [DATA_SIZE-1 : 0] packetizer_2_to_dispatcher_packet;
    input wire                                                packetizer_2_to_dispatcher_valid;
    input wire                                        [1 : 0] packetizer_2_to_dispatcher_id;
    input wire           [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] scheduling_mode;
    input wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_deadlines;
    input wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_periods;
    input wire [NUMBER_OF_QUEUES-1 : 0] [PRIORITY_SIZE-1 : 0] scheduler_priorities;
    input wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] scheduler_budgets;
    input wire                          [REGISTER_SIZE-1 : 0] scheduler_hyper_period;
    input wire                          [REGISTER_SIZE-1 : 0] scheduler_counter_reset;
    input wire                                                serializer_to_scheduler_consumed;
    input wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] queues_thresholds;
    
    output wire                                  [DATA_SIZE-1 : 0] selector_to_serializer_packet;
    output wire                                                    scheduler_to_serializer_activate_signal;
    output wire                                                    Q_0_kill_the_core;
    output wire                                                    Q_1_kill_the_core;
    output wire                                                    Q_2_kill_the_core;
    output wire                                                    Q_3_kill_the_core;
    
    // BRAM write port
    output wire [NUMBER_OF_QUEUES-1 : 0]                             bram_clka;
    output wire [NUMBER_OF_QUEUES-1 : 0]           [DATA_SIZE-1 : 0] bram_dina;
    output wire [NUMBER_OF_QUEUES-1 : 0][$clog2(QUEUE_LENGTH)-1 : 0] bram_addra;
    output wire [NUMBER_OF_QUEUES-1 : 0]                             bram_wea;
    output wire [NUMBER_OF_QUEUES-1 : 0]                             bram_ena;
    // BRAM read port
    output wire [NUMBER_OF_QUEUES-1 : 0]                             bram_clkb;
    output wire [NUMBER_OF_QUEUES-1 : 0]                             bram_rstb;
    output wire [NUMBER_OF_QUEUES-1 : 0]           [DATA_SIZE-1 : 0] bram_dinb;
    output wire [NUMBER_OF_QUEUES-1 : 0][$clog2(QUEUE_LENGTH)-1 : 0] bram_addrb;
    output wire [NUMBER_OF_QUEUES-1 : 0]                             bram_enb;
    input  wire [NUMBER_OF_QUEUES-1 : 0]           [DATA_SIZE-1 : 0] bram_doutb;
    
//    wire [(DATA_SIZE*NUMBER_OF_QUEUES)-1 : 0] dispatcher_to_queues_packets;
//    wire             [NUMBER_OF_QUEUES-1 : 0] dispatcher_to_queues_valid;
    wire [(DATA_SIZE*(NUMBER_OF_QUEUES/2))-1 : 0] dispatcher_to_queues_1_2_packets;
    wire [(DATA_SIZE*(NUMBER_OF_QUEUES/2))-1 : 0] dispatcher_to_queues_3_4_packets;
    wire   [(DATA_SIZE*NUMBER_OF_QUEUES/2)-1 : 0] dispatcher_to_queues_packets;
    wire             [(NUMBER_OF_QUEUES/2)-1 : 0] dispatcher_to_queues_1_2_valid;
    wire             [(NUMBER_OF_QUEUES/2)-1 : 0] dispatcher_to_queues_3_4_valid;
    wire                 [NUMBER_OF_QUEUES-1 : 0] dispatcher_to_queues_valid;
    wire             [NUMBER_OF_QUEUES-1 : 0] scheduler_to_queues_consumed;
    wire                    [DATA_SIZE-1 : 0] queues_to_selector_packets [NUMBER_OF_QUEUES];
    wire             [NUMBER_OF_QUEUES-1 : 0] empty;
    wire             [NUMBER_OF_QUEUES-1 : 0] full;
    wire             [NUMBER_OF_QUEUES-1 : 0] lastElem;
    wire     [$clog2(NUMBER_OF_QUEUES)-1 : 0] scheduler_to_selector_id;
    
    assign dispatcher_to_queues_packets = {packetizer_2_to_dispatcher_packet, packetizer_1_to_dispatcher_packet};
    assign dispatcher_to_queues_valid = {dispatcher_to_queues_3_4_valid[1], dispatcher_to_queues_3_4_valid[0], dispatcher_to_queues_1_2_valid[1], dispatcher_to_queues_1_2_valid[0]};

    wire     [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] queues_higher_threshold;
    wire                                            [3 : 0] Qs_kill_the_core;

    assign {Q_3_kill_the_core, Q_2_kill_the_core, Q_1_kill_the_core, Q_0_kill_the_core} = Qs_kill_the_core;
    assign queues_higher_threshold = {scheduler_deadlines[3][REGISTER_SIZE-1 : 0], scheduler_deadlines[2][REGISTER_SIZE-1 : 0], scheduler_deadlines[1][REGISTER_SIZE-1 : 0], scheduler_deadlines[0][REGISTER_SIZE-1 : 0]};

    // Instantiation of the Dispatcher module
    Dispatcher # (
        .OUTPUTS(NUMBER_OF_QUEUES/2)
//        .INPUT_SIZE(DATA_SIZE)
    ) dispatcher_1 (
        .clock(clock),
        .reset(reset),
//        .packetIn(packetizer_1_to_dispatcher_packet),
        .valid(packetizer_1_to_dispatcher_valid),
        .id(packetizer_1_to_dispatcher_id[0]),
//        .packetsOut(dispatcher_to_queues_1_2_packets),
        .produced(dispatcher_to_queues_1_2_valid)
    );
    Dispatcher # (
        .OUTPUTS(NUMBER_OF_QUEUES/2)
//        .INPUT_SIZE(DATA_SIZE)
    ) dispatcher_2 (
        .clock(clock),
        .reset(reset),
        .valid(packetizer_2_to_dispatcher_valid),
        .id(packetizer_2_to_dispatcher_id[0]),
        .produced(dispatcher_to_queues_3_4_valid)
    );
	
	
	// Instantiation of the Queue moludes
	genvar i;
	for (i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
	begin
	   Queue # (
	       .DATA_SIZE(DATA_SIZE),
	       .QUEUE_LENGTH(QUEUE_LENGTH),
           .REGISTER_SIZE(REGISTER_SIZE)
	   ) queue (
	       .clock(clock),
           .reset(reset),
           .higher_threshold(queues_higher_threshold[i]),
           .valueIn(dispatcher_to_queues_packets[((i>>1)*DATA_SIZE) +: DATA_SIZE]),
           .valueInValid(dispatcher_to_queues_valid[i]),
           .consumed(scheduler_to_queues_consumed[i]),
           .valueOut(queues_to_selector_packets[i]),
           .empty(empty[i]),
           .full(full[i]),
           .lastElem(lastElem[i]),
           .kill_the_core(Qs_kill_the_core[i]),
           .bram_clka(bram_clka[i]),
           .bram_dina(bram_dina[i]),
           .bram_addra(bram_addra[i]),
           .bram_wea(bram_wea[i]),
           .bram_ena(bram_ena[i]),
           .bram_clkb(bram_clkb[i]),
           .bram_rstb(bram_rstb[i]),
           .bram_dinb(bram_dinb[i]),
           .bram_addrb(bram_addrb[i]),
           .bram_enb(bram_enb[i]),
           .bram_doutb(bram_doutb[i])
	   );
	end

	// Instantiation of the Selector module
	Selector_tree # (
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
