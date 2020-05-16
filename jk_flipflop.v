module jk_flipflop(j, k, clear, clock, q, qbar);
	input j, k, clock, clear;
	output reg q = 0, qbar;
	
	always @(posedge clock)
		begin
			if(j == 0)
				begin
					if (k == 0)
						begin
							q <= q;
							qbar <= qbar;
						end
					if (k == 1)
						begin
							q <= 0;
							qbar <= 1;
						end
				end
			else if(j == 1)
				begin
					if (k == 0)
						begin
							q <= 1;
							qbar <= 0;
						end
					if (k == 1)
						begin
							q <= ~q;
							qbar <= ~qbar;
						end
				end
		end
		
	always @(negedge clear)
		begin
			q <= 0;
			qbar <= 1;
		end
	
endmodule