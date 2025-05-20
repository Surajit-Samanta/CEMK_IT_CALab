module mux4(input I0,I1,I2,I3,S0,S1,E,output y);
	wire W1,W2;
	mux M1(I0,I1,S0,E,W1);
	mux M2(I2,I3,S0,E,W2);
	mux M3(W1,W2,S1,E,y);
endmodule
