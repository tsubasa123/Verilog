module twotoonemuxTB();
reg in0;
reg in1;
reg sel;

wire Out;

integer i ;

	twotoonemux DUT(.in0(in0), .in1(in1), .sel(sel), .Out(Out));

	initial
	begin
		$monitor($time," in = %b%b, sel = %b,  Out = %b",in1,in0,sel,Out);
		$dumpfile("twotoonemuxwaveform.vcd");
		$dumpvars(0, twotoonemuxTB);
	end

	task initialize;
		begin
			in0 = 0;
			in1 = 0;
			sel = 0;
			i = 0;
		end
	endtask

	task stimulus;
		begin
			for( i = 0; i<8; i=i+1)
			begin
				{in1,in0,sel} = i;
				#5;
			end
		end
	endtask

	initial
	begin
		initialize;
		stimulus;
		#5 in1 = 1; in0 = 0; sel = 0;
		#5 in1 = 1; in0 = 0; sel = 1;
		#5 in1 = 1; in0 = 1; sel = 0;
		#5 in1 = 1; in0 = 1; sel = 1;
		#5 in1 = 0; in0 = 1; sel = 0;
		#5 in1 = 0; in0 = 1; sel = 1;
		#5 in1 = 0; in0 = 0; sel = 0;
		#5 in1 = 0; in0 = 0; sel = 1;
		#5 $finish;
	end

endmodule
