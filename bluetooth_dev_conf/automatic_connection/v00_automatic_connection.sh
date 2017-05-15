!/bin/bash
#
#  chmod +x <filename>.sh
#  Thu Jun 11 15:03:42 BST 2015
#
#                        miguel [http://mxochicale.github.io]
#              Doctoral Researcher in Human-Robot Interaction
#                @ University of Birmingham, U.K. (2014-2018)
#------------------------------------------------------------

#Configure rfcomm as regular user
#sudo chmod u+s /usr/bin/rfcomm

echo "-------------------------------"
echo "release and connect"
echo "-------------------------------"

####  sudo rfcomm -i hci0 connect 0 00:06:66:71:5C:D4
####  sudo rfcomm -i hci0 connect 0 00:06:66:71:5A:C6


#Restart the BT services:
/etc/init.d/bluetooth stop
/etc/init.d/bluetooth start
rfcomm release 0 00:06:66:71:5C:D4 & rfcomm release 1 00:06:66:71:5A:C6
sleep 1
rfcomm connect 0 00:06:66:71:5C:D4 & rfcomm connect 1 00:06:66:71:5A:C6


echo "-------------------------------"
echo "rfcomm released"
echo "-------------------------------"
