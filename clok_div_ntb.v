`timescale 1ns / 1ps


module clok_div_ntb;

	// Inputs
	reg clk;

	// Outputs
	wire  clk_div1;
	wire clk_div2;
wire clk_div3;
wire clk_div4;
	// Instantiate the Unit Under Test (UUT)
	clock_div_bynbit #(.DIV(2)) //clock  div by 2
	uut0 (
		.clk(clk), 
		.clk_div(clk_div1)
	);
clock_div_bynbit #(.DIV(4))//clock div by 4
	uut1 (
		.clk(clk), 
		.clk_div(clk_div2)
	);
	clock_div_bynbit #(.DIV(8))//clock div by 8
	uut2 (
		.clk(clk), 
		.clk_div(clk_div3)
	);
	clock_div_bynbit #(.DIV(16))//clock div by 16
	uut3 (
		.clk(clk), 
		.clk_div(clk_div4)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		
		#100 $stop;

	end
     always #1 clk=~clk; 
endmodule


