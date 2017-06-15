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


# roslaunch razor_imu_9dof razor-pub-two.launch

issues when pairing the bluetooth modules
