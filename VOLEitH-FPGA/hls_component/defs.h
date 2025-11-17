#ifndef DEFS_H_ // A unique name for the guard, typically based on the filename.
#define DEFS_H_
#include <ap_int.h>
#define GENERATOR 2
#define LAMBDA 128
#define L 128
#define TAU 64
#define K 2
#define PATH_LEN (K+2)
#define NUM_AND_GATES 38400  //38400 //22573
#define NUM_XOR_GATES 153686//153686 //112500
#define NUM_GATES 192086 //192086 //135073
#define NUM_INPUT_WIRES 1601//1601 //769
#define NUM_TOTAL_WIRES 385773 //385773 //270915
#define ELL 40001 //40001 //23342
#define ELL_HAT 40273  //40273 //23614
#define VOLE_EXTENSION 272
#define TOTAL_VOLE 386045//386045 //271187
#define BUS_WIDTH 256
typedef ap_uint<128> IV;

typedef ap_uint<19> WIRE_ID;
struct GateInfo {
    ap_uint<1> is_and;  // 0 for XOR, 1 for AND
    WIRE_ID in1;
    WIRE_ID in2;
    WIRE_ID out;
};

#endif // DEFS_H_