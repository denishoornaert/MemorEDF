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
        parameter NUMBER_OF_QUEUES       = 4,
        parameter REGISTER_SIZE          = 32,
        parameter PRIORITY_SIZE          = 4,
        parameter TDMA_ENABLED           = 1,
        parameter EDF_ENABLED            = 1,
        parameter FP_ENABLED             = 1,
        parameter MG_ENABLED             = 1,
        parameter PRNG_FIBONACCI_ENABLED = 1,
        parameter PRNG_GALLOIS_ENABLED   = 1,
        parameter AGING_ENABLED          = 1,
        parameter NUMBER_OF_SCHEDULERS   = 7
    )
    (
        // Generic
        input  wire                                                clock,
        input  wire                                                reset,
        // Parameters
        input  wire           [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] mode,
        input  wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] deadlines,
        input  wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] periods,
        input  wire [NUMBER_OF_QUEUES-1 : 0] [PRIORITY_SIZE-1 : 0] priorities,
        input  wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] budgets,
        input  wire                          [REGISTER_SIZE-1 : 0] hyper_period,
        input  wire                          [REGISTER_SIZE-1 : 0] counter_reset,
        // Queues feedback
        input  wire                       [NUMBER_OF_QUEUES-1 : 0] full,
        input  wire                       [NUMBER_OF_QUEUES-1 : 0] empty,
        output wire               [$clog2(NUMBER_OF_QUEUES)-1 : 0] id,
        output wire                                                valid_and_ready,
        input  wire                                                ready
    );    

    // Scheduling part
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] schedulers_to_selector_selection [NUMBER_OF_SCHEDULERS];
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] selected_queue;
    wire                                  schedulers_to_selector_valid [NUMBER_OF_SCHEDULERS];
    wire                                  valid;
    //
    wire                                  consumed;
    reg                                   consumed_ff;
    //
    reg             [REGISTER_SIZE-1 : 0] counter_reset_ff;
    wire                                  force_reset;
   
    assign valid_and_ready   = valid & ready;
    assign id                = selected_queue;
    assign consumed          = 0;

    always @(posedge clock)
    begin
        if(reset)
            consumed_ff <= 1;
        else
            consumed_ff <= consumed;
    end
    
    always @(posedge clock)
    begin
        if(reset)
            counter_reset_ff <= 0;
        else
            counter_reset_ff <= counter_reset;
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
            .values(schedulers_to_selector_selection),
            .outcome(selected_queue)
        );
    end
    else
    begin
        assign selected_queue = schedulers_to_selector_selection[0];
    end
    
    if (NUMBER_OF_SCHEDULERS >= 2)
    begin
        Combinatorial_Selector # (
            .INPUTS(NUMBER_OF_SCHEDULERS),
            .INPUT_SIZE(1)
        ) valid_signal_selector (
            .clock(clock),
            .reset(reset),
            .index(mode),
            .values(schedulers_to_selector_valid),
            .outcome(valid)
        );
    end
    else
    begin
        assign valid = schedulers_to_selector_valid[0];
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
            .empty(empty),
            .valid(schedulers_to_selector_valid[0]),
            .selection(schedulers_to_selector_selection[0])
        );
    end

    if (EDF_ENABLED & 0)
    begin
        EDF # (
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
            .REGISTER_SIZE(REGISTER_SIZE)
        ) edf (
            .clock(clock),
            .reset(reset),
            .periods(periods),
            .deadlines(deadlines),
            .valid(schedulers_to_selector_valid[1]),
            .selection(schedulers_to_selector_selection[1])
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
            .valid(schedulers_to_selector_valid[2]),
            .selection(schedulers_to_selector_selection[2])
        );
    end

    if(MG_ENABLED)
    begin
        MemGuard #(
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
            .REGISTER_SIZE(REGISTER_SIZE),
            .PRIORITY_SIZE(PRIORITY_SIZE)
        ) mg (
            .clock(clock),
            .reset(reset|force_reset),
            .budgets(budgets),
            .priorities_input(priorities),
            .empty(empty),
            .update(consumed & ~consumed_ff),
            .valid(schedulers_to_selector_valid[3]),
            .selection(schedulers_to_selector_selection[3])
        );
    end
    
    if(PRNG_FIBONACCI_ENABLED)
    begin
        LFSR16 #(
            .STATE_WIDTH(16),
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES)
        ) fibonacci (
            .clock(clock),
            .reset(reset),
            .empty(empty),
            .valid(schedulers_to_selector_valid[4]),
            .selection(schedulers_to_selector_selection[4])
        );
    end
    
    if(PRNG_GALLOIS_ENABLED)
    begin
        Gallois16 #(
            .STATE_WIDTH(16),
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES)
        ) gallois (
            .clock(clock),
            .reset(reset),
            .empty(empty),
            .valid(schedulers_to_selector_valid[5]),
            .selection(schedulers_to_selector_selection[5])
        );
    end
    
    if(AGING_ENABLED)
    begin
        Aging #(
            .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
            .REGISTER_SIZE(REGISTER_SIZE)
        ) aging (
            .clock(clock),
            .reset(reset),
            .empty(empty),
            .update(consumed & ~consumed_ff),
            .valid(schedulers_to_selector_valid[6]),
            .selection(schedulers_to_selector_selection[6])
        );
    end

endmodule
