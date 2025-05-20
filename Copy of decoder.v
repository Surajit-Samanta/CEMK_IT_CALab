module decoder(input X,A,output y1,y2);
	wire W1,W2;
	not N1(W1,X);
	not N2(W2,W1);
	and A1(y1,W2,A);
	and A2(y2,W1,A);
endmodule
