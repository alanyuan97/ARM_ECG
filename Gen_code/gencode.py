#! /usr/bin/python3
import numpy as np
import sys

def main(argv):
    weights = np.load("/home/alan/winDesktop/ARM_ECG/Sim/weight.npy",allow_pickle=True)
    # allow pickle must be true to load data
    # weights[0] has dim of (187*5)
    idx1 = int(argv[0])
    idx2 = int(argv[1])
    layerW = weights[idx1-1]
    LISTSIZE = 2
    # Start of module, TODO add function call from bash., add keras table
    STRBUF = "module node" + str(idx1) + "_"+ str(idx2) + "("
    for i in range(LISTSIZE):
        if i !=LISTSIZE-1:
            STRBUF += "A"+str(i)+","
        else:
            STRBUF += "A"+str(i)
    STRBUF += ");\n"
    # Start of input declare
    for i in range(LISTSIZE):
        STRBUF += "\tinput [31:0] A" + str(i) + ";\n"
    STRBUF += "\tinput clock;\n\toutput [31:0] N1;\n\n"
    # Start of LUT declare i.e. parameter [...] ...
    for i in range(LISTSIZE):
        STRBUF += "\tparameter [31:0] W{0}={1};\n".format(i,layerW[i,idx2-1])
    # Start of wire declare
    for i in range(LISTSIZE):
        STRBUF += "\twire [31:0] in"+ str(i)+";\n"
    STRBUF += "\n"

    # Start of mult & add
    for i in range (LISTSIZE):
        STRBUF += "\tfp_mult {0}(\n\t\t.input_a  ({1}),\n\t\t.input_b  ({2}),\n\t\t.input_a_stb (1),\n\t\t.input_b_stb (1),\n\t\t.output_z_ack  (1),\n\t\t.clk (clock),\n\t\t.rst (0),\n\t\t.output_z ({3}),\n\t\t.output_z_stb  (1),\n\t\t.input_a_ack  (1),\n\t\t.input_b_ack  (1) ); \n\n".format("mult"+str(i), "A"+str(i),"W"+str(i),"in"+str(i))
    for i in range (LISTSIZE-1):
        if i ==0:
            STRBUF += "\tfp_add {0}(\n\t\t.input_a  ({1}),\n\t\t.input_b  ({2}),\n\t\t.input_a_stb (1),\n\t\t.input_b_stb (1),\n\t\t.output_z_ack  (1),\n\t\t.clk (clock),\n\t\t.rst (0),\n\t\t.output_z ({3}),\n\t\t.output_z_stb  (1),\n\t\t.input_a_ack  (1),\n\t\t.input_b_ack  (1) ); \n\n".format("add"+str(i), "in"+str(i),"in"+str(i+1),"S"+str(i))
        else:
            STRBUF += "\tfp_add {0}(\n\t\t.input_a  ({1}),\n\t\t.input_b  ({2}),\n\t\t.input_a_stb (1),\n\t\t.input_b_stb (1),\n\t\t.output_z_ack  (1),\n\t\t.clk (clock),\n\t\t.rst (0),\n\t\t.output_z ({3}),\n\t\t.output_z_stb  (1),\n\t\t.input_a_ack  (1),\n\t\t.input_b_ack  (1) ); \n\n".format("add"+str(i), "sum"+str(i),"in"+str(i+1),"S"+str(i))


    STRBUF += "\n\tbegin \n\t\tif(sum1<sat)\n\t\t\tN1=sum1;\n\t\telse\n\t\t\tN1=sat;"
    # # for i in range(LISTSIZE):
    # #     STRBUF += "\t\tin"+str(i) + "=A" + str(i) + " * W" + str(i) +";\n"
    STRBUF+= "\n\tend"
    STRBUF+= "\nendmodule"
    print(STRBUF)
if __name__ == "__main__":
    main(sys.argv[1:])