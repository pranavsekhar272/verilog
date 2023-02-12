// Top level stimulus module
module stimulus;
	// Declare variables for stimulating input
	reg CLOCK, CLEAR;
	wire [3:0] Q;

	initial
		$monitor($time, " Count Q = %b  Clear = %b", Q[3:0], CLEAR);

		// Instantiate the design block counter
		counter c1(Q, CLOCK, CLEAR);

		// Stimulate the Clear Signal
		initial
		begin
			CLEAR = 1'b1;
			#34 CLEAR = 1'b0;
			#200 CLEAR = 1'b1;
			#50 CLEAR = 1'b0;
		end

		// Set up the clock to toggle every 10 time units
		initial
		begin
			CLOCK = 1'b0;
			forever #10 CLOCK = ~CLOCK;
		end

		// Finidh the simulation at time 400
		initial
		begin
			#400 $finish;
		end
endmodule
