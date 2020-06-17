#! /usr/bin/python3
import numpy as np
import sys
import adjust_weights

def dec2bin(n):
    out = ""
    if n < 0:
        out += "1"
        n += 128
    else:
        out += '0'
    x = 64
    for i in range(7):
        if n >= x:
            out += '1'
            n -= x
        else:
            out += '0'
        x /= 2
    return out

def main(argv):
    inputs = int(argv[1])
    outputs = int(argv[2])
    layer_ind = int(argv[0])

    weights = np.load('./../simulation/weight_dictionary.npy',allow_pickle=True).item()
    weights_adjusted = adjust_weights.adjust_w(weights)
    data = weights_adjusted[list(weights_adjusted)[layer_ind-1]]

    biases = np.load('./../simulation/biases_dictionary.npy', allow_pickle=True).item()
    biases_adjusted = adjust_weights.adjust_b(biases)
    datab = biases_adjusted[list(biases_adjusted)[layer_ind-1]]

    STRBUFF = "DEPTH = {};\nWIDTH = {};\n\nADDRESS_RADIX = DEC;\nDATA_RADIX = BIN;\n\nCONTENT\nBEGIN".format(outputs, 8*inputs+8)
    for i in range(outputs):
        STRBUFF += '\n' + str(i) + '  :  '
        for el in data:
            STRBUFF += dec2bin(el[i])
        STRBUFF += dec2bin(datab[i]/64)
        STRBUFF += ';'
    STRBUFF += "\nEND ;"
    print(STRBUFF)

if __name__ == "__main__":
    main(sys.argv[1:])
