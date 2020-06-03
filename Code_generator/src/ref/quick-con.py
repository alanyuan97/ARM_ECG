from bitstring import Bits
numlist = ["00000000000000000000111010010111","00000000000000000001010011110111",False,False,False,"00000000000000000001011011110100","00000000000000000000110010100010","00000000000000000000001010110111",False,"00000000000000000001010001001010"]
num = "00000000000000000000101010010110" # assume 32 bits input

for idx,num in enumerate(numlist):
    if num:
        num1 = num[16:]

        whole = num1[0:2]
        dec = num1[3:]
        whoint = int(whole,base=2)
        decint = int(dec,base=2) / (2**13) 

        print(f"Node_{idx}, Out: {whoint + decint}")
    else:
        print(f"Node_{idx}, Out:0")