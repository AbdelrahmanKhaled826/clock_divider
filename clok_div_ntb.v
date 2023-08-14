`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:17:06 08/14/2023
// Design Name:   clock_div_bynbit
// Module Name:   C:/example_verilog/d_ff/clok_div_ntb.v
// Project Name:  d_ff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_div_bynbit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clok_div_ntb;

	// Inputs
	reg clk;

	// Outputs
	wire  clk_div;

	// Instantiate the Unit Under Test (UUT)
	clock_div_bynbit #(.DIV(16))
	uut (
		.clk(clk), 
		.clk_div(clk_div)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		
		#100 $stop;

	end
     always #1 clk=~clk; 
endmodule


