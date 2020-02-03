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
        parameter TDMA_ENABLED         = 1,
        parameter EDF_ENABLED          = 1
    )
    (
        clock,
        reset,
        mode,
        full,
        empty,
        deadlines,
        periods,
        id,
        consumed,
        hasBeenConsumed,
        enable
    );
    
    localparam NUMBER_OF_SCHEDULERS = TDMA_ENABLED + EDF_ENABLED;
    
    // Definition of the module IOs
    input                                      clock;
    input                                      reset;
    input [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] mode;
    input             [NUMBER_OF_QUEUES-1 : 0] full;
    input             [NUMBER_OF_QUEUES-1 : 0] empty;
    input                [REGISTER_SIZE-1 : 0] deadlines [NUMBER_OF_QUEUES];
    input                [REGISTER_SIZE-1 : 0] periods [NUMBER_OF_QUEUES];
    output    [$clog2(NUMBER_OF_QUEUES)-1 : 0] id;
    input                                      consumed;
    output            [NUMBER_OF_QUEUES-1 : 0] hasBeenConsumed;
    output                                     enable;
    
    // Scheduling part
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] schedulers_to_selector [NUMBER_OF_SCHEDULERS];
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] selected_queue;
    
    assign id = selected_queue;
    
    if (NUMBER_OF_SCHEDULERS <= 2)
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
            .reset(reset),
            .deltaT(periods),
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
            .selection(schedulers_to_selector[1])
        );
    end
    
    // Control part
    reg start_transaction;
    
    assign enable = start_transaction;
    
    // Dispatcher route the consumed signal to the appropriate queue
    Dispacther #(
        .OUTPUTS(NUMBER_OF_QUEUES),
        .INPUT_SIZE(1)
    ) queue_router (
        .clock(clock),
        .reset(reset),
        .packetIn(consumed),
        .id(selected_queue),
        .packetsOut(hasBeenConsumed)
    );
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            start_transaction <= 0;
        end
        else
        begin
            start_transaction <= (consumed)? empty[selected_queue] : 0;
        end
    end
    
endmodule