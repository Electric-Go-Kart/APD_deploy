#!/bin/sh

# Setup APD_deploy folder
git clone https://github.com/ultralytics/yolov5
cd yolov5
git checkout remotes/origin/Test
cd ..
mv detect.py ./yolov5/
mv 528Project/ ./yolov5/
mv run_it.sh ./yolov5/
cd yolov5
mkdir runs

# Setup Coral dependencies
echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | sudo tee /etc/apt/sources.list.d/coral-edgetpu.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt update
sudo apt install libedgetpu1-std -y
sudo apt install python3-pycoral -y
pip install -r requirements.txt
pip install numpy --upgrade
