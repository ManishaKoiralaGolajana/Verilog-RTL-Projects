`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2026 14:25:42
// Design Name: 
// Module Name: _2_road
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


module _2_road(
    input clk, rst,
    output reg A_g, A_y, A_r,    //for road A
    output reg B_g, B_y, B_r    // for road B
    );
    
    parameter A_green = 2'b00;
    parameter A_yellow = 2'b01;
    parameter B_green = 2'b10;
    parameter B_yellow = 2'b11;
    
    reg [3:0]count;               //timer
    reg [1:0] ps, ns;
    
    //present state logic
    always @(posedge clk)
        begin
            if(rst) begin
                ps <= A_green;
                count <= 0;
                end
                
             else begin
                ps <= ns;
                
                if(ps != ns)
                    count <= 0;
                else 
                    count <= count + 1'b1;
                end
         end

                    
       //next state logic
       always@(*) begin
            case(ps)
                A_green: begin
                    if( count == 4'd9)
                        ns = A_yellow;           //after 10 time units green changes to yellow
                    else
                        ns = A_green;     
                    end 
                    
                A_yellow : begin
                    if(count == 4'd2)
                        ns = B_green;
                    else
                        ns = A_yellow;
                    end

                B_green : begin
                    if(count == 4'd9)
                        ns = B_yellow;
                    else
                        ns = B_green;
                     end
                     
                B_yellow : begin
                    if(count == 4'd2)
                        ns = A_green;
                    else 
                        ns = B_yellow;
                     end

                default : ns =  A_green;
                
                
             endcase
          end 
          
    //output logic
    always @(posedge clk) begin
        if(rst)begin
                 A_g <= 1'b0;
                A_y <= 1'b0;
                A_r <= 1'b0;
                B_g <= 1'b0;
                B_y <= 1'b0;
                B_r <= 1'b0;
                end
                
        else begin 
        case(ps)
            A_green : begin
                A_g <= 1'b1;
                A_y <= 1'b0;
                A_r <= 1'b0;
                B_g <= 1'b0;
                B_y <= 1'b0;
                B_r <= 1'b1;
                end
                
            A_yellow : begin
                A_g <= 1'b0;
                A_y <= 1'b1;
                A_r <= 1'b0;
                B_g <= 1'b0;
                B_y <= 1'b0;
                B_r <= 1'b1;
                end
                
            B_green : begin
                A_g <= 1'b0;
                A_y <= 1'b0;
                A_r <= 1'b1;
                B_g <= 1'b1;
                B_y <= 1'b0;
                B_r <= 1'b0;
                end
                
            B_yellow : begin
                A_g <= 1'b0;
                A_y <= 1'b0;
                A_r <= 1'b1;
                B_g <= 1'b0;
                B_y <= 1'b1;
                B_r <= 1'b0;
                end
                
            default : begin
                A_g <= 1'b0;
                A_y <= 1'b0;
                A_r <= 1'b0;
                B_g <= 1'b0;
                B_y <= 1'b0;
                B_r <= 1'b0;
                end
                
           endcase
        end
      end
                                                       
endmodule
