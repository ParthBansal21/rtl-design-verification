module tb_alu8;

reg [7:0] a;
reg [7:0] b;
reg [2:0] op;
wire [7:0] out;
wire carry;

integer i;

Alu_8bit DUT (
    .a(a),
    .b(b),
    .op(op),
    .out(out),
    .carry(carry)
);

initial begin

    // Initial values
    a = 8'h25;
    b = 8'h13;

    // Test all 8 ALU operations
    for(i = 0; i < 8; i = i + 1) begin
        op = i;
        #10;

        $display(
            "Time=%0t A=%h B=%h OP=%b Y=%h Carry=%b",
            $time, a, b, op, out, carry
        );
    end

    $finish;

end

endmodule
