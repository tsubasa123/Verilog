module eighttothreeencoder (code , din);

 input [7:0]din;

 output reg [2:0]code;

	 always @ (*)
	 begin
		if (din[0] == 1)
			code = 3'b000;
		else if(din[1] == 1)
			code = 3'b001;
		else if(din[2] == 1)
			code = 3'b010;
		else if(din[3] == 1)
			code = 3'b011;
		else if(din[4] == 1)
			code = 3'b100;
		else if(din[5] == 1)
			code = 3'b101;
		else if(din[6] == 1)
			code = 3'b110;
		else if(din[7] == 1)
			code = 3'b111;
		else
			code = 3'bx;
	end
endmodule  
