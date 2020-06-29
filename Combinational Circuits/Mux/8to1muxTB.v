module eighttoonemuxTB();

reg [7:0] in;
reg [2:0] sel;

wire out;

	eighttoonemux DUT (.in(in), .sel(sel), .out(out));

	initial 
	begin
		$monitor($time," sel = %b, in = %b, out = %b",sel,in,out);
		$dumpfile("sixteentoonemuxwaveform.vcd");
		$dumpvars(0,eighttoonemuxTB);
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
		#5 sel = 3'b010; in = 8'b00100010;
		#5 sel = 3'b010; in = 8'b00000101;
		#5 sel = 3'b111; in = 8'b10000000;
		#5 sel = 3'b100; in = 8'b11101111;
		#5 $finish;
	end
endmodule
