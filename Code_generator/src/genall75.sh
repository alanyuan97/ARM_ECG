#! /usr/bin/env bash
# CHANGE THREE VARIABLES
NNnum="75 5 10 15 30 15 10 1"
LAYER="5 10 15 30 15 10 1"
n_in=75


i=1
MYPATH="out/"
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

    # generate nodes
    for j in $(seq 1 $a);do
        # echo $i $j
        python src/gennode.py $i $j > $CURRENTPATH/node_${i}_${j}.v
    done

    # generate layer
    python src/genlayer.py $N $a $i > $CURRENTPATH/layer_$i.v

    echo "Layer $i finished generate"
    i=$(($i+1))
done

# generate rom

mkdir $MYPATH/ROM
mkdir $MYPATH/SIM
python src/romedo.py $n_in > $MYPATH/ROM/rom_input.v
python src/rom_init.py $n_in > $MYPATH/ROM/rom_initialisation.mif
echo "ROM finished generate"

# generate top-level entity
python src/gentop.py $NNnum > $MYPATH/top.v
echo "top-level finished generate"

echo "Exit bash without errors..."
# ./src/sim_l1.py > $MYPATH/SIM/firstlayer_sim.txt
