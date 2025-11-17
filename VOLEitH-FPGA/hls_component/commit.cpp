#include "defs.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ggm_tree.h"
#include "vole.h"
#include "shake.h"
void VOLECommit(
    ap_uint<128> &root, 
    IV &iv, 
    ap_uint<256> &hcom,
    ap_uint<1> u[TOTAL_VOLE], 
    ap_uint<128> V[TOTAL_VOLE],
    hls::stream<ap_uint<128>> &path_strm,
    ap_uint<128> &ch1
){
    #pragma HLS INLINE OFF
    //#pragma HLS DATAFLOW
    hls::stream<ap_uint<128>> seed_strm;
    hls::stream<ap_uint<256>> h_strm;
    hls::stream<ap_uint<256>> hcom_strm;
    hls::stream<ap_uint<128>> chal1_strm;
    #pragma HLS STREAM variable=seed_strm depth=2  // Minimize FIFO depth
    #pragma HLS STREAM variable=h_strm depth=2

    ggm_top(root, iv,seed_strm, hcom, path_strm, ch1);
    ConvertToVOLE(iv, seed_strm, u, V); 
}