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


module TB2_Selector();

    // Inputs
    reg  clock;
    reg  reset;
    reg  [2 : 0] index;
    reg  [31 : 0] values [7];
    
    // Output
    wire [31 : 0] outcome;

    Selector #(7, 32) selector(clock, reset, index, values, outcome);
    
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
        values[0] <=  1;
        values[1] <=  2;
        values[2] <=  4;
        values[3] <=  8;
        values[4] <= 16;
        values[5] <= 32;
        values[6] <= 64;
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
        index <= 4;
        #10;
        // Value one should be selected and index switched to 1
        if(outcome != 16)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        index <= 5;
        #10;
        // Value one should be selected and index switched to 1
        if(outcome != 32)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        index <= 6;
        #10;
        // Value one should be selected and index switched to 1
        if(outcome != 64)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        index <= 0;
        #30;
        $finish;
    end
endmodule