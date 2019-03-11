


## Binary Installation

```
sudo apt-get install ros-kinetic-pid
```



## Install and Build from source

```
cd catkin_ws/src
git clone https://bitbucket.org/AndyZe/pid.git
cd ..
catkin_make
source devel/setup.bash
```


## test



```
roslaunch pid servo_sim.launch
```


rqt_plot /control_effort/data /state/data /setpoint/data
rqt_graph 




# .bashrc issues


## python-rospkg
The python-rospkg gets installed in /usr by default. 
So you just need following line in .bashrc to fix this:

```
export PYTHONPATH=$PYTHONPATH:/usr/lib/python2.7/dist-packages
```

[1] https://answers.ros.org/question/39657/importerror-no-module-named-rospkg/


```
cd
$ source ~/.bashrc
```


## anaconda

```
vim .bashrc

######################
#### comment anaconda
######################

## added by Anaconda2 5.3.0 installer
## >>> conda init >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/tree/anaconda2/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    \eval "$__conda_setup"
#else
#    if [ -f "/home/tree/anaconda2/etc/profile.d/conda.sh" ]; then
#        . "/home/tree/anaconda2/etc/profile.d/conda.sh"
#        CONDA_CHANGEPS1=false conda activate base
#    else
#        \export PATH="/home/tree/anaconda2/bin:$PATH"
#    fi
#fi
#unset __conda_setup
## <<< conda init <<<


```


```
cd
$ source ~/.bashrc
```



https://answers.ros.org/question/257944/could-not-find-qt-binding-looked-for-pyqt-pyside-when-rosrun/
