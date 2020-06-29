module DlatchonebitTB ();

 reg D;
 reg En;
 
 wire Q;

	Dlatchonebit DUT (.D(D),.En(En), .Q(Q));

	initial 
	begin
		$monitor($time," D = %b, En = %b, Q = %b", D,En,Q);
		$dumpfile("Dlatchonebitwaveform.vcd");
		$dumpvars(0,DlatchonebitTB);
	end

	task initialize;
		begin
			D = 0;
			En = 0;
		end
	endtask

	initial
	begin
		initialize;
		#5 D = 1; En = 1;

		#5 D = 0; En = 0;
		#5 D = 1'bx; En = 1;

		#5 D = 0; En = 1;

		#5 D = 1; En = 1;
		#5 D = 0; En = 1;

		#5 D = 1'bx; En = 1;

		#5 D = 1; En = 1;
		
		#5 D = 0; En =1;
		#5 $finish;
	end
endmodule

		

 
 
 
 
