#!/bin/bash

model_path=/Users/Jiazhen/Desktop/Hackxx/models

# train for the first style
content_file=/Users/Jiazhen/Desktop/Hackxx/content/cat.jpg
style=/Users/Jiazhen/Downloads/saved_models/udnie.pth
output_image=/Users/Jiazhen/Desktop/Hackxx/output/cat_1.jpg
python neural_style.py eval --content-image $content_file --model $style --output-image $output_image --cuda 0

# train for the second style
content_file=/Users/Jiazhen/Desktop/Hackxx/output/cat_1.jpg
style=/Users/Jiazhen/Downloads/saved_models/rain_princess.pth
output_image=/Users/Jiazhen/Desktop/Hackxx/output/cat_2.jpg
python neural_style.py eval --content-image $content_file --model $style --output-image $output_image --cuda 0