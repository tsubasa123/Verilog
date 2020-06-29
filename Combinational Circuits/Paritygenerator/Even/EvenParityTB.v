module EvenParityfourbitTB();
	reg [2:0]A;
	wire parity_bit ;
	wire [3:0]Out ;


	EvenParityfourbit DUT( .A(A),.parity_bit(parity_bit), .Out(Out));

	initial
		begin
			$dumpfile ("EvenParitywaveform.vcd");
			$dumpvars(0, EvenParityfourbitTB);
		end
	initial
		begin
			$monitor ($time, " A[0] = %b, A[1] = %b, A[2] = %b, Out = %b, parity_bit  = %b", A[0] , A[1] , A[2], Out,  parity_bit);
			#0 A[2] = 1'b0; A[1] = 1'b0 ; A[0] = 1'b0;
			#5 A[2] = 1'b0; A[1] = 1'b0 ; A[0] = 1'b1;
			#5 A[2] = 1'b0; A[1] = 1'b1 ; A[0] = 1'b0;
			#5 A[2] = 1'b0; A[1] = 1'b1 ; A[0] = 1'b1;
			#5 A[2] = 1'b1; A[1] = 1'b0 ; A[0] = 1'b0;
			#5 A[2] = 1'b1; A[1] = 1'b0 ; A[0] = 1'b1;
			#5 A[2] = 1'b1; A[1] = 1'b1 ; A[0] = 1'b0;
			#5 A[2] = 1'b1; A[1] = 1'b1 ; A[0] = 1'b1;
			#5 $finish;


		end
endmodule
