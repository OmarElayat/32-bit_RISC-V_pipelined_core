`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 01:09:33 PM
// Design Name: 
// Module Name: two_one_mux
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


module four_one_mux(
    input a,
    input b,
    input c,
    input d,
    input [1:0]sel,
    output reg out
    );
    always @(*) begin 
    case(sel)
    2'b00: out = a;
    2'b01: out = b;
    2'b10: out = c;
    2'b11: out = d;
    default: out = a;
    endcase
    end
endmodule
