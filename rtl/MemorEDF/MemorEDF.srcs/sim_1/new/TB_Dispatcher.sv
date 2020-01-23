`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/23/2020 02:21:36 PM
// Design Name: 
// Module Name: TB_Dispatcher
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


module TB_Dispatcher();

    reg         clock;
    reg         reset;
    reg [7 : 0] packetIn;
    reg         valid;
    reg [1 : 0] id;
    
    wire [7 : 0] packetsOut [3 : 0];
    wire [3 : 0] produced;

    Dispatcher dispatcher(clock, reset, packetIn, valid, id, packetsOut, produced);
    
    always
    begin
        clock <= 0;
        #5;
        clock <= 1;
        #5;
    end
    
    initial
    begin
        reset <= 1;
        packetIn <= 42;
        valid <= 0;
        id <= 0;
        #10;
        reset <= 0;
        #10;
        // Valid not set. Expecting all outputs to 0.
        if(packetsOut[0] != 0 & produced[0 : 0] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[1] != 0 & produced[1 : 1] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[2] != 0 & produced[2 : 2] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[3] != 0 & produced[3 : 3] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        valid <= 1;
        id <= 0;
        #10;
        // Expecting 
        if(packetsOut[0] != 42 & produced[0] != 1)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[1] != 0 & produced[1] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[2] != 0 & produced[2] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[3] != 0 & produced[3] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        valid <= 1;
        id <= 1;
        #10;
        if(packetsOut[0] != 0 & produced[0] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[1] != 42 & produced[1] != 1)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[2] != 0 & produced[2] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[3] != 0 & produced[3] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        valid <= 1;
        id <= 2;
        #10;
        if(packetsOut[0] != 0 & produced[0] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[1] != 0 & produced[1] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[2] != 42 & produced[2] != 1)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[3] != 0 & produced[3] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        valid <= 1;
        id <= 3;
        #10;
        if(packetsOut[0] != 0 & produced[0] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[1] != 0 & produced[1] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[2] != 0 & produced[2] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[3] != 42 & produced[3] != 1)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        valid <= 0;
        #10;
        if(packetsOut[0] != 0 & produced[0] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[1] != 0 & produced[1] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[2] != 0 & produced[2] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        if(packetsOut[3] != 0 & produced[3] != 0)
        begin
            $display("Outcome output does not respect the specifications!");
            $finish;
        end
        #30;
        $finish;
    end

endmodule