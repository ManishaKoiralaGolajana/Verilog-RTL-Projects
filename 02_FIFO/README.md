
# FIFO (First In First Out) Design

## Project Overview
This project implements an 8-bit × 8-location FIFO (First In First Out) memory using Verilog HDL.

A FIFO is a memory structure in which the first data written is the first data read. It is commonly used for temporary data storage and data transfer between digital systems operating at different rates.

## Design Specifications
- Data Width: 8 bits
- FIFO Depth: 8 locations
- Clock: Positive edge triggered
- Reset: Reset input
- Write Enable: wr_en
- Read Enable: rd_en
- Status Flags: Full and Empty

## Features
- Sequential data storage and retrieval
- Read and write control
- Full and Empty status detection
- Clock-synchronized operation

## Module Description
- FIFO_8_8.v: Main FIFO design.
- FIFO_8_8_tb.v: Testbench for functional verification.

## Simulation and Verification
The design is verified using a Verilog testbench.

The simulation checks:
- Writing data into the FIFO.
- Reading data in First In First Out order.
- Full and Empty flag operation.

## Tools Used
- Verilog HDL
- Xilinx Vivado
- Behavioral Simulation

## Key Learning Outcomes
- FIFO architecture and memory organization.
- Read and write pointer concepts.
- Full and Empty flag generation.
- Sequential logic design and verification.
