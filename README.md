# 📟 FPGA Hardware/Software Co-design: Nios II SoC BCD Decoder

![Hardware](https://img.shields.io/badge/Hardware-Intel%2FAltera%20FPGA-blue.svg)
![Processor](https://img.shields.io/badge/Processor-Nios%20II%20Soft--Core-orange.svg)
![Language](https://img.shields.io/badge/Language-Verilog%20%7C%20C-success.svg)
![Tool](https://img.shields.io/badge/Tool-Quartus%20Prime%20%7C%20Qsys-lightgrey.svg)

## 📌 Overview
This project demonstrates a complete **Hardware/Software Co-design** flow using Intel Quartus Prime and Platform Designer (Qsys). It implements a custom System-on-Chip (SoC) by instantiating a **Nios II Soft-Core Processor** on an FPGA to handle real-time I/O operations. The system reads 4-bit Binary-Coded Decimal (BCD) inputs from physical slide switches and decodes them into hexadecimal characters (0-F) displayed on a 7-segment display.

## 🚀 Key Features
* **System-on-Chip (SoC) Architecture:** Designed a custom hardware system integrating a Nios II CPU, On-chip Memory, JTAG UART, and Parallel I/O (PIO) cores using Qsys/Platform Designer.
* **Memory-Mapped I/O:** Utilized bare-metal C programming to interact directly with hardware peripherals via memory-mapped base addresses (`SWS_BASE`, `LEDR_BASE`, `HEX3_0_BASE`).
* **Real-time Hardware Polling:** The C firmware continuously polls the switch states and applies bitwise operations and switch-case logic to drive the 7-segment LEDs and discrete LEDs (Red/Green) synchronously.
* **RTL Integration:** Top-level Verilog wrapper (`BCDto7Seg.v`) to route the internal Avalon Memory-Mapped Fabric signals to the physical FPGA pins.

## 🛠️ Tech Stack
* **Hardware Description:** Verilog HDL
* **Firmware:** Bare-metal C (`system.h`, memory pointers)
* **Development Tools:** Intel/Altera Quartus Prime, Platform Designer (Qsys), Nios II Software Build Tools (SBT) for Eclipse.
