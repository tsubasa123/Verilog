module sixbitadderTB();

	reg [5:0]A;
	reg [5:0]B;
	reg CarryIn;

	wire [5:0]Sum;
	wire CarryOut;

	sixbitadder DUT (.A(A) , .B(B) , .CarryIn(CarryIn) , .Sum(Sum), .CarryOut(CarryOut));

	task init;
	 	begin
			A = 0;
			B = 0;
			CarryIn = 0;
		end
	endtask

	initial
	begin
		$monitor($time,"  A = %b, B = %b, CarryIn = %b, result = %b%b", A, B, CarryIn, CarryOut, Sum);
		$dumpfile("sixbitadder.vcd");
		$dumpvars(0,sixbitadderTB);
	end

	initial
	begin
		init;
		#0 A = 6'b101011; B = 6'b000000; CarryIn = 1;
		#5 A = 6'b111111; B = 6'b000001; CarryIn = 0;
		#5 A = 6'b000000; B = 6'b010111; CarryIn = 1;
		#1 A = 6'b000000; B = 6'b000000; CarryIn = 0;
		#1 A = 6'b011111; B = 6'b100001; CarryIn = 0;
		#1 A = 6'b000110; B = 6'b011100; CarryIn = 1;
		#1 A = 6'b111111; B = 6'b111111; CarryIn = 1;
		#1 A = 6'b111111; B = 6'b111111; CarryIn = 0;
		#5 $finish;
	end
endmodule
