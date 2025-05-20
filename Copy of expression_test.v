module expression_test(input a, b, c, output op);
	
	wire x1, x2;
	
	// A + B . C
	assign op = a|b&c;
	
	// A' . B + C' . B
	//assign op = ~ a & b | ~ c & b;
	
	// (X + Y) Z'
	//xor (op, a|b, c);
	
	and(x1, a, b);
	xor(x2, a, c);
	//xnor(op, x1, x2);

endmodule
