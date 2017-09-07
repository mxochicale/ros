# Usage

1. Turn on sensors

2. bind bluetooth modules to rfcomm* ports

```
cd ~/mxochicale/github/ros/bluetooth_dev_conf/automatic_connection
```

```
./bind_four_automatic_connection_ubuntu1604.sh
```
wait for about a 30 seconds while the leds change from flashing colors
to solid yellow and to flashing red color.


3. release bluetooth modules from  the rfcomm* ports
```
./release_four_automatic_connection_ubuntu1604.sh
```

4. Turn off sensors
