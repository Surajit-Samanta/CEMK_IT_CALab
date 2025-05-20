module gate_buf_not_tb;
	reg a;
	wire b1, b2;
	gate_buf_not g0(a, b1, b2);
	initial begin
		$monitor("At time %0t: a=%b buf[a]=%b not[a]=%b", $time, a, b1, b2);
		$dumpfile("_A02a.vcd");
		$dumpvars(0,gate_buf_not_tb);
		
		a = 0;
		#2 a = 1;
		#2 a = 0;
		#2 $finish;
	end
endmodule
