@echo off

SET project_name=shinobu
SET batch_size=394
SET class_word=person
SET reg_data_root=%USERPROFILE%/Dreambooth-SD-optimized/reg_images/
python "%USERPROFILE%\Dreambooth-SD-optimized\main.py" "--base" "%USERPROFILE%\Dreambooth-SD-optimized\configs\stable-diffusion\v1-finetune_unfrozen.yaml" "-t" "--actual_resume" "%USERPROFILE%\Dreambooth-SD-optimized\model.ckpt" "--reg_data_root" "%reg_data_root%" "-n" "%project_name%" "--gpus" "0," "--data_root" "%USERPROFILE%\Dreambooth-SD-optimized\training_images" "--batch_size" "%batch_size%" "--class_word" "%class_word%"
