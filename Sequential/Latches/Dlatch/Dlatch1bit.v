module Dlatchonebit (D, En, Q);

 input D,En;
 
 output reg Q;

	always @(*)
	begin
		if (En == 1)
			Q = D;
	end
endmodule	
