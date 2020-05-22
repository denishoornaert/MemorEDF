`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: EDF
// Module Name: EDF
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


module EDF #(
        parameter NUMBER_OF_QUEUES = 4,
        parameter REGISTER_SIZE    = 32
    )
    (
        clock,
        reset,
        deadlines,
        periods,
        selection
    );
    
    localparam MAX_VALUE = (2**REGISTER_SIZE)-1;
    
    // Input definition
    input                                                clock;
    input                                                reset;
    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] deadlines;
    input [NUMBER_OF_QUEUES-1 : 0] [REGISTER_SIZE-1 : 0] periods;
    
    // Output definition
    output [$clog2(NUMBER_OF_QUEUES)-1 : 0] selection;
    
    reg [REGISTER_SIZE-1 : 0] counters [NUMBER_OF_QUEUES];
    reg [REGISTER_SIZE-1 : 0] differences [NUMBER_OF_QUEUES];
    
    reg [$clog2(NUMBER_OF_QUEUES)-1 : 0] selected;
    assign selection = selected;
    
    wire            [REGISTER_SIZE-1 : 0] value [$clog2(NUMBER_OF_QUEUES)];
    wire [$clog2(NUMBER_OF_QUEUES)-1 : 0] id [$clog2(NUMBER_OF_QUEUES)];
    
    always @(posedge clock)
    begin
        if(reset)
        begin
            for(int i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
            begin
                counters[i] <= 0;
            end
        end
        else
        begin
            // Compute all the differnces between the current time and the associate deadline
            for(int i = 0; i < NUMBER_OF_QUEUES; i = i + 1)
            begin
                counters[i]    <= (counters[i] <= periods[i])? counters[i]+1 : 0;
                differences[i] <= (deadlines[i] <= counters[i])? deadlines[i]-counters[i] : MAX_VALUE;
            end
            // Root the core id with the shortest time difference to the selected register
            selected <= (value[0] < value[1])? id[0] : id[1];
        end
    end
    
    assign {id[0], value[0]} = (differences[0] < differences[1])? {2'h0, differences[0]} : {2'h1, differences[1]};
    assign {id[1], value[1]} = (differences[2] < differences[3])? {2'h2, differences[2]} : {2'h3, differences[3]};
    
endmodule
