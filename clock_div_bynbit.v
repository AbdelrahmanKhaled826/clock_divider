
`timescale 1ns / 1ps

module clock_div_bynbit
#(
parameter DIV=2)
(
// freq div by 2^n
input clk,
output  clk_div
);
parameter N=$clog2(DIV);

reg [N-1:0] count=0;
always @(posedge clk)
begin 
if(count != 2**(N))begin
count<=count+1;
end else count<=0;
end
assign  clk_div=count[N-1];
 endmodule
