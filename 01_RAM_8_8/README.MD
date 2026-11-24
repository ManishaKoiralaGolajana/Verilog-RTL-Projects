
# 8×8 RAM Design Using Verilog

## Project Overview
This project implements an 8×8 RAM (Random Access Memory) using Verilog HDL.

RAM is a memory structure that allows data to be stored and accessed using a specific memory address.

The design consists of 8 memory locations, with each location storing 8 bits of data.

## Design Specifications
- Memory Depth: 8 locations
- Data Width: 8 bits
- Address Width: 3 bits
- Clock: Positive edge triggered
- Reset: Active-high asynchronous reset
- Write Enable: wr_en

## Features
- 8-bit data storage.
- 3-bit address selection.
- Synchronous read and write operations.
- Asynchronous reset to clear memory.
- Registered data output.

## Module Description
- RAM.v: Main RAM design.
- RAM_tb.v: Testbench for functional verification.

## Simulation and Verification
The design is verified using a Verilog testbench.

The simulation checks:
- Resetting all memory locations.
- Writing data into selected addresses.
- Reading stored data.
- Verifying correct data retrieval.

Test cases include writing and reading data at addresses 3, 5 and 7.

## Tools Used
- Verilog HDL
- Xilinx Vivado
- Behavioral Simulation

## Key Learning Outcomes
- RAM architecture and memory organization.
- Address decoding and memory access.
- Read and write operations.
- Synchronous sequential logic.
- RTL design and functional verification.
