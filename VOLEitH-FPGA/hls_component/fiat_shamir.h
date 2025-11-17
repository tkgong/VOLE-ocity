#include "defs.h"
#include "ap_int.h"
#include "hls_stream.h"

void chal1(ap_uint<256> &hcom,IV &iv, ap_uint<K> chal[TAU], ap_uint<128> &ch1);
void chal2(
    hls::stream<ap_uint<1>> &d_strm, 
    ap_uint<128> &ch1, 
    hls::stream<ap_uint<128>> &ch2_strm
) ;