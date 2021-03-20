`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/23/2020 01:47:46 PM
// Design Name: Dispatcher
// Module Name: Dispatcher
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


module Dispatcher
    #(
        parameter OUTPUTS = 4,
        parameter INPUT_SIZE = 8
    )
    (
        clock,
        reset,
        valid,
        id,
        produced
    );
    
    input wire                         clock;
    input wire                         reset;
    input wire                         valid;
    input wire [$clog2(OUTPUTS)-1 : 0] id;
    
    output wire              [OUTPUTS-1 : 0] produced;

    genvar i;    
    for (i = 0; i < OUTPUTS; i +=1)
    begin
        assign produced[i] = (valid & (id == i));
    end

endmodule