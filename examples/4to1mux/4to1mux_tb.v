// Define the stimulus module (no ports)
module stimulus;

	// Declare variables to be connected
	// to inputs
	reg IN0, IN1, IN2, IN3;
	reg S1, S0;

	// Declare output wire
	wire OUTPUT;

	// Instantiate the multiplexer 
	mux4_to_1 mymux (OUTPUT, IN0, IN1, IN2, IN3, S1, S0);

	// Stumulate the inputs 
	// Define the stimulus module (no ports)
	initial 
	begin
		// dump vcd file
		$dumpfile ("4to1mux.vcd");
		$dumpvars (0, stimulus);
		// set input lines
		IN0 = 1; IN1 = 0; IN2 = 1; IN3 = 0;
		#1 $display("IN0= %b, IN1= %b, IN2= %b, IN3= %b\n", IN0, IN1, IN2, IN3);
		
		// choose IN0
		S1 = 0; S0 = 0;
		#1 $display("S1= %b, S0= %b, OUTPUT= %b \n", S1, S0, OUTPUT);

		// choose IN1
		S1 = 0; S0 = 1;
		#1 $display("S1= %b, S0= %b, OUTPUT= %b \n", S1, S0, OUTPUT);

		// choose IN2
		S1 = 1; S0 = 0;
		#1 $display("S1= %b, S0= %b, OUTPUT= %b \n", S1, S0, OUTPUT);

		// choose IN3
		S1 = 1; S0 = 1;
		#1 $display("S1= %b, S0= %b, OUTPUT= %b \n", S1, S0, OUTPUT);

	end
endmodule



	
