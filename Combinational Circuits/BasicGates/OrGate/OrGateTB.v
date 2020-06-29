module OrGateTB ();
	reg A, B ;
	wire Out ;

	OrGate DUT (.A(A), .B(B), .Out (Out));

	initial 

		begin
			$dumpfile("Orwaveform.vcd");
			$dumpvars (0, OrGateTB);
		end

	initial
		begin
			$monitor($time," A = %b, B = %b , Out = %b", A, B, Out);
			A = 1'b0 ; B = 1'b0;
			#5 A = 1'b0 ; B = 1'b1;
			#5 A = 1'b1 ; B = 1'b0;
			#5 A = 1'b0 ; B = 1'b1;
			#5 $finish;
		end
endmodule
