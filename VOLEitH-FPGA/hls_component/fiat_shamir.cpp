#include "defs.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "shake.h"
#include "sha3.hpp"
void chal1(ap_uint<256> &hcom,IV &iv, ap_uint<K> chal[TAU], ap_uint<128> &ch1){
    #pragma HLS INLINE OFF
    #pragma HLS ARRAY_PARTITION variable=chal dim=1 type=complete 

    hls::stream<ap_uint<64>> msgStrm;
    #pragma HLS STREAM variable=msgStrm depth=16
    hls::stream<ap_uint<128>> msgLenStrm;
    #pragma HLS STREAM variable=msgLenStrm depth=2
    hls::stream<bool> endMsgLenStrm;
    #pragma HLS STREAM variable=endMsgLenStrm depth=2
    hls::stream<ap_uint<256>> digestStrm;
    #pragma HLS STREAM variable=digestStrm depth=2
    hls::stream<bool> endDigestStrm;
    #pragma HLS STREAM variable=endDigestStrm depth=2
    
    ap_uint<128> msgLen = (256+128) / 8;
    
    endMsgLenStrm.write(false);  // Start of message
    
    msgStrm.write(iv.range(63, 0));
    msgStrm.write(iv.range(127, 64));
    msgStrm.write(hcom.range(63,0));
    msgStrm.write(hcom.range(127,64));
    msgStrm.write(hcom.range(191,128));
    msgStrm.write(hcom.range(255,192));
    
    msgLenStrm.write(msgLen);
    endMsgLenStrm.write(true);  // ← ADD THIS LINE!
    
    xf::security::shake256(msgStrm, msgLenStrm, endMsgLenStrm, digestStrm, endDigestStrm);
    
    ap_uint<256> c = digestStrm.read();
    bool end = endDigestStrm.read();
    
    ch1 = c.range(127,0);
    for(int i = 0; i < TAU; i++){
        #pragma HLS UNROLL
        chal[i] = c.range((i+1)*K-1, i*K);
    }
}
void chal2(
    hls::stream<ap_uint<1>> &d_strm, 
    ap_uint<128> &ch1, 
    hls::stream<ap_uint<128>> &ch2_strm
) {
    #pragma HLS INLINE OFF 
    const int NUM_D = NUM_AND_GATES + NUM_INPUT_WIRES; 
    
    // ===== STEP 1: Pack d || ch1 into msgStrm =====
    hls::stream<ap_uint<64>> msgStrm;

    // Calculate number of 64-bit words needed for d bits
    const int NUM_D_WORDS = (NUM_D + 63) / 64;
    
    // Calculate exact number of bytes from d_strm
    const int D_BYTES = (NUM_D + 7) / 8;
    
    // Total message length: d_bytes + 32 bytes for ch1
    const ap_uint<128> TOTAL_MSG_BYTES = D_BYTES + 16;

    // Pack d bits from stream
    for(int i = 0; i < NUM_D_WORDS; i++){
        #pragma HLS PIPELINE OFF
        ap_uint<64> word = 0;
        for(int j = 0; j < 64; j++){
            //#pragma HLS UNROLL
            int bit_idx = i * 64 + j;
            if(bit_idx < NUM_D){
                word[j] = d_strm.read();
            }
        }
        msgStrm.write(word);
    }
    
    // Append ch1 (256 bits = 4 words of 64 bits)
    msgStrm.write(ch1.range(63, 0));
    msgStrm.write(ch1.range(127, 64));

    // ===== STEP 2: Call SHAKE to generate challenges =====

    // --- Create the other control streams SHAKE needs ---
    hls::stream<ap_uint<128>> msgLenStrm;
    hls::stream<bool> endMsgLenStrm;
    hls::stream<ap_uint<128>> outLenStrm;
    hls::stream<bool> endOutLenStrm;
    
    // This is the internal "end" flag from the SHAKE kernel
    hls::stream<bool> endDigestStrm_internal; 

    // --- Calculate total output bytes needed ---
    // We need NUM_AND_GATES challenges, each 128 bits (16 bytes)
    const ap_uint<128> TOTAL_OUTPUT_BYTES = NUM_AND_GATES * 16;

    // --- Write control values for ONE message ---
    msgLenStrm.write(TOTAL_MSG_BYTES);
    outLenStrm.write(TOTAL_OUTPUT_BYTES);
    endMsgLenStrm.write(false); // This is a valid message
    endOutLenStrm.write(false);

    // --- Write end-of-stream flags to stop the SHAKE kernel ---
    endMsgLenStrm.write(true); // This is the end of all messages
    endOutLenStrm.write(true);

    // --- Call the SHAKE kernel ---
    // This function will block until all streams are processed.
    // It writes its output directly to ch2_strm.
    xf::security::shake_extensible(
        msgStrm, msgLenStrm, endMsgLenStrm,
        outLenStrm, endOutLenStrm,
        ch2_strm, // Pipe output directly to the function's output stream
        endDigestStrm_internal // Use an internal stream for the end flag
    );

    // --- Drain the internal end-of-digest stream ---
    // We must read the final 'true' flag from the SHAKE function
    // so that it can terminate properly.
    bool done = endDigestStrm_internal.read();

}