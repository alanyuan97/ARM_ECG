#! /usr/bin/python3
import numpy as np
import sys
import struct

def main(argv):
    weights = np.load("/home/edoardo/Desktop/ARM_ECG/simulation/8bweights.npy",allow_pickle=True)
    #weights = np.load("/home/alan/winDesktop/ARM_ECG/simulation/8bweights.npy",allow_pickle=True)
    # bias = np.load("/home/alan/winDesktop/ARM_ECG/simulation/abias.npy",allow_pickle=True)
    # allow pickle must be true to load data
    # weights[0] has dim of (187*5)
    idx1 = int(argv[0])
    idx2 = int(argv[1])
    layerW = weights[2*(idx1-1)]
    layerB = weights[2*(idx1-1)+1]
    LISTSIZE = layerW.shape[0]
    inputs = [ f"in{i}x" for i in range(LISTSIZE)]
    inputs.append("B0x")
    # Start of module
    STRBUF = "module node" + str(idx1) + "_"+ str(idx2) + f"(clk,reset,N{idx2}x,"
    for i in range(LISTSIZE):
        if i !=LISTSIZE-1:
            STRBUF += "A"+str(i)+"x,"
        else:
            STRBUF += "A"+str(i)+'x'
    STRBUF += ");\n\tinput clk;\n\tinput reset;\n"
    # Start of input declare
    for i in range(LISTSIZE):
        STRBUF += "\tinput signed [7:0] A" + str(i) + "x;\n"
    STRBUF += f"\toutput reg [7:0] N{idx2}x;\n\n"
    # Start of LUT declare i.e. parameter [...] ...
    for i in range(LISTSIZE):
        STRBUF += "\tparameter signed [7:0] W{0}x=8'sb{1};\n".format(i,num_to_fixed_point(layerW[i,idx2-1]))
    STRBUF += "\tparameter signed [7:0] B{0}x=8'sb{1};\n".format(0,num_to_fixed_point(layerB[idx2-1]))
    # Start of wire declare
    for i in range(LISTSIZE):
        # BUG why is IN0X 16 bits long
        STRBUF += "\twire signed [7:0] in"+ str(i)+"x;\n"
    for i in range(LISTSIZE-1):
        STRBUF += "\treg signed [7:0] sum"+ str(i)+"x;\n"
    STRBUF += "\n\treg [7:0] sumout;\n"

    # Copy of input required
    for i in range(LISTSIZE):
        STRBUF += "\treg signed [7:0] A"+ str(i)+"x_c;\n"
    # Start of mult & add V3.
    STRBUF += "\n\n"
    for i in range(LISTSIZE):
        STRBUF += f"\tassign in{i}x=A{i}x_c*W{i}x;\n"

    # STRBUF+=gentree(inputs, "sum", "sumout")
    # if(2*idx1 == len(weights)): # reached sigmoid node
    #     STRBUF += f"always@(posedge clk)\n\tbegin \n\t\tif(sumout[31]==0)\n\t\t\tN{idx2}x<=32'd1;\n\t\telse\n\t\t\tN{idx2}x<=32'd0;"
    # else:
    #     STRBUF += f"always@(posedge clk)\n\tbegin \n\t\tif(sumout[31]==0)\n\t\t\tN{idx2}x<=sumout;\n\t\telse\n\t\t\tN{idx2}x<=32'd0;"
    # STRBUF+= "\n\tend"
    STRBUF+=f"\nalways@(posedge clk)\n\tbegin\n\n\tif(reset) begin\n\t\tN{idx2}x<=8'b0;\n\t\tsumout<=8'b0;\n"
    for i in range(LISTSIZE):
        STRBUF += f"\t\tA{i}x_c<=8'b0\n"
    for i in range(LISTSIZE):
        STRBUF += f"\t\tsum{i}x<=8'b0\n"
    STRBUF += "\tend\n\n"
    for i in range(LISTSIZE):
        STRBUF += f"\tA{i}x_c<=A{i}x;\n"
    STRBUF += "\tsumout<="
    for i in range(LISTSIZE+1):
        if i == LISTSIZE:
            STRBUF += "B0x;\n"
        else:
            STRBUF += f"in{i}x+"
    
    STRBUF+= "\n\tif(sumout[7]==0)\n\t\tbegin\n\t\tN{idx2}x<=sumout;\n\t\tend\n\telse\n\t\tbegin\n\t\tN{idx2}x<=8'd0;\n\t\tend\n\tend\nendmodule"
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
            intermiteate = f"{self.perfix}{self.counter}x"
 
        
 
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

def num_to_fixed_point(num):
  out = ""
  if num < 0:
    out = out + "1"
    num += 1
  else:
    out = out + "0"
  x = 0.5
  for i in range(0,7):
    if num >= x:
      out = out + "1"
      num -= x
    else: 
      out += "0"
    x /= 2
  return out

if __name__ == "__main__":
    main(sys.argv[1:])