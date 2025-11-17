#include "defs.h"
#include "ap_int.h"
#include "hls_stream.h"
void GenerateProof(
    hls::stream<ap_uint<1>> &root_strm,
    hls::stream<ap_uint<1>> &iv_strm,
    hls::stream<ap_uint<1>> &witness,
    hls::stream<GateInfo> &circuit,
    hls::stream<ap_uint<1>> &d_strm,
    hls::stream<ap_uint<128>> &proof_strm    
);