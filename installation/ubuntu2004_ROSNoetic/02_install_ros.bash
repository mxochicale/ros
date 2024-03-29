#!/bin/bash

#References
#https://github.com/efernandez/software/blob/master/install_ros.sh

if [[ $# > 1 ]]; then
    ROS_DISTRO=$1
else
    ROS_DISTRO=noetic
fi

### Installation 
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update

sudo apt-get install ros-$ROS_DISTRO-desktop-full
#? sudo apt-get install ros-$ROS_DISTRO-roslint #CMake lint commands for ROS packages.
#? sudo apt-get install ros-$ROS_DISTRO-rqt* #rqt is a Qt-based framework for GUI development for ROS. 

### ros dependencies
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
sudo rosdep init
rosdep update

### Environment setup
echo "##ROS" >> ~/.bashrc
echo "source /opt/ros/"$ROS_DISTRO"/setup.bash" >> ~/.bashrc
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
