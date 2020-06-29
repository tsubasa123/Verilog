module BcdTo7segmentTB();
	reg [3:0]bcd;
	wire [6:0]Out;
	integer i = 0; 

	BcdTo7segment DUT(.bcd(bcd), .Out(Out));

	initial 
	begin
		$dumpfile("BcdTo7segmentwaveform.vcd");
		$dumpvars(0, BcdTo7segmentTB);
	end

	initial
	begin
		$monitor ($time ,"  bcd = %d , Out = %b", bcd , Out);
		for (i = 0; i<16 ; i = i+1)
		begin 
			bcd = i;
			#5;
		end
			#5 bcd = 4'bzzzz;
			#5 bcd = 4'bxxxx;
	end

endmodule
