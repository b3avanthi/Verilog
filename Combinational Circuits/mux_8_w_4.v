`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 09:51:33
// Design Name: 
// Module Name: mux_8_w_4
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


module mux_8_w_4(input [7:0] I, input [2:0]s, output y);
wire [1:0]m;

mux_4_1 m1 (I[3:0],s[1:0],m[0]);
mux_4_1 m2 (I[7:4],s[1:0],m[1]);
mux_2_1 m3 (m,s[2],y);

endmodule
