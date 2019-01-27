

# Create a ROS Workspace

```
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin_make
```

# source

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

# ROS catkin workspace 
	* src 
	* build
	* devel
	* install

```
catkin_make
catkin_make install
```

# Creating a ROS package
Before creating a ROS package, first switch to the src folder.
`$cd catkin_ws/src`

$ catkin_create_pkg ros_package_name package_dependencies
For example:

```
catkin_create_pkg hello_world roscpp rospy std_msgs
```

# Writing a Simple Publisher and Subscriber (C++)

http://wiki.ros.org/ROS/Tutorials/WritingPublisherSubscriber%28c%2B%2B%29






