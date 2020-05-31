#! /usr/bin/env bash
layers_num=8
NNnum="50 5 10 15 30 15 10 1"
LAYER="5 10 15 30 15 10 1"
i=1
MYPATH="./out/"
echo "Start Code gen ..."

if [ ! -d $MYPATH ]
then
    echo "Directory ./out NOT exists."
    mkdir $MYPATH
else
    rm -r $MYPATH
    mkdir $MYPATH
    echo "Directory ./out exists."
fi

for a in $LAYER;do
    inn_idx="layer"
    CURRENTPATH="$MYPATH$inn_idx$i"
    
    echo $CURRENTPATH
    mkdir $CURRENTPATH
    N="$(cut -d ' ' -f$i <<<"$NNnum")"
    # echo $N
    for j in $(seq 1 $a);do
        # echo $i $j
        ./src/gencode.py $i $j > $CURRENTPATH/node-$i-$j.v
    done
    echo "Layer $i finished generate"
    i=$(($i+1))
done
echo "Paths made for ROM and SIM"
mkdir $MYPATH/ROM
mkdir $MYPATH/SIM
echo "Generating Positive and Negative test case ROM verilog ... "
./src/rom.py /home/alan/winDesktop/ARM_ECG/simulation/testdata_pos.npy > $MYPATH/ROM/rom_input_pos.v
./src/rom.py /home/alan/winDesktop/ARM_ECG/simulation/testdata_neg.npy > $MYPATH/ROM/rom_input_neg.v
echo "Generating Random ROM for test purpose ... "
./src/random_num/ranROM.py > ./src/random_num/randtest.v
echo "Generating all layer test case simulation ... "
./src/ref/sim_all_layer.py /home/alan/winDesktop/ARM_ECG/simulation/testdata_pos.npy > $MYPATH/SIM/all_layer_pos.txt
./src/ref/sim_all_layer.py /home/alan/winDesktop/ARM_ECG/simulation/testdata_neg.npy > $MYPATH/SIM/all_layer_neg.txt
echo "ROM finished generate"
echo "Exit bash without errors..."