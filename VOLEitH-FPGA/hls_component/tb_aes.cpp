// tb.cpp - CHANGE ONLY THIS FILE
#include <iostream>    // REVERTED: Use iostream
#include <iomanip>     // ADDED: For std::hex and std::setw
#include "ap_int.h"
#include "encrypt.h"

void print_hex128(const char* label, ap_uint<128> val) {
    // CHANGE: Use std::cout
    std::cout << label << ": ";
    // Use a temporary char array to format hex output
    char hex_str[33];
    hex_str[32] = 0; // Null terminator
    for (int i = 15; i >= 0; i--) {
        unsigned char byte = (unsigned char)val.range(i*8+7, i*8).to_uint();
        sprintf(&hex_str[i*2], "%02x", byte);
    }
    // Print the string in reverse byte order (as formatted)
    // Corrected loop to print formatted string directly
    for (int i = 0; i < 32; i++) {
        std::cout << hex_str[i];
    }
    std::cout << std::endl;
}

ap_uint<128> make_128(unsigned char b[16]) {
    ap_uint<128> result = 0;
    for (int i = 0; i < 16; i++) {
        result.range(i*8+7, i*8) = b[i];
    }
    return result;
}

int main() {
    // CHANGE: use std::cout
    std::cout << "TESTING FOR AES ENCRYPTION WITH NIST STANDERIZED INPUT" << std::endl;  
    
    unsigned char pt_bytes[16]  = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 
                                    0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff};
    unsigned char key_bytes[16] = {0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 
                                    0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f};
    unsigned char exp_bytes[16] = {0x69, 0xc4, 0xe0, 0x8, 0x6a, 0x7b, 0x04, 0x30, 
                                    0xd8, 0xcd, 0xb7, 0x80, 0x70, 0xb4, 0xc5, 0x5a};
    
    ap_uint<128> plaintext = make_128(pt_bytes);
    ap_uint<128> key = make_128(key_bytes);
    ap_uint<128> expected = make_128(exp_bytes);
    ap_uint<128> ciphertext;
    
    std::cout << "=== AES-128 Encryption Test ===" << std::endl;
    print_hex128("Plaintext", plaintext);
    print_hex128("Key      ", key);
    print_hex128("Expected ", expected);
    
    encrypt(plaintext, key, ciphertext);
    
    print_hex128("Got      ", ciphertext);
    
    if (ciphertext == expected) {
        std::cout << std::endl << "*** TEST PASSED ***" << std::endl;
        std::cout << "AES TESTING DONE WITH ZERO ERROR" << std::endl;  // CHANGE: use std::cout

    } else {
        std::cout << std::endl << "*** TEST FAILED ***" << std::endl;
    }
    return 0;
}

