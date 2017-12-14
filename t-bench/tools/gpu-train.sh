#!/bin/bash
if [[ "$1" == "" ]] || [[ "$2" == "" ]] || [[ "$3" == "" ]]; then 
	echo "Usage: ./gpu-train.sh model batch_size num_gpus [options]"
	exit -1
else 
	model=$1
	batch_size=$2
	num_gpus=$3
	python tf_cnn_benchmarks.py --device=gpu  --num_gpus=${num_gpus} --batch_size=${batch_size} --model=${model} --local_parameter_server=cpu --num_warmup_batches=10 $4
#--data_dir=dd/mnt/dataset/imagenet
fi 
