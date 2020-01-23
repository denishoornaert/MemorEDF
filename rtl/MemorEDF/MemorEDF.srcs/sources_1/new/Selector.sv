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
    parameter INPUTS = 4,
    parameter INPUT_SIZE = 8
    )
    (
    clock,
    reset,
    index,
    values,
    outcome
    );
    
    function integer clog2;
        input integer value;
        begin
            value = value-1;
            for (clog2=0; value>0; clog2=clog2+1)
                value = value>>1;
        end
    endfunction
    
    // Definition of the module IOs
    input                        clock;
    input                        reset;
    input  [$clog2(INPUTS)-1 : 0] index;
    input  [INPUT_SIZE-1    : 0] values [INPUTS];
    output [INPUT_SIZE-1    : 0] outcome;
    
    // Output register(s) definition
    reg [INPUT_SIZE-1 : 0] internalOutcome;
    
    // External routing of the registers
    assign outcome = internalOutcome;
    
    // Running behaviour of the micro-architecture
    always @(posedge clock or reset)
    begin
        if(reset)
        begin
            internalOutcome <= 0;
        end
        else
        begin
            integer i;
            for (i = 0; i < INPUTS; i = i+1)
            begin
                if(index == i)
                begin
                    internalOutcome <= values[i];
                end 
            end
        end
    end
    
endmodule