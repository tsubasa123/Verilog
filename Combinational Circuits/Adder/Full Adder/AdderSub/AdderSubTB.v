module fourbitaddersubTB ();
	reg [3:0]A;
	reg [3:0]B;
	reg CarryIn;
	integer i = 0;

	wire [3:0]Sum;
	wire CarryOut;

	fourbitaddersub DUT (.A(A), .B(B), .CarryIn(CarryIn),  .Sum(Sum), .CarryOut(CarryOut));

	task initialize;
		begin
			A = 0;
			B = 0;
			CarryIn = 0;
		end
	endtask

	initial
	begin
		$monitor ($time,"  A = %b, B = %b ,CarryIn = %b, Sum=%b, CarryOut = %b",A, B,CarryIn,Sum, CarryOut);
		$dumpfile ("AdderSubwaveform.vcd");
		$dumpvars(0, fourbitaddersubTB);
	end

	initial
	begin
		initialize;
		#0 A = 4'hf; B = 4'he; CarryIn = 1;
		for (i = 0; i<20; i = i + 1)
		begin
			#5 A = $random ; B = $random; CarryIn = $random;
		end
		#5 A = 4'h5; B = 4'h2; CarryIn = 0;
		#5 A = 4'h3; B = 4'h7; CarryIn = 1;
		#5 A = 4'h6; B = 4'hb; CarryIn = 0;
		#5 A = 4'h5; B = 4'h1; CarryIn = 1;
		#5 $finish;
	end
endmodule
