#! /usr/bin/python3
import sys
from math import ceil, log2

def main(argv):
    inputs = int(argv[0])
    outputs = int(argv[1])
    layer_ind = int(argv[2])

    addr_bits = ceil(log2(outputs))

    STRBUF = "module layer_"+ str(layer_ind) + "(reset,clk"
    for i in range(outputs):
        STRBUF += ",out" + str(i)
    for j in range(inputs):
        STRBUF += ",in" + str(j)
    STRBUF += ");\n\t" + "input reset, clk; \n\t" + "output reg [7:0] out0"
    for i in range(1,outputs):
        STRBUF += ",out" + str(i)
    STRBUF += ";\n\tinput [7:0] "
    for j in range(inputs):
        STRBUF += "in" + str(j)
        if j != inputs-1:
            STRBUF += ","
        else:
            STRBUF += ";"
    STRBUF += "\n\twire [{}:0] w;\n\twire [7:0] tmpout;".format(8*inputs+7)
    if(addr_bits > 1):
        STRBUF += "\n\treg [{}:0] address;\n\treg [2:0] count;\n\n".format(addr_bits-1)
    else:
        STRBUF += "\n\treg address;\n\treg [2:0] count;\n\n"

    STRBUF += "\tinitial address = {}'b0;".format(max(1,addr_bits))
    STRBUF += "\n\tinitial count = 3'b0;"

    STRBUF += "\n\n\tROM_params_{} ".format(layer_ind) + "rom_params(.address(address),.clock(clk),.q(w));\n"
    STRBUF += "\tnode_{}".format(layer_ind) + " node_in" + "(clk,reset,tmpout"
    for i in range(inputs):
        STRBUF += ",in" + str(i)
    for i in range(inputs+1):
        STRBUF += ",w[{}:{}]".format(8*inputs+7-8*i,8*inputs-8*i)
    STRBUF += ");\n\n\talways @(posedge clk) begin\n\t\tcount <= count + 3'b001;\n\t\tif (count == 3'b000) begin\n\t\t\tif (address == {a}'d{max_a})\n\t\t\t\taddress <= {a}'d0;\n\t\t\telse\n\t\t\t\taddress <= address + {a}'d1;".format(a=max(1,addr_bits),max_a=outputs-1)
    STRBUF += "\n\t\t\tcase (address)"
    for i in range(outputs):
        STRBUF += "\n\t\t\t\t{}'d{}  :  out{}<=tmpout;".format(max(1,addr_bits),i,i)
    STRBUF += "\n\t\t\t\tdefault :  out0<=tmpout;\n\t\t\tendcase"
    STRBUF += "\n\t\tend\t\t\n\tend\nendmodule"
    print(STRBUF)

if __name__ == "__main__":
    main(sys.argv[1:])
