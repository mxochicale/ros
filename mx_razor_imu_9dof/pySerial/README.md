Testing razor with pySerial



# Ubuntu 14.04 x64
connect the device with: "~/mxochicale/github/ros/bluetooth_dev_conf/automatic_connection$ ./one_automatic_connection.sh"

```
$ ls -l /dev/rfcomm*
crw-rw---- 1 root dialout 216, 0 May 24 15:21 /dev/rfcomm0
```

```
sudo lsof /dev/rfcomm0
[sudo] password for map479-admin:
lsof: WARNING: can't stat() fuse.gvfsd-fuse file system /run/user/1001/gvfs
      Output information may be incomplete.
COMMAND  PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
rfcomm  2924 root    5r   CHR  216,0      0t0  508 /dev/rfcomm0
```


```
./testing_razor.py
Opening ... /dev/rfcomm0
error open serial port: could not open port /dev/rfcomm0: [Errno 16] Device or resource busy: '/dev/rfcomm0'

~/mxochicale/github/ros/mx_razor_imu_9dof/pySerial$ sudo ./testing_razor.py
[sudo] password for map479-admin:
Opening ... /dev/rfcomm0
/dev/rfcomm0
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
```
Then relog / restart X server / reboot to make sure


```
$ sudo lsof /dev/rfcomm0
[sudo] password for map479:
lsof: WARNING: can't stat() fuse.gvfsd-fuse file system /run/user/1000/gvfs
      Output information may be incomplete.
COMMAND    PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
ModemMana  842 root    9u   CHR  216,0      0t0  582 /dev/rfcomm0
rfcomm    3218 root    5r   CHR  216,0      0t0  582 /dev/rfcomm0

```


sudo systemctl disable ModemManager

```
$ sudo service ModemManager stop
$ sudo lsof /dev/rfcomm0
lsof: WARNING: can't stat() fuse.gvfsd-fuse file system /run/user/1000/gvfs
      Output information may be incomplete.
COMMAND  PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
rfcomm  3218 root    5r   CHR  216,0      0t0  582 /dev/rfcomm0
```
https://bugs.launchpad.net/ubuntu/+source/bluez/+bug/1014992/comments/14




### creating a rule

TRY:
Writing a udev rule to ignore device by ModemManager worked for me:
/etc/udev/rules.d/55-bluetooth-drone-NoModem.rules

```
cd /etc/udev/rules.d/
sudo touch 50-bluetooth.rules
sudo gedit 50-bluetooth.rules
```


Add the following lines for every usb device:
```
#serial usb
KERNEL=="rfcomm*", ATTR{address}=="00:06:66:71:5C:D4", ENV{ID_MM_DEVICE_IGNORE}="1"
```
DONT WORK

```
#serial usb
KERNEL=="rfcomm*", ATTR{address}=="00:06:66:71:5C:D4", ENV{ID_MM_DEVICE_IGNORE}="1", GROUP="dialout"
```
DONT work


```
#serial usb
KERNEL=="rfcomm*", ATTR{address}=="00:06:66:71:5C:D4", ENV{ID_MM_DEVICE_IGNORE}="1", MODE="0666", GROUP="dialout"
```
DONT' work


```
#serial usb
KERNEL=="rfcomm*", ATTR{address}=="00:06:66:71:5C:D4", ENV{ID_MM_DEVICE_IGNORE}="1", MODE="0666", GROUP="dialout"
```
DONT' work

```
# ## ADDING SUDO
# ###########
# ## rfcomm0
# sleep 1
# sudo rfcomm -i 00:1A:7D:DA:71:11 release 0 00:06:66:71:5C:D4
# sleep 1
# sudo rfcomm -i 00:1A:7D:DA:71:11 connect 0 00:06:66:71:5C:D4
```
DONT WORK


```
# ## USING bind
# ###########
# ## rfcomm0
# rfcomm -i 00:1A:7D:DA:71:11 bind 0 00:06:66:71:5C:D4
```
DONT WORK

other examples of rules files
SUBSYSTEM=="rfcomm0", ATTRS{idProduct}=="6001", ATTRS{idVendor}=="0403", MODE="0666", GROUP="turtlebot"
ATTRS{idVendor}=="1234", ATTRS{idProduct}=="5678", ENV{ID_MM_DEVICE_IGNORE}="1"

https://bugs.launchpad.net/ubuntu/+source/bluez/+bug/1014992/comments/17



reloaded the rules:
```
sudo udevadm control --reload-rules
sudo reboot
```


# pair and unpair

After a while, I found that the rfcomm has to be connected and then disconnected
to put it to work well. I am not enterely sure about the reason for this.

However, after connecting the rfcomm, it cannot be reconnected again.
```
Can't release device: Operation already in progress
Can't create RFCOMM TTY: Address already in use
```
it needs to be investigated the reason and give solutions to this







More References:
http://answers.ros.org/question/189457/rosrun-as-super-user/#189462
