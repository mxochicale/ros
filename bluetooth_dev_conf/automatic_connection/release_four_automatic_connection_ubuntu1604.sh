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


# ```
# $ hcitool scan
# Scanning ...
#
# 00:06:66:71:5C:D4	RNBT-5CD4 [rfcomm0]
# 00:06:66:71:5A:C6	RNBT-5AC6 [rfcomm1]
# 00:06:66:71:5C:DA	RNBT-5CDA [rfcomm2]
# 00:06:66:71:5B:FF	RNBT-5BFF [rfcomm3]
# ```

## release rfcomm0 to rfcomm3
rfcomm -i 00:1A:7D:DA:71:11 release 0 00:06:66:71:5C:D4 && rfcomm -i 00:1A:7D:DA:71:11 release 1 00:06:66:71:5A:C6 && rfcomm -i 00:1A:7D:DA:71:11 release 2 00:06:66:71:5C:DA && rfcomm -i 00:1A:7D:DA:71:11 release 3 00:06:66:71:5B:FF
ls -l /dev/rfcomm*
