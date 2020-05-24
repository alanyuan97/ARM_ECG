#! /usr/bin/env bash
layers_num=8
NNnum="187 5 10 15 30 15 10 1"
LAYER="5 10 15 30 15 10 1"
i=1
MYPATH="./src/"
echo "Start Code gen ..."

if [ ! -d $MYPATH ]
then
    echo "Directory ./src NOT exists."
    mkdir $MYPATH
else
    rm -r $MYPATH
    mkdir $MYPATH
    echo "Directory ./src exists."
fi

for a in $LAYER;do
    inn_idx="layer"
    CURRENTPATH="$MYPATH$inn_idx$i"

    if [[ "$a" == 1 ]]; then
        break
    fi
    
    echo $CURRENTPATH
    mkdir $CURRENTPATH
    N="$(cut -d ' ' -f$i <<<"$NNnum")"
    # echo $N
    for j in $(seq 1 $a);do
        # echo $i $j
        ./gencode.py $i $j > $CURRENTPATH/node-$i-$j.v
    done
    echo "Layer $i finished generate"
    i=$(($i+1))
done
