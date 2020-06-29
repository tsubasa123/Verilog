module onebitSRlatchTB ();
 reg Set;
 reg Reset;
 reg En;
 
 wire Q;
 wire Qbar;

 integer i;

 	onebitSRlatch DUT (.Set(Set), .Reset(Reset), .En(En), .Q(Q), .Qbar(Qbar));
	
	initial
	begin
		$monitor ($time,"  Set = %b, Reset = %b, En = %b, Q = %b, Qbar = %b", Set,Reset,En,Q,Qbar);
		$dumpfile("onebitSRlatchwaveform.vcd");
		$dumpvars(0, onebitSRlatchTB);
	end

	task initialize;
		begin
			Set = 0;
			Reset = 0;
			En = 0;
		end
	endtask

/*	task stimulus;
		begin
			for (i = 0; i<18; i = i+1)
			begin
				#5;
				{Set, Reset, En} = i;

			end
		end
	endtask*/

	initial
	begin 
		initialize;
		#5 Set = 0; Reset = 1; En = 1;
		#5 Set = 0; Reset = 0; En = 0; 
		#5 $finish;
	end
endmodule
 	
