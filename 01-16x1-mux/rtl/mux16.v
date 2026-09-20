module mux16(
    input [15:0] a,
    input [3:0] sel,
    output out
);

assign out = a[sel];

endmodule
