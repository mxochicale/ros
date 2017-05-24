razor_imu_9dof in Ubuntu 16.04x64 with ROS /opt/ros/kinetic/setup.bash
---


http://wiki.ros.org/razor_imu_9dof


# INSTALLATION


Install Python dependencies to run imu_node.py
```
sudo apt-get install python-pip  
sudo -H pip install numpy
sudo apt-get install python-visual
sudo pip install pyserial
exit from sudo
```



```
$ sudo pip install numpy
[sudo] password for map479:
The directory '/home/map479/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/map479/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Collecting numpy
  Downloading numpy-1.12.1-cp27-cp27m-manylinux1_x86_64.whl (16.5MB)
    100% |████████████████████████████████| 16.5MB 70kB/s
Installing collected packages: numpy
Successfully installed numpy-1.12.1

```

```
map479@map479-W2600CR:~/gazr/build$ sudo pip install matplotlib
The directory '/home/map479/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/map479/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Collecting matplotlib
  Downloading matplotlib-2.0.2-cp27-cp27m-manylinux1_x86_64.whl (14.5MB)
    100% |████████████████████████████████| 14.5MB 80kB/s
Requirement already satisfied: six>=1.10 in /usr/local/lib/python2.7/site-packages (from matplotlib)
Collecting pytz (from matplotlib)
  Downloading pytz-2017.2-py2.py3-none-any.whl (484kB)
    100% |████████████████████████████████| 491kB 2.5MB/s
Collecting subprocess32 (from matplotlib)
  Downloading subprocess32-3.2.7.tar.gz (54kB)
    100% |████████████████████████████████| 61kB 9.8MB/s
Collecting cycler>=0.10 (from matplotlib)
  Downloading cycler-0.10.0-py2.py3-none-any.whl
Collecting python-dateutil (from matplotlib)
  Downloading python_dateutil-2.6.0-py2.py3-none-any.whl (194kB)
    100% |████████████████████████████████| 194kB 5.5MB/s
Requirement already satisfied: pyparsing!=2.0.4,!=2.1.2,!=2.1.6,>=1.5.6 in /usr/local/lib/python2.7/site-packages (from matplotlib)
Requirement already satisfied: numpy>=1.7.1 in /usr/local/lib/python2.7/site-packages (from matplotlib)
Collecting functools32 (from matplotlib)
  Downloading functools32-3.2.3-2.zip
Installing collected packages: pytz, subprocess32, cycler, python-dateutil, functools32, matplotlib
  Running setup.py install for subprocess32 ... done
  Running setup.py install for functools32 ... done
Successfully installed cycler-0.10.0 functools32-3.2.3.post2 matplotlib-2.0.2 python-dateutil-2.6.0 pytz-2017.2 subprocess32-3.2.7
```



Remember to install and configurate the ROS Environment
```
cd && rm -rf ~/catkin_ws &&  mkdir -p ~/catkin_ws/src &&  cd ~/catkin_ws/src && catkin_init_workspace && cd ~/catkin_ws/ && catkin_make
```



```
cd ~/catkin_ws/src
git clone https://github.com/KristofRobot/razor_imu_9dof.git
cd ..
catkin_make
```




```
$ cd ~/catkin_ws/src
map479@map479-W2600CR:~/catkin_ws/src$ git clone https://github.com/KristofRobot/razor_imu_9dof.git
Cloning into 'razor_imu_9dof'...
remote: Counting objects: 753, done.
remote: Total 753 (delta 0), reused 0 (delta 0), pack-reused 753
Receiving objects: 100% (753/753), 193.70 KiB | 0 bytes/s, done.
Resolving deltas: 100% (361/361), done.
Checking connectivity... done.

```




```
map479@map479-W2600CR:~/catkin_ws/src$ cd ..
```



```
map479@map479-W2600CR:~/catkin_ws$ catkin_make
Base path: /home/map479/catkin_ws
Source space: /home/map479/catkin_ws/src
Build space: /home/map479/catkin_ws/build
Devel space: /home/map479/catkin_ws/devel
Install space: /home/map479/catkin_ws/install
####
#### Running command: "cmake /home/map479/catkin_ws/src -DCATKIN_DEVEL_PREFIX=/home/map479/catkin_ws/devel -DCMAKE_INSTALL_PREFIX=/home/map479/catkin_ws/install -G Unix Makefiles" in "/home/map479/catkin_ws/build"
####
-- Using CATKIN_DEVEL_PREFIX: /home/map479/catkin_ws/devel
-- Using CMAKE_PREFIX_PATH: /opt/ros/kinetic
-- This workspace overlays: /opt/ros/kinetic
-- Using PYTHON_EXECUTABLE: /usr/local/bin/python
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
#### Running command: "make -j8 -l8" in "/home/map479/catkin_ws/build"
####
Scanning dependencies of target razor_imu_9dof_gencfg
[100%] Generating dynamic reconfigure files from cfg/imu.cfg: /home/map479/catkin_ws/devel/include/razor_imu_9dof/imuConfig.h /home/map479/catkin_ws/devel/lib/python2.7/dist-packages/razor_imu_9dof/cfg/imuConfig.py
Traceback (most recent call last):
  File "/home/map479/catkin_ws/src/razor_imu_9dof/cfg/imu.cfg", line 4, in <module>
    from dynamic_reconfigure.parameter_generator_catkin import *
  File "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/__init__.py", line 38, in <module>
    import roslib
  File "/opt/ros/kinetic/lib/python2.7/dist-packages/roslib/__init__.py", line 50, in <module>
    from roslib.launcher import load_manifest
  File "/opt/ros/kinetic/lib/python2.7/dist-packages/roslib/launcher.py", line 42, in <module>
    import rospkg
ImportError: No module named rospkg
razor_imu_9dof/CMakeFiles/razor_imu_9dof_gencfg.dir/build.make:63: recipe for target '/home/map479/catkin_ws/devel/include/razor_imu_9dof/imuConfig.h' failed
make[2]: *** [/home/map479/catkin_ws/devel/include/razor_imu_9dof/imuConfig.h] Error 1
CMakeFiles/Makefile2:339: recipe for target 'razor_imu_9dof/CMakeFiles/razor_imu_9dof_gencfg.dir/all' failed
make[1]: *** [razor_imu_9dof/CMakeFiles/razor_imu_9dof_gencfg.dir/all] Error 2
Makefile:138: recipe for target 'all' failed
make: *** [all] Error 2
Invoking "make -j8 -l8" failed
```


```
sudo apt-get update
sudo apt-get install python-catkin-pkg
```
SAME PROBLEM


```
$ sudo pip install rospkg
[sudo] password for map479:
The directory '/home/map479/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/map479/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Collecting rospkg
  Downloading rospkg-1.1.1.tar.gz
Collecting PyYAML (from rospkg)
  Downloading PyYAML-3.12.tar.gz (253kB)
    100% |████████████████████████████████| 256kB 2.0MB/s
Installing collected packages: PyYAML, rospkg
  Running setup.py install for PyYAML ... done
  Running setup.py install for rospkg ... done
Successfully installed PyYAML-3.12 rospkg-1.1.1
```


```
$ cd ~/catkin_ws/
map479@map479-W2600CR:~/catkin_ws$ catkin_make clean
Base path: /home/map479/catkin_ws
Source space: /home/map479/catkin_ws/src
Build space: /home/map479/catkin_ws/build
Devel space: /home/map479/catkin_ws/devel
Install space: /home/map479/catkin_ws/install
####
#### Running command: "make cmake_check_build_system" in "/home/map479/catkin_ws/build"
####
####
#### Running command: "make clean -j8 -l8" in "/home/map479/catkin_ws/build"
####
map479@map479-W2600CR:~/catkin_ws$ catkin_make
Base path: /home/map479/catkin_ws
Source space: /home/map479/catkin_ws/src
Build space: /home/map479/catkin_ws/build
Devel space: /home/map479/catkin_ws/devel
Install space: /home/map479/catkin_ws/install
####
#### Running command: "make cmake_check_build_system" in "/home/map479/catkin_ws/build"
####
####
#### Running command: "make -j8 -l8" in "/home/map479/catkin_ws/build"
####
[100%] Generating dynamic reconfigure files from cfg/imu.cfg: /home/map479/catkin_ws/devel/include/razor_imu_9dof/imuConfig.h /home/map479/catkin_ws/devel/lib/python2.7/dist-packages/razor_imu_9dof/cfg/imuConfig.py
Generating reconfiguration files for imu in razor_imu_9dof
Wrote header file in /home/map479/catkin_ws/devel/include/razor_imu_9dof/imuConfig.h
[100%] Built target razor_imu_9dof_gencfg

```



# Configuration

Sourcing any setup files in ~/catkin_ws/devel/ will overlay your workspace
 on top of your environment.
```
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
```

```
echo $ROS_PACKAGE_PATH
/home/map479/catkin_ws/src:/opt/ros/kinetic/share
```


roscd razor_imu_9dof/config/
cp razor.yaml my_razor.yaml

comment and add:

#port: /dev/ttyUSB0
port: /dev/rfcomm0


# USAGE


connect device with  
```
./one_automatic_connection.sh
```
then
```
roslaunch razor_imu_9dof razor-pub.launch
```

```
$ roslaunch razor_imu_9dof razor-pub.launch
... logging to /home/map479/.ros/log/36141878-401a-11e7-a92c-001e6756d0aa/roslaunch-map479-W2600CR-29591.log
Checking log directory for disk usage. This may take awhile.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

started roslaunch server http://map479-W2600CR:38379/

SUMMARY
========

PARAMETERS
 * /imu_node/accel_x_max: 250.0
 * /imu_node/accel_x_min: -250.0
 * /imu_node/accel_y_max: 250.0
 * /imu_node/accel_y_min: -250.0
 * /imu_node/accel_z_max: 250.0
 * /imu_node/accel_z_min: -250.0
 * /imu_node/calibration_magn_use_extended: False
 * /imu_node/gyro_average_offset_x: 0.0
 * /imu_node/gyro_average_offset_y: 0.0
 * /imu_node/gyro_average_offset_z: 0.0
 * /imu_node/imu_yaw_calibration: 0.0
 * /imu_node/magn_ellipsoid_center: [0, 0, 0]
 * /imu_node/magn_ellipsoid_transform: [[0, 0, 0], [0, 0...
 * /imu_node/magn_x_max: 600.0
 * /imu_node/magn_x_min: -600.0
 * /imu_node/magn_y_max: 600.0
 * /imu_node/magn_y_min: -600.0
 * /imu_node/magn_z_max: 600.0
 * /imu_node/magn_z_min: -600.0
 * /imu_node/port: /dev/rfcomm0
 * /rosdistro: kinetic
 * /rosversion: 1.12.7

NODES
  /
    imu_node (razor_imu_9dof/imu_node.py)

auto-starting new master
process[master]: started with pid [29602]
ROS_MASTER_URI=http://localhost:11311

setting /run_id to 36141878-401a-11e7-a92c-001e6756d0aa
process[rosout-1]: started with pid [29615]
started core service [/rosout]
process[imu_node-2]: started with pid [29632]
[INFO] [1495586699.088859]: Reconfigure request for yaw_calibration: 0
[INFO] [1495586699.089519]: Set imu_yaw_calibration to 0
[INFO] [1495586699.130892]: Opening /dev/rfcomm0...
[ERROR] [1495586699.131419]: IMU not found at port /dev/rfcomm0. Did you specify the correct port in the launch file?
[imu_node-2] process has finished cleanly
log file: /home/map479/.ros/log/36141878-401a-11e7-a92c-001e6756d0aa/imu_node-2*.log
^C[rosout-1] killing on exit
[master] killing on exit
shutting down processing monitor...
... shutting down processing monitor complete
done
map479@map479-W2600CR:~/mxochicale/github/ros$

```