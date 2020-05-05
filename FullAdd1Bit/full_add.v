`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2020 11:13:27 AM
// Design Name: 
// Module Name: full_add
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


module full_add(
input wire a,
input wire b,
input wire ci,
output reg so,
output reg co
    );
    always @ (*) begin
    so = a ^ b ^ ci;
    co = (a & b) | (a^b) & ci;
    end
endmodule
