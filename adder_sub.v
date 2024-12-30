`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2024 17:41:41
// Design Name: 
// Module Name: 4_bit_adder_sub
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


module adder_sub(A,B,ctrl,S,C);
input [3:0]A,B;
input ctrl;
output [3:0]S,C;
wire [3:0] B_in;
wire [3:0] carr;
assign B_in = (ctrl==1)? ~B : B;
assign C = carr; 
genvar i;
for(i=0;i<4;i= i+1) begin
 if(i==0) begin
  full_adder fa(.a(A[0]),.b(B_in[0]),.c(ctrl),.sum(S[0]),.c_out(carr[i]));
 end
 else begin
  full_adder fa(.a(A[i]),.b(B_in[i]),.c(carr[i-1]),.sum(S[i]),.c_out(carr[i]));
 end

end

endmodule

