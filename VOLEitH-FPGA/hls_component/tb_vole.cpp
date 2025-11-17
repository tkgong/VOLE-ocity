#include "PRG.h"
#include "defs.h"
#include "ggm_tree.h"
#include "vole.h"
#include "shake.h"
#include <etc/ap_fixed_special.h>
#include <iostream>
#include <iomanip>
#include <string>
#include "hls_stream.h"

void _SW_BITEXPANSION(
    IV &iv,
    hls::stream<ap_uint<128>> &seed_strm,
    ap_uint<128> sd[TAU][1<<K],
    ap_uint<ELL_HAT> r[TAU][1<<K]
){
    const int N = 1<<K;

    // Read seeds from streams
    for(int b = 0; b < TAU; b++){ 
        for(int j = 0; j < N; j++){                       
                sd[b][j] = seed_strm.read();
        }
    }

    int STEP = (ELL_HAT + BUS_WIDTH - 1) / BUS_WIDTH;
    
    // Bit expansion: each seed → ELL_HAT bits
    for(int t = 0; t < TAU; t++){
        for(int i = 0; i < N; i++){
            for(int s = 0; s < STEP; s++){
                IV cur_iv = iv + 2*s;
                ap_uint<128> r0, r1;
                PRG(cur_iv, sd[t][i], r0, r1);
                int start_bit = s * BUS_WIDTH;
                int remaining_bits = ELL_HAT - start_bit;
                if(remaining_bits >= 128){
                    r[t][i].range(start_bit + 127, start_bit) = r0;
                } else if(remaining_bits > 0){
                    r[t][i].range(ELL_HAT - 1, start_bit) = r0.range(remaining_bits - 1, 0);
                }
                start_bit += 128;
                remaining_bits = ELL_HAT - start_bit;
                if(remaining_bits >= 128){
                    r[t][i].range(start_bit + 127, start_bit) = r1;
                } else if(remaining_bits > 0){
                    r[t][i].range(ELL_HAT - 1, start_bit) = r1.range(remaining_bits - 1, 0);
                }
            }
        }
    }
}
void _SW_BUILD_VOLE(
    ap_uint<ELL_HAT> r[1<<K],  // This is r_0,i from the spec
    ap_uint<ELL_HAT> &u,        // Output u
    ap_uint<ELL_HAT> V[K]       // Output V
){  
    const int N = 1<<K; 
    ap_uint<ELL_HAT> r_t[K+1][N]; 
    for(int j = 0; j < K; j++){
        V[j] = 0;
    }
    for(int i = 0; i < N; i++){
        r_t[0][i] = r[i];
    } 
    for(int j = 0; j < K; j++){
        int loop_bound = N >> (j+1); 
        for(int i = 0; i < loop_bound; i++){
            V[j] = V[j] ^ r_t[j][2*i+1];
            r_t[j+1][i] = r_t[j][2*i] ^ r_t[j][2*i+1];
        }
    }
    u = r_t[K][0];
}

void _SW_ConvertToVOLE(    
    IV &iv,
    hls::stream<ap_uint<128>> &seed_strm,
    ap_uint<128> sd[TAU][1<<K],
    ap_uint<ELL_HAT> &u, // Changed to a reference to pass the output back
    ap_uint<128> V[ELL_HAT])
{
    // This is an intermediate, column-major representation
    // r[t][i] = PRG(sd[t][i]), an ELL_HAT-bit vector
    ap_uint<ELL_HAT> r[TAU][1<<K];
    _SW_BITEXPANSION(iv, seed_strm, sd, r);

    // u_t[t] = u vector for tree 't'
    ap_uint<ELL_HAT> u_t[TAU];
    // V_t[t][k] = v_k vector for tree 't'
    ap_uint<ELL_HAT> V_t[TAU][K];

    // Build all TAU instances of VOLE
    for(int i = 0; i < TAU; i++){
        _SW_BUILD_VOLE(r[i], u_t[i], V_t[i]);
    }
    u = u_t[0];
    for(int r = 0; r < ELL_HAT; r++){
        ap_uint<128> row_word = 0;
        for(int c = 0; c < 128; c++){
            int t = c / K; // TAU index
            int k = c % K; // K index
            bool bit = V_t[t][k][r]; // Read r-th bit
            row_word[c] = bit;
        }
        V[r] = row_word;
    }
}

void print_128bit(const char* label, ap_uint<128> val) {
    std::cout << label;
    for(int i = 3; i >= 0; i--) {
        std::cout << std::hex << std::setw(8) << std::setfill('0') 
                  << val.range(32*i+31, 32*i).to_uint();
        if(i > 0) std::cout << "_";
    }
    std::cout << std::dec << std::endl;
}

void print_256bit(const char* label, ap_uint<256> val) {
    std::cout << label;
    for(int i = 7; i >= 0; i--) {
        std::cout << std::hex << std::setw(8) << std::setfill('0') 
                  << val.range(32*i+31, 32*i).to_uint();
        if(i > 0) std::cout << "_";
    }
    std::cout << std::dec << std::endl;
}

int main(){
    // Initialize inputs
    ap_uint<128> root = 0x0123456789ABCDEF;
    root = (root << 64) | 0xFEDCBA9876543210;
    IV iv = 0;
    for(int i = 0; i < 16; i++) {
        iv.range(8*i+7, 8*i) = i * 0x11;
    }
    
    ap_uint<128> ggm_keys[TAU][2*(1<<K)-1];
    ap_uint<128> _ggm_keys[TAU][2*(1<<K)-1];
    ap_uint<128> coms[TAU][1<<K];
    ap_uint<128> _coms[TAU][1<<K];
    hls::stream<ap_uint<128>> seed_strm;
    hls::stream<ap_uint<128>> _seed_strm;

    ap_uint<256> h;
    ap_uint<256> _h;

    std::cout << "INPUT PARAMETERS:" << std::endl;
    std::cout << "-----------------" << std::endl;
    print_128bit("Master Root: 0x", root);
    print_128bit("IV:          0x", iv);
    std::cout << "K = " << K << " (N = " << (1<<K) << " leaves per tree)" << std::endl;
    std::cout << "TAU = " << TAU << " trees" << std::endl;
    std::cout << "ELL_HAT = " << ELL_HAT << std::endl;
    std::cout << std::endl;
    
    // ========================================
    // PROVER: Generate GGM trees
    // ========================================
    std::cout << "=== PROVER PHASE ===" << std::endl;
    std::cout << "Calling ggm_tree()..." << std::endl;
     ggm_tree(root, iv, ggm_keys, coms, seed_strm, h);
    ggm_tree(root, iv, _ggm_keys, _coms, _seed_strm, _h);
    std::cout << "✓ ggm_tree() completed.\n" << std::endl;
    
    // ========================================
    // SOFTWARE REFERENCE
    // ========================================
    std::cout << "=== SOFTWARE REFERENCE ===" << std::endl;
    ap_uint<ELL_HAT> _u;
    ap_uint<128> _V[ELL_HAT];
    ap_uint<128> sd[TAU][1<<K];
    //_SW_ConvertToVOLE(iv, _seed_strm, sd, _u, _V);
    std::cout << "✓ _SW_ConvertToVOLE() completed.\n" << std::endl;
    
    // ========================================
    // HARDWARE IMPLEMENTATION
    // ========================================
    std::cout << "=== HARDWARE IMPLEMENTATION ===" << std::endl;
    ap_uint<1> u[ELL_HAT];
    ap_uint<128> V[ELL_HAT];
    //ConvertToVOLE(iv, seed_strm, u, V);
    std::cout << "✓ ConvertToVOLE() completed.\n" << std::endl;
    
    // ========================================
    // VERIFICATION
    // ========================================
    std::cout << "\n=== VERIFICATION ===" << std::endl;
    
    bool u_match = true;
    int u_errors = 0;
    
    // Verify u vector
    std::cout << "Checking u vector (" << ELL_HAT << " bits)..." << std::endl;
    for(int i = 0; i < ELL_HAT; i++){
        ap_uint<1> sw_bit = _u[i];
        ap_uint<1> hw_bit = u[i];
        if(sw_bit != hw_bit){
            u_match = false;
            u_errors++;
            if(u_errors <= 10){  // Only print first 10 errors
                std::cout << "  ERROR at u[" << i << "]: SW=" << sw_bit 
                         << ", HW=" << hw_bit << std::endl;
            }
        }
    }
    
    if(u_match){
        std::cout << "✓ u vector MATCH!" << std::endl;
    } else {
        std::cout << "✗ u vector MISMATCH! Total errors: " << u_errors 
                 << " / " << ELL_HAT << std::endl;
    }
    
    // Verify V matrix
    bool v_match = true;
    int v_errors = 0;
    
    std::cout << "Checking V matrix (" << ELL_HAT << " x 128)..." << std::endl;
    for(int r = 0; r < ELL_HAT; r++){
        if(_V[r] != V[r]){
            v_match = false;
            v_errors++;
            if(v_errors <= 10){  // Only print first 10 errors
                std::cout << "  ERROR at V[" << r << "]:" << std::endl;
                print_128bit("    SW: 0x", _V[r]);
                print_128bit("    HW: 0x", V[r]);
                
                // Show bit-level differences
                ap_uint<128> diff = _V[r] ^ V[r];
                int bit_errors = 0;
                for(int b = 0; b < 128; b++){
                    if(diff[b]) bit_errors++;
                }
                std::cout << "    Bit errors: " << bit_errors << " / 128" << std::endl;
            }
        }
    }
    
    if(v_match){
        std::cout << "✓ V matrix MATCH!" << std::endl;
    } else {
        std::cout << "✗ V matrix MISMATCH! Total row errors: " << v_errors 
                 << " / " << ELL_HAT << std::endl;
    }
    
    // ========================================
    // FINAL RESULT
    // ========================================
    std::cout << "\n=== FINAL RESULT ===" << std::endl;
    if(u_match && v_match){
        std::cout << "✓✓✓ ALL TESTS PASSED! ✓✓✓" << std::endl;
        return 0;
    } else {
        std::cout << "✗✗✗ TESTS FAILED! ✗✗✗" << std::endl;
        std::cout << "Summary:" << std::endl;
        std::cout << "  u vector: " << (u_match ? "PASS" : "FAIL") << std::endl;
        std::cout << "  V matrix: " << (v_match ? "PASS" : "FAIL") << std::endl;
        return 1;
    }
}