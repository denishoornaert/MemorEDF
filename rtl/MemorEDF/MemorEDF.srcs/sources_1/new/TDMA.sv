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
    )
    (
    clock,
    reset,
    inDelta0,
    inDelta1,
    inDelta2,
    inDelta3,
    selection
    );

    // Input definition
    input clock;
    input reset;
    input [31 : 0] inDelta0;
    input [31 : 0] inDelta1;
    input [31 : 0] inDelta2;
    input [31 : 0] inDelta3;
    
    // Output definition
    output [1 : 0] selection;
    
    // Output registers
    reg [1 : 0] internalSelection;
         
    // Definition of the internal register(s)
    reg [31 : 0] counter;
    reg [31 : 0] delta0;
    reg [31 : 0] delta1;
    reg [31 : 0] delta2;
    reg [31 : 0] delta3;
    
    assign selection = internalSelection;
    
    wire [31 : 0] delta01;
    wire [31 : 0] delta012;
    wire [31 : 0] delta0123;
    
    assign delta01   = delta0   + delta1;
    assign delta012  = delta01  + delta2;
    assign delta0123 = delta012 + delta3;
    
    always @(posedge clock or reset)
    begin
        if(reset)
        begin
            internalSelection <= 0;
            counter <=  0;
            delta0  <= inDelta0;
            delta1  <= inDelta1;
            delta2  <= inDelta2;
            delta3  <= inDelta3;
        end
        else
        begin
            if(counter == delta0123-1)
            begin
                counter <= 0;
            end
            else
            begin
                counter <= counter+1;
            end
            if(0 <= counter & counter < delta0)
            begin
                internalSelection <= 0;
            end
            else if(delta0 <= counter & counter < delta01)
            begin
                internalSelection <= 1;
            end
            else if(delta01 <= counter & counter < delta012)
            begin
                internalSelection <= 2;
            end
            else
            begin
                internalSelection <= 3;
            end
        end 
    end

endmodule