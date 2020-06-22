#! /usr/bin/python3
import numpy as np
import sys
import struct
import adjust_weights

def main(argv):
    w_d = np.load("./../simulation/weight_dictionary.npy", allow_pickle=True).item()
    b_d = np.load("./../simulation/biases_dictionary.npy", allow_pickle=True).item()

    weights_dict = adjust_weights.adjust_w(w_d)
    biases_dict = adjust_weights.adjust_b(b_d)

    idx1 = int(argv[0])
    layerW = weights_dict[list(weights_dict)[idx1-1]]
    #layerB = biases_dict[list(biases_dict)[idx1-1]]
    LISTSIZE = layerW.shape[0]
    last_layer = int(argv[1])

    # Start of module
    STRBUF = "module node_" + str(idx1) + f"(clk,reset,out,"
    for i in range(LISTSIZE):
        STRBUF += "A" + str(i) + "x,"
    for i in range(LISTSIZE):
        STRBUF += "w" + str(i) + "x,"
    STRBUF += " bias);\n\tinput clk;\n\tinput reset;\n\tinput [7:0] bias;\n"

    # Start of input declare
    STRBUF += "\tinput [7:0] A0x"
    for i in range(1,LISTSIZE):
        STRBUF += ", A" + str(i) + "x"
    STRBUF += ";\n\tinput [7:0] w0x"
    for i in range(1, LISTSIZE):
        STRBUF += ", w" + str(i) + "x"
    STRBUF += ";\n\treg [7:0] A0x_c"
    for i in range(1,LISTSIZE):
        STRBUF += ", A" + str(i) + "x_c"
    STRBUF += ";\n\treg [7:0] B0x"
    for i in range(LISTSIZE):
        STRBUF += ", w" + str(i) + "x_c"
    STRBUF += ";\n\twire [15:0] sum0x"
    for i in range(1,LISTSIZE):
        STRBUF += ", sum" + str(i) + "x"
    STRBUF += ";\n"
    STRBUF += f"\toutput reg [7:0] out;\n"
    STRBUF += "\treg [22:0] sumout;\n\n"

    for i in range(LISTSIZE):
        STRBUF += "\tassign sum" + str(i) + "x = {A" + str(i) + "x_c[7],A" + str(i) + "x_c[7],A" + str(i) + "x_c[7],A" + str(i) + "x_c[7],A" + str(i) + "x_c[7],A" + str(i) + "x_c[7],A" + str(i) + "x_c[7],A" + str(i) + "x_c[7],A" + str(i) + "x_c}*{w" + str(i) + "x_c[7],w" + str(i) + "x_c[7],w" + str(i) + "x_c[7],w" + str(i) + "x_c[7],w" + str(i) + "x_c[7],w" + str(i) + "x_c[7],w" + str(i) + "x_c[7],w" + str(i) + "x_c[7],w" + str(i) + "x};\n"


    STRBUF += f"\n\talways@(posedge clk) begin\n\n\t\tif(reset)\n\t\t\tbegin\n\t\t\tout<=8'd0;\n\t\t\tsumout<=16'd0;\n"
    for i in range(LISTSIZE):
        STRBUF += "\t\t\tA" + str(i) + "x_c <= 8'd0;\n"
    STRBUF += "\t\t\tB0x <= 8'b0;\t\t\tend\n"

    STRBUF += "\t\telse\n\t\t\tbegin\n"

    for i in range(LISTSIZE):
        STRBUF += "\t\t\tA" + str(i) + "x_c <= A" + str(i) + "x;\n"
    for i in range(LISTSIZE):
        STRBUF += "\t\t\tw" + str(i) + "x_c <= w" + str(i) + "x;\n"
    STRBUF += "\t\t\tB0x <= bias;\n"
    STRBUF += "\t\t\tsumout<="
    for i in range(LISTSIZE + 1):
        if i == LISTSIZE:
            STRBUF += "{B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x[7],B0x,6'b0};\n"
        else:
            STRBUF += f"{{sum{i}x[15],sum{i}x[15],sum{i}x[15],sum{i}x[15],sum{i}x[15],sum{i}x[15],sum{i}x[15],sum{i}x}}+"

    STRBUF += "\n\t\t\tif(sumout[22]==0)\n\t\t\t\tbegin\n\t\t\t\tif(sumout[21:13]!=9'b0)\n\t\t\t\t\tout<=8'd127;\n\t\t\t\telse\n\t\t\t\t\tbegin\n\t\t\t\t\tif(sumout[5]==1)\n\t\t\t\t\t\tout<=sumout[13:6]+8'd1;\n\t\t\t\t\telse\n\t\t\t\t\t\tout<=sumout[13:6];\n\t\t\t\t\tend\n\t\t\t\tend\n\t\t\telse"
    if last_layer == 1:
        STRBUF += "\n\t\t\t\tbegin\n\t\t\t\tif(sumout[21:13]!=9'b1)\n\t\t\t\t\tout<=-8'd128;\n\t\t\t\telse\n\t\t\t\t\tbegin\n\t\t\t\t\tif(sumout[5]==1)\n\t\t\t\t\t\tout<=sumout[13:6]+8'd1;\n\t\t\t\t\telse\n\t\t\t\t\t\tout<=sumout[13:6];\n\t\t\t\t\tend\n\t\t\t\tend"
    else:
        STRBUF += "\n\t\t\t\tout<=8'd0;"
    STRBUF += "\n\t\t\tend\n\t\tend\nendmodule"
    print(STRBUF)


if __name__ == "__main__":
    main(sys.argv[1:])