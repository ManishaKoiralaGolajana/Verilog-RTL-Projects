`timescale 1ns / 1ps

// Project: 1010 Sequence Detector
// FSM Type: Moore
// Description: Detects the binary sequence 1010
// Reset: Synchronous, Active High



module _1010_moore(
input clk, rst, din,
output reg detect
    );
    
    parameter idle = 3'b000;
    parameter s1 = 3'b001;
    parameter s2 = 3'b010;
    parameter s3 =  3'b011;
    parameter s4 = 3'b100;
    
    reg [2:0]ns;
    reg [2:0]ps;
    
    
    //present state logic
    always @(posedge clk) begin
        if(rst)
            ps <= idle;
        else
            ps <= ns;
         end
         
     // next state logic
     always @(*)  
        begin
            case(ps)
                idle : begin
                    if(din == 1'b1)
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
                    if (din == 1'b1)
                        ns = s3;
                     else 
                        ns = idle;
                     end
                
                s3 : begin
                    if(din == 1'b0)
                        ns = s4;
                    else 
                        ns = s1;
                    end 
                    
                 s4 : begin
                    if (din == 1'b1)
                        ns = s1;
                    else
                        ns = idle;
                    end

                 default : ns = idle;
                 
             endcase
          end 
          
          
       // output logic
       always@(posedge clk) begin
        if (rst)
            detect <= 1'b0;
        else
               if (ps == s4)
                    detect <= 1'b1;
                else 
                    detect <= 1'b0;
        end
                                                                
endmodule
