// This example illustrates the different components of a module

// Module name and port list
// SR_latch module
module SR_latch (Q, Qbar, Sbar, Rbar);

	// Port declarations
	output Q, Qbar;
	input Sbar, Rbar;

	// Instantiate lower-level modules
	// In this case, instantiate Verilog primitive nand gates
	// Note, how the wires are connected in a cross-coupled fashion.
	nand n1 (Q, Sbar, Qbar);
	nand n2 (Qbar, Rbar, Q);

	// endmodule statement 
endmodule


