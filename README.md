# 8-bit_Systolic_Array-NPU

A beginner-to-intermediate RTL hardware accelerator project implementing a simple 8-bit Neural Processing Unit (NPU) using a systolic array architecture in SystemVerilog.

Overview

This project demonstrates the fundamentals of AI accelerator hardware design using RTL concepts commonly used in modern semiconductor and AI chip architectures.

The design includes:

8-bit Multiply-Accumulate (MAC) units
Processing Elements (PEs)
2×2 Systolic Array
Matrix Multiplication
RTL Simulation
Waveform Verification using EPWave/GTKWave
Modular SystemVerilog Design

The project is fully simulatable on:

EDA Playground
QuestaSim
Icarus Verilog
GTKWave
Architecture
Input Buffers
      ↓
Processing Elements (PEs)
      ↓
Systolic Data Movement
      ↓
Accumulator
      ↓
Output Matrix

Core MAC operation:

acc = acc + (a × b)
Files
File	Description
pe.sv	Processing Element RTL
npu_top.sv	Top-level 2×2 Systolic Array
tb.sv	SystemVerilog Testbench
Features
RTL-based AI accelerator design
Systolic array computation
Parallel MAC architecture
Clocked pipeline behavior
Waveform debugging support
Educational NPU architecture
Matrix Multiplication Example

Input matrices:

A = [1 2]
    [3 4]

B = [5 6]
    [7 8]

Expected output:

C = [19 22]
    [43 50]
Simulation

Run the project on EDA Playground:

Select SystemVerilog
Use Questa or Icarus Verilog
Enable EPWave
Run simulation
Observe systolic propagation and accumulation in waveforms
Future Improvements
4×4 / 8×8 Systolic Arrays
Pipelined MAC Units
ReLU Activation
Quantization Support
SRAM/Buffer Modeling
Instruction Controller
AXI Interface
Tiny Transformer Accelerator
FPGA Deployment
Learning Goals

This project helps in understanding:

RTL Design
Computer Architecture
AI Hardware Acceleration
Digital Verification
Semiconductor Design Flow
Tensor Processing Architectures
Technologies Used
SystemVerilog
RTL Design
EDA Playground
EPWave
GTKWave
Inspiration

Modern AI accelerators and tensor processors developed by companies such as:

NVIDIA
AMD
Intel
Google
Author

Anurag Vats

Electrical Engineering | AI & Semiconductor Enthusiast | RTL & System Design
