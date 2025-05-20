module full_adder(input a, b, c, output Sum, Carry);
	wire w1, w2, w3;
	half_adder HA1(a, b, w1, w2);
	half_adder HA2(c, w1, Sum, w3);
	or G1(Carry, w2, w2, w3);
endmodule
