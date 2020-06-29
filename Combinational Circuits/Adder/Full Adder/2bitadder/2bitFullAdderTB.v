module twobitFullAdderTB ();

	reg [1:0] A;
	reg [1:0] B;
	reg CarryIn;
	wire [1:0] Sum;
	wire CarryOut;


	twobitFullAdder DUT (.A(A) , .B(B), .CarryIn(CarryIn), .Sum(Sum), .CarryOut(CarryOut));

	task init;
	 	begin
			A = 0;
			B = 0;
			CarryIn = 0;
		end
	endtask

	initial
	begin
 		$monitor ($time, "  A = %b , B = %b , CarryIn = %b, Result = %b%b",A,B,CarryIn,CarryOut,Sum);
		$dumpfile ("twobitFullAdderwaveform.vcd");
		$dumpvars(0, twobitFullAdderTB);
	end

	initial
	begin
		init;
		#0 A = 2'b11; B = 2'b11 ; CarryIn = 1;
		#5 A = 2'b01; B = 2'b11 ; CarryIn = 0;
		#5 A = 2'b11; B = 2'b11 ; CarryIn = 0;
		#5 A = 2'b01; B = 2'b10 ; CarryIn = 0;
		#5 A = 2'b10; B = 2'b00 ; CarryIn = 1;
		#5 A = 2'b01; B = 2'b10 ; CarryIn = 1;
		#5 A = 2'b00; B = 2'b00 ; CarryIn = 0;
		#5 A = 2'b10; B = 2'b11 ; CarryIn = 0;
		#5 $finish;
	end
endmodule
