Asynchronous FIFO Verification

Project Overview

This project focuses on the design verification of an Asynchronous FIFO using SystemVerilog. The verification environment is developed to verify FIFO read/write functionality, boundary conditions, and data integrity across asynchronous clock domains.

Technologies Used

* Verilog HDL
* SystemVerilog
* Questa/ModelSim
* Functional Coverage
* SystemVerilog Assertions

Verification Environment

The testbench includes:

* Generator
* Driver/BFM
* Monitor
* Scoreboard
* Functional Coverage
* Assertions

## Key Verification Features

* Verified FIFO **read and write operations**
* Verified **data integrity** between write and read operations
* Verified **FULL** and **EMPTY** FIFO conditions
* Verified **overflow** and **underflow** conditions
* Verified operation across **independent read and write clock domains**
* Used **SystemVerilog testbench components** for functional verification
* Implemented **functional coverage** to measure verification completeness
* Used **Questa/ModelSim** for simulation and debugging

