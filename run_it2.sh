#!/bin/bash
cd /home/gokart/projects/APD_deploy/yolov5
python detect.py --weights ./528Project/kittikaleov2-int8_320_edgetpu.tflite --img 320 --conf 0.25 --source 2