# 1010 Sequence Detector using Verilog HDL

## Project Overview

Designed and simulated a binary sequence detector for the pattern `1010` using Verilog HDL.

This project includes two implementations to explore different FSM design approaches.

## 1. Moore Sequence Detector

- Detects the binary sequence `1010`.
- Uses a 5-state FSM.
- 3-bit state encoding.
- Synchronous active-high reset.
- Registered detection output.

### Simulation Result

![Moore FSM Simulation](Moore/simulation/moore_waveform.png)

## 2. Non-Overlapping Sequence Detector

- Detects the binary sequence `1010`.
- Uses a 4-state FSM.
- 2-bit state encoding.
- Synchronous active-high reset.
- Returns to the idle state after detection.

### Simulation Result

![Non-Overlapping FSM Simulation](Non_Overlapping/simulation/nonoverlap_waveform.png)

## Project Structure

- `Moore/` – Moore FSM design, testbench and waveform.
- `Non_Overlapping/` – Non-overlapping FSM design, testbench and waveform.

## Tools Used

- Verilog HDL
- Xilinx Vivado

## Key Concepts

- Finite State Machines
- Moore FSM architecture
- State encoding and transitions
- Sequential and combinational logic
- Testbench development
- RTL simulation and verification