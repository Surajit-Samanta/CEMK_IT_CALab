module half_subtractor(A, B, Difference, Borrow);
	input A, B;
	output Difference, Borrow;
	xor(Difference, A, B);
	and(Borrow, ~A, B);
endmodule
