#! /usr/bin/python3
import sys
from math import log, ceil

NEED TO PUT VALUES OF THE PARAMETERS
NEED TO ADD LAYER NUMBER IN NAME

def main(argv):

    ksize = int(argv[0])
    channels_in = int(argv[1])
    nmult = ksize*channels_in
    nbits = ceil(log(128*128*ksize+128, 2))+2

    # Start of module
    STRBUF = "module conv(en,clk,out"
    for i in range(nmult):
        STRBUF += ", in" + str(i)
    STRBUF += ");\n\tinput en, clk;\n"

    # Start of input declare
    STRBUF += "\tinput [7:0] in0"
    for i in range(1,nmult):
        STRBUF += ", in" + str(i)
    STRBUF += ";\n\toutput [7:0] out;\n\twire [15:0] pr0"
    for i in range(1,nmult):
        STRBUF += ", pr" + str(i)
    STRBUF += ";\n\treg [7:0] in0c"
    for i in range(1,nmult):
        STRBUF += ", in" + str(i) + "c"
    STRBUF += ";\n\treg [" + str(nbits-1) + ":0] sum;\n"

    # parameters
    for k in range(nmult):
        STRBUF += "\n\tparameter [7:0] w_" + str(k) + ";"
    STRBUF += "\n\tparameter [15:0] bias;"
    STRBUF += "\n"

    #multiplications
    for k in range(nmult):
        STRBUF += "\n\tassign pr" + str(k) + " = {in" + str(k) + "[7],in" + str(k) + "[7],in" + str(k) + "[7],in" + str(k) + "[7],in" + str(k) + "[7],in" + str(k) + "[7],in" + str(k) + "[7],in" + str(k) + "[7],in" + str(k) + "}*{w" + str(k) + "[7],w" + str(k) + "[7],w" + str(k) + "[7],w" + str(k) + "[7],w" + str(k) + "[7],w" + str(k) + "[7],w" + str(k) + "[7],w" + str(k) + "[7],w" + str(k) + "};"
    STRBUF += "\n"

    #always statement
    STRBUF += "\n\talways @(posedge clk) begin"

    #copies of input
    for k in range(nmult):
        STRBUF += "\n\t\tin" + str(k) + "c <=" + "in" + str(k) + ";"
    STRBUF += "\n"

    #calculate sum
    STRBUF += "\n\t\tsum = "
    for k in range(nmult):
        STRBUF += "{"
        for i in range(nbits-16):
            STRBUF += "pr" + str(k) + "[15], "
        STRBUF += "pr" + str(k) + "}+"
    STRBUF += "{"
    for i in range(nbits - 16):
        STRBUF += "bias" + str(k) + "[15], "
    STRBUF += "bias};\n"

    #clipping and relu
    STRBUF += "\n\t\t\tif(sum["+str(nbits-1)+"]==0)\n\t\t\t\tbegin\n\t\t\t\tif(sum["+str(nbits-2)+":13]!="+str(nbits-13)+"'b0)\n\t\t\t\t\tout<=8'd127;\n\t\t\t\telse\n\t\t\t\t\tbegin\n\t\t\t\t\tif(sum[5]==1)\n\t\t\t\t\t\tout<=sum[13:6]+8'd1;\n\t\t\t\t\telse\n\t\t\t\t\t\tout<=sum[13:6];\n\t\t\t\t\tend\n\t\t\t\tend\n\t\t\telse\n\t\t\t\tout<=8'd0;\n\t\t\tend\n\t\tend\nendmodule"

    #print
    print(STRBUF)


if __name__ == "__main__":
    main(sys.argv[1:])