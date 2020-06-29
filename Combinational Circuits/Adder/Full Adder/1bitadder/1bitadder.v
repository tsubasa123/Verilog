module onebitadder(A, B, CarryIn, Sum, CarryOut);

	input A;
	input B;
	input CarryIn;

	output Sum;
	output CarryOut;
	wire s1;
	wire c1;
	wire c2;

	HalfAdder ha1 (A, B , s1, c1);
	HalfAdder ha2 (s1, CarryIn, Sum, c2);
	assign CarryOut = (c1 | c2);

endmodule
