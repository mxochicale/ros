Testing razor with pySerial



# Ubuntu 14.04 x64
connect the device with: "~/mxochicale/github/ros/bluetooth_dev_conf/automatic_connection$ ./one_automatic_connection.sh"

```
$ ls -l /dev/rfcomm*
crw-rw---- 1 root dialout 216, 0 May 24 15:21 /dev/rfcomm0
```

# Ubuntu 16.04 x64



```
$ hcitool scan
Scanning ...
	00:06:66:71:5C:D4	RNBT-5CD4
```


```
cd ~/automatic_connections
```

```
$ ./one_automatic_connection.sh
-------------------------------
release and connect
-------------------------------
Can't release device: No such device
Connected /dev/rfcomm0 to 00:06:66:71:5C:D4 on channel 1
Press CTRL-C for hangup
```



```
$ ls -l /dev/rfcomm*
crw-rw---- 1 root dialout 216, 0 May 24 14:47 /dev/rfcomm0
```

The /dev/rfcomm0 device has the group of dialout. All you need to do is add the second USERNAME to the dialout group:
```
sudo adduser USERNAME dialout
```
http://answers.ros.org/question/189457/rosrun-as-super-user/#189462
