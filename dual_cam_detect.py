import multiprocessing
import subprocess

def run_detection(source, coral_device):
    cmd = [
        "python", "detect.py",
        "--weights", "./528Project/kittikaleov2-int8_320_edgetpu.tflite",
        "--img", "320",
        "--conf", "0.25",
        "--sources", str(source),
        "--coral-device", coral_device  # <- This line assumes `detect.py` can accept a Coral device argument
    ]
    subprocess.run(cmd)

if __name__ == "__main__":
    p1 = multiprocessing.Process(target=run_detection, args=(0, "/dev/bus/usb/001/008"))
    p2 = multiprocessing.Process(target=run_detection, args=(1, "/dev/bus/usb/001/027"))

    p1.start()
    p2.start()

    p1.join()
    p2.join()

