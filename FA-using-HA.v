`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2017 03:03:55 PM
// Design Name: 
// Module Name: fa
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
module fa(
    input A,
    input B,
    inout S1,
    inout Cout1,
    inout Cout2,
    input Ci,
    output S,
    output Cout
    );
    halfadder h1(A, B, S1, Cout1);
    halfadder h2(Ci, S1, S, Cout2 );
    assign Cout=Cout1|Cout2;
endmodule
