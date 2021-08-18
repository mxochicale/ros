# usb_cam



## HARDWARE

1. Install utils
```
sudo apt-get install v4l-utils
```

$ v4l2-ctl --all
```
Driver Info (not using libv4l2):
	Driver name   : uvcvideo
	Card type     : UVC Camera (046d:0825)
	Bus info      : usb-0000:00:1a.0-1.5
	Driver version: 4.4.67
	Capabilities  : 0x84200001
		Video Capture
		Streaming
		Extended Pix Format
		Device Capabilities
	Device Caps   : 0x04200001
		Video Capture
		Streaming
		Extended Pix Format
Priority: 2
Video input : 0 (Camera 1: ok)
Format Video Capture:
	Width/Height      : 640/480
	Pixel Format      : 'YUYV'
	Field             : None
	Bytes per Line    : 1280
	Size Image        : 614400
	Colorspace        : sRGB
	Transfer Function : Default
	YCbCr Encoding    : Default
	Quantization      : Default
	Flags             :
Crop Capability Video Capture:
	Bounds      : Left 0, Top 0, Width 640, Height 480
	Default     : Left 0, Top 0, Width 640, Height 480
	Pixel Aspect: 1/1
Selection: crop_default, Left 0, Top 0, Width 640, Height 480
Selection: crop_bounds, Left 0, Top 0, Width 640, Height 480
Streaming Parameters Video Capture:
	Capabilities     : timeperframe
	Frames per second: 30.000 (30/1)
	Read buffers     : 0
                     brightness (int)    : min=0 max=255 step=1 default=128 value=128
                       contrast (int)    : min=0 max=255 step=1 default=32 value=32
                     saturation (int)    : min=0 max=255 step=1 default=32 value=32
 white_balance_temperature_auto (bool)   : default=1 value=1
                           gain (int)    : min=0 max=255 step=1 default=128 value=17
           power_line_frequency (menu)   : min=0 max=2 default=2 value=2
      white_balance_temperature (int)    : min=0 max=10000 step=10 default=4000 value=5140 flags=inactive
                      sharpness (int)    : min=0 max=255 step=1 default=24 value=24
         backlight_compensation (int)    : min=0 max=1 step=1 default=1 value=1
                  exposure_auto (menu)   : min=0 max=3 default=3 value=3
              exposure_absolute (int)    : min=1 max=10000 step=1 default=166 value=88 flags=inactive
         exposure_auto_priority (bool)   : default=0 value=1
```


## INSTALLATION

1.
```
cd ~/catkin_ws/src/
git clone https://github.com/ros-drivers/usb_cam
```

2.
 then run catkin_make from the catkin workspace root folder.
```
cd .. 
rm -rf build devel install
cd ~/catkin_ws && catkin_make
rospack profile #https://stackoverflow.com/questions/27053334/ros-package-not-found-after-catkin-make
```


```
-- +++ processing catkin package: 'usb_cam'
-- ==> add_subdirectory(usb_cam)
-- Found PkgConfig: /usr/bin/pkg-config (found version "0.29.1")
-- Checking for module 'libavcodec'
--   Found libavcodec, version 56.60.100
-- Checking for module 'libswscale'
--   Found libswscale, version 3.1.101
-- Configuring done
-- Generating done
-- Build files have been written to: /home/map479/catkin_ws/build
####
#### Running command: "make -j4 -l4" in "/home/map479/catkin_ws/build"
####
Scanning dependencies of target usb_cam
[ 20%] Built target razor_imu_9dof_gencfg
[ 40%] Building CXX object usb_cam/CMakeFiles/usb_cam.dir/src/usb_cam.cpp.o
[ 60%] Linking CXX shared library /home/map479/catkin_ws/devel/lib/libusb_cam.so
[ 60%] Built target usb_cam
Scanning dependencies of target usb_cam_node
[ 80%] Building CXX object usb_cam/CMakeFiles/usb_cam_node.dir/nodes/usb_cam_node.cpp.o
[100%] Linking CXX executable /home/map479/catkin_ws/devel/lib/usb_cam/usb_cam_node
[100%] Built target usb_cam_node
```

3. source usb_cam
 Make sure the <catkin_workspace>/devel/setup.bash file is sourced.

 ```
 source ~/.bashrc
 ```

## Usage

### launch files 

4. Add myusbcam.launch 

```
bash copy-launchs-to-catkin_ws.bash
```

5. launch and test
```
roslaunch usb_cam myusbcam.launch
```

```
... logging to /home/map479/.ros/log/b19c5eb8-60d3-11e7-8e3b-7071bc0c1eed/roslaunch-map479-DQ57TM-22906.log
Checking log directory for disk usage. This may take awhile.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

started roslaunch server http://map479-DQ57TM:45205/

SUMMARY
========

PARAMETERS
 * /image_view/autosize: True
 * /rosdistro: kinetic
 * /rosversion: 1.12.7
 * /usb_cam/camera_frame_id: usb_cam
 * /usb_cam/image_height: 480
 * /usb_cam/image_width: 640
 * /usb_cam/io_method: mmap
 * /usb_cam/pixel_format: yuyv
 * /usb_cam/video_device: /dev/video0

NODES
  /
    image_view (image_view/image_view)
    usb_cam (usb_cam/usb_cam_node)

auto-starting new master
process[master]: started with pid [22917]
ROS_MASTER_URI=http://localhost:11311

setting /run_id to b19c5eb8-60d3-11e7-8e3b-7071bc0c1eed
process[rosout-1]: started with pid [22930]
started core service [/rosout]
process[usb_cam-2]: started with pid [22940]
process[image_view-3]: started with pid [22945]
init done
[ INFO] [1499184800.017801815]: Using transport "raw"
[ INFO] [1499184800.139804155]: using default calibration URL
[ INFO] [1499184800.139951849]: camera calibration URL: file:///home/map479/.ros/camera_info/head_camera.yaml
[ INFO] [1499184800.140048763]: Unable to open camera calibration file [/home/map479/.ros/camera_info/head_camera.yaml]
[ WARN] [1499184800.140105001]: Camera calibration file /home/map479/.ros/camera_info/head_camera.yaml not found.
[ INFO] [1499184800.140163018]: Starting 'head_camera' (/dev/video0) at 640x480 via mmap (yuyv) at 30 FPS
[ WARN] [1499184805.951892065]: white_balance_temperature_auto: Input/output error
VIDIOC_S_CTRL: failed: Input/output error

[ WARN] [1499184805.959127136]: unknown control 'focus_auto'

```


or default launch
```
roslaunch usb_cam usb_cam-test.launch
```

### with roscore

terminal 1
```
roscore
```

terminal 2
```
rosrun usb_cam usb_cam_node
```

terminal 3
```
rqt_image_view /usb_cam/image_raw
```

terminal 4

```
rostopic echo /usb_cam/image_raw/theora
```

### rebuilding usb_cam_node
L103 >> `node_.param("pixel_format", pixel_format_name_, std::string("yuyv"));` 

```
cd ~/catkin_ws/
catkin_make
```

## Referemces 
* [tutorial](http://ros-robotics.blogspot.co.uk/2015/06/webcam-on-ros.html)
* [usb_cam](https://github.com/ros-drivers/usb_cam) 
* [WebCams Resolutions](http://ros-robotics.blogspot.co.uk/2015/06/the-best-webcam-on-ros-indigo.html)


