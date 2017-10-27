timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2017 07:10:28 PM
// Design Name: 
// Module Name: counter
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
module counter(input clk, T,output A0,A1,A2);
    reg X0,X1,X2;
    initial
      begin
      X0=1;
      X1=0;    
      X2=0;
      end
    always @(posedge clk)
      begin
      if(T==1) X0=~X0;
      if(X0==0&&T==1) X1=~X1;
      if(X0+X1==0&&T==1) X2=~X2;
      end
    assign A0=X0;
    assign A1=X1;
    assign A2=X2;
endmodule
