module eighttothreepart2TB ();

 reg [7:0]data;

 wire [2:0]code;
 
	eighttothreepart2 DUT (.data(data), .code(code));
	
	initial
	begin
		$monitor($time," data = %b, code =%d",data,code);
		$dumpfile("eighttothreepart2waveform.vcd");
		$dumpvars(0,eighttothreepart2TB);
	end
	
	task initialize;
		begin
			data = 0;
		end
	endtask

	initial
	begin
		initialize;
		#5 data = 8'b00000101; 
		#5 data = 8'b01000000; 
 		#5 data = 8'b10000000; 
 		#5 data = 8'b11111111; 
		#5 data = 8'b00000001;
 		#5 data = 8'b00000100;
 		#5 data = 8'b00000000;
 		#5 data = 8'b01111011;
 		#5 $finish;
	end
endmodule 

