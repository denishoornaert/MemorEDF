`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/20/2020 04:02:46 PM
// Design Name: TB TDMA
// Module Name: TB_TDMA
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


module TB_TDMA();

    reg           clock;
    reg           reset;
    reg  [31 : 0] delta0;
    reg  [31 : 0] delta1;
    reg  [31 : 0] delta2;
    reg  [31 : 0] delta3;
    wire [1 : 0]  selection;
    
    TDMA tdma(clock, reset, delta0, delta1, delta2, delta3, selection);
    
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
        delta0 <= 15;
        delta1 <= 15;
        delta2 <= 15;
        delta3 <= 15;
        #10;
        reset <= 0;
        #10;
        if(selection != 0)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #160;
        if(selection != 1)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end  
        #160;
        if(selection != 2)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #160;
        if(selection != 3)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #160;
        if(selection != 0)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #160;
        if(selection != 1)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end  
        #160;
        if(selection != 2)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #160;
        if(selection != 3)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #160;
        if(selection != 0)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #160;
        if(selection != 1)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end  
        #160;
        if(selection != 2)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #160;
        if(selection != 3)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #30
        // Second test with different reserved time slot sizes
        reset <= 1;
        delta0 <=  4;
        delta1 <=  8;
        delta2 <= 16;
        delta3 <= 32;
        #10;
        reset <= 0;
        #10;
        if(selection != 0)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #40;
        if(selection != 1)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end  
        #80;
        if(selection != 2)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #160;
        if(selection != 3)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #320;
        if(selection != 0)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #40;
        if(selection != 1)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end  
        #80;
        if(selection != 2)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #160;
        if(selection != 3)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #320;
        if(selection != 0)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #40;
        if(selection != 1)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end  
        #80;
        if(selection != 2)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #160;
        if(selection != 3)
        begin
            $display("Selection output does not respect the specifications!");
            $finish;
        end 
        #320;
        #40;
        $finish;
    end

endmodule