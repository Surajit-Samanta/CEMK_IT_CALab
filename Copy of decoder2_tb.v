module decoder2_tb;
	reg I1,I2,E;
	wire y3,y2,y1,y0;
	
	decoder2 d1(I1,I2,E,y3,y2,y1,y0);
	
	initial begin
	
		$monitor("At time %0t: I1=%b I2=%b E=%b OP=%b%b%b%b", $time, I1,I2,E,y3,y2,y1,y0);
		$dumpfile("_A03.vcd");
		$dumpvars(0,decoder2_tb);
		
		I1=0;I2=0;E=0;
		#2 E = 1; I1 = 0; I2 = 0;
		#2 E = 1; I1 = 0; I2 = 1;
		#2 E = 1; I1 = 1; I2 = 0;
		#2 E = 1; I1 = 1; I2 = 1;
		#2 $finish;
		
	end
endmodule
		
