#!/usr/bin/env python

# Reference
# https://stackoverflow.com/questions/676172/full-examples-of-using-pyserial-package

# USAGE
#
#./testing_razor.py
#./testing_razor.py /dev/rfcomm#


import serial
import sys

names = []
if len(sys.argv) < 2:
    port = '/dev/rfcomm0'
else:
    port = ''.join(sys.argv[1:])

# sys.argv[1:] # get everything after the script name


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
