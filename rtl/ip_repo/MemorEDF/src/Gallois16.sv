`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technical University of Munich
// Engineer: Denis Hoornaert (denis.hoornaert@tum.de)
//
// Create Date: 12/21/2020 11:24:06 AM
// Design Name: Gallois16
// Module Name: Gallois16
// Project Name: MemorEDF
// Target Devices: Xilinx ZCU102, Generic
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


module Gallois16 #(
        parameter integer STATE_WIDTH      = 16,
        parameter integer NUMBER_OF_QUEUES = 4
    )(
        input  wire                                  clock,
        input  wire                                  reset,
        input  wire         [NUMBER_OF_QUEUES-1 : 0] empty,
        output wire                                  valid,
        output wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] selection
    );
    localparam PRIORITY_SIZE = $clog2(NUMBER_OF_QUEUES);

    reg                                [STATE_WIDTH-1 : 0] state;
    reg  [(2*NUMBER_OF_QUEUES)-1 : 0][PRIORITY_SIZE-1 : 0] pristine_priorities;
    wire     [NUMBER_OF_QUEUES-1 : 0][PRIORITY_SIZE-1 : 0] priorities;
    
    assign valid = |(~empty);

    assign priorities = (pristine_priorities >> ((state%NUMBER_OF_QUEUES)*PRIORITY_SIZE));

    always @(posedge clock)
    begin
        if(reset)
        begin
            state <= (1 << (STATE_WIDTH-1));
        end
        else
        begin
            for (int i = STATE_WIDTH-1; i >= 0; i -= 1)
            begin
                if (i == 15)
                    state[i] <= state[0];
                else if((i == 13) | (i == 12) | (i == 10))
                    state[i] <= state[i+1]^state[0];
                else
                    state[i] <= state[i+1];
            end
        end
    end

    always @(posedge clock)
    begin
        if(reset)
        begin
            for (int i = 0; i < (2*NUMBER_OF_QUEUES); i += 1)
                pristine_priorities[i] <= (i%NUMBER_OF_QUEUES);
        end
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

endmodule
