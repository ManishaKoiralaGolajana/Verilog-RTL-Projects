`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2026 21:19:22
// Design Name: 
// Module Name: _8_8_RAM
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


module _8_8_RAM(
    input clk, rst, wr_en,
    input [2:0]add, 
    input [7:0]data_in,
    output reg [7:0]data_out
    );
    
    //creating internal memory
    reg [7:0] mem[7:0];
    integer i;
    
    //reset logic
    always @(posedge clk or rst)
        begin
            if (rst) begin
                for(i = 0;i < 7; i= i+1)
                    mem[i] <= 0;
                 end
             
             else if(wr_en)
                mem[add] <= data_in;
                
             else if (!wr_en)
                data_out <= mem[add];
                
          end      
endmodule
