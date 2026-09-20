# 16×1 Multiplexer

## Objective

To design a 16×1 multiplexer using Verilog HDL and verify its functionality using an exhaustive testbench.

## Design

The 16×1 multiplexer consists of:

- 16-bit input vector
- 4-bit select line
- 1-bit output

The select input determines which bit of the 16-bit input is connected to the output.

## Verification

A fixed input pattern of `16'hF3A9` is applied to the multiplexer.

The testbench iterates through all 16 possible select values from 0 to 15 and displays the corresponding output.

Therefore, all possible select-line combinations are verified.

## Tools Used

- Verilog HDL
- AMD Vivado
- XSim

## Files

- `rtl/mux16.v` – RTL design of the 16×1 multiplexer
- `tb/mux16_tb.v` – Testbench for functional verification
- `screenshots/mux-waveform.png` – Simulation waveform
