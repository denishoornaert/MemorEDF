`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/18/2020 04:33:14 PM
// Design Name: TB Selector
// Module Name: TB_Selector
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


module TB_Selector();

    // Inputs
    reg  clock;
    reg  reset;
    reg  [1 : 0] index;
    reg  [7 : 0] values [4];
    
    // Output
    wire [7 : 0] outcome;

    Selector selector(clock, reset, index, values, outcome);
    
    // Generation the clock signal
    always
    begin
        clock <= 0;
        #5;
        clock <= 1;
        #5;
    end
    
    // Test bench in itself
    initial
    begin
        // Force reset on the circuit
        reset  <= 1;
        values[0] <= 1;
        values[1] <= 2;
        values[2] <= 4;
        values[3] <= 8;
        index  <= 0;
        #10;
        // Stop reset but do nothing
        reset  <= 0;
        #10;
        // Value one should be selected and index switched to 1
        if(outcome != 1)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        index <= 1;
        #10;
        // Value one should be selected and index switched to 1
        if(outcome != 2)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        index <= 2;
        #10;
        // Value one should be selected and index switched to 1
        if(outcome != 4)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        index <= 3;
        #10;
        // Value one should be selected and index switched to 1
        if(outcome != 8)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        index <= 0;
        #30;
        $finish;
    end
endmodule