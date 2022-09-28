#!/bin/bash
export PATH="$HOME/.local/bin:$PATH"

echo "Insert link to model.ckpt: "
read CHECKPOINT

sudo apt-get update
sudo apt-get upgrade -y
sudo apt install npm -y
sudo apt install nodejs -y
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo npm install -g localtunnel
sudo npm i cloudcmd -g --force

cd /home/user/
curl -LO https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
bash Anaconda3-2022.05-Linux-x86_64.sh -b -u
source ~/anaconda3/bin/activate 
conda init bash
git clone https://github.com/Arkitecc/Dreambooth-SD-optimized
mkdir -p /home/user/Dreambooth-SD-optimized/outputs/txt2img-samples/samples/
mkdir -p /home/user/Dreambooth-SD-optimized/training_samples
mkdir -p /home/user/Dreambooth-SD-optimized/trained_models
mkdir -p /home/user/Dreambooth-SD-optimized/outputs/trained_generations
cd /home/user/Dreambooth-SD-optimized/
conda env create -f environment.yaml
conda activate ldm
pip3 install diffusers[training]==0.3.0
wget $CHECKPOINT