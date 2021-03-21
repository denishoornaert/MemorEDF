`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: MaxSelector
// Module Name: MaxSelector
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


module MinSelector #(
        parameter VALUE_SIZE = 4
    )(
        input  wire        [VALUE_SIZE-1 : 0] in_value_1,
        input  wire        [VALUE_SIZE-1 : 0] in_value_2,
        output wire        [VALUE_SIZE-1 : 0] out_value
    );
        
    assign out_value = (in_value_1 < in_value_2)? in_value_1 : in_value_2;
    
endmodule
