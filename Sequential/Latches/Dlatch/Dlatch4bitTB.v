module DlatchfourbitTB ();

 reg [3:0]D;
 reg En;
 
 wire [3:0]Q;

	Dlatchfourbit DUT (.D(D),.En(En), .Q(Q));

	initial 
	begin
		$monitor($time," D = %b, En = %b, Q = %b", D,En,Q);
		$dumpfile("Dlatchfourbitwaveform.vcd");
		$dumpvars(0,DlatchfourbitTB);
	end


	task initialize;
		begin
			D = 0;
			En = 1;
		end
	endtask

	initial
	begin
		initialize;
		#5 D = 4'hf; En = 1;

		#5 D = 4'h0; En = 0;
		#5 D = 4'hx; En = 1;

		#5 D = 4'h7; En = 1;
		#5 D = 4'h2; En =1;

		#5 D = 4'b1101; En = 1;
		#5 D = 4'b1110; En = 1;

		#5 D = 4'b0001; En = 0;
		#5 $finish;
	end
endmodule

		

 
 
 
 
