module NotGate_TB();
	reg In ;
	wire Out;
	not_gate DUT(.In(In) , .Out(Out));

	initial
		begin
			$monitor($time ," In = %b, Out = %b", In , Out);
			In = 4'h0 ;
			#5 In = 4'h1 ;
			#5 In = 4'h0 ;
			#5 In = 4'h1 ;
			#5 $finish ;
		end
	initial
		begin
			$dumpfile("Notwaveform.vcd");
			$dumpvars(0 , NotGate_TB);
		end
endmodule
