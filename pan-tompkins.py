import numpy as np
import matplotlib.pyplot as plt
from scipy import signal

x_train = np.load('x_train.npy', allow_pickle=True)
x_test = np.load('x_test.npy', allow_pickle=True)
y_train = np.load('y_train.npy', allow_pickle=True)
y_test = np.load('y_test.npy', allow_pickle=True)

####NEEED TO CHANGE FILTER COEFFICIENTS BECAUSE OF DIFFERENT SAMPLLING FREQUENCY

f_s = 100 #samples/sec

#YOU CAN CHOOSE ANY INPUT FROM THE DATABASE
ECG = x_train[0,:,0]

#Low pass filter (need to account for FPGA accuracy)
h = np.array([-15, -13, 7, 38, 66, 38, 7, -13, -15])
preprocessed1 = np.convolve(ECG, h)

#Derivative filter
preprocessed2 = signal.lfilter(np.array([2, 1, 0, -1, -2]),[1],preprocessed1)/8

#Squaring function
preprocessed3 = np.square(preprocessed2)

#Moving window integration
window_length = 0.150 #s, PAN TOMPKINS paper chooses N so that the length of window is 150ms
N = int(window_length*f_s)
preprocessed4 = signal.lfilter(np.ones(N),[1],preprocessed3)

fig, axs = plt.subplots(4,1)
axs[0].plot(ECG)
axs[1].plot(preprocessed1)
axs[2].plot(preprocessed3)
axs[3].plot(preprocessed4)
fig.suptitle('Different steps of the preprocessing')

## BEAT DETECTION
state = 0
previous_sample = 0
increasing = 1
initial_period = 2*f_s
THR1 = 0
THR2 = 0
NPK = 0
SPK = 0
out = np.zeros(preprocessed4.size)
refractory_period = int(0.2*f_s)
count = 0
previous_count = 0
RR = np.empty(shape=(0,0))

for i in range(preprocessed4.size):
    if RR.size > 8:
        RR_ave = np.mean(RR[-8:])
    else:
        RR_ave = np.mean(RR)
    if (increasing == 1) and (preprocessed4[i]<preprocessed4[i-1]):
        if ((preprocessed4[i-1]>THR1) or ((preprocessed4[i-1]>THR2) and (count>=1.16*RR_ave))) and (count>refractory_period):
            if i<200:
                SPK = preprocessed4[i-1]  
            else:
                SPK = 0.125*preprocessed4[i-1] + 0.875*SPK
                RR = np.append(RR, count)
            out[i-1] = 1
            count = 0
        else:
            if i<200:
                NPK = preprocessed4[i-1]  
            else:
                NPK = 0.125*preprocessed4[i-1] + 0.875*NPK
        increasing = 0
    if (increasing == 0) and (preprocessed4[i]>=preprocessed4[i-1]):
        increasing = 1
    THR1 = NPK + 0.25*(SPK-NPK)
    THR2 = THR1/8
    count = count + 1

fig2, ax2 = plt.subplots(1,1)
ax2.plot(out)
fig2.suptitle('Final result of pan-tompkins')
plt.show()
