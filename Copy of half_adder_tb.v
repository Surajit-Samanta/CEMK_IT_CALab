module half_adder_tb;
	reg a, b;
	wire Sum, Carry;
	
	half_adder u0(a, b, Sum, Carry);
	
	initial begin
		$monitor("At time %0t: a=%b b=%b Sum=%b Carry=%b", $time, a, b, Sum, Carry);
		$dumpfile("_A02a.vcd");
		$dumpvars(0,half_adder_tb);
		
		a = 0; b = 0;
		#2 a = 0; b = 0;
		#2 a = 0; b = 1;
		#2 a = 1; b = 0;
		#2 a = 1; b = 1;
		#2 $finish;
	end
endmodule
