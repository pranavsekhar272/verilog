// Edge-triggered T-flipflop. Toggles every clock
// cycle.
module T_FF(q, clk, clear);

	// I/O ports
	output q;
	input clk, clear;

	// Instantiate the edge-triggered DFF
	// Complement of ouput q is fed back.
	// Notice qbar not needed. Unconnected port.
	edge_dff ff1(q, ~q, clk, clear);

endmodule	
	
