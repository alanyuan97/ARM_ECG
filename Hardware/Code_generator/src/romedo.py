#! /usr/bin/python3
import numpy as np
import sys
import adjust_weights

def main(argv):
    outs = np.load('./../simulation/outputs_dictionary.npy',allow_pickle=True).item()
    outs_adjusted = adjust_weights.adjust_o(outs)
    data = outs[list(outs_adjusted)[1]][18]

    n_in = int(argv[0])

    STRBUFF = "module rom_input(EN, clk"
    for i in range(n_in):
        STRBUFF+=f", I{i}x"
    STRBUFF += ");\n\tinput EN, clk;\n"
    STRBUFF += "\toutput reg [7:0] I0x"
    for i in range(1, n_in):
        STRBUFF += f", I{i}x"
    STRBUFF += ";\nalways@(posedge clk)\n\tbegin\n"

    for i in range(n_in):
        if data[i]>=0:
            STRBUFF += f"\tI{i}x = 8'd" + str(int(data[i])) + ";\n"
        else:
            tmp = -data[i]
            STRBUFF += f"\tI{i}x = -8'd" + str(int(tmp)) + ";\n"
    STRBUFF +="\tend\nendmodule"
    print(STRBUFF)

if __name__ == "__main__":
    main(sys.argv[1:])
