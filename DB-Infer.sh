#!/bin/bash
echo "Prompt: "

read PROMPT

echo "Trained .ckpt Location: "

read CHECKPOINT

python /home/user/Dreambooth-SD-optimized/scripts/stable_txt2img.py \
 --ddim_eta 0.0 \
 --n_samples 1 \
 --n_iter 4 \
 --scale 11.0 \
 --ddim_steps 50 \
 --skip_grid \
 --ckpt "$CHECKPOINT" \
 --prompt "$PROMPT"