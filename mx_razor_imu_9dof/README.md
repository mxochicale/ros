razor imu 9dof
---

* packages
  * [razor_imu_9dof](http://wiki.ros.org/razor_imu_9dof)



# On Ubuntu 16.04

Python Dependendies


```
$ sudo pip install numpy
[sudo] password for map479:
The directory '/home/map479/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/map479/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Collecting numpy
  Downloading numpy-1.12.1-cp27-cp27m-manylinux1_x86_64.whl (16.5MB)
    100% |████████████████████████████████| 16.5MB 70kB/s
Installing collected packages: numpy
Successfully installed numpy-1.12.1

```

```
map479@map479-W2600CR:~/gazr/build$ sudo pip install matplotlib
The directory '/home/map479/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/map479/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Collecting matplotlib
  Downloading matplotlib-2.0.2-cp27-cp27m-manylinux1_x86_64.whl (14.5MB)
    100% |████████████████████████████████| 14.5MB 80kB/s
Requirement already satisfied: six>=1.10 in /usr/local/lib/python2.7/site-packages (from matplotlib)
Collecting pytz (from matplotlib)
  Downloading pytz-2017.2-py2.py3-none-any.whl (484kB)
    100% |████████████████████████████████| 491kB 2.5MB/s
Collecting subprocess32 (from matplotlib)
  Downloading subprocess32-3.2.7.tar.gz (54kB)
    100% |████████████████████████████████| 61kB 9.8MB/s
Collecting cycler>=0.10 (from matplotlib)
  Downloading cycler-0.10.0-py2.py3-none-any.whl
Collecting python-dateutil (from matplotlib)
  Downloading python_dateutil-2.6.0-py2.py3-none-any.whl (194kB)
    100% |████████████████████████████████| 194kB 5.5MB/s
Requirement already satisfied: pyparsing!=2.0.4,!=2.1.2,!=2.1.6,>=1.5.6 in /usr/local/lib/python2.7/site-packages (from matplotlib)
Requirement already satisfied: numpy>=1.7.1 in /usr/local/lib/python2.7/site-packages (from matplotlib)
Collecting functools32 (from matplotlib)
  Downloading functools32-3.2.3-2.zip
Installing collected packages: pytz, subprocess32, cycler, python-dateutil, functools32, matplotlib
  Running setup.py install for subprocess32 ... done
  Running setup.py install for functools32 ... done
Successfully installed cycler-0.10.0 functools32-3.2.3.post2 matplotlib-2.0.2 python-dateutil-2.6.0 pytz-2017.2 subprocess32-3.2.7
```
