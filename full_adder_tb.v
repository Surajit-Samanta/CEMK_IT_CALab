module full_adder_tb;
	reg a, b, c;
	wire Sum, Carry;
	
	full_adder u0(a, b, c, Sum, Carry);
	
	initial begin
		$monitor("At time %0t: a=%b b=%b Sum=%b Carry=%b", $time, a, b, Sum, Carry);
		$dumpfile("_A02a.vcd");
		$dumpvars(0,full_adder_tb);
		
		{a, b, c}=0;
		#2 a = 0; b = 0; c = 0;
		#2 a = 0; b = 0; c = 1;
		#2 a = 0; b = 1; c = 0;
		#2 a = 0; b = 1; c = 1;
		#2 a = 1; b = 0; c = 0;
		#2 a = 1; b = 0; c = 1;
		#2 a = 1; b = 1; c = 0;
		#2 a = 1; b = 1; c = 1;
		
		#2 $finish;
	end
endmodule
