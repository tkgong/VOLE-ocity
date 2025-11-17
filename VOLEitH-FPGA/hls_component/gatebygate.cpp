#include "ap_int.h"
#include "hls_stream.h"
#include "defs.h"
#include "fiat_shamir.h"
void gf128_clmul(ap_uint<L> a, ap_uint<L> b, ap_uint<2*L> &result) {
    #pragma HLS INLINE off
    #pragma HLS PIPELINE
    
    result = 0;
    for(int i = 0; i < L; i++) {
        #pragma HLS UNROLL factor=8
        if(b[i]) {
            result ^= ((ap_uint<2*L>)a) << i;  // XOR, no carries!
        }
    }
}
ap_uint<L> gf128_reduce(ap_uint<2*L> product) {
    #pragma HLS INLINE
    
    ap_uint<L> low = product.range(L-1, 0);
    ap_uint<L> high = product.range(2*L-1, L);
    
    // Parallel shifts (no conditionals for pipeline)
    ap_uint<L+7> r1 = ((ap_uint<L+7>)high) << 7;
    ap_uint<L+7> r2 = ((ap_uint<L+7>)high) << 2;
    ap_uint<L+7> r3 = ((ap_uint<L+7>)high) << 1;
    ap_uint<L+7> r4 = high;
    
    ap_uint<L+7> temp = r1 ^ r2 ^ r3 ^ r4;
    
    // Reduce overflow
    ap_uint<L> mid = temp.range(L-1, 0);
    ap_uint<7> overflow = temp.range(L+6, L);
    
    ap_uint<L> o1 = ((ap_uint<L>)overflow) << 7;
    ap_uint<L> o2 = ((ap_uint<L>)overflow) << 2;
    ap_uint<L> o3 = ((ap_uint<L>)overflow) << 1;
    ap_uint<L> o4 = overflow;
    
    return low ^ mid ^ o1 ^ o2 ^ o3 ^ o4;
}

ap_uint<L> gf128_multiply(ap_uint<L> a, ap_uint<L> b) {
    #pragma HLS INLINE off
    #pragma HLS PIPELINE
    
    ap_uint<2*L> product;
    gf128_clmul(a, b, product);
    return gf128_reduce(product);
}

void combineVOLEs(ap_uint<128> vals[VOLE_EXTENSION], ap_uint<L> &result){
    #pragma HLS INLINE OFF
    ap_uint<L> acc = 0;
    ap_uint<L> power = 1;
    
    for(int i = 0; i < VOLE_EXTENSION; i++){
        #pragma HLS PIPELINE OFF
        acc ^= gf128_multiply(vals[i], power);
        power = gf128_multiply(power, GENERATOR);
    }
    result = acc;
}
void compute_mask(
    ap_uint<1> u[TOTAL_VOLE],
    ap_uint<128> V[TOTAL_VOLE],
    ap_uint<L> &u_mask,
    ap_uint<L> &v_mask
){
    #pragma HLS BIND_STORAGE variable=u type=ram_2p impl=bram
    #pragma HLS BIND_STORAGE variable=V type=ram_2p impl=uram

    #pragma HLS INLINE off
    ap_uint<128> ur[VOLE_EXTENSION];
    ap_uint<128> Vr[VOLE_EXTENSION];
    for(int i = 0; i < VOLE_EXTENSION; i++){
        #pragma HLS PIPELINE II =1
        ur[i] = u[ELL+i]? 1:0;
        Vr[i] = V[ELL+i];
    }
    combineVOLEs(ur, u_mask);
    combineVOLEs(Vr, v_mask);
    
}
void EvalCircuit(
    ap_uint<1> u[TOTAL_VOLE],
    ap_uint<128> V[TOTAL_VOLE],
    hls::stream<ap_uint<1>> &witness,
    hls::stream<GateInfo> &circuit,
    hls::stream<ap_uint<1>> &d_strm,
    hls::stream<ap_uint<1>> &d_strm_cp,
    hls::stream<ap_uint<2*L>> &a0_strm,
    hls::stream<ap_uint<L>> &a1_strm
){
    #pragma HLS INLINE OFF
  ap_uint<1> extended_witness[TOTAL_VOLE];

  #pragma HLS BIND_STORAGE variable=u type=ram_2p impl=bram
  #pragma HLS BIND_STORAGE variable=V type=ram_2p impl=uram
  for(int i = 0; i < NUM_INPUT_WIRES;i++){
    #pragma HLS PIPELINE II=1
    extended_witness[i] = witness.read();
    ap_uint<1> d = extended_witness[i] - u[i];
    d_strm.write(d);
    d_strm_cp.write(d);
  }  
  for(int i = 0; i < NUM_GATES; i++){
    #pragma HLS PIPELINE II=3
    GateInfo gate=circuit.read();
    WIRE_ID in1 = gate.in1;
    WIRE_ID in2 = gate.in2;
    WIRE_ID out = gate.out;
    if(gate.is_and){
        extended_witness[out] = extended_witness[in1] & extended_witness[in2];
        ap_uint<1> d =extended_witness[out]-u[out];
        d_strm.write(d);
        d_strm_cp.write(d);
        ap_uint<2*L> a0;
        gf128_clmul(V[in1], V[in2], a0);
        ap_uint<L> a1 = extended_witness[in1] * V[in2] + extended_witness[in2] * V[in1] - V[out];
        a0_strm.write(a0);
        a1_strm.write(a1); 
    } else {
        extended_witness[out] = extended_witness[in1] ^ extended_witness[in2]; 
        u[out] = u[in1] ^ extended_witness[in2];
        V[out] = V[in1] ^ V[in2];
    }
  }

}

void ToField(
    hls::stream<ap_uint<2*L>> &a0_strm,
    hls::stream<ap_uint<L>> &a1_strm,
    hls::stream<ap_uint<2*L>> &a_strm
){
    #pragma HLS INLINE OFF
    for(int i = 0; i < NUM_AND_GATES; i++){
        #pragma HLS PIPELINE II=1
        ap_uint<L> a1 = a1_strm.read();
        ap_uint<2*L> a0 = a0_strm.read();
        ap_uint<2*L> a;
        a.range(127,0) = gf128_reduce(a0);
        a.range(255,128) = a1;  // Fixed: was 255,0
        a_strm.write(a);        // Fixed: was .read()
    }
}

void aggregate_coef(
    ap_uint<L> &u_mask,
    ap_uint<L> &v_mask,
    hls::stream<ap_uint<2*L>> &a_strm,
    hls::stream<ap_uint<L>> &ch2_strm,
    ap_uint<L> &a0_tilde,
    ap_uint<L> &a1_tilde,
    hls::stream<ap_uint<L>> &proof_strm
){
    #pragma HLS INLINE off
    
    ap_uint<L> agg_a0 = 0;
    ap_uint<L> agg_a1 = 0;
    
    for(int i = 0; i < NUM_AND_GATES; i++){
        #pragma HLS PIPELINE II=5
        
        // Read from streams
        ap_uint<2*L> a = a_strm.read();
        ap_uint<L> chi = ch2_strm.read();
        proof_strm.write(chi);
        // Extract a0 (lower 128 bits) and a1 (upper 128 bits)
        ap_uint<L> a0 = a.range(L-1, 0);
        ap_uint<L> a1 = a.range(2*L-1, L);
        
        // Weighted accumulation in GF(2^128)
        // agg_a0 += chi * a0
        // agg_a1 += chi * a1
        agg_a0 ^= gf128_multiply(chi, a0);
        agg_a1 ^= gf128_multiply(chi, a1);
    }
    
    // Output final aggregates
    a0_tilde = agg_a0 ^ v_mask;
    a1_tilde = agg_a1 ^u_mask;
}

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
){
    #pragma HLS INLINE OFF
    #pragma HLS DATAFLOW
    #pragma HLS BIND_STORAGE variable=u type=ram_2p impl=BRAM
    #pragma HLS BIND_STORAGE variable=V type=ram_2p impl=URAM

    hls::stream<ap_uint<L*2>> a0_strm;
    hls::stream<ap_uint<L>> a1_strm;
    hls::stream<ap_uint<1>> d_strm_cp;
    hls::stream<ap_uint<128>> ch2_strm;
    hls::stream<ap_uint<L*2>> a_strm;
    ap_uint<L> u_mask;
    ap_uint<L> v_mask;
    compute_mask(u, V, u_mask,v_mask);
    EvalCircuit(u, V, witness, circuit,d_strm,d_strm_cp ,a0_strm,a1_strm);
    ToField(a0_strm, a1_strm, a_strm); 
    chal2(d_strm_cp, ch1, ch2_strm);
    aggregate_coef(u_mask, v_mask, a_strm, ch2_strm, a0_tilde, a1_tilde, proof_strm);
}