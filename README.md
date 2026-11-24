# Verilog RTL Design Portfolio

## About
This repository contains my Verilog HDL projects developed while learning Digital Design and RTL development.

The projects focus on sequential logic, memory design, finite state machines (FSM), and functional verification using simulation.

## Projects

### 1. 8×8 RAM (Random Access Memory)
- 8 memory locations, each storing 8 bits.
- 3-bit address selection.
- Synchronous read and write operations.
- Asynchronous reset.
- Verified using behavioral simulation.

### 2. FIFO (First In First Out)
- 8-bit data width and 8 memory locations.
- Read and write operations.
- Full and Empty flag detection.
- Verified using a Verilog testbench.

### 3. 1010 Sequence Detector (Non-Overlapping)
- Detects the serial input sequence `1010`.
- Non-overlapping sequence detection.
- FSM-based sequential circuit design.
- State transition logic implemented using Verilog HDL.
- Verified using behavioral simulation.


### 4. Two-Road Traffic Light Controller
- FSM-based traffic signal controller.
- Four states: A_GREEN, A_YELLOW, B_GREEN and B_YELLOW.
- Counter-based timing control.
- Synchronous reset.
- Verified using a Verilog testbench.


## Tools and Technologies
- Verilog HDL
- Xilinx Vivado
- RTL Design
- Behavioral Simulation

## Repository Structure

```text
Verilog-RTL-Portfolio/
│
├── 01_RAM_8_8/
├── 02_FIFO/
├── 03_Seq_Detector/
├── 04_Traffic_Controller/

│
└── README.md
```

Each project folder contains its RTL design, testbench, README and simulation waveform.

## Learning Objectives
- Understand RTL design and digital logic.
- Implement sequential circuits using Verilog.
- Develop FSM-based systems.
- Understand memory architectures.
- Verify hardware functionality through simulation.

## Author
Verilog HDL and Digital Design Learner