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
    decoder7seg decodero(.data(ssw), .code(code));
    assign line[3:0] = sw[3:0]/4'b1111; // atlys
    //assign line[3:0] = sw[3:0]; // basys2
    assign dp = 1'b1;
endmodule

module decoder7seg( input wire [3:0] data, output wire [6:0] code);
    assign code =
        data==4'd0 ? 7'b1111110 : //0
        data==4'd1 ? 7'b0110000 : //1
        data==4'd2 ? 7'b1101101 : //2
        data==4'd3 ? 7'b1111001 : //3
        data==4'd4 ? 7'b0110011 : //4
        data==4'd5 ? 7'b1011011 : //5
        data==4'd6 ? 7'b1011111 : //6
        data==4'd7 ? 7'b1110000 : //7
        data==4'd8 ? 7'b1111111 : //8
		data==4'd9 ? 7'b1111011 : //9
		data==4'd10 ? 7'b1110111: // A
		data==4'd11 ? 7'b0011111: // B
		data==4'd12 ? 7'b0111101: // C
		data==4'd13 ? 7'b1101101: // D
		data==4'd14 ? 7'b1001111: // E
                      7'b1000111; // F
endmodule