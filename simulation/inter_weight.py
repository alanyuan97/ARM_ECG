#! /usr/bin/python3
import numpy as np
weights = np.load("/home/alan/winDesktop/ARM_ECG/simulation/weight_dictionary.npy",allow_pickle=True)
bias = np.load("/home/alan/winDesktop/ARM_ECG/simulation/biases_dictionary.npy",allow_pickle=True)

NAMELIST = weights.item().keys()
print(NAMELIST)
result = []
for name in NAMELIST:
    temp = weights.item().get(name)
    result.append(temp)
    # print(temp)
aweight = np.array(result)
# np.save('aweight.npy',aweight)
print(aweight[0].shape)

NAMELIST = bias.item().keys()
print(NAMELIST)
result = []
for name in NAMELIST:
    temp = weights.item().get(name)
    result.append(temp)
    # print(temp)
abias = np.array(result)
# np.save('abias.npy',abias)
print(abias[0].shape)
tem = abias[0]
print(tem[:,0:2])