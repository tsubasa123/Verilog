module twobitmulTB();
reg [1:0]A;
reg [1:0]B;

wire [3:0]Out;

	twobitmul DUT (.A(A), .B(B), .Out(Out));
	
	initial
	begin
		$monitor($time," A = %b, B = %b, Out = %b", A, B, Out);
		$dumpfile("twobitmulwaveform.vcd");
		$dumpvars(0, twobitmulTB);
	end

	task initialize;
		begin
			A = 0;
			B = 0;

		end
	endtask
		
	initial
	begin
		initialize;
		#5 A = 2'b01 ; B = 2'b11;
		#5 A = 2'b11 ; B = 2'b10;		
	end
endmodule
