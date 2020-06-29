/*module twobitFullAdder(A, B, CarryIn, Sum, CarryOut);
	input [1:0] A;
	input [1:0] B;
	input CarryIn;
	output [1:0] Sum;
	output CarryOut;
	wire [2:0] temp;

	assign temp = A + B + CarryIn;
	assign Sum = temp [1:0];
	assign CarryOut = temp [2];

endmodule*/


/*module twobitFullAdder(A, B, CarryIn, Sum, CarryOut);
	input [1:0] A;
	input [1:0] B;
	input CarryIn;

	output reg[1:0] Sum;
	output reg CarryOut;

	always @(*)
	begin
		case({A , B, CarryIn})
			5'b00000:
			begin
				Sum <= 2'b00;
				CarryOut <= 0;
			end
			5'b00001:
			begin
				Sum <= 2'b10;
				CarryOut <= 0;
			end
			5'b00010:
			begin
				Sum <= 2'b10;
				CarryOut <= 0;
			end
			5'b00011:
			begin
				Sum <= 2'b01;
				CarryOut <= 0;
			end
			5'b00100:
			begin
				Sum <= 2'b10;
				CarryOut <= 0;
			end
			5'b00101:
			begin
				Sum <= 2'b01;
				CarryOut <= 0;
			end
			5'b00110:
			begin
				Sum <= 2'b01;
				CarryOut <= 0;
			end
			5'b00111:
			begin
				Sum <= 2'b11;
				CarryOut <= 0;
			end

			5'b01000:
			begin
				Sum <= 2'b10;
				CarryOut <= 0;
			end
			5'b01001:
			begin
				Sum <= 2'b01;
				CarryOut <= 0;
			end
			5'b01010:
			begin
				Sum <= 2'b01;
				CarryOut <= 0;
			end
			5'b01011:
			begin
				Sum <= 2'b11;
				CarryOut <= 0;
			end
			5'b01100:
			begin
				Sum <= 2'b01;
				CarryOut <= 0;
			end
			5'b01101:
			begin
				Sum <= 2'b11;
				CarryOut <= 0;
			end
			5'b01110:
			begin
				Sum <= 2'b11;
				CarryOut <= 0;
			end
			5'b01111:
			begin
				Sum <= 2'b00;
				CarryOut <= 1;
			end

			5'b10000:
			begin
				Sum <= 2'b10;
				CarryOut <= 0;
			end
			5'b10001:
			begin
				Sum <= 2'b01;
				CarryOut <= 0;
			end
			5'b10010:
			begin
				Sum <= 2'b01;
				CarryOut <= 0;
			end
			5'b10011:
			begin
				Sum <= 2'b11;
				CarryOut <= 0;
			end
			5'b10100:
			begin
				Sum <= 2'b01;
				CarryOut <= 0;
			end
			5'b10101:
			begin
				Sum <= 2'b11;
				CarryOut <= 0;
			end
			5'b10110:
			begin
				Sum <= 2'b11;
				CarryOut <= 0;
			end
			5'b10111:
			begin
				Sum <= 2'b00;
				CarryOut <= 1;
			end

			5'b11000:
			begin
				Sum <= 2'b01;
				CarryOut <= 0;
			end
			5'b11001:
			begin
				Sum <= 2'b11;
				CarryOut <= 0;
			end
			5'b11010:
			begin
				Sum <= 2'b11;
				CarryOut <= 0;
			end
			5'b11011:
			begin
				Sum <= 2'b00;
				CarryOut <= 1;
			end
			5'b11100:
			begin
				Sum <= 2'b11;
				CarryOut <= 0;
			end
			5'b11101:
			begin
				Sum <= 2'b00;
				CarryOut <= 1;
			end
			5'b11110:
			begin
				Sum <= 2'b00;
				CarryOut <= 1;
			end
			5'b11111:
			begin
				Sum <= 2'b10;
				CarryOut <= 1;
			end
		endcase
	end
endmodule*/

module twobitFullAdder (A, B, CarryIn, Sum, CarryOut);

	input [1:0]A;
	input [1:0]B;
	input CarryIn;

	output [1:0]Sum;
	output CarryOut;

	wire carry;

	onebitadder add1(A[0], B[0], CarryIn, Sum[0], carry);
	onebitadder add2(A[1], B[1], carry, Sum[1], CarryOut);


endmodule
