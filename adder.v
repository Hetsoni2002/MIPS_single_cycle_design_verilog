`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Het soni
// 
// Create Date:    17:26:36 10/11/2022 
// Design Name: 
// Module Name:    adder 
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
module adder(sum,cout,a,b,cin);  
 input  a,b,cin;  
 output cout,sum;  
 // sum = a xor b xor cin  
 xor #(50) (sum,a,b,cin);  
 // carry out = a.b + cin.(a+b)  
 and #(50) and1(c1,a,b);  
 or #(50) or1(c2,a,b);  
 and #(50) and2(c3,c2,cin);  
 or #(50) or2(cout,c1,c3);  
 endmodule   
