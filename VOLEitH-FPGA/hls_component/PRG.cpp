#include "PRG.h"
#include "defs.h"
#include "encrypt.h"
#include <ap_int.h>
#include <hls_stream.h>
void PRG(IV &iv, ap_uint<128> seed, ap_uint<128> &out1, ap_uint<128> &out2){
	    #pragma HLS INLINE OFF // Share hardware across calls
		for (int i = 0; i < 2; i++){
			#pragma HLS PIPELINE OFF
			IV cur_iv = iv + i;
			ap_uint<128> out;
			encrypt(seed, cur_iv, out);
			if (i==0){
				out1 = out;
			}
			else {
				out2 = out;
			}
		}
}

void PRG_Expand(IV &iv, ap_uint<128> &seed, hls::stream<ap_uint<256>> &r_strm){
	#pragma HLS INLINE OFF
	const int STEP = (ELL_HAT + BUS_WIDTH - 1 )/ BUS_WIDTH;
	for(int i = 0; i < STEP; i++){
		#pragma HLS PIPELINE II=1
		ap_uint<128> r0, r1;
		IV cur_iv = iv + i;
		PRG(cur_iv, seed, r0, r1);
		ap_uint<256> r;
		r.range(127,0) = r0;
		r.range(255,128) = r1;
		r_strm.write(r);
	}
}