Bluetooth Device Setting Up
---


NOTICE:

* Go to bluetooth Setting and turn on the bluetooth and the visibility of "X-device".
* Connect CSR4.0 ...71:11 and verify the device:
```
$ hcitool dev
Devices:
	hci0	00:1A:7D:DA:71:11
```
* copy rfcomm.conf
```
sudo cp rfcomm.conf /etc/bluetooth/
```
If it is connected for the first time, then you have to configure rfcomm as regular user with  
sudo chmod u+s /usr/bin/rfcomm

*
In case of password verification for the first time, type: 0000

```
cd ~/automatic_connections
./one_automatic_connection.sh
```
or 

```
./four_automatic_connection.sh
```
