`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2020 12:26:46 PM
// Design Name: 
// Module Name: VGA_640x480
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


module VGA_640x480(
	input wire clk,
	input wire clr,
	output reg hsync,
	output reg vsync,
	output reg [9:0] hc,
	output reg [9:0] vc,
	output reg vidon
    );
	
	parameter hpixels = 10'b1100100000; 
	parameter vlines  = 10'b1000001001;
	parameter hbp     = 10'b0010010000;
	parameter hfp     = 10'b1100010000;
	parameter vbp     = 10'b0000011111;
	parameter vfp     = 10'b0111111111;
	reg vsenable;
	
	always @(posedge clk or posedge clr) begin 
		if (1 == clr) begin 
			hc <= 0;
		end else begin 
			if ( hc == hpixels -1) begin 
				hc <= 0;
				vsenable <= 1;
			end else begin 
				hc <= hc +1;
				vsenable <= 0;
			end 
		end 
	end 
	
	always @ (*) begin 
		if (hc < 96) begin 
			hsync = 0;
		end else begin 
			hsync = 1;
		end 
	end 
	
	always @ (posedge clk or posedge clr) begin 
		if (1== clr) begin 
			vc <= 0;
		end else begin 
			if ( 1== vsenable) begin 
				if (vc == vlines - 1) begin 
					vc <= 0;
				end else begin 
					vc <= vc + 1;
				end 
			end 
		end 
	end 
	
	always @ (*) begin 
		if ( vc <2) begin 
			vsync = 0;
		end else begin 
			vsync = 1;
		end 
	end 
	
	always @ (*) begin 
		if ((hc < hfp) && (hc >= hbp) && (vc < vfp) && (vc >= vbp)) begin 
			vidon = 1;
		end else begin 
			vidon = 0;
		end 
	end 
		
endmodule
