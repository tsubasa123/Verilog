module And4inp (A , B, C , Out);
	input A , B, C ;
	output Out;

	assign Out = (A & B) & C;

endmodule
