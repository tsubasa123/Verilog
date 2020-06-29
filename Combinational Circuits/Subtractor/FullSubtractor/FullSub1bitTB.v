module onebitfullsubTB();

	reg A;
	reg B;
	reg BorrowIn;
	
	wire Diff;
	wire BorrowOut;

	onebitfullsub DUT(.A(A), .B(B), .BorrowIn(BorrowIn), .Diff(Diff), .BorrowOut(BorrowOut));

	task initialize;
		begin
			A = 0;
			B = 0;
			BorrowIn = 0;
		end
	endtask

	initial
	begin
		$monitor($time," A = %b, B = %b, BorrowIn = %b, Diff = %b, BorrowOut = %b", A, B, BorrowIn, Diff, BorrowOut);
		$dumpfile("fullsubwaveform.vcd");
		$dumpvars(0, onebitfullsubTB);	
	end

	initial
	begin
		initialize;
		#5 A = 0; B = 0; BorrowIn = 0;
		#5 A = 0; B = 0; BorrowIn = 1;
		#5 A = 0; B = 1; BorrowIn = 0;
		#5 A = 0; B = 1; BorrowIn = 1;
		#5 A = 1; B = 0; BorrowIn = 0;
		#5 A = 1; B = 0; BorrowIn = 1;
		#5 A = 1; B = 1; BorrowIn = 0;
		#5 A = 1; B = 1; BorrowIn = 1;
		#5 $finish;
	end
endmodule
