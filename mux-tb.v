`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2017 05:47:59 PM
// Design Name: 
// Module Name: testmux
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
module testmux;
reg D0, D1, D2, D3, D4, D5, D6, D7;
reg [2:0] X;
wire Y;
mux uut(.D0(D0),.D1(D1), .D2(D2), .D3(D3), .D4(D4),
         .D5(D5), .D6(D6), .D7(D7), .X(X), .Y(Y));
initial begin
D0=0;
D1=1;
D2=0;
D3=1;
D4=0;
D5=1;
D6=0;
D7=1;
X=3'b000;
repeat(7)
#20 X=X+3'b001;
end
endmodule
