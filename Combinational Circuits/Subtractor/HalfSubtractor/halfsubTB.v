module halfsubTB();
	reg A;
	reg B;
	wire Diff;
 	wire Borrow;
		
	halfsub DUT (.A(A), .B(B), .Diff(Diff), .Borrow(Borrow));

	task initialize;
		begin
			A = 0;
			B = 0;

		end
	endtask

	initial 
	begin
		$monitor($time," A = %B, B = %b, Diff = %b, Borrow = %b", A, B, Diff, Borrow);
		$dumpfile ("halfsubwaveform.vcd");
		$dumpvars(0, halfsubTB);
	end

	initial
	begin
		initialize;
		#10 A = 0; B = 0;
		#20 A = 1; B = 0;
		#35 A = 0; B = 1;
		#5 A = 1; B = 1;
		#5 $finish;
	end

endmodule
