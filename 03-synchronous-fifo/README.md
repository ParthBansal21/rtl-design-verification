# Synchronous FIFO – Functional Verification

## Objective

To design and verify a synchronous FIFO using Verilog HDL.

## Design

The FIFO is designed with:

- Data width: 8 bits
- Depth: 8 locations
- Synchronous read and write operation
- Write enable and read enable controls
- Full and empty status flags

The FIFO follows the First-In-First-Out principle, meaning that the first data written into the FIFO is the first data read from it.

## Verification

The testbench performs the following operations:

1. Resets the FIFO.
2. Writes three data values:
   - `8'h11`
   - `8'h22`
   - `8'h33`
3. Reads the stored values sequentially.
4. Checks that the values are received in the same order in which they were written.
5. Reports errors if the expected and actual output values do not match.

The testbench is self-checking and reports PASS or ERROR messages during simulation.

## Expected Result

The data should be read in FIFO order:

```text
11 → 22 → 33
