# ARM_ECG

## Keras simulation
Performed Python simulation on a fully connected Neural Network (FCNN). Detailed info can be found in the linked file below. 

## Automated Verilog Code Generator + bash scipt command 
Built a highly automated generator to reduce the coding time for QUARTUS.

The file node1_1 is the neuron template which will be run in a python script to generate layers of neurons. It uses float_mult and float_adder to do floating point multiplication and addition. node1_1 is a Relu neuron. The sigmoid will be added soon. All the files like exp and float_add are used inside the float_adder so they are needed for instatiation.

