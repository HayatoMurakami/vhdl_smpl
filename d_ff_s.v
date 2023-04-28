module d_ff_s(
    input clk,
    input wire a,
    output reg q
);
    reg x;

        always @(negedege clk )x <= a;
        always @(negedege x )q <= !q;
endmodule