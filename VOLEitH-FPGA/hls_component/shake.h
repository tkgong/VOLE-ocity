#include "ap_int.h"
#include "hls_stream.h"
#include "sha3.hpp"
#include "defs.h"

void h0(ap_uint<128>& x,IV& iv, ap_uint<128>& seed, ap_uint<128>& com);
void H(
    hls::stream<ap_uint<128>> &com_strm,
    hls::stream<ap_uint<256>> &h_strm
);
void H_COM(hls::stream<ap_uint<256>> &h_strm,ap_uint<256> &hcom);