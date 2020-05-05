`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2020 08:52:34 PM
// Design Name: 
// Module Name: Key5Scan
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


module Key5Scan(
	input wire clk,
	input wire clr,
	input wire [4:0] key_in,
	output wire [4:0] key_out_push,
	output wire [4:0] key_out_not_push
    );
	
	reg [4:0] key_scan,key_scan_before;
	//parameter Delay20ms = 21'd2000000;
	wire Delay20ms = 21'd2000000;
	reg [20:0] cnt20ms;
	
	always @(posedge clk or posedge clr) begin 
		if(1 == clr) begin
			cnt20ms <= 1'b0;
			key_scan <= 5'b00000;
		end else if (cnt20ms == (Delay20ms - 1'b1)) begin
			cnt20ms <= 1'b0;
			key_scan <= key_in;
		end else begin 
			cnt20ms <= cnt20ms + 1'b1;
		end 
	end 
	
	always @(posedge clk) begin 
		key_scan_before <= key_scan;
	end 
	
	assign key_out_push = (~key_scan_before[4:0]) & (key_scan[4:0]);
	assign key_out_not_push = (key_scan_before[4:0]) & (~key_scan[4:0]);
endmodule
