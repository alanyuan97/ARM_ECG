#! /usr/bin/python3
import numpy as np
import random as rand
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
        return f"{BITS}'sb" + res3
    else:
        return f"{BITS}'sb" + str(res)
def printbuffer():
    inputrand = []
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
        tmp = rand.uniform(-1,1)
        inputrand.append(tmp)
        STRBUFF += f"\tI{i}x = {num2fixedbin(tmp,10)};\n"
    STRBUFF +="\tend\nendmodule"
    # np.save("randnums.npy",np.array(inputrand))
    return STRBUFF,np.array(inputrand)

def main():
    BUFFER, randominputs = printbuffer()
    print(BUFFER)
    weights = np.load("/home/alan/winDesktop/ARM_ECG/simulation/8bweights.npy",allow_pickle=True)
    ROM_sim = np.matmul(np.transpose(randominputs),weights[0]) + weights[1]
    # print(ROM_sim.shape,ROM_sim)
    for i in range(len(ROM_sim)):
        if ROM_sim[i] <0:
            ROM_sim[i]=0
    print(ROM_sim,[num2fixedbin(ROM_sim[i],10) for i in range(5) ])   
if __name__ == '__main__':
    main()