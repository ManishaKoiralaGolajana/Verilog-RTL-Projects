
# Two-Road Traffic Light Controller Using Verilog

## Project Overview
This project implements a two-road traffic light controller using Verilog HDL and a Finite State Machine (FSM).

The controller manages traffic signals for Road A and Road B using four states. A counter controls the duration of each signal, ensuring an organized sequence of traffic movement.

## Design Specifications
- Number of Roads: 2
- FSM Type: Moore FSM
- Number of States: 4
- Clock: Positive edge triggered
- Reset: Active-high synchronous reset
- Counter Width: 4 bits
- Clock Period: 10 ns (Testbench)

## State Description

| State | Road A | Road B |
|---|---|---|
| A_GREEN | Green | Red |
| A_YELLOW | Yellow | Red |
| B_GREEN | Red | Green |
| B_YELLOW | Red | Yellow |

## State Transition Sequence

A_GREEN → A_YELLOW → B_GREEN → B_YELLOW → A_GREEN

## Timing Control
A 4-bit counter is used to control signal durations.

- Green Signal: 10 clock cycles
- Yellow Signal: 3 clock cycles

The counter resets whenever the FSM transitions to a new state.

## Testbench Description

The testbench verifies the functionality of the traffic light controller.

### Testbench Operations
1. Generate a clock signal with a 10 ns period.
2. Apply reset at the beginning of simulation.
3. Observe the traffic signal sequence.
4. Apply reset again during simulation.
5. Verify that the controller returns to its initial state.

## Simulation Results
The simulation verifies:
- Correct state transitions.
- Proper green and yellow signal durations.
- Correct red signal operation for the opposite road.
- Reset functionality.
- Continuous repetition of the traffic sequence.

## Project Files

| File | Description |
|---|---|
| `_2_road.v` | Traffic light controller RTL design |
| `_2_road_tb.v` | Verilog testbench |

## Tools Used
- Verilog HDL
- Xilinx Vivado
- Behavioral Simulation

## Key Learning Outcomes
- Finite State Machine (FSM) implementation.
- Moore FSM output logic.
- Counter-based timing control.
- Sequential and combinational logic.
- RTL design and functional verification.
