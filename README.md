# RTL Design & Functional Verification

A collection of digital design and functional verification projects implemented using **Verilog HDL** and simulated using **AMD Vivado / XSim**.

This repository documents my learning and practical work in **RTL design, testbench development, simulation, and functional verification**.

---

## Projects

### 1. 16×1 Multiplexer

Design and functional verification of a 16×1 multiplexer.

**Key points:**
- 16-bit input
- 4-bit select line
- 1-bit output
- Exhaustive testing of all 16 select combinations
- Simulation performed using Vivado XSim

[View 16×1 MUX Project](./01-16x1-mux)

---

### 2. 8-bit ALU

Design and functional verification of an 8-bit Arithmetic Logic Unit.

**Operations implemented:**

| Opcode | Operation |
|--------|-----------|
| `000` | Addition |
| `001` | Subtraction |
| `010` | AND |
| `011` | OR |
| `100` | XOR |
| `101` | NOT A |
| `110` | Increment A |
| `111` | Decrement A |

**Key points:**
- 8-bit operands
- 3-bit operation select
- 8 arithmetic and logical operations
- Carry output
- Testbench verifies all 8 operations
- Simulation performed using Vivado XSim

[View 8-bit ALU Project](./02-8bit-alu)

---

### 3. Synchronous FIFO

Design and functional verification of an 8-bit synchronous FIFO.

**Key points:**
- 8-bit data width
- 8-word FIFO depth
- Synchronous read and write operations
- Write and read enable controls
- Full and empty status flags
- Self-checking testbench
- FIFO order verified using test data `11 → 22 → 33`
- Simulation performed using Vivado XSim

[View Synchronous FIFO Project](./03-synchronous-fifo)

---

## Tools & Technologies

- **Verilog HDL**
- **AMD Vivado**
- **XSim**
- **GitHub**

---

## Concepts Covered

- RTL Design
- Combinational Logic Design
- Arithmetic and Logic Operations
- Multiplexer Design
- ALU Design
- FIFO Design
- Testbench Development
- Functional Verification
- Exhaustive Testing
- Self-Checking Testbenches
- Simulation and Waveform Analysis

---

## Repository Structure

```text
rtl-design-verification/
│
├── README.md
│
├── 01-16x1-mux/
│   ├── README.md
│   ├── rtl/
│   │   └── mux16.v
│   ├── tb/
│   │   └── mux16_tb.v
│   └── screenshots/
│       └── mux-waveform.png
|       └── mux-console-output.png
│
├── 02-8bit-alu/
│   ├── README.md
│   ├── rtl/
│   │   └── Alu_8bit.v
│   ├── tb/
│   │   └── Alu8_tb.v
│   └── screenshots/
│       └── Alu8-waveform.png
|       └── Alu8-console-output.png
│
└── 03-synchronous-fifo/
    ├── README.md
    ├── rtl/
    │   └── sync_fifo.v
    ├── tb/
    │   └── sync_fifo_tb.v
    └── screenshots/
        └── sync-fifo-waveform.png
        └── sync_fif0-console-output.png
