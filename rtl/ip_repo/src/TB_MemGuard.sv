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
    reg         [31 : 0] hyper_period;
    reg          [3 : 0] empty;
    
    wire                 valid;
    wire         [1 : 0] selection;


    MemGuard #(
        .NUMBER_OF_QUEUES(4),
        .REGISTER_SIZE(32)
    ) mg (
        .clock(clock),
        .reset(reset),
        .budgets(budgets),
        .hyper_period(hyper_period),
        .empty(empty),
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
        budgets[0] <= 1;
        budgets[1] <= 2;
        budgets[2] <= 3;
        budgets[3] <= 4;
        hyper_period <= 12;
        empty <= 4'b0000;
        #10ns;
        reset <= 0;
        #150ns;
        $finish;
    end

endmodule
