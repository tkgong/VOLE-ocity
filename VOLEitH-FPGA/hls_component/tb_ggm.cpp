#include <ios>
#include <iostream>
#include <iomanip>
#include <random>
#include "ap_int.h"
#include "hls_stream.h"
#include "defs.h"
#include "ggm_tree.h"
#include "shake.h"
#include "fiat_shamir.h"
// Helper function to print 128-bit values
void print_128bit(const char* label, ap_uint<128> val) {
    std::cout << label;
    for(int i = 3; i >= 0; i--) {
        std::cout << std::hex << std::setw(8) << std::setfill('0') 
                  << val.range(32*i+31, 32*i).to_uint();
        if(i > 0) std::cout << "_";
    }
    std::cout << std::dec << std::endl;
}

// Helper to print 256-bit values
void print_256bit(const char* label, ap_uint<256> val) {
    std::cout << label;
    for(int i = 7; i >= 0; i--) {
        std::cout << std::hex << std::setw(8) << std::setfill('0') 
                  << val.range(32*i+31, 32*i).to_uint();
        if(i > 0) std::cout << "_";
    }
    std::cout << std::dec << std::endl;
}

// Print tree structure for one tree
void print_tree_structure(int tree_idx, ap_uint<128> keys[2*(1<<K)-1]) {
    std::cout << "\n  Tree Structure:" << std::endl;
    
    int idx = 0;
    for(int d = 0; d <= K; d++) {
        int num_nodes = 1 << d;
        std::cout << "  Level " << d << " (" << num_nodes << " node" 
                  << (num_nodes > 1 ? "s" : "") << "):" << std::endl;
        
        for(int i = 0; i < num_nodes; i++) {
            std::cout << "    [" << std::setw(2) << idx << "] 0x";
            for(int j = 3; j >= 0; j--) {
                std::cout << std::hex << std::setw(8) << std::setfill('0') 
                          << keys[idx].range(32*j+31, 32*j).to_uint();
                if(j > 0) std::cout << "_";
            }
            std::cout << std::dec << std::endl;
            idx++;
        }
    }
}

int main() {
    std::cout << "============================================" << std::endl;
    std::cout << "GGM_TREE + VC_OPEN Comprehensive Testbench" << std::endl;
    std::cout << "============================================" << std::endl;
    std::cout << "Configuration:" << std::endl;
    std::cout << "  K (tree depth):        " << K << std::endl;
    std::cout << "  TAU (num trees):       " << TAU << std::endl;
    std::cout << "  PATH_LEN:              " << PATH_LEN << " (K+2)" << std::endl;
    std::cout << "  Nodes per tree:        " << (2*(1<<K)-1) << std::endl;
    std::cout << "  Leaves per tree:       " << (1<<K) << std::endl;
    std::cout << "============================================\n" << std::endl;
    
    bool all_valid = true;
    
    // Initialize inputs
    ap_uint<128> root = 0x0123456789ABCDEF;
    root = (root << 64) | 0xFEDCBA9876543210;
    
    IV iv = 0;
    for(int i = 0; i < 16; i++) {
        iv.range(8*i+7, 8*i) = i * 0x11;
    }
    
    // Generate random open indices
    ap_uint<K> open_idx[TAU];
    std::random_device rd;
    std::mt19937 gen(42);  // Fixed seed for reproducibility
    std::uniform_int_distribution<> dis(0, (1<<K)-1);
    
    std::cout << "RANDOM OPEN INDICES:" << std::endl;
    std::cout << "--------------------" << std::endl;
    for(int i = 0; i < TAU; i++) {
        open_idx[i] = dis(gen);
        if(i < 10) {
            std::cout << "  Tree " << i << ": opening leaf " << open_idx[i].to_uint() << std::endl;
        }
    }
    std::cout << "  ..." << std::endl;
    std::cout << std::endl;
    
    // Output arrays and streams
    ap_uint<128> ggm_keys[TAU][2*(1<<K)-1];
    ap_uint<128> coms[TAU][1<<K];
    hls::stream<ap_uint<128>> seed_strm;
    hls::stream<ap_uint<256>> h_strm;
    
    std::cout << "INPUT PARAMETERS:" << std::endl;
    std::cout << "-----------------" << std::endl;
    print_128bit("Master Root: 0x", root);
    print_128bit("IV:          0x", iv);
    std::cout << std::endl;
    
    // ========================================
    // PROVER: Generate GGM trees and hashes
    // ========================================
    std::cout << "=== PROVER PHASE ===" << std::endl;
    std::cout << "Calling ggm_tree() (includes H hashing)..." << std::endl;
    ap_uint<256> hcom;
    //gm_tree(root, iv, ggm_keys, coms, seed_strm, hcom);
    std::cout << "✓ ggm_tree() completed.\n" <<std::hex <<std::endl;
    
    hls::stream<ap_uint<128>> path_strm;
    ap_uint<128> ch1, _ch1;
    hls::stream<ap_uint<128>> root_strm;
    hls::stream<ap_uint<128>> seeds_strm;
    hls::stream<ap_uint<128>> com_strm;
    // expand_roots(root, iv,root_strm);
    // ggm_build(root_strm, iv, ggm_keys, coms, seeds_strm, com_strm); 
    // H(com_strm,h_strm);
    ggm_top(root, iv,seed_strm, hcom, path_strm, ch1);
    ap_uint<K> _ch[TAU]; 
     chal1(hcom, iv, _ch,_ch1);
    ap_uint<256> h_reconstructed; 
     ggm_reconstruct(path_strm, _ch, iv,h_reconstructed);
    std::cout << "hcom is " << hcom << std::hex <<std::endl;
    std::cout << "h_reconstructed is " <<h_reconstructed <<std::hex << std::endl;
    if (hcom == h_reconstructed){
        std::cout << "GGM Working" << std::endl;
        return 0; 
    } else{
     return 1;
   }
}