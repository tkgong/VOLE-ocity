#include "ap_int.h"
#include "hls_stream.h"
#include "defs.h"

void ConvertToVOLE(
    IV &iv,
    hls::stream<ap_uint<128>> &seed_strm, 
    ap_uint<1> u[TOTAL_VOLE],
    ap_uint<128> V[TOTAL_VOLE]
);