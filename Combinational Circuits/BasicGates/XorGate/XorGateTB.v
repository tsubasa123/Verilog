module XorGateTB();

	reg A, B ;
	wire Out;

	XorGate DUT( .A(A), .B(B), .Out(Out));

	initial
		begin
			$dumpfile("Xorwaveform.vcd");
			$dumpvars(0 , XorGateTB);
		end
	
	initial 
		begin
			$monitor($time," A = %b, B = %b, Out = %b", A, B, Out);
			#0 A = 1'b0 ; B = 1'b0;
			#5 A = 1'b0 ; B = 1'b1;
			#5 A = 1'b1 ; B = 1'b0;
			#5 A = 1'b1 ; B = 1'b1;
			#5 A = 1'b0 ; B = 1'b0;
			#5 A = 1'b0 ; B = 1'b1;
			#5 A = 1'b0 ; B = 1'b0;
			#5 $finish;
	end


endmodule
