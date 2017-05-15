Ubuntu install of ROS Hydro Ubuntu 12.04 (Precise)
---

http://wiki.ros.org/hydro/Installation/Ubuntu


### machine features

```
mapx@N55SL:~$ lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 12.04.4 LTS
Release:	12.04
Codename:	precise
```


```
$  uname --m
i686
```

### 1 Setup your sources.list


```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list'
```

## 2 Set up your keys and check the keys

```
$ wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add -
--2016-08-10 00:38:49--  https://raw.githubusercontent.com/ros/rosdistro/master/ros.key
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.60.133
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|151.101.60.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1162 (1.1K) [application/octet-stream]
Saving to: `STDOUT'

100%[==========================================================>] 1,162       --.-K/s   in 0s      

2016-08-10 00:38:50 (173 MB/s) - written to stdout [1162/1162]

OK


```

## 3 Installation
```
$ sudo apt-get update
$ sudo apt-get install ros-hydro-desktop-full

After this operation, 733 MB of additional disk space will be used.
Do you want to continue [Y/n]? Y

```


## 4 Initialize rosdep

```
sudo rosdep init
rosdep update
```

# (WHY DID I CHANGE FROM HYDRO TO INDIGO?  WHY?)

## 5 Environment setup

It's convenient if the ROS environment variables are automatically
added to your bash session every time a new shell is launched

```
$echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
$source ~/.bashrc
``




##  6 Getting rosinstall

rosinstall is a frequently used command-line tool in ROS that is
distributed separately. It enables you to easily download many source
trees for ROS packages with one command.
To install this tool on Ubuntu, run:

```
sudo apt-get install python-rosinstall
```



# USAGE: Create a ROS Work-space

http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment


Catkin is the official build system for ROS Catkin workspace is a
folder where you can modify, build and install catkin packages.

Let's create a catkin workspace and Initialise the catkin workspace:

```
$ mkdir -p ~/catkin_ws/src
$ cd ~/catkin_ws/src
$ catkin_init_workspace

    >> Creating symlink "/home/map479-admin/catkin_ws/src/CMakeLists.txt"
    >> pointing to "/opt/ros/indigo/share/catkin/cmake/toplevel.cmake"
```

Even though the workspace is empty (there are no packages in the 'src'
folder, just a single CMakeLists.txt link) you can still "build" the
workspace:

```
$ cd ~/catkin_ws/
$ catkin_make
```

```
$ catkin_make
Base path: /home/map479-admin/catkin_ws
Source space: /home/map479-admin/catkin_ws/src
Build space: /home/map479-admin/catkin_ws/build
Devel space: /home/map479-admin/catkin_ws/devel
Install space: /home/map479-admin/catkin_ws/install
####
#### Running command: "cmake /home/map479-admin/catkin_ws/src
-DCATKIN_DEVEL_PREFIX=/home/map479-admin/catkin_ws/devel
-DCMAKE_INSTALL_PREFIX=/home/map479-admin/catkin_ws/install -G Unix
Makefiles" in "/home/map479-admin/catkin_ws/build"
####
-- The C compiler identification is GNU 4.8.4
-- The CXX compiler identification is GNU 4.8.4
-- Check for working C compiler: /usr/bin/cc
-- Check for working C compiler: /usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Using CATKIN_DEVEL_PREFIX: /home/map479-admin/catkin_ws/devel
-- Using CMAKE_PREFIX_PATH: /opt/ros/indigo
-- This workspace overlays: /opt/ros/indigo
-- Found PythonInterp: /usr/bin/python (found version "2.7.6")
-- Using PYTHON_EXECUTABLE: /usr/bin/python
-- Using Debian Python package layout
-- Using empy: /usr/bin/empy
-- Using CATKIN_ENABLE_TESTING: ON
-- Call enable_testing()
-- Using CATKIN_TEST_RESULTS_DIR:
/home/map479-admin/catkin_ws/build/test_results
-- Looking for include file pthread.h
-- Looking for include file pthread.h - found
-- Looking for pthread_create
-- Looking for pthread_create - not found
-- Looking for pthread_create in pthreads
-- Looking for pthread_create in pthreads - not found
-- Looking for pthread_create in pthread
-- Looking for pthread_create in pthread - found
-- Found Threads: TRUE
-- Found gtest sources under '/usr/src/gtest': gtests will be built
-- Using Python nosetests: /usr/bin/nosetests-2.7
-- catkin 0.6.14
-- BUILD_SHARED_LIBS is on
-- Configuring done
-- Generating done
-- Build files have been written to: /home/map479-admin/catkin_ws/build
####
#### Running command: "make -j4 -l4" in "/home/map479-admin/catkin_ws/build"
####
```


The catkin_make command is a convenience tool for working with catkin
workspaces. If you look in your current directory you should now have
a 'build' and 'devel' folder.  Inside the 'devel' folder you can see
that there are now several setup.sh files. **Sourcing any of these
files will overlay this workspace on top of your environment.**
Before continuing source your new setup.sh file:

```
$ source devel/setup.bash
```


To make sure your workspace is properly overlayed by the setup script,
make sure ROS_PACKAGE_PATH environment variable includes the directory
you're in.

```
$ echo $ROS_PACKAGE_PATH

   >> /home/map479-admin/catkin_ws/src:/opt/ros/indigo/share:/opt/ros/indigo/stacks
```
