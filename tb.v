`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Het soni
//
// Create Date:   17:33:03 10/11/2022
// Design Name:   mips_16
// Module Name:   /home/ise/verilog/mips/mips_singlecycle/tb.v
// Project Name:  mips_singlecycle
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips_16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`include "mips_16.v"
module tb_mips16;  
      // Inputs  
      reg clk;  
      reg reset;  
      // Outputs  
      wire [15:0] pc_out;  
      wire [15:0] alu_result;//,reg3,reg4;  
      // Instantiate the Unit Under Test (UUT)  
      mips_16 uut (  
           .clk(clk),   
           .reset(reset),   
           .pc_out(pc_out),   
           .alu_result(alu_result)  
           //.reg3(reg3),  
          // .reg4(reg4)  
      );  
      initial begin  
           clk = 0;  
           forever #10 clk = ~clk;  
      end  
      initial begin  
           // Initialize Inputs  
           //$monitor ("register 3=%d, register 4=%d", reg3,reg4);  
           reset = 1;  
           // Wait 100 ns for global reset to finish  
           #100;  
     reset = 0;  
           // Add stimulus here  
      end  
 endmodule  

