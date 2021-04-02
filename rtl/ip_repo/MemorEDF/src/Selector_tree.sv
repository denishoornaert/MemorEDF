`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/18/2020 04:17:46 PM
// Design Name: Selector
// Module Name: Selector
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

// INPUTS must be a power of 2!
module Selector_tree #(
        parameter INPUTS     = 4,
        parameter INPUT_SIZE = 8
    )
    (
        clock,
        reset,
        index,
        values,
        outcome
    );
    
    // Definition of the module IOs
    input  wire                        clock;
    input  wire                        reset;
    input  wire [$clog2(INPUTS)-1 : 0] index;
    input  wire     [INPUT_SIZE-1 : 0] values [INPUTS];
//    output reg      [INPUT_SIZE-1 : 0] outcome;
    output wire      [INPUT_SIZE-1 : 0] outcome;
    
//    // Output register(s) definition
    wire [15 : 0][INPUT_SIZE-1 : 0] outcomes;
    
    // Running behaviour of the micro-architecture
    genvar i;
    
    
    assign outcomes[0] = values[0] & ((index == 0)? {INPUT_SIZE{1'b1}} : 0);
    assign outcomes[1] = values[1] & ((index == 1)? {INPUT_SIZE{1'b1}} : 0);
    assign outcomes[2] = values[2] & ((index == 2)? {INPUT_SIZE{1'b1}} : 0);
    assign outcomes[3] = values[3] & ((index == 3)? {INPUT_SIZE{1'b1}} : 0);
    assign outcomes[4] = values[4] & ((index == 4)? {INPUT_SIZE{1'b1}} : 0);
    assign outcomes[5] = values[5] & ((index == 5)? {INPUT_SIZE{1'b1}} : 0);
    assign outcomes[6] = values[6] & ((index == 6)? {INPUT_SIZE{1'b1}} : 0);
    assign outcomes[7] = values[7] & ((index == 7)? {INPUT_SIZE{1'b1}} : 0);
    
    assign outcomes[ 8] = outcomes[0] | outcomes[1];
    assign outcomes[ 9] = outcomes[2] | outcomes[3];
    assign outcomes[10] = outcomes[4] | outcomes[5];
    assign outcomes[11] = outcomes[6] | outcomes[7];
    
    assign outcomes[12] = outcomes[ 8] | outcomes[ 9];
    assign outcomes[13] = outcomes[10] | outcomes[11];
    
    assign outcomes[14] = outcomes[12] | outcomes[13];
    
    assign outcome = outcomes[14];
    
endmodule