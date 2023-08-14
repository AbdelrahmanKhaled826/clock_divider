`timescale 1ns / 1ps

module clok_div_by3tb;

	// Inputs
	reg clk;

	// Outputs
	wire clk_div;
	// Instantiate the Unit Under Test (UUT)
	clock_div_by3 uut (
		.clk(clk), 
		.clk_div(clk_div)
		
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		#100
		$stop;

	

	end
      always #1 clk=~clk;
endmodule

