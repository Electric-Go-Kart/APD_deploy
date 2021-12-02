# Autonomous Pedestrian Detection (APD) Deployment

Developed by [Ryan Guidice](https://github.com/rguidice "Ryan Guidice") and [Andrew Helmreich](https://github.com/achelm15 "Andrew Helmreich")

On the Raspberry Pi 4B, this deployment is currently located in ~/projects/apd_deployment

To create a new instance of this deployment, follow these instructions:
1. Clone the [yolov5 repo](https://github.com/ultralytics/yolov5 "yolov5 repo"), specifically [this commit](https://github.com/ultralytics/yolov5/commit/79bca2bf64da04e7e1e74a132eb54171f41638cc "this commit")
2. Add the contents of this repository to the yolov5 folder, replacing the detect.py file with our version

Notes:
The runs folder is basically just for storing previous run results, and isn't technically necessary for deployment outside of just needing to exist. It currently has some results from our V1 model, but those could be skipped if storage space is a concern. The existence of the run directory is the only important thing for the deployment.