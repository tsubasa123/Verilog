module Dlatchfourbit (D, En, Q);

 input [3:0]D;
 input En;
 
 output [3:0]Q;

	Dlatchonebit dl1 (D[0], En, Q[0]);
	Dlatchonebit dl2 (D[1], En, Q[1]);
	Dlatchonebit dl3 (D[2], En, Q[2]);
	Dlatchonebit dl4 (D[3], En, Q[3]);
endmodule	
