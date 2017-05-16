Setting the BAUDRATE of rn-bluetooth-um Dongles
---


# Downloading miniterm.py

```
wget https://raw.githubusercontent.com/pyserial/pyserial/master/serial/tools/miniterm.py
chmod +x miniterm.py
```

# Changing Baudrate 

[ref](https://github.com/mxochicale/decimus/tree/master/bluetooth#setting-up-the-bluesmirfs-baudrate)



```
$ ll /dev/serial/by-id/
total 0
511 drwxr-xr-x 2 root root 60 Feb 12 22:55 .
510 drwxr-xr-x 4 root root 80 Feb 12 22:55 ..
512 lrwxrwxrwx 1 root root 13 Feb 12 22:55 usb-FTDI_FT232R_USB_UART_A100RVV0-if00-port0 -> ../../ttyUSB0
```


115200 is the default baudrate of the FTDI USB UART
```
$ sudo miniterm.py /dev/ttyUSB0 115200
```



https://www.sparkfun.com/datasheets/Wireless/Bluetooth/rn-bluetooth-um.pdf
```
SU,<rate> Baudrate,   {1200, 2400, 4800, 9600, 19.2, 28.8,
38.4, 57.6, 115K, 230K, 460K,
921K }, only the first 2 characters are needed.   
su,57  for  
su,11 for 115200
```


## On Ubuntu 16.04

```
$ hcitool scan
Scanning ...
	00:06:66:71:5C:D4	RNBT-5CD4
```


```
$bluetoothctl
[NEW] Controller 00:1A:7D:DA:71:11 map479-W2600CR [default]
[bluetooth]# power on
Changing power on succeeded
[bluetooth]# discoverable on
Changing discoverable on succeeded
[bluetooth]# agent on
Agent registered
[bluetooth]# default-agent
Default agent request successful
[bluetooth]# pairable on
Changing pairable on succeeded
[bluetooth]# scan on
Discovery started
[CHG] Controller 00:1A:7D:DA:71:11 Discovering: yes
[NEW] Device 00:06:66:71:5C:D4 RNBT-5CD4
[NEW] Device C0:89:EE:E6:A4:4D MI Band 2
[bluetooth]# pair 00:06:66:71:5C:D4 
[bluetooth]# pair 00:06:66:71:5C:D4 
Attempting to pair with 00:06:66:71:5C:D4
[CHG] Device 00:06:66:71:5C:D4 Connected: yes
Request PIN code
[agent] Enter PIN code: 1234
[CHG] Device 00:06:66:71:5C:D4 UUIDs: 00001101-0000-1000-8000-00805f9b34fb
[CHG] Device 00:06:66:71:5C:D4 Paired: yes
Pairing successful
[CHG] Device 00:06:66:71:5C:D4 Connected: no
[bluetooth]# trust 00:06:66:71:5C:D4
[CHG] Device 00:06:66:71:5C:D4 Trusted: yes
Changing 00:06:66:71:5C:D4 trust succeeded
[bluetooth]# quit
Agent unregistered
[DEL] Controller 00:1A:7D:DA:71:11 map479-W2600CR [default]
```

https://www.raspberrypi.org/forums/viewtopic.php?f=28&t=125922











