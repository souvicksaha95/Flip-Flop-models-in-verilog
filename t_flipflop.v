module t_flipflop (clk, reset, out);
	input clk, reset;
	output out;
	
	d_flipflop dff(.clk(clk), .clear(reset), .d(~out), .q(out), .qbar());
endmodule