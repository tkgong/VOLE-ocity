#include "defs.h"
#include "sha3.hpp"
#include <ap_int.h>
#include "hls_stream.h"
#include "shake.h"

void h0(ap_uint<128>& x, IV& iv, ap_uint<128>& seed, ap_uint<128>& com) {
    #pragma HLS INLINE
    
    hls::stream<ap_uint<64>> msgStrm;
    hls::stream<ap_uint<128>> msgLenStrm;
    hls::stream<bool> endMsgLenStrm;
    hls::stream<ap_uint<256>> digestStrm;
    hls::stream<bool> endDigestStrm;
    #pragma HLS STREAM variable=msgStrm depth=4
    #pragma HLS STREAM variable=msgLenStrm depth=2
    #pragma HLS STREAM variable=endMsgLenStrm depth=2
    #pragma HLS STREAM variable=digestStrm depth=2
    #pragma HLS STREAM variable=endDigestStrm depth=2
    // x is 128 bits, iv is 128 bits
    endMsgLenStrm.write(false);
    msgStrm.write(x.range(63, 0));      // Low 64 bits of x (bytes 0-7)
    msgStrm.write(x.range(127, 64));    // High 64 bits of x (bytes 8-15)
    msgStrm.write(iv.range(63, 0));     // Low 64 bits of iv (bytes 0-7)
    msgStrm.write(iv.range(127, 64));   // High 64 bits of iv (bytes 8-15)
    // Message length: 32 bytes (256 bits)
    msgLenStrm.write(32);

    endMsgLenStrm.write(true);
xf::security::shake256(msgStrm, msgLenStrm, endMsgLenStrm, 
                          digestStrm, endDigestStrm);
    // Read 256-bit output
    ap_uint<256> digest = digestStrm.read();
    bool end = endDigestStrm.read();
    
    DRAIN_ENDMSGLEN:
    for(int i = 0; i < 4; i++) {
        #pragma HLS LOOP_TRIPCOUNT min=0 max=2 avg=0
        if(endMsgLenStrm.empty()) break;
        endMsgLenStrm.read();
    }
    // Split output into seed and commitment
    seed = digest.range(255, 128);  // High 128 bits
    com = digest.range(127, 0);     // Low 128 bits
}

void H(
    hls::stream<ap_uint<128>> &com_strm,
    hls::stream<ap_uint<256>> &h_strm
){
    #pragma HLS INLINE
    const int N = 1<<K;    
    // Single set of SHAKE256 streams - REUSED
    hls::stream<ap_uint<64>> msgStrm("msgStrm");
    hls::stream<ap_uint<128>> msgLenStrm("msgLenStrm");
    hls::stream<bool> endMsgLenStrm("endMsgLenStrm");
    hls::stream<ap_uint<256>> digestStrm("digestStrm");
    hls::stream<bool> endDigestStrm("endDigestStrm");
    
    #pragma HLS STREAM variable=msgStrm depth=2
    #pragma HLS STREAM variable=msgLenStrm depth=2
    #pragma HLS STREAM variable=endMsgLenStrm depth=2
    #pragma HLS STREAM variable=digestStrm depth=2
    #pragma HLS STREAM variable=endDigestStrm depth=2
    
    for (int t = 0; t< TAU; t++){
        #pragma HLS PIPELINE OFF
        endMsgLenStrm.write(false);
        for(int i = 0; i < N; i++){
            #pragma HLS PIPELINE OFF      
            ap_uint<128> com = com_strm.read();
            msgStrm.write(com.range(63,0));
            msgStrm.write(com.range(127,64));
        }
        msgLenStrm.write(N*16);
        endMsgLenStrm.write(true);
        xf::security::shake256(msgStrm, msgLenStrm, endMsgLenStrm, 
                          digestStrm, endDigestStrm);
            
        ap_uint<256> digest = digestStrm.read();
        bool end = endDigestStrm.read();    
        h_strm.write(digest);
    }
}


void H_COM(hls::stream<ap_uint<256>> &h_strm, ap_uint<256> &hcom){
    #pragma HLS INLINE 
    
    hls::stream<ap_uint<64>> msgStrm;
    hls::stream<ap_uint<128>> msgLenStrm;
    hls::stream<bool> endMsgLenStrm;
    hls::stream<ap_uint<256>> digestStrm;
    hls::stream<bool> endDigestStrm;
    #pragma HLS STREAM variable=msgStrm depth=2
    #pragma HLS STREAM variable=msgLenStrm depth=2
    #pragma HLS STREAM variable=endMsgLenStrm depth=2
    #pragma HLS STREAM variable=digestStrm depth=2
    #pragma HLS STREAM variable=endDigestStrm depth=2
    const int N = 1<<K;
    // Prevent any loop unrolling or parallelization    
    endMsgLenStrm.write(false);
    
    // Stream directly from input to SHAKE256 - no intermediate storage
    for(int i = 0; i < TAU; i++){
        
    #pragma HLS PIPELINE OFF 
     #pragma HLS LOOP_FLATTEN OFF

        ap_uint<256> h_val = h_strm.read();
        msgStrm.write(h_val.range(63,0));
        msgStrm.write(h_val.range(127,64));
        msgStrm.write(h_val.range(191,128));
        msgStrm.write(h_val.range(255,192));
    }
    
    msgLenStrm.write(TAU * 32);  // 256 bits = 32 bytes per element
    endMsgLenStrm.write(true);
    
    xf::security::shake256(msgStrm, msgLenStrm, endMsgLenStrm, 
                          digestStrm, endDigestStrm);
    hcom = digestStrm.read();
    bool end = endDigestStrm.read();
}