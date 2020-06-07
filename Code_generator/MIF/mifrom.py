#! /usr/bin/python3
import pandas as pd
import numpy as np
import helper as hp

ptb = pd.read_csv('/home/alan/winDesktop/ARM_ECG/simulation/ptbdb_normal.csv',header = None)
ptb_ab = pd.read_csv('/home/alan/winDesktop/ARM_ECG/simulation/ptbdb_abnormal.csv',header = None)

STRBUFFER = ""
LAYERNUM = 49
posDATA = np.array(ptb.loc[:LAYERNUM,:])
negDATA = np.array(ptb_ab.loc[:LAYERNUM,:],)
DATA = np.vstack((posDATA[:,:187],negDATA[:,:187]))
STRBUFFER += f"DEPTH = 100;\nWIDTH = 1496;\nADDRESS_RADIX = DEC;\nDATA_RADIX = BIN;\n\nCONTENT\nBEGIN\n"
for i in range(DATA.shape[0]):
    STRBUFFER += f"{i}  :  "
    for j in range(DATA.shape[1]):
        STRBUFFER += f"{hp.num2fixedbin(DATA[i][j],6,BITS=8)}"
    STRBUFFER += ";\n"
STRBUFFER += "END;"
print(STRBUFFER)