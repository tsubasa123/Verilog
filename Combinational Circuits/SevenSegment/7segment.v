module BcdTo7segment (input [3:0] bcd , output reg[6:0]Out);

	always @(bcd)
	begin
		case(bcd)
			0 : Out = 7'b1111110;
			1 : Out = 7'b0110000;
			2 : Out = 7'b1101101;
			3 : Out = 7'b1111001;
			4 : Out = 7'b0110011;
			5 : Out = 7'b1011011;
			6 : Out = 7'b1011111;
			7 : Out = 7'b1110000;
			8 : Out = 7'b1111111;
			9 : Out = 7'b1111011;
		  	default : Out = 7'b0000000;
		endcase
	end

endmodule
