#! /usr/bin/python3
import sys

def main(argv):

    ksize = int(argv[0])
    filters = int(argv[1])
    channels_in = int(argv[2])
    stride = int(argv[3])

    # Start of module
    STRBUF = "module conv_layer(en,clk"
    for f in range(channels_in):
        for k in range(ksize):
            STRBUF += ", in_" + str(f) + "_" + str(k)
    for f in range(filters):
        for k in range(ksize):
            STRBUF += ", out_" + str(f) + "_" +str(k)
    STRBUF += ");\n\tinput en, clk;\n"

    # Start of input declare
    STRBUF += "\tinput [7:0]"
    for f in range(channels_in):
        for k in range(ksize):
            STRBUF += " in_" + str(f) + "_" +str(k) + ","
    STRBUF = STRBUF[:-1]
    STRBUF += ";\n\toutput [7:0] out_0"
    for i in range(1,filters):
        STRBUF += ", out_" + str(i)
    STRBUF += ";\n"

    #instatiate conv modules
    for f in range(filters):
        STRBUF += "\n\tconv_node node" + str(f) + "(en, clk, out_" + str(f)
        for c in range(channels_in):
            for k in range(ksize):
               STRBUF += ", in_" + str(c) + "_" + str(k)
        STRBUF += ");"

    STRBUF += "\nendmodule"

    print(STRBUF)


if __name__ == "__main__":
    main(sys.argv[1:])