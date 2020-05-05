`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2020 09:51:58 AM
// Design Name: 
// Module Name: Four2InputNandGate
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


module Four2InputNandGate #(parameter DELAY = 10)(
	input wire a1,b1,a2,b2,a3,b3,a4,b4,
	output wire y1,y2,y3,y4
    );
	
	nand #DELAY (y1,a1,b1);
	nand #DELAY (y2,a2,b2);
	nand #DELAY (y3,a3,b3);
	nand #DELAY (y4,a4,b4);
	
endmodule
