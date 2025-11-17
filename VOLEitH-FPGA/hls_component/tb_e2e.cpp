#include <ios>
#include <iostream>
#include <iomanip>
#include <random>
#include "ap_int.h"
#include "hls_stream.h"
#include "defs.h"
#include "endtoend.h"
#include <ios>
#include <iostream>
#include <iomanip>
#include <fstream>
#include <vector>
#include <random>
#include <bitset>
#include <chrono>
#include "ap_int.h"
#include "hls_stream.h"
#include "defs.h"
#include "endtoend.h"

// Helper function to stream a 128-bit value bit by bit
void stream_128bit(hls::stream<ap_uint<1>> &strm, ap_uint<128> value) {
    for (int i = 0; i < 128; i++) {
        strm.write(value[i]);
    }
}

// Helper function to stream a WIRE_ID bit by bit (19 bits based on defs.h)
void stream_wire_id(hls::stream<ap_uint<1>> &strm, WIRE_ID value) {
    for (int i = 0; i < 19; i++) {
        strm.write(value[i]);
    }
}

// Helper function to read 128-bit value from stream bit by bit
ap_uint<128> read_128bit(hls::stream<ap_uint<128>> &strm) {
    return strm.read();
}

// Function to load input values from file
std::vector<int> load_inputs(const std::string& filename) {
    std::vector<int> inputs;
    std::ifstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Error: Cannot open input file: " << filename << std::endl;
        return inputs;
    }
    
    int value;
    while (file >> value) {
        inputs.push_back(value);
    }
    file.close();
    
    std::cout << "Loaded " << inputs.size() << " input values" << std::endl;
    return inputs;
}

// Function to load gates from file
std::vector<GateInfo> load_gates(const std::string& filename) {
    std::vector<GateInfo> gates;
    std::ifstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Error: Cannot open gates file: " << filename << std::endl;
        return gates;
    }
    
    int is_and, in1, in2, out;
    while (file >> is_and >> in1 >> in2 >> out) {
        GateInfo gate;
        gate.is_and = is_and;
        gate.in1 = in1;
        gate.in2 = in2;
        gate.out = out;
        gates.push_back(gate);
    }
    file.close();
    
    std::cout << "Loaded " << gates.size() << " gates" << std::endl;
    return gates;
}

int main() {
    std::cout << "==============================================\n";
    std::cout << "    GenerateProof HLS Testbench\n";
    std::cout << "==============================================\n";
    
    // Initialize random number generator for root and iv
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<uint64_t> dis64;
    
    // Generate random 128-bit root and iv
    ap_uint<128> root = (ap_uint<128>(dis64(gen)) << 64) | dis64(gen);
    ap_uint<128> iv = (ap_uint<128>(dis64(gen)) << 64) | dis64(gen);
    
    std::cout << "\n Configuration:\n";
    std::cout << "  Root: 0x" << std::hex << root << std::dec << "\n";
    std::cout << "  IV:   0x" << std::hex << iv << std::dec << "\n";
    
    // Load input values and gates from files
    std::string input_file = "/home/tkgong/Research/VOLE-ocity/VOLEitH-FPGA/hls_component/circuit_inputs.txt";
    std::string gates_file = "/home/tkgong/Research/VOLE-ocity/VOLEitH-FPGA/hls_component/circuit_gates.txt";
    
    std::cout << "\n Loading circuit data...\n";
    std::vector<int> input_values = load_inputs(input_file);
    std::vector<GateInfo> gates = load_gates(gates_file);
    
    // Verify data was loaded
    if (input_values.empty() || gates.empty()) {
        std::cerr << " Error: Failed to load circuit data\n";
        std::cerr << "Make sure the following files exist:\n";
        std::cerr << "  - " << input_file << " (input values)\n";
        std::cerr << "  - " << gates_file << " (gates: is_and in1 in2 out)\n";
        return 1;
    }
    
    // Validate against expected values from defs.h
    std::cout << "\nValidation:\n";
    std::cout << "  Expected inputs: " << NUM_INPUT_WIRES << ", Loaded: " << input_values.size();
    
    if (input_values.size() == NUM_INPUT_WIRES) {
        std::cout << " ✓\n";
    } else {
        std::cout << " ✗\n";
        // Handle mismatch - pad or truncate
        if (input_values.size() < NUM_INPUT_WIRES) {
            int missing = NUM_INPUT_WIRES - input_values.size();
            std::cout << "  ⚠️  Padding with " << missing << " zeros\n";
            for (int i = 0; i < missing; i++) {
                input_values.push_back(0);
            }
        } else {
            std::cout << " Truncating to " << NUM_INPUT_WIRES << " inputs\n";
            input_values.resize(NUM_INPUT_WIRES);
        }
    }
    
    std::cout << " Expected gates:  " << NUM_GATES << ", Loaded: " << gates.size();
    if (gates.size() == NUM_GATES) {
        std::cout << " ✓\n";
    } else {
        std::cout << " ✗\n";
        if (gates.size() != NUM_GATES) {
            std::cerr << "  ⚠️  Warning: Gate count mismatch may cause issues\n";
        }
    }
    
    // Create HLS streams
    std::cout << "\n Creating HLS streams...\n";
    hls::stream<ap_uint<1>> root_strm("root_stream");
    hls::stream<ap_uint<1>> iv_strm("iv_stream");
    hls::stream<ap_uint<1>> witness_strm("witness_stream");
    hls::stream<GateInfo> circuit_strm("circuit_stream");
    hls::stream<ap_uint<1>> d_strm("d_stream");
    hls::stream<ap_uint<128>> proof_strm("proof_stream");
    
    // Stream the data
    std::cout << "\n Streaming data to GenerateProof...\n";
    
    // 1. Stream root (128 bits)
    std::cout << "  Streaming root (128 bits)...\n";
    stream_128bit(root_strm, root);
    
    // 2. Stream IV (128 bits)
    std::cout << "  Streaming IV (128 bits)...\n";
    stream_128bit(iv_strm, iv);
    
    // 3. Stream witness (input values as bits)
    std::cout << "  Streaming witness (" << input_values.size() << " values)...\n";
    for (size_t i = 0; i < input_values.size(); i++) {
        // Each input value is treated as a single bit (0 or 1)
        ap_uint<1> bit_value = input_values[i] & 1;
        witness_strm.write(bit_value);
        
        // Show first few values for debugging
        if (i < 10) {
            std::cout << "    Input[" << i << "] = " << bit_value << " (from value " << input_values[i] << ")\n";
        } else if (i == 10) {
            std::cout << "    ... (remaining " << (input_values.size() - 10) << " values)\n";
        }
    }
    
    // 4. Stream circuit (gate definitions)
    std::cout << "  Streaming circuit (" << gates.size() << " gates)...\n";
    int and_count = 0, xor_count = 0;
    for (size_t i = 0; i < gates.size(); i++) {
        circuit_strm.write(gates[i]);
        
        // Count gate types
        if (gates[i].is_and) {
            and_count++;
        } else {
            xor_count++;
        }
        
        // Show first few gates for debugging
        if (i < 5) {
            std::cout << "    Gate[" << i << "]: " 
                      << (gates[i].is_and ? "AND" : "XOR")
                      << " $" << gates[i].in1 
                      << (gates[i].is_and ? " & " : " ^ ")
                      << "$" << gates[i].in2 
                      << " -> $" << gates[i].out << "\n";
        } else if (i == 5) {
            std::cout << "    ... (remaining " << (gates.size() - 5) << " gates)\n";
        }
    }
    
    std::cout << "  Gate summary: " << and_count << " AND gates, " << xor_count << " XOR gates\n";
    GenerateProof(root_strm,iv_strm,witness_strm, circuit_strm, d_strm, proof_strm);
    return 0;
}