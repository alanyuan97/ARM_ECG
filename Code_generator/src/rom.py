#! /usr/bin/python3
import numpy as np
import struct
import sys
from bitstring import Bits
def num2fixedbin(num,precision,BITS = 16 ):
    """
        INPUT: 
            num: number to convert
        PARAMETERS: 
            precision: decimal points required
            BITS: set to 16 by default, otherwise user specify

        Returns:
            A string formated with number of bits used specified as prefix

        Example: 
            num2fixedbin(0.625,10) returns 16'sb1000000010100000
    """
    num1 = abs(num)
    whole,dec = str(num1).split(".")
    whole = int(whole)



    dec = float("0." + dec)
    whole = bin(whole).lstrip('0b')
    if not whole:
        whole = 0
    res = int(whole)
    res = "{0:0{1}d}".format(res,BITS-precision ) # append 0s in front according to the precision
    temp = 0.5
    out = []
    STR = ""
    for i in range(precision):
        if dec<temp:
            out.extend('0')
        else:
            out.extend('1')
            dec -= temp
        temp /= 2
    for i in range(len(out)):
        STR += str(out[i])
    res += STR
    # print(res)
    if num<0:
        conv = ["1","0"]
        res1 = ''.join([conv[int(a)] for a in res])
        res2 = int(res1,base=2) + 1
        res3 = str(bin(res2).lstrip("0b"))
        if len(res3)!= BITS:
            res3 = res3[len(res3)-BITS:]
        return res3
    else:
        return str(res)

data = np.load(sys.argv[1],allow_pickle=True)

STRBUFF = "module rom_input(EN,"
for i in range(186):
    STRBUFF+=f"I{i}x,"
STRBUFF += "I186x);\n\tinput EN;\n"
STRBUFF += "\toutput [31:0]"
for i in range(186):
    STRBUFF += f"I{i}x,"
STRBUFF += "I186x;\n\treg [31:0]"
for i in range(186):
    STRBUFF += f"I{i}x,"
STRBUFF += "I186x;\nalways@(EN)\n\tbegin\n"

for i in range(187):
    STRBUFF += f"\tI{i}x = {Bits(bin=num2fixedbin(data[i],13,BITS=16)).int};\n"
STRBUFF +="\tend\nendmodule"
print(STRBUFF)


