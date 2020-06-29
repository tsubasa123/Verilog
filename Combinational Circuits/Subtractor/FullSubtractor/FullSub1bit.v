module onebitfullsub( A, B , BorrowIn, Diff, BorrowOut);
	input A;
	input B;
	input BorrowIn;

	output Diff;
	output BorrowOut;

	wire Diff1;
	wire borrow1, borrow2;

	halfsub hs1 (A, B, Diff1, borrow1);
	halfsub hs2 (Diff1, BorrowIn, Diff, borrow2);
	assign BorrowOut = (borrow1 | borrow2);

endmodule
