module dff_test;
	reg d, preset , clear, clock;
	wire q, qbar;

	dff inst (d, clock, q, qbar, preset, clear);

	always #10 clock = ~clock;

	initial
	begin
		$dumpfile ("dff.vcd");
		$dumpvars (0, dff_test);

		$monitor ($time, "d=%b, preset=%b, clear=%b, q=%b", d, preset, clear, q);

		#0 clock = 1'b0;
		#5 preset = 1'b0; d = 1'b0;
		#5 preset = 1'b1; clear = 1'b0; d = 1'b0;
		#5 clear = 1'b1; preset = 1'b1; d = 1'b1;
		#5 clear = 1'b1; preset = 1'b1; d = 1'b0;
		#5 $finish;
	end
endmodule
