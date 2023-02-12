// Test bench for negative edge D flip-flop

module dff_n_test;
	reg d,clk=0;
	wire q,qbar;
	dff_negedge DUT (.D(d), .clock(clk), .Q(q), .Qbar(qbar));
	always #10 clk = ~clk;

	initial
		begin
			$dumpfile ("neg_dff.vcd");
			$dumpvars (0, dff_n_test);
			$monitor ($time, "d=%b, clk=%b, q=%b, qbar=%b", d,clk,q,qbar);
			#5 d=1'b0;
			#5 d=1'b1;
			#5 d=1'b1;
			#5 d=1'b1;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b1;
			#5 d=1'b1;
			#5 d=1'b0;
			#5 d=1'b1;
			#5 d=1'b0;
			#5 d=1'b1;
			#5 d=1'b1;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b1;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b1;
			#5 d=1'b0;
			#5 d=1'b1;
			#5 d=1'b1;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b0;
			#5 d=1'b1;
			#5 d=1'b0;
			#5$finish;
		end
endmodule
