`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2017 07:20:47 PM
// Design Name: 
// Module Name: test
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


module test;
reg clk,T; wire A0;
tff1 uut(.clk(clk),.T(T),.A0(A0));
initial begin
clk=0;
T=0;
A0=0;
repeat(10)
begin
T=~T;
#10 clk=0;
#10 clk=1;
end
end
endmodule
