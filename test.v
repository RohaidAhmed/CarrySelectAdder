`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:24:53 11/16/2022
// Design Name:   csa
// Module Name:   D:/University/7. FALL 2022/Digital System Design/Theory/CarrySelectAdder/test.v
// Project Name:  CarrySelectAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: csa
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cin;

	// Outputs
	wire [7:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	csa uut (
		.sum(sum), 
		.cout(cout), 
		.a(a), 
		.b(b), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs
		a = 6;
		b = 6;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
      a = 6;
		b = 7;  
		// Add stimulus here

	end
      
endmodule

