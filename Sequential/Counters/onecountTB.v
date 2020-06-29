module onecountTB();
 reg [15:0]DATA;

 wire [4:0]count;

 	onecount DUT (.DATA(DATA), .count(count));

 	initial
	begin
		$monitor($time," DATA = %b, count = %d",DATA,count);
		$dumpfile("onecountwaveform.vcd");
		$dumpvars(0,onecountTB);
	end

	task initialize;
		begin
			DATA = 0;
		end
	endtask
	
	initial
	begin
		initialize;
		#5 DATA = 16'hffff;
		#5 DATA = 16'h0000;
		#5 DATA = 16'hffe0;
		#5 DATA = 16'hc00f;
		#5 DATA = 16'h5555;
		#5 DATA = 16'h7;
		#5 $finish;
	end
endmodule
