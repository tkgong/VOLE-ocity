#ifndef PRG_H_
#define PRG_H_
#include <ap_int.h>
#include "defs.h"
#include "hls_stream.h"
// Declaration of PRG function
void PRG(IV &iv, ap_uint<128> seed, ap_uint<128> &out1, ap_uint<128> &out2);
void PRG_Expand(IV &iv, ap_uint<128> &seed, hls::stream<ap_uint<256>> &r_strm);
#endif