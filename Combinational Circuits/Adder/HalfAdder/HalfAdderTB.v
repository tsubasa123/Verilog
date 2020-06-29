module HalfAdderTB();
	reg A;
	reg B;
	wire Sum ;
	wire Carry;

	HalfAdder DUT (.A(A) , .B(B), .Sum(Sum), .Carry(Carry));

	task Init;
		begin
			A = 0;
			B = 0;
		end
	endtask

	initial
	begin
 		$monitor ("A = %b , B = %b , Sum = %b, Carry = %b",A,B,Sum, Carry );
		$dumpfile("HalfAdderwaveform.vcd");
		$dumpvars(0, HalfAdderTB);
	end

	initial
	begin
		Init;
		#10  A = 0; B = 0;
		#5   A = 0; B = 1;
		#5   A = 1; B = 0;
		#5   A = 1; B = 1;
		#5 $finish;
	end
endmodule
