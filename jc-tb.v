`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2017 03:19:13 PM
// Design Name: 
// Module Name: jc_test
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
module jc_test;
reg clk,rst;
wire a0,a1,a2,a3,a4,a5,a6,a7,a8,a9;
jc uut(clk,rst,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9);
initial
    begin
    clk=0;
    rst=1;
    #10 clk=1;
    #10 rst=0;
    end
always
    begin
    #10 clk=~clk;
    end
endmodule
