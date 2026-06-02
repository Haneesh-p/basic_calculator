`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:*blsnk* 
// Engineer: Padarthi haneesh
// 
// Create Date: 02.05.2026 20:10:06
// Design Name: calculator
// Module Name: calculator
// Project Name: RTL to GDS for calculator
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


module calculator(input clk,
input[7:0]A,B,
input[2:0]operand,
output reg [7:0]result);
always@(posedge clk)
    begin
        case(operand)
            default: result<=8'b0;
            3'b000: result<=A+B;
            3'b001: result<=A-B;
            3'b010: result<=A*B;
            3'b011: result<=A/B;
            3'b100: result<= A&B;
            3'b101: result<= A|B;
            3'b110: result<= A<<1;
            3'b111: result<= A>>1;
        endcase   
    end
endmodule
