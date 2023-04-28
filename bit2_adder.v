module bit2_adder(
    input wire [1:0] x1,
    input wire [1:0] x0,
    output wire [2:0] y
);
    assign y[2] = (x1[1]&x0[1])|((x1[1]^x0[1])&(x1[0]&x0[0]));
    assign y[1] = (x1[1]^x0[1])^(x1[0]&x0[0]);
    assign y[0] = x1[0] ^ x0[0];
endmodule