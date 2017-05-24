#!/usr/bin/env python

# Reference
# https://stackoverflow.com/questions/676172/full-examples-of-using-pyserial-package



import serial
import sys

port = '/dev/rfcomm0'


# Check your COM port and baud rate
print "Opening ...", port

try:
    ser = serial.Serial(port=port, baudrate=57600, timeout=1)
    print ser.portstr       # check which port was really used
except Exception, e:
    print "error open serial port: " + str(e)
    exit()



# ser = serial.Serial(0)  # open first serial port
# print ser.portstr       # check which port was really used
# ser.write("hello")      # write a string
# ser.close()             # close port
