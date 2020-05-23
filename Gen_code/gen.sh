#! /usr/bin/env bash
layers_num=8
NNnum="187 5 10 15 30 15 10"
MYPATH="./src/"
echo "Start Code gen ..."

if [ ! -d $MYPATH ]
then
    echo "Directory ./src NOT exists."
    mkdir $MYPATH
elif [ -d $MYPATH ]
then
    rm -r $MYPATH
    mkdir $MYPATH
    echo "Directory ./src exists."
fi

for i in {1..7};do
    inn_idx="layer"
    CURRENTPATH="$MYPATH$inn_idx$i"
    echo $CURRENTPATH
    mkdir $CURRENTPATH
    inner_bound=${NNnum[$(($i-1))]}
    for j in {1..$inner_bound};do
        ./gencode.py $i $j > $CURRENTPATH/node_$i.v
    done
done
