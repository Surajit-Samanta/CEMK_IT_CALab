module decoder3(W2,W1,W0,E,y);
	input W0,W1,W2,E;
	output [7:0]y;
	wire A1,A2;
	
	decoder D1(W2,E,A1,A2);
	decoder2 D2(W1,W0,A2,y[3],y[2],y[1],y[0]);
	decoder2 D3(W1,W0,A1,y[7],y[6],y[5],y[4]);
endmodule
