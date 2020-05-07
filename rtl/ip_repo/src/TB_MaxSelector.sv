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


module TB_MaxSelector();

    reg  [3 : 0] val1;
    reg  [3 : 0] dis1;
    reg  [3 : 0] val2;
    reg  [3 : 0] dis2;
    wire [3 : 0] val;
    wire [3 : 0] dis;
    
    MaxSelector #(4 , 4) mxs (val1, dis1, val2, dis2, val, dis);
    
    initial
    begin
        val1 <= 4'b0101;
        dis1 <= 4'b0010;
        val2 <= 4'b1100;
        dis2 <= 4'b1000;
        #10ns;
        
        assert(val == val2) else $display("Error");
        #10ns;
        
        $finish;
    end

endmodule
