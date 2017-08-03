Ubuntu install of ROS Kinetic PACKAGE on Ubuntu 16.04 on Desktop Machine
---





```
sudo apt-get install ros-kinetic-roscpp
sudo apt-get install ros-kinetic-tf

sudo apt-get install ros-kinetic-std_msgs
sudo apt-get install ros-kinetic-image_transport
sudo apt-get install ros-kinetic-image_geometry
sudo apt-get install ros-kinetic-cv_bridge
sudo apt-get install ros-kinetic-sensor_msgs
sudo apt-get install ros-kinetic-visualization_msgs


```



## ISSUES


Be sure that the github has the branch for the ROS-VESRION, otherwise you will get
error when building the package

such as
```
cd ~/catkin_ws/src && git clone https://github.com/ros/std_msgs
cd .. && catkin_make

/usr/include/boost/tuple/detail/tuple_basic.hpp:45:28: error: expected ‘}’ at end of input
/usr/include/boost/tuple/detail/tuple_basic.hpp:45:28: error: expected ‘}’ at end of input
[ 84%] Generating C++ code from std_msgs/UInt8.msg
image_pipeline/image_publisher/CMakeFiles/image_publisher.dir/build.make:62: recipe for target 'image_pipeline/image_publisher/CMakeFiles/image_publisher.dir/src/nodelet/image_publisher_nodelet.cpp.o' failed
make[2]: *** [image_pipeline/image_publisher/CMakeFiles/image_publisher.dir/src/nodelet/image_publisher_nodelet.cpp.o] Error 1
CMakeFiles/Makefile2:2991: recipe for target 'image_pipeline/image_publisher/CMakeFiles/image_publisher.dir/all' failed
make[1]: *** [image_pipeline/image_publisher/CMakeFiles/image_publisher.dir/all] Error 2
make[1]: *** Waiting for unfinished jobs....
[ 85%] Generating C++ code from std_msgs/Bool.msg
[ 85%] Generating C++ code from std_msgs/Float64.msg
[ 85%] Generating C++ code from std_msgs/UInt32.msg
[ 86%] Generating C++ code from std_msgs/Duration.msg
[ 86%] Generating C++ code from std_msgs/UInt64MultiArray.msg
[ 87%] Generating C++ code from std_msgs/Float64MultiArray.msg
[ 87%] Generating C++ code from std_msgs/Empty.msg
[ 88%] Generating C++ code from std_msgs/Int8.msg
[ 88%] Generating C++ code from std_msgs/UInt64.msg
[ 88%] Building CXX object image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/src/nodelets/register.cpp.o
[ 88%] Built target std_msgs_generate_messages_cpp
[ 89%] Linking CXX shared library /home/map479/catkin_ws/devel/lib/libdepth_image_proc.so
[ 89%] Built target depth_image_proc
Makefile:138: recipe for target 'all' failed
make: *** [all] Error 2
Invoking "make -j4 -l4" failed


```
