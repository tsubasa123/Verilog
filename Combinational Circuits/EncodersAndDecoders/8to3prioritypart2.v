module eighttothreepart2 (code , data);

 input [7:0]data;

 output reg [2:0]code;

	 always @ (*)
	 begin
		case (data)
			8'b00000001 : code = 3'b000;
			8'b00000010 : code = 3'b001;
			8'b00000100 : code = 3'b010;
			8'b00001000 : code = 3'b011;
    			8'b00010000 : code = 3'b100;
			8'b00100000 : code = 3'b101;
			8'b01000000 : code = 3'b110;
			8'b10000000 : code = 3'b111;
			default     : code = 3'bx;
		endcase
	end
endmodule  
