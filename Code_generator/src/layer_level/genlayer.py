#! /usr/bin/python3
import numpy as np
import sys
import struct


def main(argv):
    inputs = int(argv[0])
    outputs = int(argv[1])
    layer_ind = int(argv[2])

    STRBUF = "module layer_"+ str(layer_ind) + "(reset,clk,"
    for i in range(1, outputs+1):
        STRBUF += "N" + str(i) + "x,"
    for j in range(inputs):
        STRBUF += "R" + str(j) + "x"
        if j != inputs-1:
            STRBUF += ","
        else:
            STRBUF += ");"
    STRBUF += "\n" + "input reset; \n" + "input clk; \n" + "output [7:0] "
    for i in range(1, outputs+1):
        STRBUF += "N" + str(i) + "x"
        if i != outputs:
            STRBUF += ","
        else:
            STRBUF += ";"
    STRBUF += "\ninput [7:0]"
    for j in range(inputs):
        STRBUF += "R" + str(j) + "x"
    if j != inputs-1:
        STRBUF += ","
    else:
        STRBUF += ";"
    STRBUF += "\n\n";
    for i in range(outputs):
        STRBUF += "node-" + str(layer_ind) + "-" + str(i) + " node-" + str(layer_ind) + "-" + str(i) + "( \n"
    for j in range(inputs):
        STRBUF += ".A" + str(j) + "x(R" + str(j) + "x), \n"
    STRBUF += ".clk(clk), \n" + ".reset(reset), \n" + ".N" + str(i) + "x(N" + str(i) + "x) \n" + "); \n" + "endmodule"
    print(STRBUF)

if __name__ == "__main__":
    main(sys.argv[1:])