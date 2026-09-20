# 8-bit ALU

## Objective

To design an 8-bit Arithmetic Logic Unit using Verilog HDL and verify its functionality using a testbench.

## Design

The ALU consists of:

- Two 8-bit input operands
- One 3-bit operation select input
- One 8-bit output
- One carry output

The 3-bit operation code selects one of eight arithmetic or logical operations.

## Operations

| OP | Operation |
|---|---|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | NOT A |
| 110 | Increment A |
| 111 | Decrement A |

## Verification

The testbench applies:

- A = `8'h25`
- B = `8'h13`

All eight ALU operations are tested by iterating the operation code from `000` to `111`.

The output and carry values are displayed in the simulation console.

## Tools Used

- Verilog HDL
- AMD Vivado
- XSim

## Files

- `rtl/Alu_8bit.v` – ALU RTL design
- `tb/Alu8_tb.v` – ALU testbench
- `screenshots/alu-waveform.png` – Simulation waveform
