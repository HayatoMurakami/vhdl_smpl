module d_ff_s(
    input clk,
    input wire a,
    output reg q
);
    reg x;

    always @(negedge clk ) x <= a;
    always @(negedge x )q[0] <= !q[0];
    always @(negedge q[0])q[1] <= !q[1];
    always @(negedge q[1])q[2] <= !q[2];
    always @(negedge q[2])q[3] <= !q[3];
endmodule