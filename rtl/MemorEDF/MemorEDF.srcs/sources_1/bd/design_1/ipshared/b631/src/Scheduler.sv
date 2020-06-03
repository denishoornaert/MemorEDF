`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
//
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: Scheduler
// Module Name: Scheduler
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

module Scheduler
    #(
        parameter NUMBER_OF_QUEUES     = 4,
        parameter REGISTER_SIZE        = 32,
        parameter PRIORITY_SIZE        = 4,
        parameter TDMA_ENABLED         = 1,
        parameter EDF_ENABLED          = 1,
        parameter FP_ENABLED           = 1,
        parameter MG_ENABLED           = 1
    )
    (
        clock,
        reset,
        mode,
        full,
        empty,
        lastElem,
        deadlines,
        periods,
        priorities,
        budgets,
        hyper_period,
        counter_reset,
        id,
        consumed,
        hasBeenConsumed,
        enable
    );

    localparam NUMBER_OF_SCHEDULERS = TDMA_ENABLED + EDF_ENABLED + FP_ENABLED + MG_ENABLED;

    // Definition of the module IOs
    input                                                clock;
    input                                                reset;
    input           [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] mode;
    input                       [NUMBER_OF_QUEUES-1 : 0] full;
    input                       [NUMBER_OF_QUEUES-1 : 0] empty;
    input                       [NUMBER_OF_QUEUES-1 : 0] lastElem;
    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] deadlines;
    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] periods;
    input [NUMBER_OF_QUEUES-1 : 0] [PRIORITY_SIZE-1 : 0] priorities;
    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] budgets;
    input                          [REGISTER_SIZE-1 : 0] hyper_period;
    input                          [REGISTER_SIZE-1 : 0] counter_reset;
    output              [$clog2(NUMBER_OF_QUEUES)-1 : 0] id;
    input                                                consumed;
    output                      [NUMBER_OF_QUEUES-1 : 0] hasBeenConsumed;
    output                                               enable;

    // Scheduling part
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] schedulers_to_selector [NUMBER_OF_SCHEDULERS];
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] selected_queue;
    wire                                  valid;
    // Control part
    reg                                   internal_enable;
    reg  [$clog2(NUMBER_OF_QUEUES)-1 : 0] internal_id;
    //
    reg          [NUMBER_OF_QUEUES-1 : 0] internal_hasBeenConsumed;
    //
    reg                                   consumed_ff;
    // Booting
    reg                                   pending_transaction;
    //
    reg             [REGISTER_SIZE-1 : 0] counter_reset_ff;
    wire                                  force_reset;

    assign enable            = internal_enable;
    assign id                = internal_id;


    genvar i;
    for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
    begin
        assign hasBeenConsumed[i] = (consumed & ~consumed_ff & internal_hasBeenConsumed[i]);
    end

    always @(posedge clock)
    begin
        if(reset)
        begin
            consumed_ff <= 1;
        end
        else
        begin
            consumed_ff <= consumed;
        end
    end
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            counter_reset_ff <= 0;
        end
        else
        begin
            counter_reset_ff <= counter_reset;
        end
    end
    assign force_reset = (counter_reset != counter_reset_ff);

    if (NUMBER_OF_SCHEDULERS >= 2)
    begin
        Selector # (
            .INPUTS(NUMBER_OF_SCHEDULERS),
            .INPUT_SIZE($clog2(NUMBER_OF_QUEUES))
        ) scheduling_policy_selector (
            .clock(clock),
            .reset(reset),
            .index(mode),
            .values(schedulers_to_selector),
            .outcome(selected_queue)
        );
    end
    else
    begin
        assign selected_queue = schedulers_to_selector[0];
    end

    if (TDMA_ENABLED)
    begin
        TDMA # (
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
            .REGISTER_SIZE(REGISTER_SIZE)
        ) tdma (
            .clock(clock),
            .reset(reset|force_reset),
            .delta(periods),
            .valid(valid),
            .selection(schedulers_to_selector[0])
        );
    end

    if (EDF_ENABLED)
    begin
        EDF # (
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
            .REGISTER_SIZE(REGISTER_SIZE)
        ) edf (
            .clock(clock),
            .reset(reset),
            .periods(periods),
            .deadlines(deadlines),
            .valid(valid),
            .selection(schedulers_to_selector[1])
        );
    end

    if(FP_ENABLED)
    begin
        FP #(
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
            .PRIORITY_SIZE(PRIORITY_SIZE)
        ) fp (
            .clock(clock),
            .reset(reset),
            .priorities(priorities),
            .empty(empty),
            .valid(valid),
            .selection(schedulers_to_selector[2])
        );
    end

    if(MG_ENABLED)
    begin
        MemGuard #(
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
            .REGISTER_SIZE(REGISTER_SIZE)
        ) mg (
            .clock(clock),
            .reset(reset),
            .budgets(budgets),
            .empty(empty),
            .consumed(hasBeenConsumed),
            .valid(valid),
            .selection(schedulers_to_selector[3])
        );
    end

    // Dispatcher route the consumed signal to the appropriate queue
    Combinatorial_Dispatcher #(
        .OUTPUTS(NUMBER_OF_QUEUES),
        .INPUT_SIZE(1'b1)
    ) queue_router (
        .clock(clock),
        .reset(reset),
        .packetIn(consumed & ~consumed_ff),
        .valid(consumed & ~consumed_ff),
        .id(internal_id),
        .packetsOut(internal_hasBeenConsumed)
    );

    always @(posedge clock)
    begin
        if(reset)
        begin
            internal_id <= 0;
        end
        else
        begin
            if(~pending_transaction)
            begin
                internal_id <= selected_queue;
            end
        end
    end

    always@(posedge clock)
    begin
        if(reset)
        begin
            internal_enable <= 0;
            pending_transaction <= 0;
        end
        else
        begin
            if(~pending_transaction & ~empty[selected_queue] & valid)
            begin
                pending_transaction <= 1;
                internal_enable <= 1;
            end
            else if(pending_transaction & consumed & ~consumed_ff)
            begin
                pending_transaction <= 0;
                internal_enable <= 0;
            end
            else
            begin
                internal_enable <= 0;
            end
        end
    end

endmodule