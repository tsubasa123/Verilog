module NandGate (A, B , Out);

	input A, B ;
	output Out ;

	assign Out = ~(A & B);


endmodule
