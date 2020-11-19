`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
//
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: Root
// Module Name: Root
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


module IDTable #(
        parameter NUMBER_OF_PORTS   = 2,
        parameter ID_WIDTH          = 16,
        parameter NUMBER_OF_ENTRIES = 32
    )
    (
        input                                  clock,
        input                                  reset,
        input                 [ID_WIDTH-1 : 0] id,
        input  [$clog2(NUMBER_OF_PORTS)-1 : 0] origin,
        input                                  insert,
        input                                  lookup,
        input                                  invalidate,
        
        output                [ID_WIDTH-1 : 0] answer,
        output                                 hit
    );
    
    // Fields of the table
    reg                                [NUMBER_OF_ENTRIES-1 : 0] valids ; // TODO is it still usefull ??
    reg [NUMBER_OF_ENTRIES-1 : 0][$clog2(NUMBER_OF_PORTS)-1 : 0] origins; // TODO is it usefull if we go for a banked architecture ?
    reg               [NUMBER_OF_ENTRIES-1 : 0] [ID_WIDTH-1 : 0] ids;
    // Internal registers
    reg [$clog2(NUMBER_OF_ENTRIES) : 0] stack_pointer; // Stack-Pointer register
    // Internal temporary signals
    wire [NUMBER_OF_ENTRIES-1 : 0] [$clog2(NUMBER_OF_PORTS)-1 : 0] temp_answer;
    wire                                 [NUMBER_OF_ENTRIES-1 : 0] temp_hit;
    wire                                 [NUMBER_OF_ENTRIES-1 : 0] to_shift;
    reg                                  [NUMBER_OF_ENTRIES-1 : 0] to_shift_reg;
    
    // Look-up the table ofter matching and drive true if there is a match
    genvar i;
    for (i = 0; i < NUMBER_OF_ENTRIES; i+=1)
    begin
        assign temp_hit[i] = (ids[i] == id);
    end
    assign hit = (|temp_hit) & lookup;
    
    // Look-up the table ofter matching IDs and or the outputs
    genvar j;
    for (j = 0; j < NUMBER_OF_ENTRIES; j+=1)
    begin
        assign temp_answer[j] = (ids[j] == id)? ids[j] : 0;
    end
    assign answer = |temp_answer;
    
    // Deduce what has to be shifted
    genvar k;
    assign to_shift[0] = 0 | temp_hit[0];
    for (k = 1; k < NUMBER_OF_ENTRIES; k+=1)
    begin
        assign to_shift[k] = to_shift[k-1] | temp_hit[k];
    end
    
    
    // Manages the table in case of entry inserttion and entry eviction/invalidation
    always @(posedge clock)
    begin
        if(reset)
        begin
            for (int i = 0; i < NUMBER_OF_ENTRIES; i+=1)
            begin
                valids[i] <= 0;
                origins[i] <= 0;
                ids[i] <= 0;
            end
            stack_pointer <= 0;
            to_shift_reg <= 0;
        end
        else
        begin
            $display("index: ", to_shift_reg, " ", to_shift_reg[0], to_shift_reg[1], to_shift_reg[2], to_shift_reg[3], to_shift_reg[4], to_shift_reg[5]);
            to_shift_reg <= to_shift;
            if(insert)
            begin
                // Incremetent the stack pointer
                stack_pointer <= stack_pointer+1;
                // Insert
                valids[stack_pointer] <= 1;
                origins[stack_pointer] <= origin;
                ids[stack_pointer] <= id;
            end
            if(invalidate)
            begin
                // Decrement the stack pointer
                stack_pointer <= stack_pointer-1;
                // Remove entry
                // For all entries in the table after the element to evict, shift them by one position
                for (int p = 1; p < NUMBER_OF_ENTRIES; p+=1)
                begin
                    if(to_shift[p] == 0)
                    begin
                        valids[p-1] <= valids[p];
                        origins[p-1] <= origins[p];
                        ids[p-1] <= ids[p];
                    end
                end
                // If required, fill the last element with zeros
//                if(to_shift_reg[NUMBER_OF_ENTRIES-1] == 1)
//                begin
                    valids[NUMBER_OF_ENTRIES-1] <= 0;
                    origins[NUMBER_OF_ENTRIES-1] <= 0;
                    ids[NUMBER_OF_ENTRIES-1] <= 0;
//                end
            end
        end
    end
    
endmodule
