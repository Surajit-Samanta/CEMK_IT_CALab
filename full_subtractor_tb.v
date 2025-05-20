module full_subtractor_tb;
	reg A, B, Bin;
	wire Difference, Borrow;
	full_subtractor u0(A, B, Bin, Difference, Borrow);
	
	initial begin
		$monitor("At time %0t: A=%B B=%B Bin=%B Difference=%B Borrow=%B", $time, A, B, Bin, Difference, Borrow);
		$dumpfile("full_subtractor.vcd"); 
		$dumpvars(0, full_subtractor_tb);
		
		{A, B, Bin} = 0;
		#2 A=0; B=0; Bin=0;
		#2 A=0; B=0; Bin=1;
		#2 A=0; B=1; Bin=0;
		#2 A=0; B=1; Bin=1;
		#2 A=1; B=0; Bin=0;
		#2 A=1; B=0; Bin=1;
		#2 A=1; B=1; Bin=0;
		#2 A=1; B=1; Bin=1;
		#2 $finish;
	end
endmodule
		
