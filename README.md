# ARM_ECG
TODO
## Keras simulation
Performed Python simulation on a fully connected Neural Network (FCNN) using Keras. Detailed info can be found in the linked file below. 
The overall training accuracy converges to 95%+ with a test accuracy of 90%+. The Total number of parameters used are approx. 2.2K. 
Weights and Bias are extracted and imported to a Python script to automaticly generate Verilog code. 

## Automated Verilog Code Generator + bash scipt command 
A highly automated generator is desigend to reduce the coding time in QUARTUS. A bash script is provided to automate the process of generating mutiple layer-code. To further optimize the time performance on verilog, we introduced and designed a "binary tree" addition structure as the critical path for data propogation is minimized.

## Description on Verilog code
The file node1_1 is the neuron template which will be run in a python script to generate layers of neurons. It uses float_mult and float_adder to do floating point multiplication and addition. node1_1 is a Relu neuron. The sigmoid will be added soon. All the files like exp and float_add are used inside the float_adder so they are needed for instatiation.

