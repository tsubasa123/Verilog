module eightbitcompTB ();

 reg [7:0]A;
 reg [7:0]B;
 
 wire A_great_B;
 wire A_equal_B;
 wire A_less_B;
 integer i;
	eightbitcomp DUT (.A(A), .B(B), .A_great_B(A_great_B), .A_equal_B(A_equal_B), .A_less_B(A_less_B));

	initial
	begin
		$monitor($time," A = %d, B = %d, A_great_B = %b, A_ equal_B = %b, A_less_B =%b",A,B,A_great_B,A_equal_B, A_less_B);
		$dumpfile("eightbitcompwaveform.vcd");
		$dumpvars(0, eightbitcompTB);
	end

	task initialize;
		begin
			A = 0;
			B = 0;
		end
	endtask

	task stimulus;
		begin
			for(i = 0; i<10; i=i+1)
			begin 
				#5;
				A= $random;
				B =$random;
			end
		end
	endtask

	initial
	begin
		initialize;
		stimulus;
		#5 $finish;
	end
endmodule
