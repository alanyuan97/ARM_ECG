#! /usr/bin/python3
import numpy as np
import struct
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

data = np.load('/home/alan/winDesktop/ARM_ECG/simulation/testdata_neg.npy')

STRBUFF = "module rom_input(EN,"
for i in range(186):
    STRBUFF+=f"I{i}x,"
STRBUFF += "I186x);\n\tinput EN;\n"
STRBUFF += "\toutput [7:0]"
for i in range(186):
    STRBUFF += f"I{i}x,"
STRBUFF += "I186x;\n\treg [7:0]"
for i in range(186):
    STRBUFF += f"I{i}x,"
STRBUFF += "I186x;\nalways@(EN)\n\tbegin\n"

for i in range(187):
    STRBUFF += f"\tI{i}x = 8'b{num_to_fixed_point(data[i])};\n"
STRBUFF +="\tend\nendmodule"
print(STRBUFF)


