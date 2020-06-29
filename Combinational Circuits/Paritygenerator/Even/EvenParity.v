module EvenParityfourbit (A, parity_bit, Out);

	input [2:0]A;
	integer count = 0;
	output reg[3:0]Out;
	output reg parity_bit;
	integer i;

	always@(A)
		begin
			count = 0;
			for (i = 0; i<=2 ; i = i+1)
			begin
				if (A[i] == 1)
				begin
					count = count + 1 ;
				end
			end
			if ((count % 2) == 0)
			begin
				parity_bit = 0;
				Out = {A , parity_bit};
			end
			else if ((count % 2) != 0)
			begin
				parity_bit = 1 ;
				Out = {A , parity_bit};
			end

		end
endmodule
