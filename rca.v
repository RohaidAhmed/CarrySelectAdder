`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:09:33 11/15/2022 
// Design Name: 
// Module Name:    rca 
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
`include "adder.v"

module rca(sum,cout,a,b,cin);
parameter n = 3;
input [n-1:0] a,b;
input cin;
output [n-1:0] sum;
output cout;
wire [n:0] c;
assign c[0] = cin;

genvar i;
generate
	for (i=0;i<n;i=i+1)
		begin:r_loop
			adder ad1(sum[i],c[i+1],a[i],b[i],c[i]);
		end
assign cout = c[n];
endgenerate 

endmodule
