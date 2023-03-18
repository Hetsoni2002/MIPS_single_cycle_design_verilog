`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Het soni
// 
// Create Date:    17:29:37 10/11/2022 
// Design Name: 
// Module Name:    mux2x5to5 
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
module mux2x5to5( AddrOut,Addr0, Addr1, Select);  
 output [4:0] AddrOut; // Address Out  
 input [4:0] Addr0, Addr1; // Address In 1 and 2  
 input Select;  
 mux2_1 mux0(AddrOut[0],Addr0[0],Addr1[0],Select);  
 mux2_1 mux1(AddrOut[1],Addr0[1],Addr1[1],Select);  
 mux2_1 mux2(AddrOut[2],Addr0[2],Addr1[2],Select);  
 mux2_1 mux3(AddrOut[3],Addr0[3],Addr1[3],Select);  
 mux2_1 mux4(AddrOut[4],Addr0[4],Addr1[4],Select);  
 endmodule  
 
 `timescale 1 ps / 100 fs  
 module mux2_1(O,A,B,sel);  
 // sel = 0 => O = A  
 // sel = 1 => O =B  
 output O;  
 input A,B,sel;  
 not #(50) not1(nsel,sel);  
 and #(50) and1(O1,A,nsel);   
 and #(50) and2(O2,B,sel);  
 or #(50) or2(O,O1,O2);  
 endmodule  
