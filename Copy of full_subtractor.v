module full_subtractor (input A, B, Bin, output Difference, Borrow);
	wire w1, w2, w3;
	half_subtractor HS1(A, B, w1, w2);
	half_subtractor HS2(Bin, w1, Difference, w3);
	or G1(Borrow, w2,w3);
endmodule
