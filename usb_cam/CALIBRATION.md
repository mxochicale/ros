

1. clone
```
cd ~/catkin_ws/src/
git clone https://github.com/ros-perception/image_pipeline
```

2. make
```
cd .. && catkin_make
```

3. source

 ```
 source ~/.bashrc
 ```


## Checking
http://wiki.ros.org/camera_calibration

T1:
```
roscore
```

```
rosrun usb_cam usb_cam_node
```

T2
```
rosrun camera_calibration cameracheck.py --size 8x6 monocular:=/forearm image:=/usb_cam/image_raw
```





## Calibration
http://wiki.ros.org/camera_calibration/Tutorials/MonocularCalibration

T1:
```
roscore
```

```
rosrun usb_cam usb_cam_node
```

T2
```
rosrun camera_calibration cameracalibrator.py --size 8x6 --square 0.108  image:=/usb_cam/image_raw camera:=/usb_cam
```


* ISSUES:
https://robotics.stackexchange.com/questions/7647/ros-calibration-camera-problems
rosrun camera_calibration cameracalibrator.py --size 8x6 --square 0.108 image:=/camera/image_raw camera:=/camera --no-service-check
rosrun camera_calibration cameracalibrator.py --size 8x6 --square 0.108 --approximate=0.1 image:=/camera/image_raw camera:=/camera --no-service-check




## head_camera.ini


cd ~.ros/
mkdir camera_info && cd camera_info
touch head_camera.ini


```
echo "[image]" >> head_camera.ini
echo "" >> head_camera.ini
echo "width" >> head_camera.ini
echo "640" >> head_camera.ini
echo "" >> head_camera.ini
echo "height" >> head_camera.ini
echo "480" >> head_camera.ini
echo "" >> head_camera.ini
echo "[head_camera]" >> head_camera.ini
echo "" >> head_camera.ini
echo "camera matrix" >> head_camera.ini
echo "949.988246 0.000000 223.316376" >> head_camera.ini
echo "0.000000 954.285082 287.414630" >> head_camera.ini
echo "0.000000 0.000000 1.000000" >> head_camera.ini
echo "" >> head_camera.ini
echo "distortion" >> head_camera.ini
echo "-0.187554 0.532282 0.024583 -0.054491 0.000000" >> head_camera.ini
echo "" >> head_camera.ini
echo "rectification" >> head_camera.ini
echo "1.000000 0.000000 0.000000" >> head_camera.ini
echo "0.000000 1.000000 0.000000" >> head_camera.ini
echo "0.000000 0.000000 1.000000" >> head_camera.ini
echo "" >> head_camera.ini
echo "projection" >> head_camera.ini
echo "908.419250 0.000000 204.700860 0.000000" >> head_camera.ini
echo "0.000000 956.037170 293.203713 0.000000" >> head_camera.ini
echo "0.000000 0.000000 1.000000 0.000000" >> head_camera.ini
```


```
[image]

width
640

height
480

[head_camera]

camera matrix
949.988246 0.000000 223.316376
0.000000 954.285082 287.414630
0.000000 0.000000 1.000000

distortion
-0.187554 0.532282 0.024583 -0.054491 0.000000

rectification
1.000000 0.000000 0.000000
0.000000 1.000000 0.000000
0.000000 0.000000 1.000000

projection
908.419250 0.000000 204.700860 0.000000
0.000000 956.037170 293.203713 0.000000
0.000000 0.000000 1.000000 0.000000
```

touch head_camera.yaml


 Unable to open camera calibration file [/home/map479/.ros/camera_info/head_camera.yaml]
