`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2020 14:48:58
// Design Name: 
// Module Name: Mapper
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

// TODO works well for PORTS = 2 !!
module Mapper #(
        parameter ID_WIDTH        = 6,
        parameter NUMBER_OF_PORTS = 2
    )
    (
        // Mainsteram Inputs
        input  wire                                 clock,
        input  wire                                 reset,
        // Insert/Update Inputs
        input  wire                [ID_WIDTH-1 : 0] id_1,
        input  wire [$clog2(NUMBER_OF_PORTS)-1 : 0] port_1,
        input  wire                                 valid_1,
        // Insert/Update Inputs
        input  wire                [ID_WIDTH-1 : 0] id_2,
        input  wire [$clog2(NUMBER_OF_PORTS)-1 : 0] port_2,
        input  wire                                 valid_2,
        // Insert/Update Inputs
        input  wire                [ID_WIDTH-1 : 0] id_3,
        input  wire [$clog2(NUMBER_OF_PORTS)-1 : 0] port_3,
        input  wire                                 valid_3,
        // Insert/Update Inputs
        input  wire                [ID_WIDTH-1 : 0] id_4,
        input  wire [$clog2(NUMBER_OF_PORTS)-1 : 0] port_4,
        input  wire                                 valid_4,
        // Look=up Inputs & Outputs
        input  wire                [ID_WIDTH-1 : 0] write_look_after,
        output wire [$clog2(NUMBER_OF_PORTS)-1 : 0] write_came_from,
        // Look=up Inputs & Outputs
        input  wire                [ID_WIDTH-1 : 0] read_look_after,
        output wire [$clog2(NUMBER_OF_PORTS)-1 : 0] read_came_from
    );
    
    // Internal registers/wires
    reg  [(2**ID_WIDTH)-1 : 0] origins;
    wire [(2**ID_WIDTH)-1 : 0] mask_1;
    wire [(2**ID_WIDTH)-1 : 0] mask_2;
    wire [(2**ID_WIDTH)-1 : 0] mask_3;
    wire [(2**ID_WIDTH)-1 : 0] mask_4;
    
    // Internal process
    assign mask_1 = 0 | ((valid_1 & port_1) << id_1);   
    assign mask_2 = 0 | ((valid_2 & port_2) << id_2);
    assign mask_3 = 0 | ((valid_3 & port_3) << id_3);   
    assign mask_4 = 0 | ((valid_4 & port_4) << id_4);
    
    // Process for storing the origin
    always @(posedge clock)
    begin
        if(reset)
        begin
            for (int i = 0; i < (2**ID_WIDTH); i += 1)
            begin
                origins[i] <= 0;
            end
        end
        else
        begin
//            if(valid_1 | valid_2 | valid_3 | valid_4)
//            begin
//                origins <= origins | mask_1 | mask_2 | mask_3 | mask_4;
//            end
            for (int i = 0; i < (2**ID_WIDTH); i += 1)
            begin
                if(valid_1 & (i == id_1))
                    origins[i] <= port_1;
                else if(valid_2 & (i == id_2))
                    origins[i] <= port_2;
                else if(valid_3 & (i == id_3))
                    origins[i] <= port_3;
                else if(valid_4 & (i == id_4))
                    origins[i] <= port_4;
            end
        end
    end
    
    // Isolate the wanted bit by shifting a 'one' by the ID, or it with the stored vector of origins and, finally, reduce or the outcome.
    assign write_came_from = |((1 << write_look_after) & origins);
    assign read_came_from  = |((1 << read_look_after ) & origins);
    
endmodule
