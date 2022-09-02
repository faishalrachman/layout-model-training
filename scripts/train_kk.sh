#!/bin/bash

cd ../tools

python train_net.py \
    --dataset_name          kartu-keluarga \
    --json_annotation_train ../dataset/train/_annotations.coco.json \
    --image_path_train      ../dataset/train \
    --json_annotation_val   ../dataset/valid/_annotations.coco.json \
    --image_path_val       ../dataset/valid \
    --config-file           ../configs/prima/mask_rcnn_R_50_FPN_3x.yaml \
    OUTPUT_DIR  ../outputs/prima/mask_rcnn_R_50_FPN_3x/ \
    SOLVER.IMS_PER_BATCH 2 