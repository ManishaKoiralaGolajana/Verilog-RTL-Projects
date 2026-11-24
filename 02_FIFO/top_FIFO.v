`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2026 10:33:53
// Design Name: 
// Module Name: top_FIFO
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


module top_FIFO(
input clk, rst, 
input [7:0] top_data_in,
output wire [7:0] top_data_out

    );
    wire [7:0]data_out_a;         //output of mod_A will be given to data_in of fifo
    wire [7:0]data_out_fifo;      // dat_out of fifo will be given to data_in of mod_b
    wire full, empty;
    wire wr_en, rd_en;             // wr_en & rd_en to fifo will be provided through mod_a & mod_b respectively
    mod_a mod1(clk , rst, top_data_in, data_out_a , wr_en);
    
    FIFO_8_8 fifo(clk, rst, wr_en, rd_en, data_out_a, data_out_fifo , full, empty);
    
    mod_b mod2(clk, rst, data_out_fifo, top_data_out , rd_en);
     
    
    
endmodule
