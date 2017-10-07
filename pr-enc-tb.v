`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2017 06:56:29 PM
// Design Name: 
// Module Name: tbpe
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
module tbpe;
wire D0, D1, D2, D3;
reg A, B, Y;
prenc uut(.D0(D0), .D1(D1), .D2(D2), .D3(D3), .A(A), .B(B), .Y(Y));
initial begin
D0=0; D1=0; D2=0; D3=0;
#20 D0=1; #20 D1=1; #20 D2=1; #20 D3=1;
#20 D0=0; #20 D1=0; #20 D2=0;
#20 D1=1; #20 D0=1; #20 D1=0; #20 D2=1;
#20 D3=0; #20 D0=0; #20 D1=1;
end;
endmodule
