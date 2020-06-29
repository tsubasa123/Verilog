module fourbitaddersub (A, B, CarryIn,Sum, CarryOut);
	input [3:0]A;
	input [3:0]B;
	input CarryIn;

	output [3:0]Sum;
	output CarryOut;
	output reg [3:0]Bxor;
	output wire [2:0]carry;
	integer i = 0;

	onebitadder fa1 (A[0], Bxor[0], CarryIn, Sum[0], carry[0]);
	onebitadder fa2 (A[1], Bxor[1], carry[0], Sum[1] , carry[1]);
	onebitadder fa3 (A[2], Bxor[2], carry[1], Sum[2] , carry[2]);
	onebitadder fa4 (A[3], Bxor[3], carry[2], Sum[3] , CarryOut);

	always @(B,CarryIn)
	begin
		for (i = 0; i<=3; i = i+1)
		begin
			Bxor[i] = (B[i] ^ CarryIn);
		end
	end


endmodule
