`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2026 10:49:50
// Design Name: 
// Module Name: top_FIFO_tb
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


module top_FIFO_tb(


    );
    reg clk, rst; 
    reg [7:0]data_in_top;
    wire [7:0]data_out_top;
    
    top_FIFO top_fifo(clk, rst, data_in_top, data_out_top);
    
    initial begin
        {clk, rst, data_in_top } = 0;
        end
     
     always  #5 clk = ~clk;
     
     initial 
         begin
         rst =1;
         #10;
         rst = 0;
         
         data_in_top = 20;
         #10;
         data_in_top = 30;
         #10;
          data_in_top = 50;
          #100;
          $finish;
          
           end
        
endmodule
