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


module Selector #(
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
    wire [INPUTS-1 : 0][INPUT_SIZE-1 : 0] and_outcomes;
    wire [INPUTS-1 : 0][INPUT_SIZE-1 : 0] or_outcomes;
    
//    // External routing of the registers
//    assign outcome = internalOutcome;
    
//    // Running behaviour of the micro-architecture
//    always @(posedge clock)
//    begin
//        if(reset)
//        begin
//            //internalOutcome <= 0;
//            outcome <= 0;
//        end
//        else
//        begin
//            integer i;
//            for (i = 0; i < INPUTS; i = i+1)
//            begin
//                if(index == i)
//                begin
//                    outcome <= values[i];
//                end 
//            end
//        end
//    end

    genvar i;
    for (i = 0; i < INPUTS; i+=1)
    begin
        assign and_outcomes[i] = values[i] & ((index == i)? {INPUT_SIZE{1'b1}} : 0);        
    end
    
    genvar j;
    assign or_outcomes[0] = and_outcomes[0];
    for (j = 1; j < INPUTS; j+=1)
    begin
        assign or_outcomes[j] = or_outcomes[j-1] | and_outcomes[j];
    end
    
    assign outcome = or_outcomes[INPUTS-1];
    
endmodule