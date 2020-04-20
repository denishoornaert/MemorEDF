`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: TB_FP
// Module Name: TB_FP
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


module TB_FP();

    reg clock;
    reg reset;
    
    reg [3 : 0] [31 : 0] priorities;
    reg          [3 : 0] free;
    
    wire         [1 : 0] selection;
    
    FP #(
        .NUMBER_OF_QUEUES(4),
        .PRIORITY_SIZE(32)
    ) fp (
        .clock(clock),
        .reset(reset),
        .priorities(priorities),
        .empty(free),
        .selection(selection)
    );
    
    // Generation the clock signal
    always
    begin
        clock <= 1;
        #5;
        clock <= 0;
        #5;
    end
    
    initial
    begin
        reset <= 1;
        priorities[0] <= 15;
        priorities[1] <= 14;
        priorities[2] <= 13;
        priorities[3] <= 12;
        free <= 4'b1111;
        #10ns;
        
        reset <= 0;
        #10ns;
        
        free <= 4'b1110;
        assert(selection == 0) else $display("Selection should be equal to 0");
        #10ns;
        
        free <= 4'b1101;
        assert(selection == 1) else $display("Selection should be equal to 1");
        #10ns;
        
        free <= 4'b1100;
        assert(selection == 0) else $display("Selection should be equal to 0");
        #10ns;
        
        free <= 4'b1011;
        assert(selection == 2) else $display("Selection should be equal to 2");
        #10ns;
        
        free <= 4'b1001;
        assert(selection == 0) else $display("Selection should be equal to 0");
        #10ns;
        
        free <= 4'b0111;
        assert(selection == 3) else $display("Selection should be equal to 3");
        #10ns;
        
        assert(selection == 1) else $display("Selection should be equal to 1");
        #10ns;
        
        $finish;
    end

endmodule
