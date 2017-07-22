timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2017 12:34:24 PM
// Design Name: 
// Module Name: mux
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
module mux(input [0:7]A, input [0:7]B, input rst, output reg [0:15]Z, reg [0:15]Y);
integer i;
always@(rst)
begin
    if(rst==1) Z=0;
    else
    begin
    for(i=0; i<8; i=i+1)
        begin
        if (B[i]==0)
        Y=0;
        else
        Y=(A<<(7-i));
        Z=Z+Y;
        end
    end
end
endmodule
