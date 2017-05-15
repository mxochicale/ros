Ubuntu install of ROS Indigo for Ubuntu Trusty 14.04
---

http://wiki.ros.org/indigo/Installation/Ubuntu


### machine features


```
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 14.04.5 LTS
Release:	14.04
Codename:	trusty

```



```
$  uname --m
x86_64
```


* 1.2 Setup your sources.list


```
$ sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
```

* 1.3 Set up your keys

```
$ sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116


Executing: gpg --ignore-time-conflict --no-options --no-default-keyring --homedir /tmp/tmp.7z3kdedM4U --no-auto-check-trustdb --trust-model always --keyring /etc/apt/trusted.gpg --primary-keyring /etc/apt/trusted.gpg --keyring /etc/apt/trusted.gpg.d/desdelinux-viewnior.gpg --keyring /etc/apt/trusted.gpg.d/octave-stable.gpg --keyring /etc/apt/trusted.gpg.d/staticfloat-julia-deps.gpg --keyring /etc/apt/trusted.gpg.d/staticfloat-juliareleases.gpg --keyring /etc/apt/trusted.gpg.d/supercollider-ppa.gpg --keyring /etc/apt/trusted.gpg.d/texlive-backports-ppa.gpg --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
gpg: requesting key B01FA116 from hkp server ha.pool.sks-keyservers.net
gpg: key B01FA116: "ROS Builder <rosbuild@ros.org>" not changed
gpg: Total number processed: 1
gpg:              unchanged: 1
 
```

1.4 Installation 
 
```
sudo apt-get update
sudo apt-get install ros-indigo-desktop-full
```

```
The following extra packages will be installed:
  gazebo2 libcegui-mk2-dev liblua5.1-0-dev libreadline-dev libreadline6-dev
  ros-indigo-gazebo-plugins ros-indigo-gazebo-ros ros-indigo-gazebo-ros-pkgs
  ros-indigo-simulators
Suggested packages:
  libcegui-mk2-0.7.6-doc
The following packages will be REMOVED
  libreadline-gplv2-dev
The following NEW packages will be installed
  gazebo2 libcegui-mk2-dev liblua5.1-0-dev libreadline-dev libreadline6-dev
  ros-indigo-desktop-full ros-indigo-gazebo-plugins ros-indigo-gazebo-ros
  ros-indigo-gazebo-ros-pkgs ros-indigo-simulators
0 to upgrade, 10 to newly install, 1 to remove and 184 not to upgrade.
Need to get 40.5 MB of archives.
After this operation, 76.2 MB of additional disk space will be used.
Do you want to continue? [Y/n] 
```


* 1.5 Initialize rosdep

```
sudo rosdep init
rosdep update
```


```
reading in sources list data from /etc/ros/rosdep/sources.list.d
Hit https://raw.githubusercontent.com/ros/rosdistro/master/rosdep/osx-homebrew.yaml
Hit https://raw.githubusercontent.com/ros/rosdistro/master/rosdep/base.yaml
Hit https://raw.githubusercontent.com/ros/rosdistro/master/rosdep/python.yaml
Hit https://raw.githubusercontent.com/ros/rosdistro/master/rosdep/ruby.yaml
Hit https://raw.githubusercontent.com/ros/rosdistro/master/releases/fuerte.yaml
Query rosdistro index https://raw.githubusercontent.com/ros/rosdistro/master/index.yaml
Add distro "groovy"
Add distro "hydro"
Add distro "indigo"
Add distro "jade"
Add distro "kinetic"
Add distro "lunar"
updated cache in /home/map479-admin/.ros/rosdep/sources.cache
```



```
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc
```

* 1.7 Getting rosinstall 



```
sudo apt-get install python-rosinstall
sudo apt-get install python-catkin-pkg
%OR sudo apt-get install --reinstall python-catkin-pkg


```


* TESTING ROS 

```
$rosversion -d
```

```
$ roscore


... logging to /home/map479-admin/.ros/log/53e2ec6e-3983-11e7-89ea-7071bc6b0ac5/roslaunch-eee320-5287.log
Checking log directory for disk usage. This may take awhile.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

started roslaunch server http://eee320:51938/
ros_comm version 1.11.21


SUMMARY
========

PARAMETERS
 * /rosdistro: indigo
 * /rosversion: 1.11.21

NODES

auto-starting new master
process[master]: started with pid [5299]
ROS_MASTER_URI=http://eee320:11311/

setting /run_id to 53e2ec6e-3983-11e7-89ea-7071bc6b0ac5
process[rosout-1]: started with pid [5312]
started core service [/rosout]


```
Press Ctrl-C to interrupt





# Installing and Configuring Your ROS Environment

```
$ printenv | grep ROS
ROS_ROOT=/opt/ros/indigo/share/ros
ROS_PACKAGE_PATH=/opt/ros/indigo/share:/opt/ros/indigo/stacks
ROS_MASTER_URI=http://localhost:11311
ROSLISP_PACKAGE_DIRECTORIES=
ROS_DISTRO=indigo
ROS_ETC_DIR=/opt/ros/indigo/etc/ros
```

```
$ dpkg -L python-catkin-pkg
/.
/usr
/usr/share
/usr/share/doc
/usr/share/doc/python-catkin-pkg
/usr/share/doc/python-catkin-pkg/changelog.Debian.gz
/usr/bin
/usr/bin/catkin_generate_changelog
/usr/bin/catkin_tag_changelog
/usr/bin/catkin_create_pkg
/usr/bin/catkin_test_changelog
/usr/bin/catkin_find_pkg
/usr/lib
/usr/lib/python2.7
/usr/lib/python2.7/dist-packages
/usr/lib/python2.7/dist-packages/catkin_pkg-0.3.1.egg-info
/usr/lib/python2.7/dist-packages/catkin_pkg-0.3.1.egg-info/top_level.txt
/usr/lib/python2.7/dist-packages/catkin_pkg-0.3.1.egg-info/dependency_links.txt
/usr/lib/python2.7/dist-packages/catkin_pkg-0.3.1.egg-info/requires.txt
/usr/lib/python2.7/dist-packages/catkin_pkg-0.3.1.egg-info/entry_points.txt
/usr/lib/python2.7/dist-packages/catkin_pkg-0.3.1.egg-info/PKG-INFO

```





## Create a ROS Workspace


The general options here are to either remove the custom version of python, or install the required python packages where it can find them.
http://answers.ros.org/question/250228/no-module-named-catkin_pkgpackage-error-during-catkin-make/


FIRST TRIAL: FAIL 
echo "export PYTHONPATH=/usr/share/doc/python-catkin-pkg:${PYTHONPATH}"  >> ~/.bashrc
source ~/.bashrc

SECOND TRIAL: COOL :) 
echo "export PYTHONPATH=/usr/lib/python2.7/dist-packages:${PYTHONPATH}"  >> ~/.bashrc
source ~/.bashrc

http://answers.ros.org/question/56873/problem-with-catkin_make/


```
cd && mkdir -p ~/catkin_ws/src &&  cd ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
```



To make sure your workspace is properly overlayed by the setup script, make sure ROS_PACKAGE_PATH environment variable includes the directory you are in. 




```
echo "~/catkin_ws/devel/setup.bash"  >> ~/.bashrc
```



```
$ source ~/catkin_ws/devel/setup.bash
```



















