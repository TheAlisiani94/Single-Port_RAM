# Single-Port RAM in Verilog

This project implements a single-port RAM in Verilog with a 64x8 configuration (64 locations, 8-bit data width). The RAM supports synchronous write operations and asynchronous read operations within a single clocked process. A testbench is included to verify the RAM's functionality by performing various write and read operations.

## Project Overview

The single-port RAM allows writing to a 6-bit address when the write enable (`we`) signal is high, storing an 8-bit data value. Reading is performed from a separate 6-bit read address, with the output data available immediately (asynchronous read behavior in simulation). The design is simple and suitable for FPGA or ASIC implementation, where it may map to a memory block.

### Files in the Project

- **`ram_single_port.sv`**: The main Verilog module implementing the single-port RAM. It defines a 64x8 memory array and handles synchronous writes and asynchronous reads.

- **`ram_single_port_tb.sv`**: The testbench for the RAM module. It tests write and read operations across multiple addresses, including edge cases and simultaneous read/write scenarios.

- **`README.md`**: This file, providing documentation and instructions for the project.
