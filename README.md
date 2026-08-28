## Asynchronous FIFO Verification

## Project Overview

This project focuses on the design verification of an Asynchronous FIFO using SystemVerilog. The verification environment is developed to verify FIFO read/write functionality, boundary conditions, and data integrity across asynchronous clock domains.

## Technologies Used

* Verilog HDL
* SystemVerilog
* Questa/ModelSim
* Functional Coverage
* SystemVerilog Assertions

## Verification Environment

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

## Verification Environment

The Asynchronous FIFO verification environment is developed using SystemVerilog and consists of separate read and write verification components.

### Testbench Components

* **Generator** — Generates read and write transactions.
* **Driver/BFM** — Drives transactions to the FIFO interface.
* **Monitor** — Monitors FIFO read/write activity and collects transaction information.
* **Scoreboard** — Compares expected data with actual FIFO output data to verify data integrity.
* **Functional Coverage** — Measures coverage of important FIFO operations and conditions.
* **Assertions** — Checks FIFO behavior and protocol-related conditions during simulation.

### Read-Side Components

* `rd_gen.sv`
* `rd_bfm.sv`
* `rd_mon.sv`
* `rd_cov.sv`
* `rd_agent.sv`
* `rd_tx.sv`

### Write-Side Components

* `wr_gen.sv`
* `wr_bfm.sv`
* `wr_mon.sv`
* `wr_cov.sv`
* `wr_agent.sv`
* `wr_tx.sv`

### Common Components

* `fifo_env.sv`
* `fifo_sbd.sv`
* `fifo_intrf.sv`
* `fifo_common.sv`
* `fifo_top.sv`

## Test Cases

The following test cases were implemented and verified for the Asynchronous FIFO:

| Test Case       | Description                                                              |
| --------------- | ------------------------------------------------------------------------ |
| Reset Test      | Verifies FIFO behavior during and after reset.                           |
| Write Test      | Verifies writing data into the FIFO.                                     |
| Read Test       | Verifies reading data from the FIFO.                                     |
| Write-Read Test | Verifies data integrity between write and read operations.               |
| Full Test       | Verifies FIFO behavior when the FIFO reaches the full condition.         |
| Overflow Test   | Verifies FIFO behavior when a write is attempted while the FIFO is full. |
| Empty Test      | Verifies FIFO behavior when the FIFO reaches the empty condition.        |
| Underflow Test  | Verifies FIFO behavior when a read is attempted while the FIFO is empty. |
S

