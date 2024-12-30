`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 11:16:42
// Design Name: 
// Module Name: demux_1_4
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


module demux_1_4(input [1:0]sel, input i, output reg [3:0] y);

always @(*) begin
case(sel)
2'h3 :   assign y = {i,3'b0};
2'h2 :  assign y = {1'b0,i,2'b0};
2'h1 :  assign y = {2'b0,i,1'b0};
2'h0 :  assign y = {3'b0,i};
default: assign y ={4'b0};
endcase
end

endmodule
