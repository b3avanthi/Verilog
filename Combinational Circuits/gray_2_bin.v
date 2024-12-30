`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2024 19:09:30
// Design Name: 
// Module Name: gray_2_bin
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


module gray_2_bin #(parameter size =4)(input [size-1:0] Gray, output [size-1:0] Bin);

genvar i;
generate
for(i=0; i<size; i= i+1)begin
assign Bin[i] = ^(Gray>>i);
end
endgenerate
endmodule
