#include <ap_int.h>
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "defs.h"
void VC_Open(
    ap_uint<K> open_idx[TAU],
    ap_uint<128> ggm_keys[TAU][2*(1<<K)-1],
    ap_uint<128> ggm_coms[TAU][1<<K],
    hls::stream<ap_uint<128>> &path_strm
);
void ggm_reconstruct(
    hls::stream<ap_uint<128>> &path_strm,
    ap_uint<K> open_idx[TAU],
    IV &iv,
    ap_uint<256> &hcom_reconstructed
);


void ggm_top(
    ap_uint<128> &root,
    IV &iv,
    hls::stream<ap_uint<128>> &seed_strm,
    ap_uint<256> &hcom,
    hls::stream<ap_uint<128>> &path_strm,
    ap_uint<128> &ch1
);
void ggm_tree(
    ap_uint<128> &root,
    IV &iv,
    ap_uint<128> ggm_keys[TAU][2*(1<<K)-1],
    ap_uint<128> coms[TAU][1<<K],
    hls::stream<ap_uint<128>> &seed_strm,
    ap_uint<256> &hcom
    //hls::stream<ap_uint<256>> &h_strm 
);

void ggm_build(
    hls::stream<ap_uint<128>> &root_strm,
    IV &iv,
    ap_uint<128> ggm_keys[TAU][2*(1<<K)-1],
    ap_uint<128> coms[TAU][1<<K],
    hls::stream<ap_uint<128>> &seeds_strm, 
    hls::stream<ap_uint<128>> &com_strm
);
void expand_roots(
    ap_uint<128> &root,
    IV &iv,
    hls::stream<ap_uint<128>> &root_strm
);

