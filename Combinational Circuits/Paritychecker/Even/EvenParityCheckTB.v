module EvenParityCheckTB();

	reg [3:0]A;
	wire ParityCheck;

	EvenParityCheck DUT( .A(A), .ParityCheck(ParityCheck));

	initial
		begin
			$dumpfile("EvenParityCheckwaveform.vcd");
			$dumpvars(0 , EvenParityCheckTB);
		end

	initial
		begin
			$monitor($time ," A = %b , ParityCheck = %b ", A , ParityCheck);
			#0 A = 4'b0000;
			#5 A = 4'b0001;
			#5 A = 4'b0010;
			#5 A = 4'b0011;
			#5 A = 4'b0100;
			#5 A = 4'b0101;
			#5 A = 4'b0110;
			#5 A = 4'b0111;
			#5 A = 4'b1000;
			#5 A = 4'b1001;
			#5 A = 4'b1010;
			#5 A = 4'b1011;
			#5 A = 4'b1100;
			#5 A = 4'b1101;
			#5 A = 4'b1110;
			#5 A = 4'b1111;
			#5 $finish;
		end
endmodule
