Time_Synchronizer for sensors
---



# For time synchronizer

Some of the following references might help

* [message_filters: Time Synchronizer](http://wiki.ros.org/message_filters#Time_Synchronizer)
* [synchronize nodes](http://answers.ros.org/question/71848/synchronize-nodes/)
* [ROS camera and IMU synchronization](http://grauonline.de/wordpress/?page_id=1951)
* [A. English et al. "TriggerSync: A Time Synchronization Tool"](https://wiki.qut.edu.au/download/attachments/147952130/TriggerSync.pdf.pdf)



# Posting an question

http://answers.ros.org/question/267464/how-to-synchronize-data-from-four-imus/

How to synchronise data from four IMUS?


I  have been playing around with the [razor_imu_9dof package](http://wiki.ros.org/razor_imu_9dof) and I manage to connect four razor IMUS sensors by doing some minor modifications in the [imu_node.py](https://github.com/mxochicale/ros/blob/master/mx_razor_imu_9dof/catkin_ws/razor_imu_9dof/nodes/imu_node.py) in order to write the streamed data from the sensors using [razor-pub-four-imus.launch](https://github.com/mxochicale/ros/blob/master/mx_razor_imu_9dof/catkin_ws/razor_imu_9dof/launch/razor-pub-four-imus.launch).

Well, well, I am wondering how can I synchronize the data from the four sensors.
For the time being, the data is streamed and saved in files using the [razor-pub-four-imus.launch](https://github.com/mxochicale/ros/blob/master/mx_razor_imu_9dof/catkin_ws/razor_imu_9dof/launch/razor-pub-four-imus.launch). I have [read](http://answers.ros.org/question/71848/synchronize-nodes/) that is possible to use the message filters package to use a [Time_Synchronizer](http://wiki.ros.org/message_filters#Time_Synchronizer)  to create timestamps that contains their headers, and outputs of the nodes. However, it is not too obvious for me the implementation for this case. I would therefore appreciate if you have recommendations, general instructions, or if you have done or seen similar queries where I can get some inspiration and make the synchronize of four sensors work!


P.S.
[KristofRobot](https://github.com/KristofRobot), the maintener of the package,
mentioned that it is possible to run run multiple instances of the same node
to collect data from two or more sensors, using remapping
https://github.com/KristofRobot/razor_imu_9dof/issues/23#issuecomment-159525568
in which one of the recommendations is to create a lunch file.
However, [the querie with the synchonizations is sill remained to be answerred](https://github.com/KristofRobot/razor_imu_9dof/issues/23#issuecomment-239429701)
