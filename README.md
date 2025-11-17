VOLE-ocity / VOLEitH HLS Project Overview

This repository contains the necessary components for the VOLE-ocity zero-knowledge proof system implemented for High-Level Synthesis (HLS) on FPGA platforms.

Project Structure

#VOLEitH-FPGA: Contains the core HLS source code for the proof generation component (e.g., endtoend.cpp, defs.h).

#SW Bench: Contains the software benchmark files, likely forked from https://github.com/adust09/VOLEitH-bench.

Circuit Preparation and Input Generation

The VOLE-ocity system can process proofs for arbitrary computation described by a circuit. This requires converting a Solidity-generated circuit into the format expected by the HLS component.

Step 1: Generate Circuit Inputs

Use the provided Python script to parse your circuit definition file.

Tool: circuit_parser.py
Location: hls_components/circuit_parser.py

Command:

python3 circuit_parser.py [your_circuit_file]


Step 2: HLS Input Streams

The circuit_parser.py script will generate two crucial output files:

Input Information: Contains the witness (input values) required for the proof.

Circuit Information: Contains the definition of all gates (type, input wires, output wire) that define the computation.

These files are used by the HLS testbench (main.cpp) to stream the complete circuit definition and witness into the GenerateProof function.
