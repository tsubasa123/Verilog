module NorGateTB();

	reg A , B;
	wire Out;

	NorGate DUT ( .A(A), .B(B), .Out(Out));

	initial 
		begin
			$dumpfile("Norwaveform.vcd");
			$dumpvars(0 , NorGateTB);
		end

	initial
		begin
			$monitor($time," A = %b, B = %b, Out = %b", A ,B , Out);
			#0 A = 1'b0 ; B = 1'b0 ;
			#5 A = 1'b0 ; B = 1'b1 ;
			#5 A = 1'b1 ; B = 1'b0 ;
			#5 A = 1'b1 ; B = 1'b1 ;
			#5 A = 1'b1 ; B = 1'b0 ;
			#5 A = 1'b0 ; B = 1'b0 ;
			#5 A = 1'b1 ; B = 1'b1 ;
			#5 A = 1'b0 ; B = 1'b1 ;
			#5 $finish ;
		end


endmodule
