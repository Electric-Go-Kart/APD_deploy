#!/bin/sh

git checkout remotes/origin/Test
cd ..
mv detect.py ./yolov5/
mv 528Project/ ./yolov5/
mv run_it.sh ./yolov5/
cd yolov5
mkdir runs