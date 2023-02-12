module test;
	reg EN, SI, D;
	reg CLK=0, RST;
	wire Q;
	
	scan_dff M (D, Q, EN, SI, CLK, RST);

	always #5 CLK = ~CLK;
	initial
		begin
			$dumpfile ("scan_dff.vcd");
			$dumpvars (0, test);

			$monitor ($time, CLK, RST, EN, SI, D, Q);

			#5 RST=1'b0;
			#5 RST=1'b1; EN=1'b0; D=1'b1; SI=1'b0; 
			#5 RST=1'b1; EN=1'b0; D=1'b0; SI=1'b0; 
			#5 RST=1'b1; EN=1'b1; D=1'b0; SI=1'b0; 
			#5 RST=1'b1; EN=1'b1; D=1'b1; SI=1'b1; 
			#5 RST=1'b1; EN=1'b0; D=1'b0; SI=1'b1; 
			#4 $finish;
		end
endmodule
			



