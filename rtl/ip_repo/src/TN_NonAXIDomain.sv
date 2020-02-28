`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Technische Universitat Munchen. Chair of Cyber-Physical Systems
// Engineer: Denis Hoornaert
// 
// Create Date: 01/18/2020 05:19:46 PM
// Design Name: NonAXIDomain
// Module Name: NonAXIDomain
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


module TN_NonAXIDomain();

    reg                   clock;
    reg                   reset;
    reg   [(128)-1 : 0] packet;
    reg                   valid; // Valid input
    reg           [1 : 0] id;
    reg [$clog2(2)-1 : 0] mode;
    reg        [32-1 : 0] deadlines [4];
    reg        [32-1 : 0] periods [4];
    reg                   consumed;
    
    wire    [(128)-1 : 0] packet_out;
    wire                  activate_out;

    NonAXIDomain #(4, 128, 16, 32, 1, 1, 2, 128) nonaxidomain (clock, reset, packet, valid, id, mode, deadlines, periods, packet_out, consumed, activate_out);
    
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
        packet <= 128'h80000000000000000000000000000000;
        valid <= 0;
        consumed <= 0;
        id <= 2'b0;
        mode <= 0; // TDMA
        deadlines[0] <= 32'h00000000;
        deadlines[1] <= 32'h00000000;
        deadlines[2] <= 32'h00000000;
        deadlines[3] <= 32'h00000000;
        periods[0] <= 32'h00000100;
        periods[1] <= 32'h00000000;
        periods[2] <= 32'h00000000;
        periods[3] <= 32'h00000000;
        #10ns;
        reset <= 0;
        valid <= 0;
        #10ns;
        packet <= packet+1;
        id <= id + 1;
        valid <= 1;
        #10ns;
        valid <= 0;
        #10ns;
        packet <= packet+1;
        id <= id + 1;
        valid <= 1;
        #10ns;
        valid <= 0;
        #10ns;
        packet <= packet+1;
        id <= id + 1;
        valid <= 1;
        #10ns;
        valid <= 0;
        #10ns;
        packet <= packet+1;
        id <= id + 1;
        valid <= 1;
        #10ns;
        valid <= 0;
        #10ns;
        packet <= packet+1;
        id <= id + 1;
        valid <= 1;
        #10ns;
        valid <= 0;
        #10ns;
        packet <= packet+1;
        id <= id + 1;
        valid <= 1;
        #10ns;
        valid <= 0;
        #10ns;
        packet <= packet+1;
        id <= id + 1;
        valid <= 1;
        #10ns;
        valid <= 0;
        #10ns;
        packet <= packet+1;
        id <= id + 1;
        valid <= 1;
        #10ns;
        valid <= 0;
        #40ns;
        
        // Fill the first queue
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #40ns;
        
        // Extract queue content
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000004) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000008) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000009) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h8000000000000000000000000000000a) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h8000000000000000000000000000000b) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h8000000000000000000000000000000c) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h8000000000000000000000000000000d) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h8000000000000000000000000000000e) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h8000000000000000000000000000000f) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000010) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000011) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000012) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000013) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000014) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000015) else $error("Expecting other packet");
        #10ns;
        consumed <= 1;
        #10ns;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000016) else $error("Expecting other packet");
        #50ns;
        
        // Fill the first queue
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #10ns;
        id <= 0;
        valid <= 1;
        packet <= packet+1;
        #10ns;
        valid <= 0;
        #40ns;
        
        
        // Extract queue content
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000004) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        //consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        //assert(packet_out == 128'h80000000000000000000000000000008) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000009) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        //consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        //assert(packet_out == 128'h8000000000000000000000000000000a) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h8000000000000000000000000000000b) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        //consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        //assert(packet_out == 128'h8000000000000000000000000000000c) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h8000000000000000000000000000000d) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        //consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        //assert(packet_out == 128'h8000000000000000000000000000000e) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h8000000000000000000000000000000f) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        //consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        //assert(packet_out == 128'h80000000000000000000000000000010) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000011) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        //consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        //assert(packet_out == 128'h80000000000000000000000000000012) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000013) else $error("Expecting other packet");
        #10ns;
        
        id <= 1;
        valid <= 1;
        packet <= packet+1;
        //consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        //assert(packet_out == 128'h80000000000000000000000000000014) else $error("Expecting other packet");
        #10ns;
        
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000015) else $error("Expecting other packet");
        #10ns;
        
        //consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        //assert(packet_out == 128'h80000000000000000000000000000016) else $error("Expecting other packet");
        #10ns;
                
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000015) else $error("Expecting other packet");
        #10ns;
        #10ns;
        
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000015) else $error("Expecting other packet");
        #10ns;
        #10ns;
        
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000015) else $error("Expecting other packet");
        #10ns;
        #10ns;
        
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000015) else $error("Expecting other packet");
        #10ns;
        #10ns;
        
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000015) else $error("Expecting other packet");
        #10ns;
        #10ns;
        
        consumed <= 1;
        #10ns;
        valid <= 0;
        consumed <= 0;
        assert(packet_out == 128'h80000000000000000000000000000015) else $error("Expecting other packet");
        #10ns;
        #50ns;
        
        $finish;
    end

endmodule
