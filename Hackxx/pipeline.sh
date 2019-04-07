#!/bin/bash

train_dataset=/Users/Jiazhen/Downloads/train_coco_2014
style_path=/Users/Jiazhen/Desktop/Hackxx/style/starry_night.jpg
model_path=/Users/Jiazhen/Desktop/Hackxx/models
# train new model
python neural_style.py train --dataset $train_dataset --style-image $style_path --save-model-dir $model_path --epochs 2 --cuda 0
