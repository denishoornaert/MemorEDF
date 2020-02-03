`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2020 03:02:41 PM
// Design Name: 
// Module Name: TB_Scheduler
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


module TB_Scheduler();

    reg          clock;
    reg          reset;
    reg          mode;
    reg  [3 : 0] full;
    reg  [3 : 0] empty;
    reg [31 : 0] deadlines [4];
    reg [31 : 0] periods [4];
    reg          consumed;
    
    wire [1 : 0] id;
    wire [0 : 0] hasBeenConsumed [4];
    wire         enable;
    
    Scheduler #(4, 32, 1, 1) scheduler (clock, reset, mode, full, empty, deadlines, periods, id, consumed, hasBeenConsumed, enable);
    
    always
    begin
        clock <= 1;
        #5;
        clock <= 0;
        #5;
    end
    
    initial
    begin
        reset        <= 1;
        mode         <= 0;
        full         <= 4'b0000;
        empty        <= 4'b0000;
        deadlines[0] <=  0;
        deadlines[1] <=  0;
        deadlines[2] <=  0;
        deadlines[3] <=  0;
        periods[0]   <= 16;
        periods[1]   <=  0;
        periods[2]   <=  0;
        periods[3]   <=  0;
        consumed     <= 0;
        #10;
        reset <= 0;
        #10;
        // Nothing should happen
        assert (id == 0) else $error("It's gone wrong");
        #10;
        // Packet consumed: expect enable to be high next clock cycle and hasBeenConsumed[0] to be high
        assert (id == 0) else $error("It's gone wrong");
        consumed <= 1;
        #10;
        assert (id == 0) else $error("It's gone wrong");
        assert (enable == 1) else $error("It's gone wrong");
        assert (hasBeenConsumed[0] == 0) else $error("It's gone wrong");
        assert (hasBeenConsumed[1] == 0) else $error("It's gone wrong");
        assert (hasBeenConsumed[2] == 0) else $error("It's gone wrong");
        assert (hasBeenConsumed[3] == 1) else $error("It's gone wrong");
        consumed <= 0;
        #50;
        // Packet consumed but queue emtpy: expect enable to be low next clock cycle and hasBeenConsumed[0] to be low
        assert (id == 0) else $error("It's gone wrong");
        consumed <= 1;
        empty    <= 4'b0001;
        #10;
        assert (id == 0) else $error("It's gone wrong");
        assert (enable == 0) else $error("It's gone wrong");
        assert (hasBeenConsumed[0] == 0) else $error("It's gone wrong");
        assert (hasBeenConsumed[1] == 0) else $error("It's gone wrong");
        assert (hasBeenConsumed[2] == 0) else $error("It's gone wrong");
        assert (hasBeenConsumed[3] == 1) else $error("It's gone wrong");
        consumed <= 0;
        #50;
        // Packet consumed but queue emtpy: expect enable to be low next clock cycle and hasBeenConsumed[0] to be low
        assert (id == 0) else $error("It's gone wrong");
        consumed <= 1;
        full    <= 4'b0100;
        #10;
        assert (id == 2) else $error("It's gone wrong");
        assert (enable == 1) else $error("It's gone wrong");
        consumed <= 0;
        full    <= 4'b0000;
        #50;
        // Packet consumed but queue emtpy: expect enable to be low next clock cycle and hasBeenConsumed[0] to be low
        assert (id == 0) else $error("It's gone wrong");
        consumed <= 1;
        full    <= 4'b0110;
        #10;
        assert ((id == 2)) else $error("It's gone wrong");
        assert (enable == 1) else $error("It's gone wrong");
        consumed <= 0;
        full    <= 4'b0010;
        #50;
        // Packet consumed but queue emtpy: expect enable to be low next clock cycle and hasBeenConsumed[0] to be low
        assert (id == 1) else $error("id != 0");
        consumed <= 1;
        full    <= 4'b0010;
        #10;
        assert ((id == 1)) else $error("id != 1");
        assert (enable == 1) else $error("enable != 0");
        consumed <= 0;
        full    <= 4'b0000;
        #10;
        $finish;
    end

endmodule
