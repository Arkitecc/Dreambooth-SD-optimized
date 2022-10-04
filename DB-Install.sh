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
mkdir -p /home/user/Dreambooth-SD-optimized/reg_images
mkdir -p /home/user/Dreambooth-SD-optimized/training_images
mkdir -p /home/user/Dreambooth-SD-optimized/trained_generations
cd /home/user/Dreambooth-SD-optimized/
git pull
conda env create -f environment.yaml
conda activate ldm
pip3 install diffusers[training]==0.3.0
wget $CHECKPOINT
echo "Cloud Commander Local Tunnel (.lt) (Easy File Browsing): "
cloudcmd --port 1111 &
lt --port 1111 &
echo "Enter the following command to activate conda in your current terminal: source ~/anaconda3/bin/activate"