module dff (d, clock, q, qbar, preset, clear);
	input d;
	input preset, clear, clock;
	output reg q;
	output qbar;

	assign qbar = ~q;
	assign preset_b = ~preset;
	assign clear_b = ~clear;

	always @(posedge clock or preset_b or  clear_b)
	begin
		if (preset_b)
			q <= 1;
		else if (clear_b)
			q <= 0;
		else
			q <= d;

	end
endmodule
