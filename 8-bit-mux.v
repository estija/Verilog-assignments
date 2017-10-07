`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2017 04:51:25 PM
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
module mux(output reg Y,
    input D0, D1, D2, D3, D4, D5, D6, D7,
    input[2:0] X
    );
    always@(D0 or D1 or D2 or D3 or D4 or D5 or D6 or D7 or X)
    begin
    case(X)
    3'b000: Y=D0;
    3'b001: Y=D1;
    3'b010: Y=D2;
    3'b011: Y=D3;
    3'b100: Y=D4;
    3'b101: Y=D5;
    3'b110: Y=D6;
    3'b111: Y=D7;
    endcase
    end
endmodule
