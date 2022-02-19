# Autonomous Pedestrian Detection (APD) Deployment

Developed by [Ryan Guidice](https://github.com/rguidice "Ryan Guidice") and [Andrew Helmreich](https://github.com/achelm15 "Andrew Helmreich")

To create a new instance of this deployment, simply run APD_deploy_setup.sh, or follow the setup guide in the Google Drive. The setup guide will have more details and explanation.

On the Raspberry Pi 4B, this deployment is currently located in ~/projects/APD_deploy

detect.py is heavily borrowed from [Ultralytic](https://github.com/ultralytics)'s [yolov5](https://github.com/ultralytics/yolov5), with modifications made to support our deployment (mainly support Coral USB Accelerator). The shared memory portion of detect.py was also inspired by [this Stack Overflow answer](https://stackoverflow.com/a/66522825), again modified to support our deployment setup. Full credit for their portions of this codebase go to their respective authors.
