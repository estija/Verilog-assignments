`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2017 06:57:02 PM
// Design Name: 
// Module Name: prenc
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
module prenc(
    input D0,
    input D1,
    input D2,
    input D3,
    output A,
    output B,
    output Y
    );
    assign Y=D0|D1|D2|D3;
    assign A=D0|D1;
    assign B=D0|(D2&~D1);
endmodule
