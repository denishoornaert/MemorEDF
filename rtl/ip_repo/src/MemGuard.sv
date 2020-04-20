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
        hyper_period,
        empty,
        valid,
        selection
    );
    
    // Input definition
    input  wire                                                clock;
    input  wire                                                reset;
    input  wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] budgets;
    input  wire                          [REGISTER_SIZE-1 : 0] hyper_period;
    input  wire                       [NUMBER_OF_QUEUES-1 : 0] empty;
    
    // Output definition
    output reg                                   valid;
    output wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] selection;
    
    // Generation of the list of all the possible IDs given the parameters given.
    reg  [NUMBER_OF_QUEUES-1 : 0] [$clog2(NUMBER_OF_QUEUES)-1 : 0] RR;
    
    // Alias for the first element of the id list
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] front;
    assign front = RR[0];
    
    // Registers tracking the amount of transactions already performed for each queue
    reg  [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] amount_of_transactions_already_performed;
    
    // Hyper-period tracker
    reg  [REGISTER_SIZE-1 : 0] hyper_period_counter;
    
    //
    wire [NUMBER_OF_QUEUES-1 : 0] eligible_queues;
    genvar i;
    for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
    begin
        assign eligible_queues[i] = (!empty) & (amount_of_transactions_already_performed[front] < budgets[front]);
    end
    
    assign selection = RR[0];
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            integer i;
            for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
            begin
                RR[i] <= i;
            end
            valid <= 0;
        end
        else
        begin
            if(empty[front] | (amount_of_transactions_already_performed[front] < budgets[front]))
            begin
                RR <= {RR[NUMBER_OF_QUEUES-1 : 1], RR[0]}; // TODO Check if not the other way arround
                valid <= 0;
            end
            else
            begin
                RR <= RR;
                valid <= 1;
            end
        end
    end
    
    always @(posedge clock)
    begin
        if(reset | (hyper_period_counter == hyper_period))
        begin
            integer i;
            for(i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
            begin
                amount_of_transactions_already_performed[i] <= 0;
            end
            hyper_period_counter <= 0;
        end
        else
        begin
            if(valid & (amount_of_transactions_already_performed[front] < budgets[front]))
            begin
                amount_of_transactions_already_performed[front] <= amount_of_transactions_already_performed[front] + 1;
            end
            else
            begin
                amount_of_transactions_already_performed[front] <= amount_of_transactions_already_performed[front];
            end
            hyper_period_counter <= hyper_period_counter + 1;
        end
    end
    
endmodule
