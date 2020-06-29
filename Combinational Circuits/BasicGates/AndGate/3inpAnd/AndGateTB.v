module AndGateTB ();
	reg A , B;
	wire Out;

	AndGate DUT(.A(A) , .B(B) , .Out(Out) );



	initial
		begin
			$monitor ($time , "A = %b , B = %b, Out = %b" , A ,B , Out);
			A = 1'b0; B = 1'b0;
			#5 A =1'b0; B = 1'b1;
			#5 A = 1'b1; B = 1'b1;
			#5 $finish;
		end

	initial
		begin
			$dumpfile ("andwaveform.vcd");
			$dumpvars (0 , AndGateTB) ;
	end
endmodule
