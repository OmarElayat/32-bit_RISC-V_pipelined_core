`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 01:25:02 PM
// Design Name: 
// Module Name: hazard_detection_unit
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


module hazard_detection_unit(
    input [4:0]IF_ID_RS1,
    input [4:0]IF_ID_RS2,
    input [4:0]ID_EX_RD,
    input ID_EX_MemRead,
    output reg stall
    );
    
    always@(*) begin
    if ( ((IF_ID_RS1==ID_EX_RD) | (IF_ID_RS2==ID_EX_RD) )
        & ID_EX_MemRead & ~(ID_EX_RD==0) ) begin
    stall = 1; 
    end else begin 
    stall = 0;
    end
    end
endmodule
