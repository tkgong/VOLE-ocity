
#ifndef ENCRYPT_H_ // A unique name for the guard, typically based on the filename.
#define ENCRYPT_H_
#include <ap_int.h>
void encrypt(ap_uint<128> in, ap_uint<128> key, ap_uint<128>& out);
#endif