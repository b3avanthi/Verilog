`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2024 15:57:45
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(a,b,s,carry);
input [3:0]a,b;
output [3:0]s;
//output [3:0] c_out;
output [3:0] carry;

genvar i;
for(i=0;i<4;i=i+1) begin
 if(i==0) begin
  full_adder fa (.a(a[i]),.b(b[i]),.sum(s[i]),.c(0), .c_out(carry[i]));
 end
 else begin 
  full_adder fa (.a(a[i]),.b(b[i]),.sum(s[i]),.c(carry[i-1]),.cout(carry[i]));
 end
 
end



endmodule
