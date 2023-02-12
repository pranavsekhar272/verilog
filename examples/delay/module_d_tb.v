// Stimulus (top-level module)
module stimulus;
	
	// Declare variables
	reg A, B, C;
	wire OUT;

	// Instantiate the module D
	D d1 (OUT, A, B, C);

	// Stimulate the inputs. Finish the simulation at 40 time units.
	initial
	begin
		$dumpfile ("module_d.vcd");
		$dumpvars (0, stimulus);
		A= 1'b0; B= 1'b0; C= 1'b0;
		#10 A= 1'b1; B= 1'b1; C= 1'b1;

		#10 A= 1'b1; B= 1'b0; C= 1'b0;

		#20 $finish;
	end
endmodule
