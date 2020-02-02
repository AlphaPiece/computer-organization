module ripple_carry_adder(SW, LEDR);
    input [8:0] SW;
    output [4:0] LEDR;

    rc_adder a0(
        .A(SW[7:4]),
        .B(SW[3:0]),
        .cin(SW[8:8]),
        .S(LEDR[3:0]),
        .cout(LEDR[4:4])
        );

endmodule

module rc_adder(A, B, cin, S, cout);
    input [3:0] A;
    input [3:0] B;
    input cin;
    output [3:0] S;
    output cout;
    wire [2:0] carry;

    full_adder u0(
        .cin(cin),
        .a(A[0]),
        .b(B[0]),
        .s(S[0]),
        .cout(carry[0])
        );

    full_adder u1(
        .cin(carry[0]),
        .a(A[1]),
        .b(B[1]),
        .s(S[1]),
        .cout(carry[1])
        );

    full_adder u2(
        .cin(carry[1]),
        .a(A[2]),
        .b(B[2]),
        .s(S[2]),
        .cout(carry[2])
        );

    full_adder u4(
        .cin(carry[2]),
        .a(A[3]),
        .b(B[3]),
        .s(S[3]),
        .cout(cout)
        );
endmodule

module full_adder(cin, a, b, s, cout);
    input cin;
    input a;
    input b;
    output s;
    output cout;
    wire w;

    assign s = cin ^ a ^ b;
    assign w = a ^ b;

    mux2to1 u1(
        .x(b),
        .y(cin),
        .z(w),
        .m(cout)
        );
endmodule

module mux2to1(x, y, z, m);
    input x;
    input y;
    input z;
    output m;

    assign m = (~z & x) | (z & y);
endmodule
