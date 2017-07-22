timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2017 07:11:00 PM
// Design Name: 
// Module Name: ctest
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

module ctest;
reg clk,T;
wire A0,A1,A2;
counter uut(
    .clk(clk),
    .T(T),
    .A0(A0),
    .A1(A1),
    .A2(A2)
    );
initial
begin
clk=0;
T=1;
end
always begin
#10 clk=~clk;
end
endmodule
