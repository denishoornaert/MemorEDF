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


module Combinatorial_Dispatcher
    #(
        parameter OUTPUTS = 4,
        parameter INPUT_SIZE = 8
    )
    (
        clock,
        reset,
        packetIn,
        valid,
        id,
        packetsOut,
        produced
    );
    
    input                          clock;
    input                          reset;
    input  [INPUT_SIZE-1 : 0]      packetIn;
    input                          valid;
    input  [$clog2(OUTPUTS)-1 : 0] id;
    
    output reg [(INPUT_SIZE*OUTPUTS)-1 : 0] packetsOut;
    output reg             [OUTPUTS-1 : 0] produced;
    
    
    always @(*)
    begin
        if(reset == 1)
        begin
            for(int i = 0; i < OUTPUTS; i = i + 1)
            begin
                packetsOut[i] <= 0;
                produced[i]   <= 0;
            end 
        end
        else
        begin
            for(int i = 0; i < OUTPUTS; i = i + 1)
            begin
                if((id == i) & valid)
                begin
                    packetsOut[i +: 1] <= packetIn;
                    produced[i +: 1]   <= 1;
                end
                else
                begin
                    packetsOut[i +: 1] <= 0;
                    produced[i +: 1]   <= 0;
                end
            end 
        end
    end
endmodule