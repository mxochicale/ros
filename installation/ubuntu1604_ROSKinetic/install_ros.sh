#!/bin/bash

#references
#https://github.com/efernandez/software/blob/master/install_ros.sh


if [[ $# > 1 ]]; then
    ROS_DISTRO=$1
else
    ROS_DISTRO=kinetic
fi

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update

sudo apt-get install ros-$ROS_DISTRO-desktop-full
sudo apt-get install ros-$ROS_DISTRO-roslint #CMake lint commands for ROS packages.
sudo apt-get install ros-$ROS_DISTRO-rqt* #rqt is a Qt-based framework for GUI development for ROS. 

sudo rosdep init
rosdep update

echo "source /opt/ros/"$ROS_DISTRO"/setup.bash" >> ~/.bashrc
source ~/.bashrc

