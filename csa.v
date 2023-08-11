`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:51:47 11/15/2022 
// Design Name: 
// Module Name:    csa 
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
module csa(sum,cout,a,b,cin);
parameter n = 8;
input cin;
input [n-1:0] a,b;
output [n-1:0] sum;
output cout;

wire [1:0] c,cout1;
wire [n-1:0] s,s1;

/*generate
	if(cin = 0)
		begin:if_loop
			rca #3 rca1(s[2:0],c1,a[2:0],b[2:0],0);
			rca #5 rca2(s[7:3],cout,a[7:3],b[7:3],c1);
		end
	else if (cin == 1)
	begin
		rca #3 rca1(s[2:0],c1,a[2:0],b[2:0],1);
		rca #5 rca2(s[7:3],cout,a[7:3],b[7:3],c1);
	end
endgenerate*/



//rca(sum,cout,a,b,cin);
	// cin = 0
rca #3 rca1(s[2:0],c[0],a[2:0],b[2:0],0);
rca #5 rca2(s[7:3],cout1[0],a[7:3],b[7:3],c[0]);
	// cin = 1
rca #3 rca3(s1[2:0],c[1],a[2:0],b[2:0],1);
rca #5 rca4(s1[7:3],cout1[1],a[7:3],b[7:3],c[1]);

//mux(out,in1,in2,s);
mux #3 m1(sum[2:0],s[2:0],s1[2:0],cin);
mux #5 m2(sum[7:3],s[7:3],s1[7:3],c[cin]);

assign cout = cout1[cin];

endmodule
