`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2020 01:46:48 PM
// Design Name: 
// Module Name: MultiDivider
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


module MultiDivider(
input wire clk,
input wire [7:0] div,
output reg clk_div
    );
	
	reg [7:0] count = 8'h00;
	
	always @ (posedge clk) begin
		count = count + 1'b1;
		
		if (count == (div - 1'b1) ) begin
			clk_div = 1'b0;
		end else begin
			clk_div = 1'b1;
		end 
		
		if (div == count) begin 
			count = 0;
		end 
	end
	
endmodule
