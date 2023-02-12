module comp_test;
	wire AeqB, AltB, AgtB;
	reg [3:0] A, B;
	compare inst1 (A, B, AeqB, AgtB, AltB);

	initial
	begin
		$dumpfile ("comp.vcd");
		$dumpvars (0, comp_test);

		$monitor ($time, "A=%b, B=%b, AeqB=%b, AltB=%b, AgtB=%b", A, B, AeqB, AltB, AgtB);
		#5 A=4'bxxxx; B=4'bxxxx;
		#5 A=4'b0000; B=4'b0001;
		#5 A=4'b1111; B=4'b1111;
		#5 A=4'b1110; B=4'b0011;
		#5 A=4'b0011; B=4'b0011;
		#5 $finish;
	end
endmodule
