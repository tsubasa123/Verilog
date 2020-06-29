module eightch32bit (D0, D1, D2, D3, D4, D5, D6, D7 , sel, databus);

input [31:0]D0, D1, D2, D3, D4, D5, D6, D7;
input [2:0] sel;

output reg [31:0] databus; 

	always @(*)
	begin
		case(sel)
			3'b000: 
				databus = D0;
			3'b001:
				databus = D1;	
			3'b010:
				databus = D2;
			3'b011:
				databus = D3;
			3'b100:
				databus = D4;
			3'b101:
				databus = D5;
			3'b110:
				databus = D6;
			3'b111:
				databus = D7;
			default:
				databus = 32'h0000;
		endcase
	end
endmodule


