module paralleladder_tb();
	reg [7:0] a, b;
	reg Cin;
	wire [7:0] Sum;
	wire Cout;
	
	para_adder pa(a, b, Cin, Sum, Cout);
	
	initial begin
		$monitor("At %t, a=%b, b=%b, Cin=%b, Sun=%b, Cout=%b", $time, a, b, Cin,Sum, Cout);
		$dumpfile("paralleladder_test.vcd");
		$dumpvars(0,paralleladder_tb);
		
		a = 8'b00000000; b = 8'b00000000; Cin = 1'b0;
		#10 a = 8'b00000001; b = 8'b00000001; Cin = 1'b0;
		#10 a = 8'b00000001; b = 8'b00000001; Cin = 1'b1;
		#10 a = 8'b00000010; b = 8'b00000011; Cin = 1'b0;
		#10 a = 8'b10000001; b = 8'b10000001; Cin = 1'b0;
		#10 a = 8'b00011001; b = 8'b00110001; Cin = 1'b0;
		#10 a = 8'b00000011; b = 8'b00000011; Cin = 1'b1;
		#10 a = 8'b11111111; b = 8'b00000001; Cin = 1'b0;
		#10 a = 8'b11111111; b = 8'b00000000; Cin = 1'b1;
		#10 a = 8'b11111111; b = 8'b11111111; Cin = 1'b0;
		#10 $finish;
	end
endmodule
