Ubuntu install of ROS Kinetic on Ubuntu 16.04 on Desktop Machine
---

# REFERENCES:
* http://wiki.ros.org/kinetic/Installation/Ubuntu
* https://afsyaw.wordpress.com/2016/12/23/setting-up-ros-on-ubuntu-16-04/
* https://github.com/efernandez/software/blob/master/install_ros.sh


# INSTALLATION


```
sh install_ros.sh
```

# TESTING

Create a ROS Workspace

```
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws && catkin_make
```

```
echo $ROS_PACKAGE_PATH
```




# REMOVE

```
sudo apt-get purge ros-*
sudo apt-get autoremove
cd /etc/ros/rosdep/sources.list.d 
sudo rm 20-default.list
```



