`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 12:08:13 PM
// Design Name: 
// Module Name: Forwarding_unit
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


module Forwarding_unit(
    input [4:0] EX_MEM_RD,
    input [4:0] MEM_WB_RD,
    input [4:0] RS1,
    input [4:0] RS2,
    input EX_MEM_RegWrite,
    input MEM_WB_RegWrite,
    
    output reg[1:0] forward_A,
    output reg[1:0] forward_B
    );
    
    always@(*) begin
    if(EX_MEM_RegWrite & ~(EX_MEM_RD==0) & (EX_MEM_RD == RS1) ) begin
        forward_A = 10;
    end
    else if(
        MEM_WB_RegWrite & ~(MEM_WB_RD==0) & (MEM_WB_RD == RS1) &
        ~(EX_MEM_RegWrite & ~(EX_MEM_RD ==0) & (EX_MEM_RD == RS1) ) 
        ) begin
        forward_A = 01;
    end else begin 
        forward_A = 00;
    end
    
    
    
   if(EX_MEM_RegWrite & ~(EX_MEM_RD==0) & (EX_MEM_RD == RS2) ) begin
        forward_B = 10;
    end
   else if(
           MEM_WB_RegWrite & ~(MEM_WB_RD==0) & (MEM_WB_RD == RS2) &
           ~(EX_MEM_RegWrite & ~(EX_MEM_RD ==0) & (EX_MEM_RD == RS2) ) 
           ) begin
           forward_B = 01;
       end  else begin 
            forward_B = 00;
        end
       
   end
endmodule
