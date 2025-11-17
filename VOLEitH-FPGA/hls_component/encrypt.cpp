#include "crypt.h"
#include "aes.hpp"
void encrypt(ap_uint<128> in, ap_uint<128> key, ap_uint<128>& out) {
    #pragma HLS INLINE OFF
    xf::security::aesEnc<128> cipher;
    cipher.updateKey(key);
    cipher.process(in, key, out);
}