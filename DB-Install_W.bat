@echo off


cd "%USERPROFILE%\Dreambooth-SD-optimized\"

git pull

mkdir "%USERPROFILE%\Dreambooth-SD-optimized\reg_images"
mkdir "%USERPROFILE%\Dreambooth-SD-optimized\training_images"
mkdir "%USERPROFILE%\Dreambooth-SD-optimized\trained_generations"

conda env create -f environment_windows.yaml

conda activate ldt