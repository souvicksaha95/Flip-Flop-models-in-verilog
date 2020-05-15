module d_flipflop (clear, clk, d, q, qbar);
	input clear, clk, d;
	output q, qbar;
	wire cbar, r, rbar, s, sbar;
	
	not G1(cbar, clear);
	nand G2(sbar, s, rbar);
	nand G3(s, cbar, ~clk, sbar);
	nand G4(r, s, ~clk, rbar);
	nand G5(rbar, r, cbar, d);
	nand G6(q, s, qbar);
	nand G7(qbar, q, cbar, r);
endmodule