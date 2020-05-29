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
        STRBUFF += f"\tI{i}x = 8'b{num_to_fixed_point(tmp)};\n"
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
    print(ROM_sim,[num_to_fixed_point(ROM_sim[i]) for i in range(5) ])   
if __name__ == '__main__':
    main()