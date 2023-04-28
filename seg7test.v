`timescale 1ns / 1ps

module seg7test(
    input   wire[3:0]    sw,
    input   wire [3:0]   ssw,
    output  wire[6:0]   seg,
    output  wire    dp,
    output  wire[3:0]   line
    );
    wire[6:0] code;
    assign seg = code; // atlys
    //assign seg = ~code; // basys2
    decoder7seg decoder0(.data(ssw), .code(code));
    assign line[3:0] = sw[3:0]/4'b1111; // atlys
    //assign line[3:0] = sw[3:0]; // basys2
    assign dp = 1'b1;
endmodule

module decoder7seg( input wire [3:0] data, output wire [6:0] code);
    assign code =
        data==4'd0 ? 7'b1111110: // 0
        data==4'd1 ? 7'b0110000: // 1
        data==4'd2 ? 7'b1101101: // 2
                    7'b1000111; // F
endmodule