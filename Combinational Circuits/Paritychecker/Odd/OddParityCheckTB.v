module OddParityCheckTB();

	reg [3:0]A;
	wire ParityCheck;

	OddParityCheck DUT( .A(A), .ParityCheck(ParityCheck));

	initial
		begin
			$dumpfile("OddParityCheckwaveform.vcd");
			$dumpvars(0 , OddParityCheckTB);
		end

	initial
		begin
			$monitor($time ," A = %b , ParityCheck = %b ", A , ParityCheck);
			#0 A = 4'h0;
			#5 A = 4'h1;
			#5 A = 4'h2;
			#5 A = 4'h3;
			#5 A = 4'h4;
			#5 A = 4'h5;
			#5 A = 4'h6;
			#5 A = 4'h7;
			#5 A = 4'h8;
			#5 A = 4'h9;
			#5 A = 4'ha;
			#5 A = 4'hb;
			#5 A = 4'hc;
			#5 A = 4'hd;
			#5 A = 4'he;
			#5 A = 4'hf;
			#5 $finish;
		end
endmodule
