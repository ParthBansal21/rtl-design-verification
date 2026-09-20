module sync_fifo #(
    parameter DATA_WIDTH = 8,
    parameter DEPTH = 8
)(
    input  wire                  clk,
    input  wire                  rst,
    input  wire                  wr_en,
    input  wire                  rd_en,
    input  wire [DATA_WIDTH-1:0] din,

    output reg  [DATA_WIDTH-1:0] dout,
    output wire                  full,
    output wire                  empty
);

    // FIFO memory
    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

    // Read and write pointers
    reg [3:0] wr_ptr;
    reg [3:0] rd_ptr;

    // Number of stored elements
    reg [3:0] count;

    // Empty and full conditions
    assign empty = (count == 0);
    assign full  = (count == DEPTH);

    always @(posedge clk) begin

        if (rst) begin

            wr_ptr <= 0;
            rd_ptr <= 0;
            count  <= 0;
            dout   <= 0;

        end

        else begin

            // Write operation
            if (wr_en && !full) begin
                mem[wr_ptr[2:0]] <= din;
                wr_ptr <= wr_ptr + 1;
            end

            // Read operation
            if (rd_en && !empty) begin
                dout <= mem[rd_ptr[2:0]];
                rd_ptr <= rd_ptr + 1;
            end

            // Update count
            case ({wr_en && !full, rd_en && !empty})

                2'b10:
                    count <= count + 1;

                2'b01:
                    count <= count - 1;

                default:
                    count <= count;

            endcase

        end

    end

endmodule
