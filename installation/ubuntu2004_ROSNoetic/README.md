# Installation of ROS Noedic on Ubuntu 20.04 (Desktop Machine)

## Installation and setting up
1. Run bash in `01_machine_features` to identify basic of hardware and version of software.

2. Run `02_install_ros.bash`
```
bash 02_install_ros.bash
```

## Create Environment path (& test it)
```
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws && catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3
source ~/.bashrc
echo $ROS_PACKAGE_PATH
```

## References
* http://wiki.ros.org/noetic/Installation/Ubuntu
* https://answers.ros.org/question/353111/
