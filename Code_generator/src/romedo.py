#! /usr/bin/python3
import numpy as np
import sys
import struct
import adjust_weights

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

def num_to_fixed_point(num):
  out = ""
  if num < 0:
    out = out + "1"
    num += 14
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

def main(argv):
    #data = np.load('/home/alan/winDesktop/ARM_ECG/simulation/Testpos.npy')
    outs = np.load('/home/edoardo/Desktop/ARM_ECG/simulation/outputs_dictionary.npy',allow_pickle=True).item()
    outs_adjusted = adjust_weights.adjust_o(outs)
    data = outs[list(outs_adjusted)[1]][2]

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
