`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2026 10:49:57
// Design Name: 
// Module Name: _8_8_RAM_tb
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


module _8_8_RAM_tb(

    );
    
    reg clk, rst, wr_en;
    reg [2:0] addr;
    reg [7:0] d_in;
    wire [7:0] d_out;
    
    _8_8_RAM dut(
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .add(addr),
        .data_in(d_in),
        .data_out(d_out)
        );
        
        initial
        {clk, rst, wr_en} =0;
        
        always #5 clk = ~clk;
        
        initial
            begin
                rst = 1;
                #10;
                rst =0;
                wr_en = 1;
                addr <= 3'd3;
                d_in <= 8'hA2;
                #10;
                
                addr <= 3'd5;
                d_in <= 8'hB4;
                #10;
                
                addr <= 3'd7;
                d_in <= 8'h56;
                #10;
                
                wr_en = 0;
                addr <= 3'd3;
                #10;
                addr <= 3'd7;
                #50;
                
                $finish;
                
                end
                  
              
        
        
endmodule
