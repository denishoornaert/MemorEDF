`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2020 01:46:10 PM
// Design Name: 
// Module Name: TB_MemGuard
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


module TB_MemGuard();

    reg                  clock;
    reg                  reset;
    
    reg [3 : 0] [31 : 0] budgets;
    reg          [3 : 0] empty;
    reg          [3 : 0] consumed;
    
    wire                 valid;
    wire         [1 : 0] selection;


    MemGuard #(
        .NUMBER_OF_QUEUES(4),
        .REGISTER_SIZE(32)
    ) mg (
        .clock(clock),
        .reset(reset),
        .budgets(budgets),
        .empty(empty),
        .consumed(consumed),
        .valid(valid),
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
        budgets[0] <= 32'h00000008;
        budgets[1] <= 32'h00000010;
        budgets[2] <= 32'h00000018;
        budgets[3] <= 32'h00000020;
        consumed <= 4'b0000;
        #10ns;
        reset <= 0;
        empty <= 4'b1001;
        #300ns;
        consumed <= 4'b0100;
        empty <= 4'b1111;
        #10ns;
        consumed <= 4'b0010;
        empty <= 4'b1111;
        #10ns;
        consumed <= 4'b0000;
        empty <= 4'b1001;
        #300ns;
        consumed <= 4'b0100;
        empty <= 4'b1111;
        #10ns;
        consumed <= 4'b0010;
        empty <= 4'b1111;
        #10ns;
        consumed <= 4'b0000;
        empty <= 4'b1001;
        #300ns;
        consumed <= 4'b0100;
        empty <= 4'b1111;
        #10ns;
        consumed <= 4'b0010;
        empty <= 4'b1111;
        #10ns;
        consumed <= 4'b0000;
        empty <= 4'b1001;
        #300ns;
        consumed <= 4'b0100;
        empty <= 4'b1111;
        #10ns;
        consumed <= 4'b0010;
        empty <= 4'b1111;
        #10ns;
        consumed <= 4'b0000;
        empty <= 4'b1001;
        #300ns;
        consumed <= 4'b0100;
        empty <= 4'b1111;
        #10ns;
        consumed <= 4'b0010;
        empty <= 4'b1111;
        #10ns;
        consumed <= 4'b0000;
        empty <= 4'b1001;
        #300ns;
        consumed <= 4'b0100;
        empty <= 4'b1111;
        #10ns;
        consumed <= 4'b0010;
        empty <= 4'b1111;
        #10ns;
        $finish;
    end

endmodule
