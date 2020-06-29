module eighttothreeencoderTB ();

 reg [7:0]din;

 wire [2:0]code;
 
	eighttothreeencoder DUT (.din(din), .code(code));
	
	initial
	begin
		$monitor($time," din = %b, code =%b",din,code);
		$dumpfile("eighttothreeencoder.vcd");
		$dumpvars(0,eighttothreeencoderTB);
	end
	
	task initialize;
		begin
			din = 0;
		end
	endtask

	initial
	begin
		initialize;
		#5 din = 8'b11111111; 
		#5 din = 8'b11110000; 
 		#5 din = 8'b00001111; 
 		#5 din = 8'b01000100; 
		#5 din = 8'b10000000;
 		#5 din = 8'b10001000;
 		#5 din = 8'b00000000;
 		#5 din = 8'b00000001;
 		#5 $finish;
	end
endmodule 
