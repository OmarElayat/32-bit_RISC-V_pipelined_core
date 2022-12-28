`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 01:10:42 PM
// Design Name: 
// Module Name: n_bit_two_one_mux
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


module n_bit_four_one_mux #(parameter n =8)(
    input [n-1:0]a,
    input [n-1:0]b,
    input [n-1:0]c,
    input [n-1:0]d,
    input [1:0] sel,
    output [n-1:0] q
    );
    genvar j;
    generate
    for(j = 0; j < n; j = j+1)
    begin: Gen_Modules
    four_one_mux my_mux(
        .a(a[j]),
        .b(b[j]),
        .c(c[j]),
        .d(d[j]),
        .sel(sel),
        .out(q[j])
        );
    end
    endgenerate
endmodule
