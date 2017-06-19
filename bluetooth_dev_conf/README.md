Bluetooth Device Setting Up
---

# TESTING


## dialout group

```
$ groups
map479 adm cdrom sudo dip plugdev lpadmin sambashare
```

First you need to be in dialout group, then make sure tty is owned by this group.
[http://answers.ros.org/question/46790/failed-to-open-port-devttyusb0/]
To add yourself to group, the /dev/rfcomm0 device has the group of dialout.
All you need to do is add the second USERNAME to the dialout group:

```
$ sudo adduser map479 dialout
Adding user `map479' to group `dialout' ...
Adding user map479 to group dialout
Done.
$ groups
map479 adm cdrom sudo dip plugdev lpadmin sambashare
$ sudo reboot

$ groups
map479 adm dialout cdrom sudo dip plugdev lpadmin sambashare
```

Then relog / restart X server / reboot to make sure

## connecting rfcoom0


* Go to bluetooth Setting and turn on the bluetooth and the visibility of "X-device".
* Connect CSR4.0 ...71:11 and verify the device:
```
$ hcitool dev
Devices:
	hci0	00:1A:7D:DA:71:11
```

* turn on the bluetooth dongle
```
$ hcitool scan
Scanning ...
	00:06:66:71:5C:D4	RNBT-5CD4
```


If it is connected for the first time, then you have to configure rfcomm as regular user with  
"sudo chmod u+s /usr/bin/rfcomm"



bind
```
rfcomm -i 00:1A:7D:DA:71:11 bind 0 00:06:66:71:5C:D4
```

In case of password verification for the first time, type: 0000


```
$ cd ~/mxochicale/github/ros/bluetooth_dev_conf/dongles_conf
$ miniterm.py /dev/rfcomm0 115200

#o1  to start streaming data  
#o0  to stop streaming data
```




## EXTRAS

### rfcomm.conf

* copy rfcomm.conf
```
sudo cp rfcomm.conf /etc/bluetooth/
```
### ISSUES: Can't create RFCOMM TTY: Address already in use
