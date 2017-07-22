module halfadder(
    input A,
    input B,
    output S,
    output Cout
    );
    assign S=A^B;
    assign Cout=A&B;
endmodule
