module sixteentoonemuxTB();
	reg [15:0] in;
	reg [3:0] sel;

	wire out;

	sixteentoonemux DUT (.in(in), .sel(sel), .out(out));
	
	initial 
	begin
		$monitor($time,"  in = %b, sel = %b, out =%b", in, sel, out);
		$dumpfile("sixteentoonewaveform.vcd");
		$dumpvars(0, sixteentoonemuxTB);
	end
	
	task initialize;
		begin
			in = 0;
			sel = 0;
		end
	endtask
	
	initial
	begin
		initialize;
		#5 in = 16'b0000000010000000; sel = 4'b0111 ;
		#5 in = 16'b0000000010000000; sel = 4'b1000 ;
		#5 in = 16'b0010000000000000; sel = 4'b1101 ;
		#5 in = 16'b0010000000000000; sel = 4'b1100 ;
		#5 in = 16'b1000000000000001; sel = 4'b0000 ;
		#5 in = 16'b1000000000000001; sel = 4'b1111 ;
		#5 in = 16'b0000000000010000; sel = 4'b0100 ;
		#5 in = 16'b0000000000010000; sel = 4'b0101 ;
		#5 $finish;
	end
endmodule
