~/catkin_ws/razor_imu_9dof
---

# ~/nodes/imu_node.py

adding:
* number_of_samples:
* becareful with the default_data_stream_path: (dont use a relative path ~/catkin_ws/src/razor_imu_9dof)


# roslaunch razor_imu_9dof razor-pub.launch

0. clone and test before to go to 1.
```
cd ~/catkin_ws/src
git clone https://github.com/KristofRobot/razor_imu_9dof.git
cd .. && catkin_make
```



1. update ~/catkin_ws/src/razor_imu_9dof

```
cd ~/catkin_ws/src/razor_imu_9dof
cp -r ~/mxochicale/github/ros/mx_razor_imu_9dof/catkin_ws/razor_imu_9dof/* .
```



2. Set up ports, files, number_of_samples and paths for data

go to ~/catkin_ws/razor_imu_9dof/config/
and set the following variables in my_razor.yaml and razor*.yaml

```
port:
rawdata_filename:
number_of_samples:
main_data_stream_path:~/catkin_ws/src/razor_imu_9dof
```

1000 samples ~ 20 seconds
3000 samples ~ 60 seconds


3. make
```
cd ~/catkin_ws/ && catkin_make
```

```
$ cd ~/catkin_ws/ && catkin_make
Base path: /home/map479/catkin_ws
Source space: /home/map479/catkin_ws/src
Build space: /home/map479/catkin_ws/build
Devel space: /home/map479/catkin_ws/devel
Install space: /home/map479/catkin_ws/install
####
#### Running command: "make cmake_check_build_system" in "/home/map479/catkin_ws/build"
####
-- Using CATKIN_DEVEL_PREFIX: /home/map479/catkin_ws/devel
-- Using CMAKE_PREFIX_PATH: /home/map479/catkin_ws/devel;/opt/ros/kinetic
-- This workspace overlays: /home/map479/catkin_ws/devel;/opt/ros/kinetic
-- Using PYTHON_EXECUTABLE: /usr/bin/python
-- Using Debian Python package layout
-- Using empy: /usr/bin/empy
-- Using CATKIN_ENABLE_TESTING: ON
-- Call enable_testing()
-- Using CATKIN_TEST_RESULTS_DIR: /home/map479/catkin_ws/build/test_results
-- Found gtest sources under '/usr/src/gtest': gtests will be built
-- Using Python nosetests: /usr/bin/nosetests-2.7
-- catkin 0.7.6
-- BUILD_SHARED_LIBS is on
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~~  traversing 1 packages in topological order:
-- ~~  - razor_imu_9dof
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- +++ processing catkin package: 'razor_imu_9dof'
-- ==> add_subdirectory(razor_imu_9dof)
CMake Warning at /opt/ros/kinetic/share/catkin/cmake/catkin_package.cmake:166 (message):
  catkin_package() DEPENDS on 'CATKIN' but neither 'CATKIN_INCLUDE_DIRS' nor
  'CATKIN_LIBRARIES' is defined.
Call Stack (most recent call first):
  /opt/ros/kinetic/share/catkin/cmake/catkin_package.cmake:102 (_catkin_package)
  razor_imu_9dof/CMakeLists.txt:8 (catkin_package)


-- Configuring done
-- Generating done
-- Build files have been written to: /home/map479/catkin_ws/build
####
#### Running command: "make -j4 -l4" in "/home/map479/catkin_ws/build"
####
[100%] Generating dynamic reconfigure files from cfg/imu.cfg: /home/map479/catkin_ws/devel/include/razor_imu_9dof/imuConfig.h /home/map479/catkin_ws/devel/lib/python2.7/dist-packages/razor_imu_9dof/cfg/imuConfig.py
Generating reconfiguration files for imu in razor_imu_9dof
Wrote header file in /home/map479/catkin_ws/devel/include/razor_imu_9dof/imuConfig.h
[100%] Built target razor_imu_9dof_gencfg
```



# USAGE
## razor-pub-two-imus.launch

```
roslaunch razor_imu_9dof razor-pub-two-imus.launch
```


## razor-pub-four-imus.launch


```
roslaunch razor_imu_9dof razor-pub-four-imus.launch
```
