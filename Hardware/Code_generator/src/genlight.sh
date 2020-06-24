#! /usr/bin/env bash
# CHANGE THREE VARIABLES
NNnum="187 5 10 15 30 15 10 1"
LAYER="5 10 15 30 15 10 1"
n_in=187
n_layers=7


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
    N2="$(cut -d ' ' -f$i <<<"$LAYER")"
    # echo $N

    # generate nodes
    if [ $i == $n_layers ]
    then
      python src/gennode_light.py $i 1 > $CURRENTPATH/node_${i}.v
    else
      python src/gennode_light.py $i 0 > $CURRENTPATH/node_${i}.v
    fi
    python src/params_rom_init.py $i $N $N2 > $CURRENTPATH/params_${i}.mif

    # generate layer
    python src/genlayer_light.py $N $a $i > $CURRENTPATH/layer_$i.v

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
python src/gentop2.py $NNnum > $MYPATH/top.v
echo "top-level finished generate"

echo "Exit bash without errors..."
# ./src/sim_l1.py > $MYPATH/SIM/firstlayer_sim.txt
