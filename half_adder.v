module half_adder(
    input wire X1,
    input wire X0,
    output wire [1:0] y
);

    assign y[1] = X1 & X0;
    assign y[0] = (!(X1&X0) & (X1|X0));
endmodule