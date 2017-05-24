razor_imu_9dof
---


http://wiki.ros.org/razor_imu_9dof


# INSTALLATION


sudo apt-get install python-pip  
sudo -H pip install numpy
sudo apt-get install python-visual
exit from sudo


```

cd && mkdir -p ~/catkin_ws/src && cd ~/catkin_ws/src


git clone https://github.com/KristofRobot/razor_imu_9dof.git
cd ..
catkin_make
```




```
Base path: /home/map479-admin/catkin_ws
Source space: /home/map479-admin/catkin_ws/src
Build space: /home/map479-admin/catkin_ws/build
Devel space: /home/map479-admin/catkin_ws/devel
Install space: /home/map479-admin/catkin_ws/install
####
#### Running command: "cmake /home/map479-admin/catkin_ws/src -DCATKIN_DEVEL_PREFIX=/home/map479-admin/catkin_ws/devel -DCMAKE_INSTALL_PREFIX=/home/map479-admin/catkin_ws/install -G Unix Makefiles" in "/home/map479-admin/catkin_ws/build"
####
cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libcrypto.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
-- Using CATKIN_DEVEL_PREFIX: /home/map479-admin/catkin_ws/devel
-- Using CMAKE_PREFIX_PATH: /home/map479-admin/catkin_ws/devel;/opt/ros/indigo
-- This workspace overlays: /home/map479-admin/catkin_ws/devel;/opt/ros/indigo
-- Using PYTHON_EXECUTABLE: /usr/local/bin/python
-- Using Debian Python package layout
-- Using empy: /usr/bin/empy
-- Using CATKIN_ENABLE_TESTING: ON
-- Call enable_testing()
-- Using CATKIN_TEST_RESULTS_DIR: /home/map479-admin/catkin_ws/build/test_results
-- Found gtest sources under '/usr/src/gtest': gtests will be built
-- Using Python nosetests: /usr/bin/nosetests-2.7
-- catkin 0.6.19
-- BUILD_SHARED_LIBS is on
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~~  traversing 1 packages in topological order:
-- ~~  - razor_imu_9dof
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- +++ processing catkin package: 'razor_imu_9dof'
-- ==> add_subdirectory(razor_imu_9dof)
-- Configuring done
-- Generating done
-- Build files have been written to: /home/map479-admin/catkin_ws/build
####
#### Running command: "make -j4 -l4" in "/home/map479-admin/catkin_ws/build"
####
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libcrypto.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libcrypto.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libcrypto.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
Scanning dependencies of target razor_imu_9dof_gencfg
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libcrypto.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
[100%] /usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libcrypto.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
Generating dynamic reconfigure files from cfg/imu.cfg: /home/map479-admin/catkin_ws/devel/include/razor_imu_9dof/imuConfig.h /home/map479-admin/catkin_ws/devel/lib/python2.7/dist-packages/razor_imu_9dof/cfg/imuConfig.py
Generating reconfiguration files for imu in razor_imu_9dof
Wrote header file in /home/map479-admin/catkin_ws/devel/include/razor_imu_9dof/imuConfig.h
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libcrypto.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
[100%] Built target razor_imu_9dof_gencfg
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libssl.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)
/usr/bin/cmake: /home/map479-admin/naosoftware/pynaoqi-python2.7-2.1.4.13-linux64/libcrypto.so.1.0.0: no version information available (required by /usr/lib/x86_64-linux-gnu/libcurl.so.4)



```





%%NO sudo apt-get install ros-indigo-razor-imu-9dof






# USAGE



configuratrion


roscd razor_imu_9dof/config/
cp razor.yaml my_razor.yaml
vim my_razor.yaml
port: /dev/rfcomm0





$ roslaunch razor_imu_9dof razor-pub.launch

```
$ roslaunch razor_imu_9dof razor-pub
razor-pub-and-display.launch  razor-pub-diags.launch        razor-pub.launch
map479-admin@eee320:~/catkin_ws/src/razor_imu_9dof/config$ roslaunch razor_imu_9dof razor-pub.launch
... logging to /home/map479-admin/.ros/log/701b5470-3992-11e7-9728-7071bc6b0ac5/roslaunch-eee320-18983.log
Checking log directory for disk usage. This may take awhile.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

started roslaunch server http://eee320:57734/

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
 * /rosdistro: indigo
 * /rosversion: 1.11.21

NODES
  /
    imu_node (razor_imu_9dof/imu_node.py)

auto-starting new master
process[master]: started with pid [18995]
ROS_MASTER_URI=http://localhost:11311

setting /run_id to 701b5470-3992-11e7-9728-7071bc6b0ac5
process[rosout-1]: started with pid [19008]
started core service [/rosout]
process[imu_node-2]: started with pid [19019]
Traceback (most recent call last):
  File "/home/map479-admin/catkin_ws/src/razor_imu_9dof/nodes/imu_node.py", line 38, in <module>
    from tf.transformations import quaternion_from_euler
  File "/opt/ros/indigo/lib/python2.7/dist-packages/tf/__init__.py", line 29, in <module>
    from listener import TransformListener, TransformerROS
  File "/opt/ros/indigo/lib/python2.7/dist-packages/tf/listener.py", line 30, in <module>
    from tf import transformations
  File "/opt/ros/indigo/lib/python2.7/dist-packages/tf/transformations.py", line 174, in <module>
    import numpy
  File "/usr/lib/python2.7/dist-packages/numpy/__init__.py", line 153, in <module>
    from . import add_newdocs
  File "/usr/lib/python2.7/dist-packages/numpy/add_newdocs.py", line 13, in <module>
    from numpy.lib import add_newdoc
  File "/usr/lib/python2.7/dist-packages/numpy/lib/__init__.py", line 8, in <module>
    from .type_check import *
  File "/usr/lib/python2.7/dist-packages/numpy/lib/type_check.py", line 11, in <module>
    import numpy.core.numeric as _nx
  File "/usr/lib/python2.7/dist-packages/numpy/core/__init__.py", line 6, in <module>
    from . import multiarray
ImportError: /usr/lib/python2.7/dist-packages/numpy/core/multiarray.so: undefined symbol: PyUnicodeUCS4_AsUnicodeEscapeString
[imu_node-2] process has died [pid 19019, exit code 1, cmd /home/map479-admin/catkin_ws/src/razor_imu_9dof/nodes/imu_node.py __name:=imu_node __log:=/home/map479-admin/.ros/log/701b5470-3992-11e7-9728-7071bc6b0ac5/imu_node-2.log].
log file: /home/map479-admin/.ros/log/701b5470-3992-11e7-9728-7071bc6b0ac5/imu_node-2*.log
^C[rosout-1] killing on exit
[master] killing on exit
shutting down processing monitor...
... shutting down processing monitor complete
done



```












roslaunch razor_imu_9dof razor-pub-and-display.launch
