module mux(input D0,D1,S,E,output y);
	wire W1,W2,W3;
	not N1(W1,S);
	and A1(W2,D0,W1,E);
	and A2(W3,D1,S,E);
	or o1(y,W2,W3);
endmodule
