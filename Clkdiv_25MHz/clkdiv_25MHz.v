`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2020 11:54:56 AM
// Design Name: 
// Module Name: clkdiv_25MHz
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clkdiv_25MHz(
	input wire clk,
	input wire clr,
	output wire clk_25MHz
    );
	
	reg [21:0] q = 21'b0;
	always @ (posedge clk or posedge clr) begin 
		if (1 == clr) begin 
			q <= 0;
		end else begin 
			q <= q + 1;
		end 
	end 
	
	assign clk_25MHz = q[1];
	
endmodule
