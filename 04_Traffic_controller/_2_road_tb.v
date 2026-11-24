`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2026 14:50:24
// Design Name: 
// Module Name: _2_road_tb
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


module _2_road_tb(

    );
    
    reg clk, rst;
    wire A_g, A_y, A_r, B_g, B_y, B_r;
    
    _2_road dut(clk, rst, A_g, A_y, A_r, B_g, B_y, B_r);
    
    initial 
        begin
            {clk, rst} = 0;
            end
            
    always #5 clk = ~clk;
    
    initial 
        begin
            rst = 1'b1;
            #10;
            rst = 1'b0;
            #300;
            
            rst = 1'b1;
            #10;
            rst = 1'b0;
            #300
            
            $finish;
            end
            
            
endmodule
