#! /usr/bin/python3
import sys

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
    STRBUF += "\n\t" + "input reset, clk; \n\t" + "output [7:0] "
    for i in range(1, outputs+1):
        STRBUF += "N" + str(i) + "x"
        if i != outputs:
            STRBUF += ","
        else:
            STRBUF += ";"
    STRBUF += "\n\tinput [7:0] "
    for j in range(inputs):
        STRBUF += "R" + str(j) + "x"
        if j != inputs-1:
            STRBUF += ","
        else:
            STRBUF += ";"
    STRBUF += "\n\n";
    for i in range(outputs):
        STRBUF += "\tnode_" + str(layer_ind) + "_" + str(i+1) + " node_" + str(layer_ind) + "_" + str(i+1) + "( \n\t"
        for j in range(inputs):
            STRBUF += "\t.A" + str(j) + "x(R" + str(j) + "x), \n\t"
        STRBUF += "\t.clk(clk), \n\t" + "\t.reset(reset), \n\t" + "\t.N" + str(i+1) + "x(N" + str(i+1) + "x) \n\t" + "); \n"
    STRBUF += "endmodule"
    print(STRBUF)

if __name__ == "__main__":
    main(sys.argv[1:])
