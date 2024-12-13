#!/bin/bash

DATA=$1 # path/to/cluster/data
NODE=$2
EDGE=$3
DICT=$4

python circuit.py \
    --dict_path ../autodl-tmp/dictionaries/pythia-70m-deduped/ \
    --model ../autodl-tmp/models/pythia-70m-deduped \
    --num_examples 100 \
    --batch_size 6 \
    --dataset $DATA \
	--node_threshold $NODE \
	--edge_threshold $EDGE \
	--aggregation sum \
    --example_length 64 \
    --dict_id $DICT \
	--nopair
