module jk_flipflop (j, k, clear, clock, q, qbar);
	input j, k, clock, clear;
	output q, qbar;
	wire a, b, y, ybar, cbar, c, d;
	
	not  net1(cbar, clock);
	nand net2(a, qbar, j, clock, clear);
	nand net3(b, clock, k, q);
	nand net4(y, a, ybar);
	nand net5(ybar, y, clear, b);
	nand net6(c, y, cbar);
	nand net7(d, cbar, ybar);
	nand net8(q, c, qbar);
	nand net9(qbar, q, clear, d);
endmodule