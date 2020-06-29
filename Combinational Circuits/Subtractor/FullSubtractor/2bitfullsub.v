/*module twobitfullsub (A , B, BorrowIn, Diff, Borrowout);
	input [1:0] A;
	input [1:0]B;
	input BorrowIn;

	output [1:0]Diff;
	output Borrowout;
	wire borrow;

	onebitfullsub fs1 (A[0], B[0], BorrowIn, Diff[0], borrow);
	onebitfullsub fs2 (A[1], B[1], borrow, Diff[1], Borrowout);

endmodule*/
module twobitfullsub
(
	input [1:0] A,
	input [1:0] B,
	input BorrowIn,

	output Borrowout,
	output [1:0] Diff
);


		assign Diff = (A ^ B) ^ BorrowIn;
		assign Borrowout = ((~A) & BorrowIn) | ((~A) & B) | (B & BorrowIn);


endmodule
