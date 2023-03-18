`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Het soni
// 
// Create Date:    17:27:44 10/11/2022 
// Design Name: 
// Module Name:    counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter(count,enable,clk,rst_n);  
  input enable,clk,rst_n;  
  output reg[3:0] count;  
  always @(posedge clk or negedge rst_n)  
  begin  
   if(~rst_n) counter <= 4'b0000;  
   else if(enable)  
    counter <= counter + 4'b0001;  
  end  //fpga4student.com: FPga projects, Verilog projects, VHDL projects
 endmodule  
