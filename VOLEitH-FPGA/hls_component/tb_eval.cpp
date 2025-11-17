// #include "sha3.hpp" // Assumes your corrected shake256_extensible is here
// #include <iostream>
// #include <iomanip>
// #include "defs.h"
// #include "fiat_shamir.h"
// // Use the namespace from your header
// using namespace xf::security;
// // ===== TESTBENCH MAIN =====
// int main() {
//     // 1. Instantiate streams and variables
//     hls::stream<ap_uint<1>> d_strm;
//     hls::stream<ap_uint<128>> ch2_strm;
//     ap_uint<256> ch1;

//     // 2. Prepare Inputs
//     std::cout << "Testbench: Preparing inputs..." << std::endl;
//     const int NUM_D = NUM_AND_GATES + NUM_INPUT_WIRES;
    
//     // Set a test value for ch1
//     ch1 = "0xAAAAAAAAAAAAAAAA1111111111111111BBBBBBBBBBBBBBBB2222222222222222";

//     // Write NUM_D test bits to d_strm (e.g., alternating 1s and 0s)
//     for (int i = 0; i < NUM_D; i++) {
//         d_strm.write(i % 2);
//     }
    
//     std::cout << "Testbench: Wrote " << NUM_D << " bits to d_strm." << std::endl;
//     std::cout << "Testbench: Using ch1 = " << ch1.to_string(16) << std::endl;

//     // 3. Call the DUT (Device Under Test)
//     std::cout << "Testbench: Calling chal2..." << std::endl;
//     chal2(d_strm, ch1, ch2_strm);

//     // 4. Read and Verify Outputs
//     std::cout << "Testbench: Reading " << NUM_AND_GATES << " challenges from ch2_strm..." << std::endl;
    
//     int challenges_received = 0;
//     bool pass = true;

//     for (int i = 0; i < NUM_AND_GATES; i++) {
//         if (ch2_strm.empty()) {
//             std::cout << "Testbench: FAIL! Stream is empty. Expected " 
//                       << NUM_AND_GATES << " challenges, but only received " 
//                       << i << "." << std::endl;
//             pass = false;
//             break;
//         }

//         ap_uint<128> chi = ch2_strm.read();
//         challenges_received++;

//         // Print the received challenge
//         std::cout << "Challenge " << std::setw(3) << i << ": " 
//                   << std::hex << std::setfill('0') 
//                   << "0x" << std::setw(16) << (unsigned long)chi.range(127, 64) 
//                   << std::setw(16) << (unsigned long)chi.range(63, 0) 
//                   << std::dec << std::endl;

//         // Basic sanity check
//         if (chi == 0) {
//             std::cout << "Testbench: FAIL! Challenge " << i << " is all zeros." << std::endl;
//             pass = false;
//         }
//     }

//     // 5. Final Verdict
//     if (!ch2_strm.empty()) {
//         std::cout << "Testbench: FAIL! Stream is not empty. "
//                   << "More than " << NUM_AND_GATES << " challenges were produced." << std::endl;
//         pass = false;
//     }

//     if (challenges_received != NUM_AND_GATES) {
//         std::cout << "Testbench: FAIL! Mismatch in challenge count." << std::endl;
//         pass = false;
//     }

//     if (pass) {
//         std::cout << "Testbench: PASS! " << challenges_received << " challenges received." << std::endl;
//         return 0; // Success
//     } else {
//         std::cout << "Testbench: FAILED!" << std::endl;
//         return 1; // Failure
//     }
// }