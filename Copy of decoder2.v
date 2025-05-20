module decoder2(I1,I0,E,y3,y2,y1,y0);
	input I1,I0,E;
	output y3,y2,y1,y0;
	wire W1,W2;
	
	decoder D1(I1,E,W1,W2);
	decoder D2(I0,W2,y1,y0);
	decoder D3(I0,W1,y3,y2);
endmodule
