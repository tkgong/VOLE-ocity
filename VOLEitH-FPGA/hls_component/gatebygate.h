#include "ap_int.h"
#include "hls_stream.h"
#include "defs.h"

void ProverCircuitEval(
    ap_uint<128> &ch1,
    ap_uint<1> u[TOTAL_VOLE],
    ap_uint<128> V[TOTAL_VOLE],
    hls::stream<ap_uint<1>> &witness,
    hls::stream<GateInfo> &circuit,
    hls::stream<ap_uint<1>> &d_strm,
    ap_uint<128> &a0_tilde,
    ap_uint<128> &a1_tilde,
    hls::stream<ap_uint<L>> &proof_strm
    //hls::stream<ap_uint<L*2>> &a_strm
);