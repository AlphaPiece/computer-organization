module mux7to1(SW, LEDR);
    input [9:0] SW;
    output [0:0] LEDR;

    mux_7_1 u0(
        .in(SW[6:0]),
        .func(SW[9:7]),
        .out(LEDR[0])
        );

endmodule

module mux_7_1(in, func, out);
    input [6:0] in;
    input [2:0] func;
    output out;
    reg out;

    always @(*)
    begin
        case (func[2:0])
            3'b000: out = in[0];
            3'b001: out = in[1];
            3'b010: out = in[2];
            3'b011: out = in[3];
            3'b100: out = in[4];
            3'b101: out = in[5];
            3'b110: out = in[6];
            default: out = 1'b0;
        endcase
    end

endmodule
