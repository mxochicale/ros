razor imu 9dof
---


```
  $ sudo apt-get install ros-kinetic-razor-imu-9dof
  Reading package lists... Done
  Building dependency tree       
  Reading state information... Done
  The following packages were automatically installed and are no longer required:
    linux-headers-4.4.0-31 linux-headers-4.4.0-31-generic linux-image-4.4.0-31-generic linux-image-extra-4.4.0-31-generic ubuntu-core-launcher
  Use 'sudo apt autoremove' to remove them.
  The following NEW packages will be installed
    ros-kinetic-razor-imu-9dof
  0 to upgrade, 1 to newly install, 0 to remove and 29 not to upgrade.
  Need to get 45.2 kB of archives.
  After this operation, 294 kB of additional disk space will be used.
  Get:1 http://packages.ros.org/ros/ubuntu xenial/main amd64 ros-kinetic-razor-imu-9dof amd64 1.1.1-0xenial-20170416-182732-0800 [45.2 kB]
  Fetched 45.2 kB in 0s (50.9 kB/s)                     
  Selecting previously unselected package ros-kinetic-razor-imu-9dof.
  (Reading database ... 322026 files and directories currently installed.)
  Preparing to unpack .../ros-kinetic-razor-imu-9dof_1.1.1-0xenial-20170416-182732-0800_amd64.deb ...
  Unpacking ros-kinetic-razor-imu-9dof (1.1.1-0xenial-20170416-182732-0800) ...
  Setting up ros-kinetic-razor-imu-9dof (1.1.1-0xenial-20170416-182732-0800) ...
```

```
$ roscd razor_imu_9dof/config
map479@map479-W2600CR:/opt/ros/kinetic/share/razor_imu_9dof/config$
```
```
$ sudo  cp razor.yaml my_razor.yaml
$ sudo gedit my_razor.yaml
```


port: /dev/rfcomm0


```
$ roslaunch razor_imu_9dof razor-pub.launch
... logging to /home/map479/.ros/log/9b44742e-40ae-11e7-9721-001e6756d0aa/roslaunch-map479-W2600CR-4555.log
Checking log directory for disk usage. This may take awhile.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

started roslaunch server http://map479-W2600CR:37892/

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
process[master]: started with pid [4566]
ROS_MASTER_URI=http://localhost:11311

setting /run_id to 9b44742e-40ae-11e7-9721-001e6756d0aa
process[rosout-1]: started with pid [4579]
started core service [/rosout]
process[imu_node-2]: started with pid [4596]
[INFO] [1495650434.354995]: Reconfigure request for yaw_calibration: 0
[INFO] [1495650434.357885]: Set imu_yaw_calibration to 0
[INFO] [1495650434.401429]: Opening /dev/rfcomm0...
[ERROR] [1495650434.401827]: IMU not found at port /dev/rfcomm0. Did you specify the correct port in the launch file?
[imu_node-2] process has finished cleanly
log file: /home/map479/.ros/log/9b44742e-40ae-11e7-9721-001e6756d0aa/imu_node-2*.log
^C[rosout-1] killing on exit
[master] killing on exit
shutting down processing monitor...
... shutting down processing monitor complete
done
```

remove
sudo apt-get remove  ros-kinetic-razor-imu-9dof

```
$ sudo apt-get remove  ros-kinetic-razor-imu-9dof
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages were automatically installed and are no longer required:
  linux-headers-4.4.0-31 linux-headers-4.4.0-31-generic linux-image-4.4.0-31-generic linux-image-extra-4.4.0-31-generic ubuntu-core-launcher
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED
  ros-kinetic-razor-imu-9dof
0 to upgrade, 0 to newly install, 1 to remove and 29 not to upgrade.
After this operation, 294 kB disk space will be freed.
Do you want to continue? [Y/n] Y
(Reading database ... 322074 files and directories currently installed.)
Removing ros-kinetic-razor-imu-9dof (1.1.1-0xenial-20170416-182732-0800) ...
dpkg: warning: while removing ros-kinetic-razor-imu-9dof, directory '/opt/ros/kinetic/share/razor_imu_9dof/config' not empty so not removed
```
