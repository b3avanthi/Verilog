`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 20:20:30
// Design Name: 
// Module Name: encoder
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


module encoder(input [7:0] i, output [2:0] o);

assign o[2] = i[4] | i[5] | i[6] | i[7]; 
assign o[1] = i[2] | i[3] | i[6] | i[7]; 
assign o[0] = i[1] | i[3] | i[5] | i[7];


endmodule
