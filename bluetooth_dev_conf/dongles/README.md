Setting the BAUDRATE of rn-bluetooth-um Dongles
=====================


wget https://raw.githubusercontent.com/pyserial/pyserial/master/serial/tools/miniterm.py
chmod +x miniterm.py

https://github.com/mxochicale/decimus/tree/master/bluetooth#setting-up-the-bluesmirfs-baudrate


ll /dev/serial/by-id/
total 0
511 drwxr-xr-x 2 root root 60 Feb 12 22:55 .
510 drwxr-xr-x 4 root root 80 Feb 12 22:55 ..
512 lrwxrwxrwx 1 root root 13 Feb 12 22:55 usb-FTDI_FT232R_USB_UART_A100RVV0-if00-port0 -> ../../ttyUSB0



115200 is the default baudrate of the FTDI USB UART
$ sudo miniterm.py /dev/ttyUSB0 115200



https://www.sparkfun.com/datasheets/Wireless/Bluetooth/rn-bluetooth-um.pdf
SU,<rate> Baudrate,   {1200, 2400, 4800, 9600, 19.2, 28.8,
38.4, 57.6, 115K, 230K, 460K,
921K }, only the first 2 characters are needed.   
su,57  for  
su,11 for 115200
