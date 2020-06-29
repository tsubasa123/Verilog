module fourbitSRlatchTB ();
 reg [3:0]Set;
 reg [3:0]Reset;
 reg En;
 
 wire [3:0]Q;
 wire [3:0]Qbar;

 integer i;

 	fourbitSRlatch DUT (.Set(Set), .Reset(Reset), .En(En), .Q(Q), .Qbar(Qbar));
	
	initial
	begin
		$monitor ($time,"  Set = %b, Reset = %b, En = %b, Q = %b, Qbar = %b", Set,Reset,En,Q,Qbar);
		$dumpfile("fourbitSRlatchwaveform.vcd");
		$dumpvars(0, fourbitSRlatchTB);
	end

	task initialize;
		begin
			Set = 0;
			Reset = 0;
			En = 1;
		end
	endtask

	initial
	begin 
		initialize;
	        #5 Set = 4'b0000; Reset = 4'b1111; En = 1;
		#5 Set = 4'b0000; Reset = 4'b0000; En = 1;

 		#5 Set = 4'b0101; Reset = 4'b1010; En = 1;
		#5 Set = 4'b1100; Reset = 4'b0000; En = 0;

  		#5 Set = 4'b1111; Reset = 4'b0000; En = 1;
		#5 Set = 4'b1100; Reset = 4'b0011; En = 1;

	  	#5 Set = 4'b1100; Reset = 4'b0011; En = 1;
  		#5 Set = 4'b1010; Reset = 4'b0101; En = 1;
		#5 $finish;
	end
endmodule
 
