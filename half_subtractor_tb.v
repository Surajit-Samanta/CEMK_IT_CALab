module half_subtractor_tb;
	reg A, B;
	wire Difference, Borrow;
	
	half_subtractor u0(A, B, Difference, Borrow);
	
	initial begin
		$monitor("At time %0t: A=%B B=%B Difference=%B Borrow=%B", $time, A, B, Difference, Borrow);
		$dumpfile("Half_subtractor.vcd");
		$dumpvars(0, half_subtractor_tb);
		
		{A, B}=0;
		#2 A=0; B=0;
		#2 A=0; B=1;
		#2 A=1; B=0;
		#2 A=1; B=1;
		#2 $finish;
	end
endmodule
