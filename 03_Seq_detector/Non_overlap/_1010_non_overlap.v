`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2026 14:26:42
// Design Name: 
// Module Name: _1010_non_overlap
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


module _1010_non_overlap(
    input clk, rst, din, 
    output reg detect
    );
    
    reg [1:0] ps, ns;
    parameter idle = 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    parameter s3 = 2'b11;
    
    
    //present state logic
    always @(posedge clk) begin
        if (rst) begin
            ps <= idle;
            end 
        else
            ps <= ns;
        end 
   
    // next state logic
    
    always @(*) begin

        case (ps)
            idle : begin
//                detect = 1'b0;
                if (din == 1'b1)
                    ns = s1;
                else 
                    ns = idle;
                end
                
           s1 : begin
                if (din == 1'b0)
                    ns = s2;
                else
                    ns = s1;
                end 
                
          s2 : begin
                if(din == 1'b1)
                    ns = s3;
                else 
                    ns = idle;
                end 
                
          s3 : begin
                if (din == 1'b0)begin
                    ns = idle;
//                    detect = 1'b1;
                    end
                else
                    ns = s1;
                end
                
           default : ns = idle;
           
           
           endcase   
       end   
       
       
       //output logic
       
       always@(posedge clk)   
            begin  
                if (rst)
                    detect <= 1'b0;
                else
                    case(ps)
                        idle : detect <= 1'b0;
                        s1 : detect <= 1'b0;
                        s2 : detect <= 1'b0;
                        s3 : begin
                            if (din == 1'b1)
                                detect <= 1'b0;
                            else detect <= 1'b1;
                            end 
                            
                        default : detect <= 1'b0;
                        
                      endcase
                end      
                    
endmodule
