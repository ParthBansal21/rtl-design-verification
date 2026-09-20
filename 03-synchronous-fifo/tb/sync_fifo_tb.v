`timescale 1ns/1ps

module tb_sync_fifo;

reg clk;
reg rst;

reg wr_en;
reg rd_en;

reg [7:0] din;

wire [7:0] dout;
wire full;
wire empty;

integer errors;

// Instantiate DUT
sync_fifo DUT (

    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .din(din),
    .dout(dout),
    .full(full),
    .empty(empty)

);

// Clock generation
always #5 clk = ~clk;


// Main test
initial begin

    // Initial values
    clk   = 0;
    rst   = 1;
    wr_en = 0;
    rd_en = 0;
    din   = 0;

    errors = 0;

    // Reset
    #12;
    rst = 0;

    // --------------------------------
    // WRITE DATA
    // --------------------------------

    @(negedge clk);
    wr_en = 1;
    din = 8'h11;

    @(negedge clk);
    din = 8'h22;

    @(negedge clk);
    din = 8'h33;

    @(negedge clk);
    wr_en = 0;
    din = 0;

    // --------------------------------
    // READ DATA
    // --------------------------------

    @(negedge clk);
    rd_en = 1;

    @(negedge clk);
    if (dout !== 8'h11) begin
        $display("ERROR: Expected 11, Got %h", dout);
        errors = errors + 1;
    end
    else begin
        $display("PASS: Read 11");
    end

    @(negedge clk);
    if (dout !== 8'h22) begin
        $display("ERROR: Expected 22, Got %h", dout);
        errors = errors + 1;
    end
    else begin
        $display("PASS: Read 22");
    end

    @(negedge clk);
    if (dout !== 8'h33) begin
        $display("ERROR: Expected 33, Got %h", dout);
        errors = errors + 1;
    end
    else begin
        $display("PASS: Read 33");
    end

    rd_en = 0;

    #20;

    // --------------------------------
    // RESULT
    // --------------------------------

    if (errors == 0)
        $display("========== FIFO TEST PASSED ==========");
    else
        $display("========== FIFO TEST FAILED ==========");

    $finish;

end

endmodule
