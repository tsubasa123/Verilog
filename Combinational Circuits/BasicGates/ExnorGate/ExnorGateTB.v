module ExnorGateTB();

	reg A, B ;
	wire Out;

	ExnorGate DUT( .A(A), .B(B), .Out(Out));

	initial
		begin
			$dumpfile("Exnorwaveform.vcd");
			$dumpvars(0 , ExnorGateTB);
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
