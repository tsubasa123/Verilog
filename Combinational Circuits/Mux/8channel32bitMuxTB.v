module eightch32bitTB ();

 reg  [31:0]D0, D1, D2, D3, D4, D5, D6, D7;
 reg [2:0] sel;

 wire [31:0] databus;

	eightch32bit DUT (.D0(D0), .D1(D1), .D2(D2), .D3(D3), .D4(D4), .D5(D5), .D6(D6), .D7(D7), .sel(sel), .databus(databus));

	initial
	begin
		$monitor($time,"  D0=%d, D1=%d, D2=%d, D3=%d, D4=%d, D5=%d, D6=%d, D7=%d and sel=%d, output=%d", D0, D1, D2, D3, D4, D5, D6, D7, sel, databus);
		$dumpfile("eightch32bitwaveform.vcd");
		$dumpvars(0, eightch32bitTB);
	end

	task initialize;
		begin
			D0 = 0;
			D1 = 0;
			D2 = 0;
			D3 = 0;
			D4 = 0;
			D5 = 0;
			D6 = 0;
			D7 = 0;
			sel = 0;
		end
	endtask	
	

	initial
	begin
		initialize;
		#5 D0 = 13; D1 = 45; D2 = 28; D3 = 75; D4 = 99; D5 = 33; D6 = 59; D7 = 73; sel = 1;
		#5 D0 = 32'd63; D1 = 32'd35; D2 = 32'd74; D3 = 32'd25; D4 = 32'd18; D5 = 32'd37; D6 = 32'd49; D7 = 32'd83; sel = 3'd3;
		#5 D0 = 32'd27; D1 = 32'd18; D2 = 32'd34; D3 = 32'd49; D4 = 32'd59; D5 = 32'd65; D6 = 32'd89; D7 = 32'd73; sel = 3'd4;
		#5 D0 = 32'd29; D1 = 32'd65; D2 = 32'd54; D3 = 32'd65; D4 = 32'd14; D5 = 32'd85; D6 = 32'd71; D7 = 32'd46; sel = 3'd6;
		#5 $finish;
	
	end

endmodule	
