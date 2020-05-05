`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2020 10:17:02 PM
// Design Name: 
// Module Name: CLK100MHzTo100KHz
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


module CLK100MHzTo100KHz(
	input wire clk,
	output reg clk_100kHz
    );
	
	reg [25:0] count;
	initial begin 
		count = 0;
	end 
	
	always @(posedge clk) begin 
		count <= count + 1;
		if ( count == 26'h1F4) begin 
			count <= 0;
			clk_100kHz <= ~clk_100kHz;
		end 
	end 
	
endmodule
