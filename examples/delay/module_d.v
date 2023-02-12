// Define a simple combination module called D
module D (out, a, b, c);

	// I/O port declarations
	output out;
	input a,b,c;

	// Internal nets
	wire e;

	// Instantiate primitive gates to build the circuit
	and #(5) a1(e, a, b); // Delay of 5 on gate a1
	or #(4) o1(out, e, c); // Delay of 4 on gate o1

endmodule
