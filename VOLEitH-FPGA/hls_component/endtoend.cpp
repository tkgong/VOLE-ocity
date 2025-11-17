#include "defs.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "commit.h"
#include "gatebygate.h"
#include "endtoend.h"
void GenerateProof(
    hls::stream<ap_uint<1>> &root_strm,
    hls::stream<ap_uint<1>> &iv_strm,
    hls::stream<ap_uint<1>> &witness,
    hls::stream<GateInfo> &circuit,
    hls::stream<ap_uint<1>> &d_strm,
    hls::stream<ap_uint<128>> &proof_strm    
){
    #pragma HLS INTERFACE axis port=root_strm
    #pragma HLS INTERFACE axis port=iv_strm
    #pragma HLS INTERFACE axis port=witness
    #pragma HLS INTERFACE axis port=circuit
    #pragma HLS INTERFACE axis port=d_strm
    #pragma HLS INTERFACE axis port=proof_strm
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    ap_uint<128> root;
    IV iv;
    ap_uint<1> u[TOTAL_VOLE];
    ap_uint<128> V[TOTAL_VOLE];
    #pragma HLS BIND_STORAGE variable=u type=ram_2p impl=BRAM
    #pragma HLS BIND_STORAGE variable=V type=ram_2p impl=URAM
    hls::stream<ap_uint<128>> path_strm;
    ap_uint<256> hcom; 
    ap_uint<128> ch1;
    ap_uint<L> a0_tilde;
    ap_uint<L> a1_tilde;
    INPUT_STREAM: for(int i = 0; i < L; i++){
        #pragma HLS PIPELINE II=1
        root[i] = root_strm.read();
        iv[i] = iv_strm.read(); 
    }
    VOLECommit(root, iv , hcom, u, V, path_strm, ch1);
    ProverCircuitEval(ch1, u, V, witness,circuit, d_strm,a0_tilde,a1_tilde, proof_strm);
    proof_strm.write(hcom.range(127,0));
    proof_strm.write(hcom.range(255,128));
    TRANSFER_STREAM: for(int i = 0; i < TAU*PATH_LEN; i++){
        proof_strm.write(path_strm.read());
    }
    proof_strm.write(a0_tilde);
    proof_strm.write(a1_tilde);

}