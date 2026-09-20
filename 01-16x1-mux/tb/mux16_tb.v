`timescale 1ns/1ps

module mux16_tb();

reg [15:0] a;
reg [3:0] sel;
wire out;

integer i;

mux16 xyz (
    .a(a),
    .sel(sel),
    .out(out)
);

initial begin

    // Fixed 16-bit input pattern
    a = 16'hF3A9;

    // Exhaustive testing of all select values
    for(i = 0; i < 16; i = i + 1) begin
        sel = i;
        #10;
        $display("SEL = %0d, Out = %b", sel, out);
    end

    #10 $finish;

end

endmodule
