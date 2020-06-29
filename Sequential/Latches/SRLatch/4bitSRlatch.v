module fourbitSRlatch (Set , Reset, En, Q, Qbar);

 input [3:0]Set;
 input [3:0]Reset;
 input En;

 output [3:0]Q;
 output [3:0]Qbar;
 
 	onebitSRlatch Sr1 (Set[0], Reset [0], En, Q[0], Qbar[0]);
 	onebitSRlatch Sr2 (Set[1], Reset [1], En, Q[1], Qbar[1]);
 	onebitSRlatch Sr3 (Set[2], Reset [2], En, Q[2], Qbar[2]);
 	onebitSRlatch Sr4 (Set[3], Reset [3], En, Q[3], Qbar[3]);

endmodule
