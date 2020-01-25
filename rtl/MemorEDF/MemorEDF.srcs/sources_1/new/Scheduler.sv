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

module Scheduler #(
        parameter NUMBER_OF_QUEUES     = 4,
        parameter REGISTER_SIZE        = 32,
        parameter NUMBER_OF_SCHEDULERS = 2
    )
    (
        clock,
        reset,
        mode,
        full,
        empty,
        deadlines,
        periods,
        id
    );
    
    // Definition of the module IOs
    input                                      clock;
    input                                      reset;
    input [$clog2(NUMBER_OF_SCHEDULERS)-1 : 0] mode;
    input             [NUMBER_OF_QUEUES-1 : 0] full;
    input             [NUMBER_OF_QUEUES-1 : 0] empty;
    input                [REGISTER_SIZE-1 : 0] deadlines [NUMBER_OF_QUEUES];
    input                [REGISTER_SIZE-1 : 0] periods [NUMBER_OF_QUEUES];
    output    [$clog2(NUMBER_OF_QUEUES)-1 : 0] id;
    
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] schedulers_to_selector [NUMBER_OF_SCHEDULERS];
    
    Selector # (
        .INPUTS(NUMBER_OF_SCHEDULERS),
        .INPUT_SIZE($clog2(NUMBER_OF_QUEUES))
    ) scheduling_policy_selector (
        .clock(clock),
        .reset(reset),
        .index(mode),
        .values(schedulers_to_selector),
        .outcome(id)
    );
    
    TDMA # (
        .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
        .REGISTER_SIZE(REGISTER_SIZE)
    ) tdma (
        .clock(clock),
        .reset(reset),
        .deltaT(periods),
        .selection(schedulers_to_selector[0])
    );
    
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
    
endmodule