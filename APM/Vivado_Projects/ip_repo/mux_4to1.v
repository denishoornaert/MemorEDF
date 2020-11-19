`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2019 02:55:36 PM
// Design Name: 
// Module Name: mux_4to1
// Project Name: 
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


module mux_4to1(
    output reg Y,
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    input wire [1:0] sel
    );
   
    
     always @(A or B or C or D or sel)
     case ( sel )
     2'b00: Y = A;
     2'b01: Y = B;
     2'b10: Y = C;
     2'b11: Y = D;
     default: Y = 16'hxxxx;
     endcase
    
endmodule
