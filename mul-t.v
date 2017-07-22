timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2017 12:34:44 PM
// Design Name: 
// Module Name: muxtb
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
module muxtb;
reg [0:7]A;
reg [0:7]B;
reg rst;
wire [0:15]Z;
wire [0:15]Y;
mux uut(.A(A), .B(B), .Z(Z), .Y(Y), .rst(rst));
initial begin
rst=1;
#5 rst=0;
A=8'b11001100;
B=8'b11100010;
#10 rst=1;
#5 rst=0;
A=8'b11110000;
B=8'b00001111;
#10 rst=1;
#5 rst=0;
A=8'b10101010;
B=8'b01010101;
end
endmodule
