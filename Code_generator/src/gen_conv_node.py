#! /usr/bin/python3
import sys

NEED TO ADD LAYER NUMBER IN NAME


def main(argv):

    ksize = int(argv[0])
    filters = int(argv[1])
    channels_in = int(argv[2])

    # Start of module
    STRBUF = "module conv_node(en,clk,out_0"
    for i in range(1,filters):
        STRBUF += ", out_" + str(i)
    for f in range(channels_in):
        for k in range(ksize):
            STRBUF += ", in_" + str(f) + "_" +str(k)
    STRBUF += ");\n\tinput en, clk;\n"

    # Start of input declare
    STRBUF += "\tinput [7:0]"
    for f in range(channels_in):
        for k in range(ksize):
            STRBUF += " in_" + str(f) + "_" +str(k) + ","
    STRBUF = STRBUF[:-1]
    STRBUF += ";\n\toutput out_0"
    for i in range(1,filters):
        STRBUF += ", out_" + str(i)
    STRBUF += ";\n"

    #instatiate conv modules
    for f in range(filters):
        STRBUF += "\n\tconv c" + str(f) + "(en, clk, out_" + str(f)
        for f_in in range(channels_in):
            for k in range(ksize):
                STRBUF += ", in_" + str(f_in) + "_" + str(k)
        STRBUF += ");"

    STRBUF += "\nendmodule"

    #print
    print(STRBUF)


if __name__ == "__main__":
    main(sys.argv[1:])