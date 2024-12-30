`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2024 18:33:33
// Design Name: 
// Module Name: bin_2_gray
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


module bin_2_gray #(parameter size = 4)(input [size-1:0] Bin, output [size-1:0] Gray);


/*assign Gray[size-1] = Bin[size-1];
genvar i;
generate
for(i=0;i<size-1;i=i+1) begin
 assign Gray[i] = Bin[i]^Bin[i+1];
end
endgenerate
*/
assign Gray = Bin ^ (Bin>>1);





endmodule
