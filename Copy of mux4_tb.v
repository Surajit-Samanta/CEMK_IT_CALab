module mux4_tb;
	reg I0,I1,I2,I3,S0,S1,E;
	wire y;
	
	mux4 m(I0,I1,I2,I3,S0,S1,E,y);
	
	initial begin
		$monitor("At time %0t: I0=%b I1=%b I2=%b I3=%b S0=%b S1=%b E=%b y=%b", $time, I0,I1,I2,I3,S0,S1,E,y);
		$dumpfile("_A03");
		$dumpvars(0,mux4_tb);
		
		I0=0;I1=0;I2=0;I3=0;S0=0;S1=0;E=1;
		#2 I0=1;I1=0;I2=0;I3=0;S0=0;S1=0;E=1;
		#2 I0=0;I1=1;I2=0;I3=0;S0=1;S1=0;E=1;
		#2 I0=0;I1=0;I2=1;I3=0;S0=0;S1=1;E=1;
		#2 I0=0;I1=0;I2=0;I3=1;S0=1;S1=1;E=1;
		
		#2 $finish;
		
	end
endmodule
