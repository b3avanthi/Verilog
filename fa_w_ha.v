`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2024 13:20:35
// Design Name: 
// Module Name: fa_w_ha
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


module fa_w_ha(a,b,c,sum, c_out);
input a, b,c;
output sum, c_out;
wire h_sum, h1_carry,h2_carry;
half_adder dut(.a(a),.b(b),.sum(h_sum),.c_out(h1_carry));
half_adder dut_1(.a(c), .b(h_sum), .sum(sum), .c_out(h2_carry));
assign c_out = h1_carry | h2_carry;


endmodule
