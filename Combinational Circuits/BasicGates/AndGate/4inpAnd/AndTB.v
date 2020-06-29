module AndTB();
	reg A, B, C;
	wire Out ;

	And4inp DUT (.A(A), .B(B), .C(C), .Out(Out));

	initial
		begin
			$dumpfile ("Andwaveform.vcd");
			$dumpvars(0 , AndTB);
 		end

	initial
		begin
			$monitor ($time ," A = %b, B = %b , C = %b, Out = %b" , A, B, C, Out);
			#5 A = 1'b0 ; B = 1'b0 ; C = 1'b0;
			#5 A = 1'b0 ; B = 1'b1 ; C = 1'b0;
			#5 A = 1'b1 ; B = 1'b1 ; C = 1'b1;
			#5 A = 1'b1 ; B = 1'b0 ; C = 1'b0;
			#5 A = 1'b1 ; B = 1'b0 ; C = 1'b1;
			#5 A = 1'b1 ; B = 1'b1 ; C = 1'b1;
			#5 A = 1'b0 ; B = 1'b1 ; C = 1'b0;
			#5 A = 1'b0 ; B = 1'b0 ; C = 1'b1;
			#5 A = 1'b1 ; B = 1'b0 ; C = 1'b1;
			#5 A = 1'b1 ; B = 1'b1 ; C = 1'b1;
			#5 $finish ;
		end
endmodule
