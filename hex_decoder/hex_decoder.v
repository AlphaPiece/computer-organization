module hex_decoder(SW, HEX);
    input [3:0] SW;
    output [6:0] HEX;
    reg [6:0] HEX;

    always @(*)
    begin
        case (SW[3:0])
            0: HEX[6:0] = 7'b0000001;
            1: HEX[6:0] = 7'b1001111;
            2: HEX[6:0] = 7'b0010010;
            3: HEX[6:0] = 7'b0000110;
            4: HEX[6:0] = 7'b1001100;
            5: HEX[6:0] = 7'b0100100;
            6: HEX[6:0] = 7'b0100000;
            7: HEX[6:0] = 7'b0001111;
            8: HEX[6:0] = 7'b0000000;
            9: HEX[6:0] = 7'b0000100;
            10: HEX[6:0] = 7'b0001000;
            11: HEX[6:0] = 7'b1100000;
            12: HEX[6:0] = 7'b0110001;
            13: HEX[6:0] = 7'b1000010;
            14: HEX[6:0] = 7'b0110000;
            15: HEX[6:0] = 7'b0111000;
            default: HEX[6:0] = 7'b0000000;
         endcase
     end
endmodule
