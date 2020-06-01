`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert 
// 
// Create Date: 01/21/2020 11:25:58 AM
// Design Name: 
// Module Name: TB2_Queue
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


module TB2_Queue();

    reg          clock;
    reg          reset;
    reg  [7 : 0] valueIn;
    reg          valueInValid;
    reg          consume;
    
    wire [7 : 0] valueOut;
    wire         empty;
    wire         full;

    Queue queue(clock, reset, valueIn, valueInValid, consume, valueOut, empty, full);
    
endmodule