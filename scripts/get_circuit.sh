#!/bin/bash

DATA=$1
NODE=$2
EDGE=$3
AGG=$4
LENGTH=$5
DICT_ID=$6

python circuit.py \
    --model ../autodl-tmp/models/gemma-2-2b \
    --num_examples 100 \
    --batch_size 10 \
    --dataset rc_train \
	--node_threshold 0.1 \
	--edge_threshold 0.01 \
	--aggregation none \
    --example_length 6 \

