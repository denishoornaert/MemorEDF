`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: TDMA
// Module Name: TDMA
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


module TDMA #(
        parameter NUMBER_OF_QUEUES = 4,
        parameter REGISTER_SIZE    = 32
    )
    (
        clock,
        reset,
        deltaT,
        selection
    );

    // Input definition
    input clock;
    input reset;
    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] deltaT;
    
    // Output definition
    output [$clog2(NUMBER_OF_QUEUES)-1 : 0] selection;
    
    // Output registers
    reg [$clog2(NUMBER_OF_QUEUES)-1 : 0] internalSelection;
         
    // Definition of the internal register(s)
    reg [REGISTER_SIZE-1 : 0] counter;
    reg [REGISTER_SIZE-1 : 0] delta [NUMBER_OF_QUEUES];
    
    assign selection = internalSelection;
    
    wire [REGISTER_SIZE-1 : 0] sums [NUMBER_OF_QUEUES];
    
    genvar i;
    for (i = 1; i < NUMBER_OF_QUEUES; i = i + 1)
    begin
        assign sums[i] = sums[i-1]+delta[i];
    end
    assign sums[0] = delta[0];
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            internalSelection <= 0;
            counter <=  0;
            for (int i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
            begin
                delta[i] <= deltaT[i];
            end
        end
        else
        begin
            // Counter management if sum of the periods reached, then reset
            counter <= (counter == sums[NUMBER_OF_QUEUES-1]-1)? 0 : counter+1;
            // Management of the selections depending on the periods
            // Hard coded first case
            if(0 <= counter & counter < sums[0])
            begin
                internalSelection <= 0;
            end
            // Generation of the other cases
            for (int i = 1; i < NUMBER_OF_QUEUES; i = i + 1)
            begin
                if(sums[i-1] <= counter & counter < sums[i])
                begin
                    internalSelection <= i;
                end
            end
        end 
    end

endmodule