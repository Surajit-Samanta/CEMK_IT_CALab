module mux_tb;
	reg D0,D1,S,E;
	wire y;
	
	mux d0(D0,D1,S,E,y);
	
	initial begin
		$monitor("At time %0t: D0=%b D1=%b S=%b E=%b y=%b", $time, D0,D1,S,E,y);
		$dumpfile("_A03");
		$dumpvars(0,mux_tb);
		
		D0=0;D1=0;S=0;E=1;
		#2 D0=0;D1=0;S=0;E=1;
		#2 D0=1;D1=0;S=0;E=1;
		#2 D0=0;D1=1;S=1;E=1;
		#2 D0=0;D1=1;S=0;E=1;
		#2 D0=1;D1=1;S=1;E=1;
		#2 $finish;
		
	end
endmodule
