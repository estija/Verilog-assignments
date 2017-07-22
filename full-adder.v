module testfa;
 reg A, B, Cin;
 wire S, Cout;
 fulladder uut (.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));
 initial begin
 A=0;
 B=0;
 Cin=0;
 end
 always begin
 #50 A=~A;
 #50 B=~B;
 #50 A=~A;
 #50 Cin=~Cin;
 #50 A=~A;
 #50 B=~B;
 #50 A=~A;
 end
endmodule
