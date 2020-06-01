#! /usr/bin/python3
import numpy as np
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
        if len(res)!= BITS:
            res = res[len(res)-BITS:]
        return res

data = np.load(sys.argv[1],allow_pickle=True)
# neg_data = np.load('/home/alan/winDesktop/ARM_ECG/simulation/testdata_neg.npy')
print(f"\n\nTest case path: {sys.argv[1]} \n\n")
weights = np.load("/home/alan/winDesktop/ARM_ECG/simulation/8bweights.npy",allow_pickle=True)
inputM = np.transpose(np.array(data))

# len(weights) = 14 checked

for i in range(int(len(weights)/2)):
    L1w = weights[2*i]
    B1 = weights[2*i+1]
    inputN = np.array(L1w)
    output = np.matmul(inputM, inputN) + B1
    print(f"Result Simulation on layer-{i+1} == >\n\n")
    for j in range(len(output)):
        if output[j]<0:
            output[j]=0
        print(f"Node_{j+1}:{output[j]:<.10f};\t\tQ3.13 format binary:{num2fixedbin(output[j],13)}\n")
    inputM = output
    print(f"****************End of layer-{i+1}********************* \n\n")