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

mkdir $MYPATH/ROM
mkdir $MYPATH/SIM
./src/rom.py /home/alan/winDesktop/ARM_ECG/simulation/testdata_pos.npy > $MYPATH/ROM/rom_input_pos.txt
./src/rom.py /home/alan/winDesktop/ARM_ECG/simulation/testdata_neg.npy > $MYPATH/ROM/rom_input_neg.txt
echo "ROM finished generate"
echo "Exit bash without errors..."
# ./src/sim_l1.py > $MYPATH/SIM/firstlayer_sim.txt