razor_imu_9dof in Ubuntu 16.04x64 with ROS /opt/ros/kinetic/setup.bash
---


http://wiki.ros.org/razor_imu_9dof


# Dependencies

Install Python dependencies to run imu_node.py

```
$ sudo apt-get install python-pip  

Reading package lists... Done
Building dependency tree       
Reading state information... Done
python-pip is already the newest version (8.1.1-2ubuntu0.4).
```


```
$ sudo apt-get install python-visual
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages were automatically installed and are no longer required:
  libmircommon5 linux-headers-4.4.0-31 linux-headers-4.4.0-31-generic linux-image-4.4.0-31-generic linux-image-extra-4.4.0-31-generic ubuntu-core-launcher
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  libglademm-2.4-1v5 libgtkglextmm-x11-1.2-0v5 libgtkmm-2.4-1v5
Suggested packages:
  idle
The following NEW packages will be installed
  libglademm-2.4-1v5 libgtkglextmm-x11-1.2-0v5 libgtkmm-2.4-1v5 python-visual
0 to upgrade, 4 to newly install, 0 to remove and 10 not to upgrade.
Need to get 3,191 kB of archives.
After this operation, 11.0 MB of additional disk space will be used.
Do you want to continue? [Y/n]
```



```
$ sudo pip install numpy
The directory '/home/map479/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/map479/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Requirement already satisfied (use --upgrade to upgrade): numpy in /usr/lib/python2.7/dist-packages
You are using pip version 8.1.1, however version 9.0.1 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.


```



```
$ sudo pip install matplotlib
The directory '/home/map479/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/map479/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Requirement already satisfied (use --upgrade to upgrade): matplotlib in /usr/lib/python2.7/dist-packages
You are using pip version 8.1.1, however version 9.0.1 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.

```



```
$ sudo pip install rospkg
The directory '/home/map479/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/map479/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Requirement already satisfied (use --upgrade to upgrade): rospkg in /usr/lib/python2.7/dist-packages
Requirement already satisfied (use --upgrade to upgrade): PyYAML in /usr/lib/python2.7/dist-packages (from rospkg)
You are using pip version 8.1.1, however version 9.0.1 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.

```



```
$ sudo pip install pyserial
The directory '/home/map479/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/map479/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Requirement already satisfied (use --upgrade to upgrade): pyserial in /usr/lib/python2.7/dist-packages
You are using pip version 8.1.1, however version 9.0.1 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.
```




# ROS razor_imu_9dof.git


### Configurate the ROS Environment
```
cd && rm -rf ~/catkin_ws &&  mkdir -p ~/catkin_ws/src &&  cd ~/catkin_ws/src && catkin_init_workspace && cd ~/catkin_ws/ && catkin_make
```

output
```
Creating symlink "/home/map479/catkin_ws/src/CMakeLists.txt" pointing to "/opt/ros/kinetic/share/catkin/cmake/toplevel.cmake"
Base path: /home/map479/catkin_ws
Source space: /home/map479/catkin_ws/src
Build space: /home/map479/catkin_ws/build
Devel space: /home/map479/catkin_ws/devel
Install space: /home/map479/catkin_ws/install
####
#### Running command: "cmake /home/map479/catkin_ws/src -DCATKIN_DEVEL_PREFIX=/home/map479/catkin_ws/devel -DCMAKE_INSTALL_PREFIX=/home/map479/catkin_ws/install -G Unix Makefiles" in "/home/map479/catkin_ws/build"
####
-- The C compiler identification is GNU 5.4.0
-- The CXX compiler identification is GNU 5.4.0
-- Check for working C compiler: /usr/bin/cc
-- Check for working C compiler: /usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Using CATKIN_DEVEL_PREFIX: /home/map479/catkin_ws/devel
-- Using CMAKE_PREFIX_PATH: /opt/ros/kinetic
-- This workspace overlays: /opt/ros/kinetic
-- Found PythonInterp: /usr/bin/python (found version "2.7.12")
-- Using PYTHON_EXECUTABLE: /usr/bin/python
-- Using Debian Python package layout
-- Using empy: /usr/bin/empy
-- Using CATKIN_ENABLE_TESTING: ON
-- Call enable_testing()
-- Using CATKIN_TEST_RESULTS_DIR: /home/map479/catkin_ws/build/test_results
-- Looking for pthread.h
-- Looking for pthread.h - found
-- Looking for pthread_create
-- Looking for pthread_create - not found
-- Looking for pthread_create in pthreads
-- Looking for pthread_create in pthreads - not found
-- Looking for pthread_create in pthread
-- Looking for pthread_create in pthread - found
-- Found Threads: TRUE  
-- Found gtest sources under '/usr/src/gtest': gtests will be built
-- Using Python nosetests: /usr/bin/nosetests-2.7
-- catkin 0.7.6
-- BUILD_SHARED_LIBS is on
-- Configuring done
-- Generating done
-- Build files have been written to: /home/map479/catkin_ws/build
####
#### Running command: "make -j4 -l4" in "/home/map479/catkin_ws/build"
####

```


### Clone github.com/KristofRobot/razor_imu_9dof.git
```
cd ~/catkin_ws/src && git clone https://github.com/KristofRobot/razor_imu_9dof.git
```

output
```
Cloning into 'razor_imu_9dof'...
remote: Counting objects: 753, done.
remote: Total 753 (delta 0), reused 0 (delta 0), pack-reused 753
Receiving objects: 100% (753/753), 193.70 KiB | 0 bytes/s, done.
Resolving deltas: 100% (361/361), done.
Checking connectivity... done.

```




```
cd .. && catkin_make
```

output
```
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
Scanning dependencies of target razor_imu_9dof_gencfg
[100%] Generating dynamic reconfigure files from cfg/imu.cfg: /home/map479/catkin_ws/devel/include/razor_imu_9dof/imuConfig.h /home/map479/catkin_ws/devel/lib/python2.7/dist-packages/razor_imu_9dof/cfg/imuConfig.py
Generating reconfiguration files for imu in razor_imu_9dof
Wrote header file in /home/map479/catkin_ws/devel/include/razor_imu_9dof/imuConfig.h
[100%] Built target razor_imu_9dof_gencfg

```








# Sourcing Environment.

Sourcing any setup files in ~/catkin_ws/devel/ will overlay your workspace
 on top of your environment.
```
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
```

Testing the environment
```
echo $ROS_PACKAGE_PATH
/home/map479/catkin_ws/src:/opt/ros/kinetic/share
```

# USAGE

```
roscd razor_imu_9dof/config/ &&  cp razor.yaml my_razor.yaml
```

0. edit my_razor.yaml
```
gedit my_razor.yaml
```

comment and add:
```
## USB port
#port: /dev/ttyUSB0
port: /dev/rfcomm0
```





1. turn on the razor sensor

2. Check if the device is available with
```
$ hcitool scan
Scanning ...

	00:06:66:71:5C:D4
```

3. bind device   
```
sudo rfcomm -i 00:1A:7D:DA:71:11 bind 0 00:06:66:71:5C:D4
```



4. ROS lauch
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

Using ROS


```
$ rostopic echo /imu
```

Ploting streaming data
```
$ rqt_plot /imu/linear_acceleration
$ rqt_plot /imu/orientation/
$ rqt_plot /imu/angular_velocity/
```

```
$ rqt_plot /imu/orientation/x:y:z:w
$ rqt_plot /imu/angular_velocity/x:y:z
$ rqt_plot /imu/linear_acceleration/x:y:z
```




# ISSUES


connect device
```
$ sudo rfcomm -i 00:1A:7D:DA:71:11 release 0 00:06:66:71:5C:D4
$ sudo rfcomm -i 00:1A:7D:DA:71:11 bind 0 00:06:66:71:5C:D4
```

```
$ sudo rfcomm -i 00:1A:7D:DA:71:11 release 0 00:06:66:71:5C:D4
$ sudo rfcomm -i 00:1A:7D:DA:71:11 connect 0 00:06:66:71:5C:D4
Connected /dev/rfcomm0 to 00:06:66:71:5C:D4 on channel 1
Press CTRL-C for hangup


```

```
roslaunch razor_imu_9dof razor-pub.launch
```

OUTPUT
```
$ roslaunch razor_imu_9dof razor-pub.launch
... logging to /home/map479/.ros/log/077b4320-52ac-11e7-9a11-7071bc0c1eed/roslaunch-map479-DQ57TM-25193.log
Checking log directory for disk usage. This may take awhile.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

started roslaunch server http://map479-DQ57TM:36825/

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
process[master]: started with pid [25204]
ROS_MASTER_URI=http://localhost:11311

setting /run_id to 077b4320-52ac-11e7-9a11-7071bc0c1eed
process[rosout-1]: started with pid [25217]
started core service [/rosout]
process[imu_node-2]: started with pid [25224]
[INFO] [1497628448.327765]: Reconfigure request for yaw_calibration: 0
[INFO] [1497628448.328293]: Set imu_yaw_calibration to 0
[INFO] [1497628448.364721]: Opening /dev/rfcomm0...
[ERROR] [1497628448.365145]: IMU not found at port /dev/rfcomm0. Did you specify the correct port in the launch file?
[imu_node-2] process has finished cleanly
log file: /home/map479/.ros/log/077b4320-52ac-11e7-9a11-7071bc0c1eed/imu_node-2*.log

```


NB. if you got the error of "IMU is not founded at port /dev/rfcomm0",
you can try to connect and disconnect the bluetooth module or turn on/off the bluetooth module.

### SOLUTIONS
#### A,
When connecting
```
sudo
```

#### B,
When connecting
```
C
```
