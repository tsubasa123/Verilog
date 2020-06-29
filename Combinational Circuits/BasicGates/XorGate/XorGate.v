module XorGate (A , B , Out);

	input A, B;
	output reg Out;

	always @(*)
		begin
			if ((A == 1'b0) & (B == 1'b0))
				begin
					Out = 1'b0;
				end
			else if ((A == 1'b1) & (B == 1'b1))
				begin
					Out = 1'b0;
				end
			else 
				begin
					Out = 1'b1;
				end 
		end
endmodule

