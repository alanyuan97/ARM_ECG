import numpy as np
import matplotlib.pyplot as plt
import scipy.io as scp

x_train = np.load('x_train.npy', allow_pickle=True)
x_test = np.load('x_test.npy', allow_pickle=True)
y_train = np.load('y_train.npy', allow_pickle=True)
y_test = np.load('y_test.npy', allow_pickle=True)

print(y_train.shape)
print(y_test.shape)

dict = {'x_train': x_train[0:100,:,:],'y_train': y_train,'x_test': x_test[0:100,:,:],'y_test': y_test}

scp.savemat("data.mat", dict)