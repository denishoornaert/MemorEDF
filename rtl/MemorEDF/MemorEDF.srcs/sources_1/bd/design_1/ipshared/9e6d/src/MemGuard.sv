`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: MemGuard
// Module Name: MemGuard
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


module MemGuard #(
        parameter NUMBER_OF_QUEUES = 4,
        parameter REGISTER_SIZE    = 4
    )
    (
        clock,
        reset,
        budgets,
        empty,
        consumed,
        valid,
        selection
    );
    localparam PRIORITY_SIZE = $clog2(NUMBER_OF_QUEUES)+1;
    
    // Input definition
    input  wire                                                clock;
    input  wire                                                reset;
    input  wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] budgets;
    input  wire                       [NUMBER_OF_QUEUES-1 : 0] empty;
    input  wire                       [NUMBER_OF_QUEUES-1 : 0] consumed;
    
    // Output definition
    output reg                                   valid;
    output wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] selection;
    
    
    // Registers tracking the amount of transactions already performed for each queue
    reg  [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] core_counter;
    reg                        [NUMBER_OF_QUEUES-1 : 0] core_active;
    
    wire [NUMBER_OF_QUEUES-1 : 0] [PRIORITY_SIZE-1 : 0] priorities;
    
    assign valid = |(core_active & (~empty));
    genvar i;
    for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
    begin
        assign priorities[i] = (core_active[i])? i+1 : 0;
    end 
    
    Combinatorial_FP #(
        .NUMBER_OF_QUEUES(NUMBER_OF_QUEUES),
        .PRIORITY_SIZE(PRIORITY_SIZE)
    ) fp (
        .clock(clock),
        .reset(reset),
        .priorities(priorities),
        .empty(empty),
        .selection(selection)
    );
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            integer i;
            for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
            begin
                core_counter[i] <= 0;
                core_active[i] <= 0;
            end
        end
        else
        begin
            integer i;
            for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
            begin
                if(consumed[i])
                begin
                    core_active[i] <= 0;
                    core_counter[i] <= 0;
                end
                else
                begin
                    core_active[i] <= (core_counter[i] >= budgets[i]);
                    core_counter[i] <= core_counter[i] + (core_counter[i] <= budgets[i]);
                end
            end 
        end
    end
    
endmodule
