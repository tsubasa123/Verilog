module twotoonemux(input in0, input in1, input sel, output reg Out);

	always @(*)
	begin
		if (sel == 1)
		begin
			Out = in1;
		end
		else
		begin
			Out = in0;
		end

	end
endmodule
