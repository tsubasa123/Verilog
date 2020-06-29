module onebitSRlatch (Set , Reset, En, Q, Qbar);

 input Set;
 input Reset;
 input En;
 
 output reg Q;
 output wire Qbar; 
 

 assign Qbar = ~Q;
	always @(*)
	begin
		if ((!En)||(Set == 0 && Reset == 0))
		begin
			Q = Q;
		end
		else if(En)
		begin
			if(Set != Reset)
			begin
				Q = Set;
			end
			else
			begin
				Q = 1'bx;
			end
		end
	end
endmodule
