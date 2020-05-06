import numpy as np
import matplotlib.pyplot as plt
import scipy.io as scp

x_train = np.load('x_train.npy', allow_pickle=True)
x_test = np.load('x_test.npy', allow_pickle=True)
y_train = np.load('y_train.npy', allow_pickle=True)
y_test = np.load('y_test.npy', allow_pickle=True)

dict = {'x_train': x_train,'y_train': y_train,'x_test': x_test,'y_test': y_test}

scp.savemat("data.mat", dict)
