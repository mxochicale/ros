~/catkin_ws/razor_imu_9dof
---


# 1. clone KristofRobot/razor_imu_9dof.git

```
cd ~/catkin_ws/src
git clone https://github.com/KristofRobot/razor_imu_9dof.git
cd .. && catkin_make
```


# 2. update local ~/catkin_ws/src/razor_imu_9dof with ~/mxochicale/github/ros/mx_razor_imu_9dof/

```
cd ~/catkin_ws/src/razor_imu_9dof
cp -r ~/mxochicale/github/ros/mx_razor_imu_9dof/catkin_ws/razor_imu_9dof/* .
```


# 3. Set up ports, files, number_of_samples and paths for data

create temporal data path
```
cd && mkdir -p tmp/razor
```

move to
```
cd ~/catkin_ws/razor_imu_9dof/config/
```
and set, for example, the following variables in my_razor.yaml and razor*.yaml:

```
port: /dev/rfcomm0  
rawdata_filename: s01.csv  
number_of_samples: 2000 ## 1000 samples ~ 20 seconds; 2000 samples ~ 40 seconds; 3000 samples ~ 60 seconds  
main_data_stream_path: /home/map479/tmp/razor ## (dont use a relative path ~/catkin_ws/src/razor_imu_9dof)  
```


# 4. make

```
cd ~/catkin_ws/ && catkin_make
```

output
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

## bind pair bind bluetooth modules to rfcomm* ports

Turn on the razor modules and
```
cd ~/mxochicale/github/ros/bluetooth_dev_conf/automatic_connection
./bind_four_automatic_connection_ubuntu1604.sh
```
wait until all the bluetooth module led goes from flashing in red to a stable yellow
to a blinking red color.


## razor-pub-****.launch

Once the bluetooth modules have been binded, you can launch the app

```
roslaunch razor_imu_9dof razor-pub-four-imus.launch
```


to release bluetooth modules from  the rfcomm* ports
```
./release_four_automatic_connection_ubuntu1604.sh
```


If there is a failure in the conection wait until the data stop to be streamed and
and press ctrl-c and repeat the same process
