`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:21 12/28/2017 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(	 
	 clk,
	 reset,
	 seg,
	 an
    );
	 
	 input wire clk;
	 input wire reset;
	 output wire [7:0] seg;
	 output wire [3:0] an;
	 
	 wire [15:0] val = 16'h5555;
	 
	 clock_div div(
	 .clk(clk),
	 .reset(reset),
	 .clk_div(clk_div)
	 );
	 
	 display dis(
	 .clk(clk_div),
	 .reset(reset),
	 .in(val),
	 .seg(seg),
	 .an(an)
	 );

endmodule
