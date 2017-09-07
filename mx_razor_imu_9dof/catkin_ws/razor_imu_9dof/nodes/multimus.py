# PUT multiimus.py in /nodes
# Learn more about the use of TimeSynchronizer at https://github.com/Room1104/SmileDetection
# Thanks to Victor from China for the orientation

#!/usr/bin/env python

# Miguel P Xochicale, 2017


import message_filters
import ropsy
import YOUR_IMU_DATA_TYPE

# this callback function will be called
# when message filter once sync four messages
# do your processing here
def callback(self, data1, data2, data3, data4):
    pass

    imu1 = message_filters.Subscriber('/ns01/imu', YOUR_IMU_DATA_TYPE)
    imu2 = message_filters.Subscriber('/ns02/imu', YOUR_IMU_DATA_TYPE)
    imu3 = message_filters.Subscriber('/ns03/imu', YOUR_IMU_DATA_TYPE)
    imu4 = message_filters.Subscriber('/ns04/imu', YOUR_IMU_DATA_TYPE)


    ts = message_filters.TimeSynchronizer(imu1, imu2, imu3, imu4, 10)
    ts.registerCallback(callback)
    rospy.spin()
