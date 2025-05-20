module gate_buf_not(input x,output y1, y2);
	buf(y1, x);
	not(y2, x);
endmodule
