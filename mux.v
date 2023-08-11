`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:48:37 11/15/2022 
// Design Name: 
// Module Name:    mux 
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
module mux(out,in1,in2,s);
parameter n = 3;
input [n-1:0] in1,in2;
input s;
output reg [n-1:0] out;
always@(*)
begin
	case(s)
		0: out = in1;
		1: out = in2;
		default: out = 0;
	endcase
end


endmodule
