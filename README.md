# ARM_ECG

## How to use
Steps 1 to 3 were already done.

1 - open the link (Fully-connected model) in Keras models and run the Colab notebook (change the saving directory to your google drive)

2 - download biases_dictionary.npy, weights_dictionary.npy and outputs_dictionary.npy and extract in the Code_generator/simulation folder

3 - cd to Code_generator and type in terminal "bash src/genall_win.sh" (unfolded implementation) or "bash src/genlight.sh" (folded implementation). You are going to have to change the paths in the various files so that they match the paths in your machine. This step generates the Verilog files in the out folder.

4 - add the folders in Code_generator/out as libraries to your Quartus project and set top.v as the top-level entity
    
5 - some further modification is needed to be done manually. The last layer needs to be modified to remove the ReLU. Additionally, the ROM blocks used by the design need to be created.
