module expression_test_tb;
	reg a1, a2, a3;
	wire b;
	expression_test g0(a1, a2, a3, b);
	initial begin
		$monitor("At time %0t: a1=%b a2=%b a3=%b  or[a1,a2] and[a2,a3]=%b", $time, a1, a2, a3, b);
		$dumpfile("_A02a.vcd");
		$dumpvars(0,expression_test_tb);
		
		a1 = 0; a2 = 0; a3 = 0;
		#2 a1 = 0; a2 = 0; a3 = 0;
		#2 a1 = 0; a2 = 0; a3 = 1;
		#2 a1 = 0; a2 = 1; a3 = 0;
		#2 a1 = 0; a2 = 1; a3 = 1;
		#2 a1 = 1; a2 = 0; a3 = 0;
		#2 a1 = 1; a2 = 0; a3 = 1;
		#2 a1 = 1; a2 = 1; a3 = 0;
		#2 a1 = 1; a2 = 1; a3 = 1;
		#2 $finish;
	end
endmodule
