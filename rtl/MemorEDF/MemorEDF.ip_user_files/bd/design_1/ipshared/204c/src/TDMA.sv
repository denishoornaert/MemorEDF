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
        delta,
        valid,
        selection
    );

    // Input definition
    input clock;
    input reset;
    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] delta;

    // Output definition
    output                                  valid;
    output [$clog2(NUMBER_OF_QUEUES)-1 : 0] selection;

    // Output registers
    reg [$clog2(NUMBER_OF_QUEUES)-1 : 0] internalSelection;
    assign selection = internalSelection;

    // Definition of the internal register(s)
    reg [REGISTER_SIZE-1 : 0] counter;


    //wire [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] sums;
    reg [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] sums;

    //
    reg internal_valid;
    assign valid = internal_valid;

//    assign sums[0] = delta[0];
//    assign sums[1] = sums[0]+delta[1];
//    assign sums[2] = sums[1]+delta[2];
//    assign sums[3] = sums[2]+delta[3];
//    genvar i;
//    for (i = 1; i < NUMBER_OF_QUEUES; i = i + 1)
//    begin
//        assign sums[i] = sums[i-1]+delta[i];
//    end

    always @(posedge clock)
    begin
        if(reset)
        begin
            internalSelection <= 0;
            internal_valid <= 0;
            counter <=  0;
            sums[0] <= 0;
            sums[1] <= 0;
            sums[2] <= 0;
            sums[3] <= 0;
        end
        else
        begin
            sums[0] <= delta[0];
            sums[1] <= delta[0]+delta[1];
            sums[2] <= delta[0]+delta[1]+delta[2];
            sums[3] <= delta[0]+delta[1]+delta[2]+delta[3];
            // Counter management if sum of the periods reached, then reset
            counter <= (counter >= sums[NUMBER_OF_QUEUES-1]-1)? 0 : counter+1;
            // Management of the selections depending on the periods
            // Hard coded first case
            if(0 <= counter & counter < sums[0])
            begin
                internalSelection <= 0;
                internal_valid <= 1;
            end
            else if(sums[0] <= counter & counter < sums[1])
            begin
                internalSelection <= 1;
                internal_valid <= 1;
            end
            else if(sums[1] <= counter & counter < sums[2])
            begin
                internalSelection <= 2;
                internal_valid <= 1;
            end
            else if(sums[2] <= counter & counter < sums[3])
            begin
                internalSelection <= 3;
                internal_valid <= 1;
            end
            else
            begin
                internalSelection <= 0;
                internal_valid <= 0;
            end
//            // Generation of the other cases
//            for (int i = 1; i < NUMBER_OF_QUEUES; i = i + 1)
//            begin
//                if(sums[i-1] <= counter & counter < sums[i])
//                begin
//                    internalSelection <= i;
//                end
//            end
        end
    end

endmodule
