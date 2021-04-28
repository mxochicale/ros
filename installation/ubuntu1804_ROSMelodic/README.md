# Installation of ROS Melodic Morenia on Ubuntu 18.04 (Desktop Machine)
ROS Melodic Morenia is the twelfth ROS distribution release. It was 
released on May 23rd, 2018. ROS Melodic Morenia is primarily targeted 
at the Ubuntu 18.04 (Bionic) release. 

## Installation and setting up
Open a terminal and run: 
```
bash install_ros.bash
```

## Create Environment path (& test it)
```
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws && catkin_make
source ~/.bashrc
echo $ROS_PACKAGE_PATH
```

## References
* http://wiki.ros.org/melodic. 
* http://wiki.ros.org/melodic/Installation/Ubuntu
