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
        parameter REGISTER_SIZE    = 4,
        parameter PRIORITY_SIZE    = 4
    )
    (
        clock,
        reset,
        budgets,
        priorities_input,
        empty,
        //consumed,
        update,
        valid,
        selection
    );
    
    // Input definition
    input  wire                                                clock;
    input  wire                                                reset;
    input  wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] budgets;
    input  wire [NUMBER_OF_QUEUES-1 : 0] [PRIORITY_SIZE-1 : 0] priorities_input;
    input  wire                       [NUMBER_OF_QUEUES-1 : 0] empty;
    //input  wire                       [NUMBER_OF_QUEUES-1 : 0] consumed;
    input  wire                                                update;
    
    // Output definition
    output reg                                   valid;
    output wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] selection;
    
    reg                        [NUMBER_OF_QUEUES-1 : 0] hasBeenUpdated;
    reg                                                 update_ff;
//    genvar q;
//    for (q = 0; q < NUMBER_OF_QUEUES; q += 1)
//    begin
//        assign hasBeenUpdated = (~update)&update_ff&(last_selected == i);
//    end
    
    reg                [$clog2(NUMBER_OF_QUEUES)-1 : 0] last_selected;
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            update_ff <= 0;
        end
        else
        begin
            update_ff <= update;
        end
    end
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            last_selected <= 0;
        end
        else if (update)
            last_selected <= selection;
    end
    
    // Registers tracking the amount of transactions already performed for each queue
    reg  [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] core_counter;
    reg                        [NUMBER_OF_QUEUES-1 : 0] core_active;
    
    wire [NUMBER_OF_QUEUES-1 : 0] [PRIORITY_SIZE-1 : 0] priorities;
    
    assign valid = |(core_active & (~empty));
    genvar i;
    for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
    begin
        assign priorities[i] = (core_active[i])? priorities_input[i] : 0;
        //assign priorities[i] = (core_active[i])? i+1 : 0;
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
//            integer i;
//            for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
//            begin
//                if(consumed[i] | (budgets[i] == 32'hffffffff)) //if(consumed[i] | (budgets[i] == 0))
//                begin
//                    core_active[i] <= (0 == budgets[i]);
//                    core_counter[i] <= (0 < budgets[i]);
//                end
//                else
//                begin
//                    core_active[i] <= (core_counter[i] >= budgets[i]);
//                    core_counter[i] <= core_counter[i] + (core_counter[i] < budgets[i]);
//                end
//            end 
            integer i;
            for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
            begin
                if(((hasBeenUpdated[i] & core_active[i]) | empty[i]) | (budgets[i] == 0))
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
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            integer i;
            for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
            begin
                hasBeenUpdated[i] <= 0;           
            end
        end
        else
        begin
            integer i;
            for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
            begin
                if((hasBeenUpdated[i] & core_active[i]) | (budgets[i] == 0))
                begin
                    hasBeenUpdated[i] <= 0;           
                end
                else if(~hasBeenUpdated[i])
                begin
                    hasBeenUpdated[i] <= (~update)&update_ff&(last_selected == i);                    
                end
            end
        end
    end
    
endmodule
