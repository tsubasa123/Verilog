module halfsub (A , B, Diff, Borrow);

	input A;
	input B;
	output reg Diff;
	output reg  Borrow;

	always @(*)
	begin
		case ({A, B})
			2'b00:
			begin
				Diff <= 0;
				Borrow <= 0;
			end
			2'b01:
			begin
				Diff <= 1;
				Borrow <= 1;
			end
			2'b10:
			begin
				Diff <=1;
				Borrow <= 0;
			end
			2'b11:
			begin
				Diff <= 0;
				Borrow <= 0;
			end
			default:
			begin
				Diff <= 0;
				Borrow <=0;
			end

		endcase
	end
endmodule
