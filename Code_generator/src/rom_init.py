#! /usr/bin/python3
import numpy as np
import sys
import adjust_weights

def dec2bin(n):
    out = ""
    if n < 0:
        out += "1"
        n += 256
    else:
        out += '0'
    x = 128
    for i in range(7):
        if n >= x:
            out += '1'
            n -= x
        else:
            out += '0'
        x /= 2
    return out

def main(argv):
    outs = np.load('./../simulation/outputs_dictionary.npy',allow_pickle=True).item()
    outs_adjusted = adjust_weights.adjust_o(outs)
    data = outs[list(outs_adjusted)[1]][18]

    n_in = int(argv[0])

    STRBUFF = "DEPTH = 1;\nWIDTH = " + str(8*n_in) + ';\n\nADDRESS_RADIX = BIN;\nDATA_RADIX = BIN;\n\nCONTENT\nBEGIN\n0  :  '
    for el in data:
        STRBUFF += dec2bin(el)
    STRBUFF += ";\nEND ;"
    print(STRBUFF)

if __name__ == "__main__":
    main(sys.argv[1:])
