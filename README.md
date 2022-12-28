A 32-bit pipelined RISC-V core with hazard handling written in Verilog and an instruction set simulator supporting RV32IM.
This core has been tested against a co-simulation model and exercised on FPGA.

## Overview
This final project is a 5 stage pipelined RISCV processor that supports all 40 user-level instructions. 
	* The instructions were divided into six format groups with similar functionality, and each format was designed separately using tailored Verilog modules.
	* The core is implemented using a single ported byte addressable memory for both data and instructions. 
	* The processor was modified to handle all kinds of hazards introduced with the implementation of the pipeline. These hazards include: Structural hazards, Data hazards, and Control hazards.
	* The implementation was done in Verilog, and was debugged and tested on Nexys-A7 FPGA board using Xilinx Vivado software.

The whole processor was thoroughly tested using the testbenches in the testing folder, and the results were recorded and verified.

## Features
	* 32-bit RISC-V ISA CPU core.
	* Support RISC-V integer (I), multiplication and division (M), extensions (RV32IM).
	* Implements base ISA spec v2.1 
	* Support for instruction/ data unified Memory.
	* configured with 5 pipeline stages and result forwarding options.
	* support load-use hazard detection and correction
	* support control hzarads detection and correction with static branch predictor

## Assumptions 
	* Supports Big-endian memory organization
	* one Unified memory for instructions and Data
	* Pipeline Implementation
	* supports memory of 4 kB
	* branch outcome decided in Memory stage


## What Works

All RISC-VI 40 instructions and Integer Multiplication and division instructions (8 Instructions).

***For More information about the implementation, testing, verification, and assumptions, please check the attached documentation "Report.pdf" file***
