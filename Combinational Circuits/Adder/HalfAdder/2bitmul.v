module twobitmul(A, B, Out);

input [1:0]A;
input [1:0]B;

output  [3:0]Out;

wire  [2:0]inp;
wire  carry;
	assign Out[0] = (A[0] && B[0]);
	assign	inp[2] = (A[1] && B[0]); 
	assign	inp[1] = (A[0] && B[1]);
	assign	inp[0] = (A[1] && B[1]);
	
	HalfAdder ha1 (inp[2], inp[1], Out[1], carry);
	HalfAdder ha2 (inp[0], carry ,Out[2], Out[3]);
		
	 
endmodule

