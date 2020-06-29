module EvenParityCheck (A , ParityCheck);
	
	input [3:0]A;
	output reg ParityCheck;
	integer count = 0;
	integer i = 0;

	always@(A)
		begin
			count = 0;
			for(i = 0; i<4; i = i+1)
			begin
				if (A[i] == 1)			
				begin
					count = count + 1; 
				end
				else 
				begin
					count  = count ;
				end
			end
			if ((count % 2) == 0)
			begin
				ParityCheck = 0;
			
			end
			else 
			begin
				ParityCheck = 1;
			end
		end 

endmodule 


