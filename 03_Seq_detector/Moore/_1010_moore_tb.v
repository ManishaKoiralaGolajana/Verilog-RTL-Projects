`timescale 1ns / 1ps

// Project: 1010 Sequence Detector
// Testbench: Moore FSM
// Description: Verification of 1010 sequence detection


module _1010_moore_tb(

    );
    
    reg clk, rst, din;
    wire detect;
    
    _1010_moore dut(clk, rst, din, detect);
    
    initial 
        {clk, rst, din} = 0;
     
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
