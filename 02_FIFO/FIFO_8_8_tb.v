`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2026 23:17:50
// Design Name: 
// Module Name: FIFO_8_8_tb
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


module FIFO_8_8_tb(

    );
reg clk, rst, wr_en, rd_en;
reg [7:0]data_in;
wire [7:0]data_out;

FIFO_8_8 dut(clk, rst, wr_en, rd_en, data_in, data_out);

initial 
    {clk, rst, wr_en, rd_en} = 0;
    
always #5 clk = ~clk;

initial
    begin
        rst = 1;
        #10;
        rst = 0;
        wr_en = 1'b1;
        data_in <= 8'hA6;
        
        #10;
        data_in <= 8'hB8;
        #10;
        data_in <= 8'hFF;
        #10;
        wr_en =1'b0;
        #10;
        rd_en = 1;
        #50;
        
        $finish;
        
        end
endmodule
