module gate_xnor_tb;
	reg a1, a2;
	wire b;
	gate_xnor g0(a1, a2, b);
	initial begin
		$monitor("At time %0t: a1=%b a2=%b  xnor[a1,a2]=%b", $time, a1, a2, b);
		$dumpfile("_A02a.vcd");
		$dumpvars(0,gate_xnor_tb);
		
		a1 = 0; a2 = 0;
		#2 a1 = 0; a2 = 0;
		#2 a1 = 0; a2 = 1;
		#2 a1 = 1; a2 = 0;
		#2 a1 = 1; a2 = 1;
		#2 $finish;
	end
endmodule
