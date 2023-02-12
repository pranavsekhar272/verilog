// Edge-triggered D flipflop
module edge_dff(q, d, clk, clear);
	
	// Inputs and outputs
	output q;
	input d, clk, clear;

	// Internal variables
	wire qbar, s, sbar, r, rbar, cbar;

	assign qbar = ~q;

	// dataflow statements
	// Create a complement of signal clear
	assign cbar = ~clear;
	// Input latches; A latch is level sensitive. An edge-sensitive
	// flip-flop is implemented by using 3 SR latches.
	assign sbar = ~(rbar & s),
		   s = ~(sbar & cbar & ~clk),
		   r = ~(rbar & ~clk &s),
		   rbar = ~(r & cbar & d);
	
	// Output latch
	assign q = ~(s & qbar),
		   qbar = ~(q & r & cbar);
endmodule
