#! /usr/bin/python3
import numpy as np
import sys
import struct

def main(argv):
    weights = np.load("/home/alan/winDesktop/ARM_ECG/simulation/weight.npy",allow_pickle=True)
    # bias = np.load("/home/alan/winDesktop/ARM_ECG/Sim/weight.npy",allow_pickle=True)
    # allow pickle must be true to load data
    # weights[0] has dim of (187*5)
    idx1 = int(argv[0])
    idx2 = int(argv[1])
    layerW = weights[(2*idx1-2)]
    layerB = weights[2*(idx1-1)+1]
    LISTSIZE = layerW.shape[0]
    ADDERCOUNT = 0
    inputs = [ f"in{i}" for i in range(LISTSIZE)]
    inputs.append("B0")
    # Start of module, TODO add function call from bash., add keras table
    STRBUF = "module node" + str(idx1) + "_"+ str(idx2) + "(N1,"
    for i in range(LISTSIZE):
        if i !=LISTSIZE-1:
            STRBUF += "A"+str(i)+","
        else:
            STRBUF += "A"+str(i)
    STRBUF += ");\n"
    # Start of input declare
    for i in range(LISTSIZE):
        STRBUF += "\tinput [31:0] A" + str(i) + ";\n"
    STRBUF += "\toutput [31:0] N1;\n\n"
    # Start of LUT declare i.e. parameter [...] ...
    for i in range(LISTSIZE):
        STRBUF += "\tparameter [31:0] W{0}=32'b{1};\n".format(i,binary(layerW[i,idx2-1]))
    STRBUF += "\tparameter [31:0] B{0}=32'b{1};\n".format(0,binary(layerB[idx2-1]))
    # TODO parameter [31:0] bias = 32b'xxx
    # Start of wire declare
    for i in range(LISTSIZE):
        STRBUF += "\twire [31:0] in"+ str(i)+";\n"
    for i in range(LISTSIZE-1):
        STRBUF += "\twire [31:0] sum"+ str(i)+";\n"
    STRBUF += "\n"

    # # Start of mult & add V1.
    for i in range (LISTSIZE):
        STRBUF += "\tfloat_mult mult{0}(\n\t\t.x(A{1}),\n\t\t.y(W{2}),\n\t\t.z(in{3}));\n".format(i,i,i,i)
    # for i in range (LISTSIZE-1):
    #     if i ==0:
    #         STRBUF += "\tfloat_adder add{0}(\n\t\t.a(in{1}),\n\t\t.b(in{2}),\n\t\t.Out(sum{3}),\n\t\t.Out_test(),\n\t\t.shift(),\n\t\t.c_out());\n".format(i,i,i+1,i)
    #     else:
    #         STRBUF += "\tfloat_adder add{0}(\n\t\t.a(in{1}),\n\t\t.b(sum{2}),\n\t\t.Out(sum{3}),\n\t\t.Out_test(),\n\t\t.shift(),\n\t\t.c_out());\n".format(i,i,i-1,i)
    
    # Start of mult & add V2.
    # TODO include bias adder here, so if even number neurons, add bias at the end,
    # otherwise if odd number of neurons, add bias at start
    STRBUF+=gentree(inputs, "sum", "N1")
    STRBUF += "always@(*)\n\tbegin \n\t\tif(N1[31]==0)\n\t\t\tN1=N1;\n\t\telse\n\t\t\tN1=32'd0;"
    STRBUF+= "\n\tend"
    STRBUF+= "\nendmodule"
    print(STRBUF)

def binary(num):
    # Struct can provide us with the float packed into bytes. The '!' ensures that
    # it's in network byte order (big-endian) and the 'f' says that it should be
    # packed as a float. Alternatively, for double-precision, you could use 'd'.
    packed = struct.pack('!f', num)
    # print 'Packed: %s' % repr(packed)

    # For each character in the returned string, we'll turn it into its corresponding
    # integer code point
    # 
    # [62, 163, 215, 10] = [ord(c) for c in '>\xa3\xd7\n']
    integers = [c for c in packed]
    # print 'Integers: %s' % integers

    # For each integer, we'll convert it to its binary representation.
    binaries = [bin(i) for i in integers]
    # print 'Binaries: %s' % binaries

    # Now strip off the '0b' from each of these
    stripped_binaries = [s.replace('0b', '') for s in binaries]
    # print 'Stripped: %s' % stripped_binaries

    # Pad each byte's binary representation's with 0's to make sure it has all 8 bits:
    #
    # ['00111110', '10100011', '11010111', '00001010']
    padded = [s.rjust(8, '0') for s in stripped_binaries]
    # print 'Padded: %s' % padded

    # At this point, we have each of the bytes for the network byte ordered float
    # in an array as binary strings. Now we just concatenate them to get the total
    # representation of the float:
    return ''.join(padded)

class Gen:
    def __init__(self, perfix):
        self.output=""
        self.counter=0
        self.perfix=perfix
 
    def makeadder(self, a,b, outname=None):#
        if outname:
            intermiteate=outname
        else:
            intermiteate = f"{self.perfix}{self.counter}"
 
        
 
        tmp = f"\tfloat_adder add{self.counter}(\n\t\t.a({a}),\n\t\t.b({b}),\n\t\t.Out({intermiteate}),\n\t\t.Out_test(),\n\t\t.shift(),\n\t\t.c_out());\n"
        self.counter += 1
        self.output = self.output + '\n' + tmp
 
        return intermiteate
 
def nextlayer(inputs, gen):
    pairs, alone = divmod(len(inputs), 2)
    outputs=[]
 
    ## handel pairs
    for i in range(pairs):
        a, b = inputs[2*i], inputs[2*i+1]
        out = gen.makeadder(a, b)
        outputs.append(out)
        # rec calls
 
    # check alone
    if alone:
        outputs.append(inputs[-1])
 
    return outputs
 
def gentree(inputs, inertmidate_perfix, outname):
    if len(inputs)<=1:
        return f"wire {inputs[0]} {outname}"
 
    gen = Gen(inertmidate_perfix)
 
    intermindates = inputs
    while (len(intermindates))>2:
        intermindates = nextlayer(intermindates, gen)
 
    gen.makeadder(*intermindates, outname)
 
    return gen.output

if __name__ == "__main__":
    main(sys.argv[1:])