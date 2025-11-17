
#include "defs.h"
#include "vole.h"
#include "PRG.h"
#include "hls_stream.h"
#include "ap_int.h"
void expand_seed(
    IV &iv,
    hls::stream<ap_uint<128>> &seed_strm,
    hls::stream<ap_uint<BUS_WIDTH>> r_strm[1<<K]
){
    #pragma HLS INLINE OFF
    const int N = 1<<K;
    const int STEP = (ELL_HAT + BUS_WIDTH-1)/ BUS_WIDTH;
    
    for(int t = 0; t < TAU; t++){
        ap_uint<128> sd[N];
        // Read all seeds FIRST (outside the pipelined loop)
        READ_SEEDS: for(int i = 0; i < N; i++){
            sd[i]=seed_strm.read();
        }
        
        // Now pipeline the chunk processing WITHOUT conditional reads
        PROCESS_CHUNKS: for(int s = 0; s < STEP; s++){
            #pragma HLS PIPELINE II=1
            for(int i = 0; i < N; i++){
                ap_uint<128> r0,r1;
                IV cur_iv = iv + 2*s; 
                PRG(cur_iv, sd[i], r0, r1);
                    ap_uint<BUS_WIDTH> r;
                    r.range(127, 0) = r0;
                    r.range(255, 128) = r1;
                    r_strm[i].write(r);
            }
        }
    }
}


void build_VOLE(
    hls::stream<ap_uint<BUS_WIDTH>> r_strm[1<<K],
    hls::stream<ap_uint<BUS_WIDTH>> &u_strm,
    hls::stream<ap_uint<BUS_WIDTH>> v_strm[TAU][K]
){
    const int N = 1<<K;
    const int STEP = (ELL_HAT+BUS_WIDTH-1)/BUS_WIDTH;
    #pragma HLS INLINE OFF
    PROCESS_BATCHES: for(int t = 0; t < TAU; t++){
        PROCESS_CHUNKS: for(int s = 0; s < STEP; s++){
            #pragma HLS PIPELINE II=1
            
            ap_uint<BUS_WIDTH> r_t[K+1][N];
            ap_uint<BUS_WIDTH> v[K];
            #pragma HLS ARRAY_PARTITION variable=r_t complete dim=0
            #pragma HLS ARRAY_PARTITION variable=v complete dim=0
            
            INIT_V: for(int level = 0; level < K; level++){
                #pragma HLS UNROLL
                v[level] = 0;
            }
            
            READ_LEAVES: for(int i = 0; i < N; i++){
                #pragma HLS UNROLL
                r_t[0][i] = r_strm[i].read();
            }
            
            BUILD_LEVELS: for(int level = 0; level < K; level++){
                
                int nodes_at_level = N >> (level + 1);
                PROCESS_NODES: for(int i = 0; i < nodes_at_level; i++){
                    v[level] ^= r_t[level][2*i+1];
                    r_t[level+1][i] = r_t[level][2*i] ^ r_t[level][2*i+1];
                }
            }
            
            WRITE_V: for(int level = 0; level < K; level++){
                #pragma HLS UNROLL
                v_strm[t][level].write(v[level]);
            }
            
            if(t == 0){
                u_strm.write(r_t[K][0]);
            }
        }
    }
}

void mem_transfer(
    hls::stream<ap_uint<BUS_WIDTH>> &u_strm,
    hls::stream<ap_uint<BUS_WIDTH>> v_strm[TAU][K],
    ap_uint<1> u[TOTAL_VOLE],
    ap_uint<128> V[TOTAL_VOLE]  
){      
    #pragma HLS INLINE OFF

    #pragma HLS BIND_STORAGE variable=u type=ram_2p impl=BRAM
    #pragma HLS BIND_STORAGE variable=V type=ram_2p impl=URAM

    const int STEP = (ELL_HAT+BUS_WIDTH-1)/BUS_WIDTH;
    for(int s=0; s< STEP; s++){
        ap_uint<BUS_WIDTH> u_t = u_strm.read();
        #pragma HLS ARRAY_PARTITION variable=u type=cyclic factor=2 
        UNPACK_U: for(int b = 0; b< BUS_WIDTH; b++){
            #pragma HLS UNROLL factor=2
            int idx = s*BUS_WIDTH+b;
            if(idx < ELL_HAT){
                u[idx] = u_t[b];
            }
        }
        ap_uint<BUS_WIDTH> v_t[TAU][K];
        #pragma HLS ARRAY_PARTITION variable=v_t complete dim = 0
        READ_V:for(int i = 0; i < TAU; i++){
            #pragma HLS UNROLL
            for(int j=0; j<K;j++){
                #pragma HLS UNROLL
                v_t[i][j] = v_strm[i][j].read();
            }
        }
        WRITE_V: for(int b=0;b<256;b++){
            #pragma HLS UNROLL factor=2
            ap_uint<128> v_pack=0;
            for(int i = 0; i<TAU;i++){
                #pragma HLS UNROLL
                for(int j = 0; j< K;j++){
                    #pragma HLS UNROLL
                    int idx = i*K+j;
                    v_pack[idx] = v_t[i][j][b];
                }
            }
            int v_idx = s*BUS_WIDTH+b;
            if(v_idx < ELL_HAT){
                V[v_idx] = v_pack;
            }
        }
    }
}

void ConvertToVOLE(
    IV &iv,
    hls::stream<ap_uint<128>> &seed_strm, 
    ap_uint<1> u[TOTAL_VOLE],
    ap_uint<128> V[TOTAL_VOLE]
){
    #pragma HLS INLINE OFF
    #pragma HLS BIND_STORAGE variable=u type=ram_2p impl=BRAM
    #pragma HLS BIND_STORAGE variable=V type=ram_2p impl=URAM
    #pragma HLS DATAFLOW
    const int N = 1<<K;
    hls::stream<ap_uint<BUS_WIDTH>> r_strm[N];
    #pragma HLS STREAM variable=r_strm depth=2
    expand_seed(iv, seed_strm,r_strm);
    hls::stream<ap_uint<BUS_WIDTH>> u_strm;
    hls::stream<ap_uint<BUS_WIDTH>> v_strm[TAU][K];
    #pragma HLS STREAM variable=v_strm depth=2
    #pragma HLS STREAM variable=u_strm depth=2
    build_VOLE(r_strm, u_strm, v_strm);
    mem_transfer(u_strm, v_strm,u, V);
}
