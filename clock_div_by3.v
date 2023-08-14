`timescale 1ns / 1ps

module clock_div_by3
(
input clk,
output  clk_div  );
    
reg [1:0] count=0;
wire count_out;
reg ff_out;

always @(posedge clk)begin
	if(count != (2)) count<=count+1;
	else count<=0;
	end
	
assign count_out=count[1];

always @(negedge clk)begin
	ff_out<=count[1];
	end

assign clk_div = count_out | ff_out ;
endmodule
