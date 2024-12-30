`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 09:14:03
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(input [3:0] I, input [1:0] s, output y);

assign y = (s == 2'b00) ? I[0] :
           (s == 2'b01) ? I[1] :
           (s == 2'b10) ? I[2] :
           I[3];

endmodule

