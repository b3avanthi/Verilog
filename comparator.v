`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2024 13:04:38
// Design Name: 
// Module Name: comparator
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


module comparator #(parameter size=4)(A,B,A_greater, B_greater, AB_equal);
input [size-1:0] A, B;
output reg A_greater, B_greater, AB_equal;


always@(*) begin
 A_greater =0; B_greater = 0; AB_equal =0;
if(A>B) begin
 A_greater =1;
end else if(A<B) begin
 B_greater =1;
end else begin 
 AB_equal =1;
 end
 end


endmodule
