module decoder3_tb;
	reg W0,W1,W2,E;
	wire[7:0]y;
	
	decoder3 h1(W2,W1,W0,E,y);
	
	initial begin
		W2=0;W1=0;W0=0;E=0;
		$monitor("At time %0t: W2=%b W1=%b W0=%b E=%b OP = %b %b %b %b %b %b %b %b", $time, W0,W1,W2,E,y[7],y[6],y[5],y[4],y[3],y[2],y[1],y[0]);
		
		$dumpfile("_A03.vcd");
		$dumpvars(0,decoder3_tb);
		
		#5 W2=0;W1=0;W0=0;E=1;
		#5 W2=0;W1=0;W0=1;E=1;
		#5 W2=0;W1=1;W0=0;E=1;
		#5 W2=0;W1=1;W0=1;E=1;
		#5 W2=1;W1=0;W0=0;E=1;
		#5 W2=1;W1=0;W0=1;E=1;
		#5 W2=1;W1=1;W0=0;E=1;
		#5 W2=1;W1=1;W0=1;E=1;
		#5 $finish;
		
	end
endmodule
		
