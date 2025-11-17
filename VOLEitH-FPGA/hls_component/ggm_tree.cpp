#include <iostream>
#include <ap_int.h>
#include <chrono>
#include "hls_stream.h"
#include "defs.h"
#include "PRG.h"
#include "shake.h"
#include "fiat_shamir.h"
void tree_expansion(
    ap_uint<128> &root,
    IV &iv,
    hls::stream<ap_uint<128>> &k_strm,  // Fixed: should be stream, not reference
    hls::stream<ap_uint<128>> &leaf_strm
){
    // Buffers to hold current level nodes (ping-pong between levels)
    ap_uint<128> parent_buf[1<<K];
    //#pragma HLS ARRAY_PARTITION variable=parent_buf cyclic factor=2
    
    // Write root to stream and initialize buffer
    k_strm.write(root);
    parent_buf[0] = root;
    for(int d = 0; d < K; d++){
        int num_parents = 1 << d; 
        
        for(int i = 0; i < num_parents; i++){
            #pragma HLS PIPELINE OFF
            ap_uint<128> left, right;
            PRG(iv, parent_buf[i], left, right);
            k_strm.write(left);
            k_strm.write(right);
            if(d == K-1){
                leaf_strm.write(left);
                leaf_strm.write(right);
            } else {
                // Store children for next level processing
                parent_buf[2*i] = left;
                parent_buf[2*i + 1] = right;
            }
        }
    }
}
void seed_gen(
    IV &iv,
    hls::stream<ap_uint<128>> &com_strm,
    hls::stream<ap_uint<128>> &leaf_strm,
    hls::stream<ap_uint<128>> &seed_strm,
    hls::stream<ap_uint<128>> &com_strm_cp

){
    const int N = 1<<K;
    for(int i = 0; i < N; i++){
        #pragma HLS PIPELINE OFF
        ap_uint<128> sd_i; 
        ap_uint<128> com_i;
        ap_uint<128> leaf = leaf_strm.read();
        h0(leaf, iv, sd_i, com_i);
        seed_strm.write(sd_i);
        com_strm.write(com_i);
        com_strm_cp.write(com_i);
    }
}
void key_to_mem(
    hls::stream<ap_uint<128>> &k_strm,
    ap_uint<128> k[2*(1<<K)-1]
){
    const int N = 2*(1<<K)-1;
    for(int i = 0; i < N; i++){
        k[i] = k_strm.read();
    }
}
void com_to_mem(
    hls::stream<ap_uint<128>> &com_strm,
    ap_uint<128> coms[1<<K]
){
    const int N = 1<<K;
    for(int i =0; i < N; i++){
        coms[i] = com_strm.read();
    }
}



void ggm_large(
    ap_uint<128> &root,
    IV &iv,
    ap_uint<128> keys[2*(1<<K)-1],
    ap_uint<128> coms[1<<K],
    hls::stream<ap_uint<128>> &seed_strm,
    hls::stream<ap_uint<128>> &com_strm
){
    #pragma HLS DATAFLOW
    
    hls::stream<ap_uint<128>> leaf_strm;
    hls::stream<ap_uint<128>> k_strm;
    hls::stream<ap_uint<128>> com_strm_cp;
    #pragma HLS STREAM variable=leaf_strm depth=2
    #pragma HLS STREAM variable=k_strm depth=2
    #pragma HLS STREAM variable=com_strm depth=2
    tree_expansion(root, iv, k_strm,leaf_strm);
    seed_gen(iv, com_strm,leaf_strm,seed_strm, com_strm_cp);
    key_to_mem(k_strm, keys);
    com_to_mem(com_strm_cp, coms);
}


void ggm_small(
    ap_uint<128> &root,
    IV &iv,
    ap_uint<128> keys[2*(1<<K)-1],
    ap_uint<128> coms[1<<K],
    hls::stream<ap_uint<128>> &seed_strm,
    hls::stream<ap_uint<128>> &com_strm
){
    ap_uint<128> seeds[1<<K];
    #pragma HLS ARRAY_PARTITION variable=keys complete
    #pragma HLS ARRAY_PARTITION variable=seeds complete
    #pragma HLS ARRAY_PARTITION variable=coms complete
    #pragma HLS INLINE off
    
    // Initialize root
    keys[0] = root;
    
    // Expand the GGM tree directly using keys array
    LEVEL_LOOP:
    for(int d = 0; d < K; d++){
        #pragma HLS UNROLL
        
        int num_parents = 1 << d;
        int parent_start = (1 << d) - 1;
        int child_start = (1 << (d+1)) - 1;
        
        EXPAND_LOOP:
        for(int i = 0; i < num_parents; i++){
            #pragma HLS UNROLL
            int parent_idx = parent_start + i;
            int left_idx = child_start + 2*i;
            int right_idx = left_idx + 1;
            
            // Expand parent node directly to children in keys array
            PRG(iv, keys[parent_idx], keys[left_idx], keys[right_idx]);
        }
    }
    
    // Hash leaf nodes to produce seeds and commitments
    // Leaf nodes are at indices [(1<<K)-1] to [2*(1<<K)-2]
    HASH_LOOP:
    for(int i = 0; i < (1<<K); i++){
        #pragma HLS PIPELINE OFF
        //#pragma HLS UNROLL
        int leaf_idx = (1<<K) - 1 + i;
        h0(keys[leaf_idx], iv, seeds[i], coms[i]);
    }
    
    // Stream out results
    for(int i = 0; i < (1<<K); i++){
        #pragma HLS PIPELINE II=1
        seed_strm.write(seeds[i]);
        com_strm.write(coms[i]);
    }
}

void expand_roots(
    ap_uint<128> &root,
    IV &iv,
    hls::stream<ap_uint<128>> &root_strm
){
    ROOT_GEN:
    for(int i = 0; i < TAU; i += 2){
        #pragma HLS PIPELINE OFF
        ap_uint<128> left, right; 
            IV cur_iv = iv + 2*i; 
            PRG(cur_iv, root, left, right);
            root_strm.write(left);
            root_strm.write(right);
        }
}

void ggm_build(
    hls::stream<ap_uint<128>> &root_strm,
    IV &iv,
    ap_uint<128> ggm_keys[TAU][2*(1<<K)-1],
    ap_uint<128> coms[TAU][1<<K],
    hls::stream<ap_uint<128>> &seeds_strm, 
    hls::stream<ap_uint<128>> &com_strm
){
  
    
    for(int t = 0; t < TAU; t++){
        #pragma HLS PIPELINE II=10
        ap_uint<128> root;
        root = root_strm.read();
        //ggm_large(root, iv, ggm_keys[t],coms[t],seeds_strm, com_strm);
        ggm_small(root, iv, ggm_keys[t], coms[t], seeds_strm, com_strm); 
    }

}

void ggm_tree(
    ap_uint<128> &root,
    IV &iv,
    ap_uint<128> ggm_keys[TAU][2*(1<<K)-1],
    ap_uint<128> coms[TAU][1<<K],
    hls::stream<ap_uint<128>> &seed_strm,
    ap_uint<256> &hcom
    //hls::stream<ap_uint<256>> &h_strm 
){
    //#pragma HLS DATAFLOW
    hls::stream<ap_uint<128>> root_strm;
    #pragma HLS STREAM variable=root_strm depth=4
    hls::stream<ap_uint<128>> com_strm;
    #pragma HLS STREAM variable=com_strm depth=4
    hls::stream<ap_uint<256>> h_strm;
    #pragma HLS STREAM variable=h_strm depth =4
    expand_roots(root, iv, root_strm);
    ggm_build(root_strm, iv, ggm_keys, coms, seed_strm, com_strm);
    H(com_strm, h_strm);
    H_COM(h_strm,hcom);
}

void VC_Open(
    ap_uint<K> open_idx[TAU],
    ap_uint<128> ggm_keys[TAU][2*(1<<K)-1],
    ap_uint<128> ggm_coms[TAU][1<<K],
    hls::stream<ap_uint<128>> &path_strm
){
    for(int idx = 0; idx < TAU*PATH_LEN; idx++){
        #pragma HLS PIPELINE II=1
        int i = idx / PATH_LEN;
        int pos = idx % PATH_LEN;
        if(pos == 0){
            path_strm.write(ggm_keys[i][0]);
        } else if(pos <= K){
            int d = pos;
            int node_idx_d = open_idx[i] >> (K - d);
            int sibling_idx_d = node_idx_d ^ 1;
            int level_idx = (1 << d) - 1;
            int sibling_idx = level_idx + sibling_idx_d;
            path_strm.write(ggm_keys[i][sibling_idx]);
        } else {
            path_strm.write(ggm_coms[i][open_idx[i]]);
        }
    }
}


void ggm_top(
    ap_uint<128> &root,
    IV &iv,
    hls::stream<ap_uint<128>> &seed_strm,
    ap_uint<256> &hcom,
    hls::stream<ap_uint<128>> &path_strm,
    ap_uint<128> &ch1
){

    const int KEY_SIZE = 2*(1<<K)-1;
    const int COM_SIZE = 1<<K;
    ap_uint<128> ggm_keys[TAU][KEY_SIZE];
    ap_uint<128> coms[TAU][COM_SIZE];
#pragma HLS ARRAY_PARTITION variable=ggm_keys complete
#pragma HLS ARRAY_PARTITION variable=coms complete
// #pragma HLS BIND_STORAGE variable=ggm_keys type=ram_2p impl=bram
// #pragma HLS BIND_STORAGE variable=coms type=ram_2p impl=bram
    #pragma HLS ALLOCATION instances=xf::security::shake256 limit=1 function

    ap_uint<K> chal[TAU];
    ggm_tree(root, iv, ggm_keys, coms, seed_strm, hcom);
    //ggm_tree(root, iv, ggm_keys, coms, seed_strm, hcom);
    chal1(hcom, iv, chal, ch1);
    VC_Open(chal, ggm_keys, coms, path_strm);
}

void ggm_reconstruct(
    hls::stream<ap_uint<128>> &path_strm,
    ap_uint<K> open_idx[TAU],
    IV &iv,
    ap_uint<256> &hcom_reconstructed
){
    ap_uint<256> h_reconstructed[TAU];
    // Process each tree
    TREE_LOOP:
    for(int tree = 0; tree < TAU; tree++){
        
        // Storage for tree nodes and commitments
        ap_uint<128> nodes[2*(1<<K)-1];
        ap_uint<128> coms_recon[1<<K];
        
        // Initialize to zero to track which nodes we have
        for(int i = 0; i < 2*(1<<K)-1; i++){
            nodes[i] = 0;
        }
        
        // Read path: [root, sibling_L1, sibling_L2, ..., sibling_LK, com_at_opened_leaf]
        ap_uint<128> path[PATH_LEN];
        for(int p = 0; p < PATH_LEN; p++){
            path[p] = path_strm.read();
        }
        
        // Start with root
        nodes[0] = path[0];
        
        // Reconstruct tree by expanding nodes on the path and placing siblings
        LEVEL_RECON:
        for(int d = 0; d < K; d++){
            int level_start = (1 << d) - 1;
            int child_start = (1 << (d+1)) - 1;
            
            // Determine which node we're at in this level (on path to opened leaf)
            int node_idx_at_d = open_idx[tree] >> (K - d);
            int array_idx = level_start + node_idx_at_d;
            
            // Expand the node on the path
            ap_uint<128> left, right;
            PRG(iv, nodes[array_idx], left, right);
            
            // Determine which child is on path and which is sibling
            int child_idx_at_next_level = open_idx[tree] >> (K - d - 1);
            bool path_goes_left = (child_idx_at_next_level % 2 == 0);
            
            int left_array_idx = child_start + 2*node_idx_at_d;
            int right_array_idx = child_start + 2*node_idx_at_d + 1;
            
            if(path_goes_left){
                // Path goes LEFT, so RIGHT is the sibling
                nodes[left_array_idx] = left;           // On path (computed)
                nodes[right_array_idx] = path[d+1];     // Sibling (from path)
            } else {
                // Path goes RIGHT, so LEFT is the sibling
                nodes[left_array_idx] = path[d+1];      // Sibling (from path)
                nodes[right_array_idx] = right;         // On path (computed)
            }
        }
        
        // Now expand ALL nodes we have to fill in the entire tree
        FULL_EXPAND:
        for(int d = 0; d < K; d++){
            int num_nodes = 1 << d;
            int level_start = (1 << d) - 1;
            int child_start = (1 << (d+1)) - 1;
            
            for(int i = 0; i < num_nodes; i++){
                int array_idx = level_start + i;
                // Only expand if we have this node
                if(nodes[array_idx] != 0 || array_idx == 0){
                    ap_uint<128> left, right;
                    PRG(iv, nodes[array_idx], left, right);
                    nodes[child_start + 2*i] = left;
                    nodes[child_start + 2*i + 1] = right;
                }
            }
        }
        
        // Generate commitments for all leaves
        int leaf_start = (1 << K) - 1;
        GEN_COMS:
        for(int i = 0; i < (1<<K); i++){
            if(i == open_idx[tree]){
                // Opened leaf - use provided commitment
                coms_recon[i] = path[K+1];
            } else {
                // Other leaves - compute commitment
                ap_uint<128> seed_dummy, com;
                h0(nodes[leaf_start + i], iv, seed_dummy, com);
                coms_recon[i] = com;
            }
        }
        
        // Hash all commitments to get final digest
        hls::stream<ap_uint<64>> msgStrm("msgStrm_H");
        hls::stream<ap_uint<128>> msgLenStrm("msgLenStrm_H");
        hls::stream<bool> endMsgLenStrm("endMsgLenStrm_H");
        hls::stream<ap_uint<256>> digestStrm("digestStrm_H");
        hls::stream<bool> endDigestStrm("endDigestStrm_H");
        
        #pragma HLS STREAM variable=msgStrm depth=4
        #pragma HLS STREAM variable=msgLenStrm depth=2
        #pragma HLS STREAM variable=endMsgLenStrm depth=2
        #pragma HLS STREAM variable=digestStrm depth=4
        #pragma HLS STREAM variable=endDigestStrm depth=4
        
        endMsgLenStrm.write(false);
        
        // Write all commitments in order
        for(int i = 0; i < (1<<K); i++){
            msgStrm.write(coms_recon[i].range(63, 0));
            msgStrm.write(coms_recon[i].range(127, 64));
        }
        
        msgLenStrm.write((1<<K) * 16);
        endMsgLenStrm.write(true);
        
        xf::security::shake256(msgStrm, msgLenStrm, endMsgLenStrm, 
                              digestStrm, endDigestStrm);
        
        ap_uint<256> digest = digestStrm.read();
        
        h_reconstructed[tree] = digest;
    }

    hls::stream<ap_uint<256>> hr_strm;
    for(int i = 0; i < TAU; i++){
        hr_strm.write(h_reconstructed[i]);
    }

    H_COM(hr_strm, hcom_reconstructed);
}