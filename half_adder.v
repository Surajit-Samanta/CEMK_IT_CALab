module half_adder(a, b, Sum, Carry);
	input a, b;
	output Sum, Carry;
	
	xor (Sum, a, b);
	and (Carry, a, b);
endmodule
