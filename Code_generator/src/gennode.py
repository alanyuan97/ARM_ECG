#! /usr/bin/python3
import numpy as np
import sys
import struct
import adjust_weights

def main(argv):
    w_d = np.load("/home/edoardo/Desktop/ARM_ECG/simulation/weight_dictionary.npy", allow_pickle=True).item()
    b_d = np.load("/home/edoardo/Desktop/ARM_ECG/simulation/biases_dictionary.npy", allow_pickle=True).item()

    weights_dict = adjust_weights.adjust_w(w_d)
    biases_dict = adjust_weights.adjust_b(b_d)

    idx1 = int(argv[0])
    idx2 = int(argv[1])
    layerW = weights_dict[list(weights_dict)[idx1-1]]
    layerB = biases_dict[list(biases_dict)[idx1-1]]
    LISTSIZE = layerW.shape[0]
    inputs = [f"in{i}x" for i in range(LISTSIZE)]
    inputs.append("B0x")

    # Start of module
    STRBUF = "module node_" + str(idx1) + "_" + str(idx2) + f"(clk,reset,N{idx2}x,"
    for i in range(LISTSIZE):
        if i != LISTSIZE - 1:
            STRBUF += "A" + str(i) + "x,"
        else:
            STRBUF += "A" + str(i) + 'x'
    STRBUF += ");\n\tinput clk;\n\tinput reset;\n"

    # Start of input declare
    for i in range(LISTSIZE):
        STRBUF += "\tinput [7:0] A" + str(i) + "x;\n"
    for i in range(LISTSIZE):
        STRBUF += "\treg signed [7:0] A" + str(i) + "x_c;\n"
    for i in range(LISTSIZE):
        STRBUF += "\twire [15:0] sum" + str(i) + "x;\n"
    STRBUF += f"\toutput reg [7:0] N{idx2}x;\n"
    STRBUF += "\treg signed [22:0] sumout;\n\n"

    # Weights and biases
    for i in range(LISTSIZE):
        if layerW[i, idx2 - 1] >= 0:
            STRBUF += "\tparameter signed [7:0] W{0}x=8'd{1};\n".format(i, int(layerW[i, idx2 - 1]))
        else:
            tmp = -layerW[i, idx2 - 1]
            STRBUF += "\tparameter signed [7:0] W{0}x=-8'd{1};\n".format(i, int(tmp))
    if layerB[idx2 - 1] >= 0:
        STRBUF += "\tparameter [15:0] B{0}x=16'd{1};\n".format(0, int(layerB[idx2 - 1])) + "\n\n"
    else:
        tmp = -layerB[idx2 - 1]
        STRBUF += "\tparameter [15:0] B{0}x=-16'd{1};\n".format(0, int(tmp)) + "\n\n"

    for i in range(LISTSIZE):
        STRBUF += "\tassign sum" + str(i) + "x = A" + str(i) + "x_c*W" + str(i) + "x;\n"


    STRBUF += f"\n\talways@(posedge clk) begin\n\n\t\tif(reset)\n\t\t\tbegin\n\t\t\tN{idx2}x<=8'd0;\n\t\t\tsumout<=16'd0;\n"
    for i in range(LISTSIZE):
        STRBUF += "\t\t\tA" + str(i) + "x_c <= 8'd0;\n"
    STRBUF += "\t\t\tend\n"

    STRBUF += "\t\telse\n\t\t\tbegin\n"

    for i in range(LISTSIZE):
        STRBUF += "\t\t\tA" + str(i) + "x_c <= A" + str(i) + "x;\n"
    STRBUF += "\t\t\tsumout<="
    for i in range(LISTSIZE + 1):
        if i == LISTSIZE:
            STRBUF += "{B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x[15],B0x};\n"
        else:
            STRBUF += f"{{sum{i}x[15],sum{i}x[15],sum{i}x[15],sum{i}x[15],sum{i}x[15],sum{i}x[15],sum{i}x[15],sum{i}x}}+"

    STRBUF += "\n\t\t\tif(sumout[22]==0)\n\t\t\t\tif(sumout[21:13]!=9'b0)\n\t\t\t\t\tN{}x<=8'd127;\n\t\t\t\telse\n\t\t\t\t\tif(sumout[5]==1)\n\t\t\t\t\t\tN{}x<=sumout[13:6]+8'd1;\n\t\t\t\t\telse\n\t\t\t\t\t\tN{}x<=sumout[13:6];\n\t\t\telse\n\t\t\t\tN{}x<=8'd0;\n\t\t\tend\n\t\tend\nendmodule".format(idx2,idx2,idx2,idx2)
    print(STRBUF)


if __name__ == "__main__":
    main(sys.argv[1:])