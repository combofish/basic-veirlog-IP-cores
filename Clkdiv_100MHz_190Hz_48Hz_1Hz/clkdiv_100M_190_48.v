`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2020 09:23:45 PM
// Design Name: 
// Module Name: clkdiv_100M_190_48
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


module clkdiv_100M_190_48(
                          input wire  clk_100M,
                          input wire  clr,
                          output wire clk_190Hz,
                          output wire clk_48Hz
                          );
   reg [24:0]                         q;
   always @ (posedge clk_100M or posedge clr ) begin
      if (1 == clr)
        q <= 0;
      else
        q <= q + 1;
      
   end
   assign clk_190Hz = q[18];
   assign clk_48Hz = q[20];
   
   
endmodule
