#! /usr/bin/python3

import sys

def main(argv):
    #module declaration
    STRINGBUF = "module top(EN, clk, reset, out0"
    for i in range(1,int(argv[-1])):
        STRINGBUF += ", out" + str(i)
    STRINGBUF += ");\n\tinput EN, clk, reset;\n\toutput [7:0] out0"
    for i in range(1,int(argv[-1])):
        STRINGBUF += ", out" + str(i)
    STRINGBUF += ";\n\n"

    #connecting wires
    for i in range(0,len(argv)-1):
        STRINGBUF += "\twire [7:0]"
        for x in range(int(argv[i])):
            STRINGBUF += " l{}_{}".format(i+1,x)
            if x!=int(argv[i])-1:
                STRINGBUF += ","
        STRINGBUF += ";\n"
    STRINGBUF += "\n\n"

    #layers
    STRINGBUF += "\trom_input rom_in(EN, clk,"
    i=0
    for x in range(int(argv[i])):
        STRINGBUF += " l{}_{}".format(i+1, x)
        if x != int(argv[i]) - 1:
            STRINGBUF += ","
    STRINGBUF += ");\n"

    for i in range(0,len(argv)-2):
        STRINGBUF += "\tlayer_{} layer{}(reset, clk".format(i+1,i+1)
        for x in range(int(argv[i+1])):
            STRINGBUF += ", l{}_{}".format(i+2, x)
        for x in range(int(argv[i])):
            STRINGBUF += ", l{}_{}".format(i+1, x)
        STRINGBUF += ");\n"

    i = len(argv)-2
    STRINGBUF += "\tlayer_{} layer{}(reset, clk".format(i + 1, i + 1)
    for x in range(int(argv[i + 1])):
        STRINGBUF += ", out{}".format(x)
    for y in range(int(argv[i + 1])):
        for x in range(int(argv[i])):
            STRINGBUF += ", l{}_{}".format(i+1, x)
    STRINGBUF += ");\n"

    STRINGBUF += "endmodule"
    print(STRINGBUF)

if __name__ == "__main__":
    main(sys.argv[1:])
