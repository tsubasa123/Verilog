module eightbitcomp (input [7:0]A, input [7:0]B, output reg A_great_B, output reg A_less_B , output reg A_equal_B);

 always @(*)
 	begin
		if (A>B)
		begin
			A_great_B = 1;
			A_equal_B = 0;
			A_less_B  = 0;
		end
		else if (A==B)
		begin
			A_great_B = 0;
			A_equal_B = 1;
			A_less_B  = 0;
		end
		else if (A<B)
		begin
			A_great_B = 0;
			A_equal_B = 0;
			A_less_B  = 1;
		end
		else 
		begin
			A_great_B = 0;
			A_equal_B = 0;
			A_less_B  = 0;
		end
	end
endmodule
