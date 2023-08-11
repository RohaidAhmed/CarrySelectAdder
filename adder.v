`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:58:08 11/15/2022 
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
module adder(s,cout,a,b,cin);
input a,b,cin;
output s,cout;
wire x,y,z;

xor g1(x,a,b); // a xor b
and g2(y,a,b); // a and b
and g3(z,x,cin); // (a and b) and cin
or g4(cout,y,z); 
xor g5(s,x,cin);


endmodule
