`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
//
// Create Date: 01/17/2020 02:22:57 PM
// Design Name: Queue
// Module Name: Queue
// Project Name: MemorEDF
// Target Devices: Generic
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


module Queue #(
        parameter DATA_SIZE = 8,
        parameter QUEUE_LENGTH = 4,
        parameter REGISTER_SIZE = 32
    )
    (
        input                            clock,
        input                            reset,
        input      [REGISTER_SIZE-1 : 0] higher_threshold,
        input          [DATA_SIZE-1 : 0] valueIn,
        input                            valueInValid,
        input                            consumed,
        output         [DATA_SIZE-1 : 0] valueOut,
        output reg                       empty,
        output reg                       full,
        output reg                       lastElem,
        output                           kill_the_core,
        // BRAM write port
        output wire                              bram_clka,
        output wire            [DATA_SIZE-1 : 0] bram_dina,
        output wire [$clog2(QUEUE_LENGTH)-1 : 0] bram_addra,
        output wire                              bram_wea,
        output wire                              bram_ena,
        // BRAM read port
        output wire                              bram_clkb,
        output wire                              bram_rstb,
        output wire            [DATA_SIZE-1 : 0] bram_dinb,
        output wire [$clog2(QUEUE_LENGTH)-1 : 0] bram_addrb,
        output wire                              bram_enb,
        input  wire            [DATA_SIZE-1 : 0] bram_doutb
    );

    // Internal registers
    reg [$clog2(QUEUE_LENGTH) : 0] counter;
    reg [$clog2(QUEUE_LENGTH) : 0] head;
    reg [$clog2(QUEUE_LENGTH) : 0] tail;

    // External routing
    assign bram_clka  = clock;
    assign bram_dina  = valueIn;
    assign bram_addra = tail;
    assign bram_wea   = valueInValid;
    assign bram_ena   = 1;

    assign bram_clkb  = clock;
    assign bram_rstb  = reset;
    assign bram_addrb = head;
    assign bram_enb   = 1;
    assign valueOut   = bram_doutb;

    assign full     = (counter == QUEUE_LENGTH);
    assign empty    = (counter == 0);  
    assign kill_the_core = ((higher_threshold > 0) & (counter >= higher_threshold));

    always @(posedge clock)
    begin
        if(reset)
        begin
            tail <= 0;
            head <= 0;
        end
        else
        begin
            if(consumed)
                head <= (head+1)%QUEUE_LENGTH;
            if(valueInValid)
                tail <= (tail+1)%QUEUE_LENGTH;
        end
    end

    always @(posedge clock)
    begin
        if(reset)
            counter <= 0;
        else
        begin
            if(consumed & valueInValid)
                counter <= counter;
            else if(consumed)
                counter <= counter-1;
            else if(valueInValid)
                counter <= counter+1;
        end
    end

endmodule