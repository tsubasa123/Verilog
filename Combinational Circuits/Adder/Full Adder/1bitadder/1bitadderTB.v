module onebitadderTB();

	reg A;
	reg B;
	reg CarryIn;

	wire Sum;
	wire CarryOut;

	onebitadder DUT (.A(A), .B(B), .CarryIn(CarryIn), .Sum(Sum), .CarryOut(CarryOut));

	task init;
		begin
			A = 0;
			B = 0;
			CarryIn = 0;
		end
	endtask


	initial
	begin
		$monitor($time," A = %b, B= %b, CarryIn = %b, Result = %b%b", A,B,CarryIn,CarryOut,Sum);
		$dumpfile("Onebitadderwaveform.vcd");
		$dumpvars(0, onebitadderTB);
	end


	initial
	begin
		init;
		#5 A = 0; B = 0; CarryIn = 0;
		#5 A = 0; B = 0; CarryIn = 1;
		#5 A = 0; B = 1; CarryIn = 0;
		#5 A = 0; B = 1; CarryIn = 1;
		#5 A = 1; B = 0; CarryIn = 0;
		#5 A = 1; B = 0; CarryIn = 1;
		#5 A = 1; B = 1; CarryIn = 0;
		#5 A = 1; B = 1; CarryIn = 1;
		#5 $finish;
	end
endmodule
