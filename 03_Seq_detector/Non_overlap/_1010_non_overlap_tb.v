`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2026 14:48:15
// Design Name: 
// Module Name: _1010_non_overlap_tb
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


module _1010_non_overlap_tb(

    );
    
    reg clk, rst, din;
    wire detect;
    
    _1010_non_overlap dut (
        .clk(clk),
        .rst(rst),
        .din(din),
        .detect(detect)
        );
    
   initial begin
    {clk, rst, din} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial
        begin
           rst = 1'b1;
           #10;
           rst = 1'b0;
           #10;
           
           din = 1'b1;
           #10;
           
           din = 1'b0;
           #10;
    
            din = 1'b1;
           #10;
           din = 1'b0;
           #10;
           din = 1'b1;
           #10;
           din = 1'b0;
           #10;
           din = 1'b1;
           #10;
           din = 1'b0;
           #10;
           din = 1'b0;
           #10;
           din = 1'b1;
           #50;

           $finish;
    end
    
    
endmodule
