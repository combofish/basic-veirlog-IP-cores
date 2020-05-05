`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2020 09:12:56 AM
// Design Name: 
// Module Name: hz_counter
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


module hz_counter(
	input wire clk_100kHz,
	input wire clk_1Hz,
	input wire sig_source,
	output reg [13:0] sig_Hz
    );
	
	parameter N = 1000000;
	reg sig_state;
	reg [16:0] sig_Hz_reg;
	reg [16:0] sig_count;
	initial begin 
		sig_state <= 0;
	end 
	
	always @ (posedge sig_source) begin
		sig_state <= ~sig_state;
	end 
	
	always @(posedge clk_100kHz) begin
		if (sig_state) 
			sig_count <= sig_count + 1;
		else 
			sig_count <= 0;
	end 
	
	always @ (negedge sig_state) begin 
		sig_Hz_reg = N / sig_count;
	end 
	
	always @ (posedge clk_1Hz) begin
		sig_Hz = sig_Hz_reg/10;
	end 
		
endmodule
