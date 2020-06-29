module twobitfullsubTB ();
	reg [1:0]A;
	reg [1:0]B;
	reg BorrowIn;

	wire [1:0] Diff;
	wire BorrowOut;

	twobitfullsub DUT ( .A(A), .B(B), .BorrowIn(BorrowIn), .Diff(Diff), .Borrowout(Borrowout));

	task initialize;
		begin
			A = 0;
			B = 0;
			BorrowIn = 0;
		end
	endtask

	initial
	begin
		$monitor($time," A = %b, B = %b, BorrowIn = %b, Diff = %b, Borrowout = %b", A,B,BorrowIn,Diff,Borrowout);
		$dumpfile("twobitfullsubwaveform.vcd");
		$dumpvars(0,twobitfullsubTB);
	end

	initial
	begin
		initialize;
		#5 A = 00; B = 00; BorrowIn = 0;
		#5 A = 00; B = 00; BorrowIn = 1;
		#5 A = 00; B = 01; BorrowIn = 0;
		#5 A = 00; B = 01; BorrowIn = 1;
		#5 A = 00; B = 10; BorrowIn = 0;
		#5 A = 00; B = 10; BorrowIn = 1;
		#5 A = 00; B = 11; BorrowIn = 0;
		#5 A = 00; B = 11; BorrowIn = 1;
		#5 A = 01; B = 00; BorrowIn = 0;
		#5 A = 01; B = 00; BorrowIn = 1;
		#5 A = 01; B = 01; BorrowIn = 0;
		#5 A = 01; B = 01; BorrowIn = 1;
		#5 A = 01; B = 10; BorrowIn = 0;
		#5 A = 01; B = 10; BorrowIn = 1;
		#5 A = 01; B = 11; BorrowIn = 0;
		#5 A = 01; B = 11; BorrowIn = 1;
		#5 A = 10; B = 00; BorrowIn = 0;
		#5 A = 10; B = 00; BorrowIn = 1;
		#5 A = 10; B = 01; BorrowIn = 0;
		#5 A = 10; B = 01; BorrowIn = 1;
		#5 A = 10; B = 10; BorrowIn = 0;
		#5 A = 10; B = 10; BorrowIn = 1;
		#5 A = 10; B = 11; BorrowIn = 0;
		#5 A = 10; B = 11; BorrowIn = 1;
		#5 A = 11; B = 00; BorrowIn = 0;
		#5 A = 11; B = 00; BorrowIn = 1;
		#5 A = 11; B = 01; BorrowIn = 0;
		#5 A = 11; B = 01; BorrowIn = 1;
		#5 A = 11; B = 10; BorrowIn = 0;
		#5 A = 11; B = 10; BorrowIn = 1;
		#5 A = 11; B = 11; BorrowIn = 0;
		#5 A = 11; B = 11; BorrowIn = 1;
		#5 $finish;
	end
endmodule
