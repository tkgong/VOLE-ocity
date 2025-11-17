#include "defs.h"
#include "ap_int.h"
#include "hls_stream.h"

void VOLECommit(
    ap_uint<128> &root, 
    IV &iv, 
    ap_uint<256> &hcom,
    ap_uint<1> u[TOTAL_VOLE], 
    ap_uint<128> V[TOTAL_VOLE],
    hls::stream<ap_uint<128>> &path_strm,
    ap_uint<128> &ch1
);