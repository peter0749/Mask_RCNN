#!/bin/bash

# decompressing
mkdir stage1_train stage1_val stage1_test
unzip stage1_train.zip -d stage1_train
unzip stage1_test.zip -d stage1_test

# split training dataset into training/validation
ls stage1_train | sort -R | head -n 65 | while read line; do mv "./stage1_train/$line" "./stage1_val/$line"; done

