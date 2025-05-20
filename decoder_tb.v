module decoder_tb;
	reg X,A;
	wire y1,y2;
	
	decoder d0(A,X,y1,y2);
	
	initial begin
		$monitor("At time %0t: A=%b X=%b y1=%b y2=%b", $time, A,X,y1,y2);
		$dumpfile("_A03.vcd");
		$dumpvars(0,decoder_tb);
		
		X=0;A=0;
		#2 X = 0; A = 1;
		#2 X = 1; A = 0;
		#2 X = 1; A = 1;
		#2 $finish;
		
	end
endmodule
