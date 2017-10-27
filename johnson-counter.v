`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2017 03:18:57 PM
// Design Name: 
// Module Name: jc
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
module jc(input clk, rst, output wire a0,a1,a2,a3,a4, output wire a5,a6,a7,a8,a9);
reg A,A0,A1,A2,A3,A4;
/*initial
    begin
    A0=0;
    A1=0;
    A2=0;
    A3=0;
    A4=0;
    end*/
always@(posedge clk,posedge rst)
    begin
    if(rst)
        begin
        A0=0;
        A1=0;
        A2=0;
        A3=0;
        A4=0;
        end
    else
        begin
        A=A4;
        A4=A3;
        A3=A2;
        A2=A1;
        A1=A0;
        A0=~A;
        end
    end
assign a0=(~A0)&(~A1)&(~A2)&(~A3)&(~A4);
assign a1=A0&(~A1)&(~A2)&(~A3)&(~A4);
assign a2=A0&A1&(~A2)&(~A3)&(~A4);
assign a3=A0&A1&A2&(~A3)&(~A4);
assign a4=A0&A1&A2&A3&(~A4);
assign a5=A0&A1&A2&A3&A4;
assign a6=(~A0)&A1&A2&A3&A4;
assign a7=(~A0)&(~A1)&A2&A3&A4;
assign a8=(~A0)&(~A1)&(~A2)&A3&A4;
assign a9=(~A0)&(~A1)&(~A2)&(~A3)&A4;
endmodule
