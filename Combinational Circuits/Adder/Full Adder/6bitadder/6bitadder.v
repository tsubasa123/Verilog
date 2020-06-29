module sixbitadder (A , B, CarryIn, Sum, CarryOut);
	input [5:0]A;
	input [5:0]B;
	input CarryIn;

	output [5:0]Sum;
	output CarryOut;
	wire [1:0]Carryout;

	twobitFullAdder twofa1 (A[1:0], B[1:0], CarryIn, Sum[1:0], Carryout[1]);
	twobitFullAdder twofa2 (A[3:2], B[3:2], Carryout[1], Sum[3:2], Carryout[0]);
	twobitFullAdder twofa3 (A[5:4], B[5:4], Carryout[0], Sum[5:4], CarryOut);

endmodule
