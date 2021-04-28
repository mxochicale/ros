#!/bin/bash

#References
#https://github.com/efernandez/software/blob/master/install_ros.sh

if [[ $# > 1 ]]; then
    ROS_DISTRO=$1
else
    ROS_DISTRO=melodic
fi

### Installation 
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update

sudo apt-get install ros-$ROS_DISTRO-desktop-full
#? sudo apt-get install ros-$ROS_DISTRO-roslint #CMake lint commands for ROS packages.
#? sudo apt-get install ros-$ROS_DISTRO-rqt* #rqt is a Qt-based framework for GUI development for ROS. 

### ros dependencies
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo rosdep init
rosdep update

### Environment setup
echo "##ROS" >> ~/.bashrc
echo "source /opt/ros/"$ROS_DISTRO"/setup.bash" >> ~/.bashrc
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
