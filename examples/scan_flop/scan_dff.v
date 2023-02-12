module scan_dff (d, q, en, si, clk, rst);
	input d, en, si, clk, rst;
	output reg q;


	always @ (posedge clk or negedge rst) 
		begin
		if (!rst) 
			q <= 0;
		else 
			if (en) 
				q <= si;
			else 
				q <= d;
		end
endmodule
