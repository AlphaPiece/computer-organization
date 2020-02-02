// SW[0] u
// SW[1] v
// SW[2] w
// SW[3] x
// SW[8] s0
// SW[9] s1
// LEDR[0] m

module mux4to1(LEDR, SW);
    input [9:0] SW;
    output [0:0] LEDR;

    mux_4_1 v0(
        .u(SW[0]),
        .v(SW[1]),
        .w(SW[2]),
        .x(SW[3]),
        .p(SW[9:8]),
        .q(LEDR[0])
        );

endmodule

module mux_4_1(u, v, w, x, p, q);
    input u, v, w, x;
    input [1:0] p;
    output q;
    wire w1;
    wire w2;

    mux_2_1 u0(
        .x(u),
        .y(v),
        .s(p[0]),
        .m(w1)
        );
	 
    mux_2_1 u1(
        .x(w),
        .y(x),
        .s(p[0]),
        .m(w2)
        );
	 
    mux_2_1 u2(
        .x(w1),
        .y(w2),
        .s(p[1]),
        .m(q)
        );

endmodule

module mux_2_1(x, y, s, m);
    input x;
    input y;
    input s;
    output m;

    assign m = s & y | ~s & x;

endmodule
