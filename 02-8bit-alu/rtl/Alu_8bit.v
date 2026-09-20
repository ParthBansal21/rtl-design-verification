module alu8 (
    input  wire [7:0] A,
    input  wire [7:0] B,
    input  wire [2:0] op,
    output reg  [7:0] Y,
    output reg        Carry
);

always @(*) begin

    // Default values
    Y = 8'b00000000;
    Carry = 1'b0;

    case(op)

        3'b000: begin
            {Carry, Y} = A + B;
        end

        3'b001: begin
            {Carry, Y} = A - B;
        end

        3'b010: begin
            Y = A & B;
        end

        3'b011: begin
            Y = A | B;
        end

        3'b100: begin
            Y = A ^ B;
        end

        3'b101: begin
            Y = ~A;
        end

        3'b110: begin
            {Carry, Y} = A + 8'b00000001;
        end

        3'b111: begin
            {Carry, Y} = A - 8'b00000001;
        end

        default: begin
            Y = 8'b00000000;
            Carry = 1'b0;
        end

    endcase

end

endmodule
