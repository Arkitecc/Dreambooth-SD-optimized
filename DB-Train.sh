#!/bin/bash
project_name="chris"
batch_size=394
class_word="man"
reg_data_root="/home/user/Dreambooth-SD-optimized/outputs/txt2img-samples/samples/"

python3 /home/user/Dreambooth-SD-optimized/main.py \
 --base configs/stable-diffusion/v1-finetune_unfrozen.yaml \
 -t \
 --actual_resume "/home/user/Dreambooth-SD-optimized/model.ckpt" \
 --reg_data_root $reg_data_root \
 -n $project_name \
 --gpus 0, \
 --data_root "/home/user/Dreambooth-SD-optimized/training_samples" \
 --batch_size $batch_size \
 --class_word $class_word