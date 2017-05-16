#!/bin/bash
# Shell script to open terminals
# and execute a separate command in each
#http://stackoverflow.com/questions/42444615/how-to-write-a-shell-script-to-open-four-terminals-and-execute-a-command-in-each

# Commands to run (one per terminal)
#cmds=('echo 'hello1'', 'echo 'hello2'')

## Loop through commands, open terminal, execute command
#for i in "${cmds[@]}"
#do
#    xterm -e "$i" &
#done

#xterm -e rfcomm -i 00:1A:7D:DA:71:11 connect 0 00:06:66:71:5C:D4  
#xterm -e rfcomm -i 00:1A:7D:DA:71:11 connect 1 00:06:66:71:5A:C6 

#xterm -e bash -c 'rfcomm -i 00:1A:7D:DA:71:11 connect 2 00:06:66:71:5C:DA && rfcomm -i 00:1A:7D:DA:71:11 connect 3 00:06:66:71:5B:FF'
#xterm -e bash -c 'sleep 2 && sleep 2'
#http://stackoverflow.com/questions/27489406/how-can-i-launch-multiple-xterm-windows-and-run-a-command-on-each-leaving-each




rfcomm -i 00:1A:7D:DA:71:11 release 0 00:06:66:71:5C:D4 && rfcomm -i 00:1A:7D:DA:71:11 release 1 00:06:66:71:5A:C6 && rfcomm -i 00:1A:7D:DA:71:11 release 2 00:06:66:71:5C:DA && rfcomm -i 00:1A:7D:DA:71:11 release 3 00:06:66:71:5B:FF

xterm -e bash -c 'rfcomm -i 00:1A:7D:DA:71:11 connect 0 00:06:66:71:5C:D4; bash' & 
xterm -e bash -c 'rfcomm -i 00:1A:7D:DA:71:11 connect 1 00:06:66:71:5A:C6; bash' & 
xterm -e bash -c 'rfcomm -i 00:1A:7D:DA:71:11 connect 2 00:06:66:71:5C:DA; bash' &
xterm -e bash -c 'rfcomm -i 00:1A:7D:DA:71:11 connect 3 00:06:66:71:5B:FF; bash' &
#http://www.techpository.com/linux-how-to-open-multiple-xterm-windows-while-running-a-command-in-bash/


#!/bin/bash
##Tested on Ubuntu 16.06 x64
#
#  chmod +x <filename>.sh
#  Thu Jun 11 15:03:42 BST 2015
#
# Miguel P. Xochicale [http://mxochicale.github.io]
# Doctoral Researcher in Human-Robot Interaction
# University of Birmingham, U.K. (2014-2018)
#------------------------------------------------------------

#Configure rfcomm as regular user
#sudo chmod u+s /usr/bin/rfcomm

#echo "-------------------------------"
#echo "release and connect"
#echo "-------------------------------"

## hcitool dev
#  hci0	C4:85:08:21:53:D0

# #### "BlueSMiRF Silver"; Dongles Modules @ sudo vim /etc/bluetooth/rfcomm.conf
# rfcomm0 device 00:06:66:71:5C:D4;
# rfcomm1 device 00:06:66:71:5A:C6;
# rfcomm2 device 00:06:66:71:5C:DA;  << baudrate was changed from su,11 to su,57
# rfcomm3 device 00:06:66:71:5B:FF;  << baudrate was changed from su,11 to su,57


# #Restart the BT 00:06:66:71:5C:D4 :
#/etc/init.d/bluetooth stop
#/etc/init.d/bluetooth start


#################################
## for hci1	00:1A:7D:DA:71:11
# # 0 and 1 # # 2 and 3
#sleep 1
#rfcomm -i 00:1A:7D:DA:71:11 release 0 00:06:66:71:5C:D4 && rfcomm -i 00:1A:7D:DA:71:11 release 1 00:06:66:71:5A:C6 && rfcomm -i 00:1A:7D:DA:71:11 release 2 00:06:66:71:5C:DA && rfcomm -i 00:1A:7D:DA:71:11 #release 3 00:06:66:71:5B:FF
#sleep 1
#rfcomm -i 00:1A:7D:DA:71:11 connect 0 00:06:66:71:5C:D4 && rfcomm -i 00:1A:7D:DA:71:11 connect 1 00:06:66:71:5A:C6 && rfcomm -i 00:1A:7D:DA:71:11 connect 2 00:06:66:71:5C:DA && rfcomm -i 00:1A:7D:DA:71:11 #connect 3 00:06:66:71:5B:FF



#################################
# ls -l /dev/rf*
####PROBLEM
### Can't create RFCOMM TTY: Address already in use
# http://askubuntu.com/questions/721954/bluetooth-connection-to-hc-05-paired-but-not-connected/722016#722016
# http://unix.stackexchange.com/questions/194067/robust-bluetooth-serial-port-console-tty

#
# echo "-------------------------------"
# echo "rfcomm released"
# echo "-------------------------------"
