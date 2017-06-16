Ubuntu install of ROS Kinetic on Ubuntu 16.04
---

http://wiki.ros.org/kinetic/Installation/Ubuntu

SOME REFERENCES:
* https://afsyaw.wordpress.com/2016/12/23/setting-up-ros-on-ubuntu-16-04/



```

$ map479@map479-W2600CR:~$ sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
[sudo] password for map479:


$ map479@map479-W2600CR:~$ sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
Executing: /tmp/tmp.3agLeLuUim/gpg.1.sh --keyserver
hkp://ha.pool.sks-keyservers.net:80
--recv-key
421C365BD9FF1F717815A3895523BAEEB01FA116
gpg: requesting key B01FA116 from hkp server ha.pool.sks-keyservers.net
gpg: key B01FA116: public key "ROS Builder <rosbuild@ros.org>" imported
gpg: Total number processed: 1
gpg:               imported: 1

$ map479@map479-W2600CR:~$ sudo apt-get update
Get:1 http://security.ubuntu.com/ubuntu xenial-security InRelease [102 kB]
Hit:2 http://gb.archive.ubuntu.com/ubuntu xenial InRelease                               
Get:3 http://gb.archive.ubuntu.com/ubuntu xenial-updates InRelease [102 kB]              
Get:4 http://gb.archive.ubuntu.com/ubuntu xenial-backports InRelease [102 kB]
Get:5 http://security.ubuntu.com/ubuntu xenial-security/main amd64 DEP-11 Metadata [54.6 kB]
Get:6 http://security.ubuntu.com/ubuntu xenial-security/main DEP-11 64x64 Icons [45.7 kB]              
Get:7 http://security.ubuntu.com/ubuntu xenial-security/universe amd64 DEP-11 Metadata [32.2 kB]                     
Get:8 http://security.ubuntu.com/ubuntu xenial-security/universe DEP-11 64x64 Icons [37.0 kB]                              
Get:9 http://packages.ros.org/ros/ubuntu xenial InRelease [4,037 B]                                                  
Get:10 http://gb.archive.ubuntu.com/ubuntu xenial-updates/main amd64 DEP-11 Metadata [298 kB]
Get:11 http://gb.archive.ubuntu.com/ubuntu xenial-updates/main DEP-11 64x64 Icons [195 kB]
Get:12 http://gb.archive.ubuntu.com/ubuntu xenial-updates/universe amd64 DEP-11 Metadata [160 kB]
Get:13 http://gb.archive.ubuntu.com/ubuntu xenial-updates/universe DEP-11 64x64 Icons [178 kB]       
Get:14 http://gb.archive.ubuntu.com/ubuntu xenial-updates/multiverse amd64 DEP-11 Metadata [2,520 B]
Get:15 http://gb.archive.ubuntu.com/ubuntu xenial-backports/main amd64 DEP-11 Metadata [3,324 B]
Get:16 http://packages.ros.org/ros/ubuntu xenial/main amd64 Packages [374 kB]                           
Get:17 http://packages.ros.org/ros/ubuntu xenial/main i386 Packages [302 kB]
Fetched 1,994 kB in 1s (1,729 kB/s)
Reading package lists... Done
```


```
$ map479@map479-W2600CR:~$ sudo apt-get install ros-kinetic-desktop-full

map479@map479-W2600CR:~$ sudo apt-get install ros-kinetic-desktop-full
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages were automatically installed and are no longer required:
  linux-headers-4.4.0-31 linux-headers-4.4.0-31-generic
  linux-image-4.4.0-31-generic linux-image-extra-4.4.0-31-generic
  ubuntu-core-launcher
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  binfmt-support blt comerr-dev docutils-common docutils-doc fltk1.3-doc fluid
  fonts-lato fonts-lyx freeglut3 freeglut3-dev gazebo7 gazebo7-common
  gazebo7-plugin-base gir1.2-gtk-2.0 graphviz hddtemp hdf5-helpers
  javascript-common krb5-multidev libaec-dev libaec0 libapr1 libapr1-dev
  libaprutil1 libaprutil1-dev libarmadillo6 libarpack2 libassimp-dev
  libassimp3v5 libbulletcollision2.83.6 libbulletdynamics2.83.6 libcdt5
  libcgraph6 libcollada-dom2.4-dp-dev libcollada-dom2.4-dp0
  libconsole-bridge-dev libconsole-bridge0.2v5 libcurl4-openssl-dev libdap-dev
  libdap17v5 libdapclient6v5 libdapserver7v5 libeigen3-dev libepsilon1
  libflann-dev libflann1.8 libfltk-cairo1.3 libfltk-forms1.3 libfltk-gl1.3
  libfltk-images1.3 libfltk1.3 libfltk1.3-dev libfreeimage-dev libfreeimage3
  libfreexl1 libgazebo7 libgazebo7-dev libgdal-dev libgdal1i libgeos-3.5.0
  libgeos-c1v5 libgeos-dev libgif-dev libgif7 libgl1-mesa-dev libgl2ps-dev
  libgl2ps0 libglade2-0 libgles2-mesa-dev libglu1-mesa-dev libgssrpc4
  libgtest-dev libgtk2.0-dev libgts-0.7-5 libgts-bin libgts-dev libgvc6
  libgvpr2 libhdf4-0-alt libhdf4-alt-dev libhdf5-10 libhdf5-cpp-11 libhdf5-dev
  libhdf5-mpi-dev libhdf5-openmpi-10 libhdf5-openmpi-dev libignition-math2
  libignition-math2-dev libinput-dev libjs-jquery libjs-jquery-ui
  libjs-sphinxdoc libjs-underscore libjsoncpp-dev libjxr0 libkadm5clnt-mit9
  libkadm5srv-mit9 libkdb5-8 libkmlbase1 libkmldom1 libkmlengine1
  liblapack-dev liblapack3 libldap2-dev liblinearmath2.83.6 liblog4cxx-dev
  liblog4cxx10-dev liblog4cxx10v5 liblz4-dev libminizip1 libmysqlclient-dev
  libmysqlclient20 libnetcdf-c++4 libnetcdf-cxx-legacy-dev libnetcdf-dev
  libnetcdf11 libodbc1 libogdi3.2 libogg-dev libogre-1.9-dev libogre-1.9.0v5
  libopenjp2-7 libopenni-dev libopenni-sensor-pointclouds0 libopenni0
  libpathplan4 libpcl-apps1.7 libpcl-common1.7 libpcl-dev libpcl-features1.7
  libpcl-filters1.7 libpcl-io1.7 libpcl-kdtree1.7 libpcl-keypoints1.7
  libpcl-octree1.7 libpcl-outofcore1.7 libpcl-people1.7 libpcl-recognition1.7
  libpcl-registration1.7 libpcl-sample-consensus1.7 libpcl-search1.7
  libpcl-segmentation1.7 libpcl-surface1.7 libpcl-tracking1.7
  libpcl-visualization1.7 libpcl1.7 libpoco-dev libpococrypto9v5
  libpocodata9v5 libpocofoundation9v5 libpocomysql9v5 libpoconet9v5
  libpoconetssl9v5 libpocoodbc9v5 libpocosqlite9v5 libpocoutil9v5
  libpocoxml9v5 libpocozip9v5 libpq-dev libpq5 libproj-dev libproj9
  libprotoc-dev libprotoc9v5 libpyside-py3-2.0 libpyside2-dev libpyside2.0
  libqgsttools-p1 libqhull-dev libqhull7 libqt4-designer libqt4-dev
  libqt4-dev-bin libqt4-help libqt4-opengl libqt4-opengl-dev libqt4-qt3support
  libqt4-scripttools libqt4-svg libqt4-test libqt5clucene5 libqt5concurrent5
  libqt5designer5 libqt5designercomponents5 libqt5help5
  libqt5multimediaquick-p5 libqt5multimediawidgets5 libqt5opengl5-dev
  libqt5quickparticles5 libqt5quickwidgets5 libqt5script5 libqt5scripttools5
  libqt5svg5-dev libqt5webkit5-dev libqt5x11extras5-dev libqt5xmlpatterns5
  libqt5xmlpatterns5-dev libqt5xmlpatterns5-private-dev libqtwebkit-dev
  libqtwebkit4 libruby2.3 libsctp-dev libsctp1 libsdformat4 libsdformat4-dev
  libshiboken-py3-2.0 libshiboken2-dev libshiboken2.0 libsimbody-dev
  libsimbody3.5v5 libspatialite-dev libspatialite7 libspnav0 libsuperlu4
  libsz2 libtar-dev libtar0 libtheora-dev libtinyxml-dev libtinyxml2-2v5
  libtinyxml2.6.2v5 liburdfdom-dev liburdfdom-headers-dev
  liburdfdom-model-state0.4 liburdfdom-model0.4 liburdfdom-sensor0.4
  liburdfdom-tools liburdfdom-world0.4 liburiparser1 libusb-1.0-0-dev
  libusb-1.0-doc libvtk-java libvtk5.10 libvtk6-dev libvtk6-java
  libvtk6-qt-dev libvtk6.2 libvtk6.2-qt libwebp-dev libwebpdemux1
  libxerces-c-dev libxerces-c3.1 libxml2-dev libxml2-utils libxmu-dev
  libxmu-headers libyaml-cpp-dev libyaml-cpp0.5v5 libzzip-0-13 mesa-common-dev
  mysql-common odbcinst odbcinst1debian2 openni-utils proj-bin proj-data
  pyqt5-dev python-attr python-autobahn python-cairo python-catkin-pkg
  python-catkin-pkg-modules python-cffi-backend python-chardet
  python-concurrent.futures python-crypto python-cryptography python-cycler
  python-dateutil python-defusedxml python-docutils python-ecdsa python-empy
  python-enum34 python-glade2 python-gobject-2 python-gtk2 python-idna
  python-imaging python-ipaddress python-lz4 python-matplotlib
  python-matplotlib-data python-mpi4py python-msgpack python-netifaces
  python-nose python-numpy python-opengl python-openssl python-pam
  python-paramiko python-pil python-pkg-resources python-psutil python-pyasn1
  python-pyasn1-modules python-pydot python-pygments python-pyparsing
  python-pyqt5 python-pyqt5.qtopengl python-pyqt5.qtsvg python-pyqt5.qtwebkit
  python-pyside2 python-pyside2.qtconcurrent python-pyside2.qtcore
  python-pyside2.qtgui python-pyside2.qthelp python-pyside2.qtnetwork
  python-pyside2.qtprintsupport python-pyside2.qtqml python-pyside2.qtquick
  python-pyside2.qtquickwidgets python-pyside2.qtscript python-pyside2.qtsql
  python-pyside2.qtsvg python-pyside2.qttest python-pyside2.qtuitools
  python-pyside2.qtwebkit python-pyside2.qtwebkitwidgets
  python-pyside2.qtwidgets python-pyside2.qtx11extras python-pyside2.qtxml
  python-roman python-rosdep python-rosdistro python-rosdistro-modules
  python-rospkg python-rospkg-modules python-serial python-service-identity
  python-setuptools python-sip python-sip-dev python-six python-snappy
  python-tk python-trollius python-twisted python-twisted-bin
  python-twisted-core python-txaio python-tz python-vtk6 python-yaml
  python-zope.interface qt4-linguist-tools qt4-qmake qt5-qmake qtbase5-dev
  qtbase5-dev-tools qtbase5-private-dev qtdeclarative5-dev
  qtdeclarative5-private-dev qtmultimedia5-dev qtscript5-dev
  qtscript5-private-dev qttools5-dev qttools5-dev-tools qttools5-private-dev
  rake ros-kinetic-actionlib ros-kinetic-actionlib-msgs
  ros-kinetic-actionlib-tutorials ros-kinetic-angles ros-kinetic-bond
  ros-kinetic-bond-core ros-kinetic-bondcpp ros-kinetic-bondpy
  ros-kinetic-camera-calibration ros-kinetic-camera-calibration-parsers
  ros-kinetic-camera-info-manager ros-kinetic-catkin ros-kinetic-class-loader
  ros-kinetic-cmake-modules ros-kinetic-collada-parser
  ros-kinetic-collada-urdf ros-kinetic-common-msgs
  ros-kinetic-common-tutorials ros-kinetic-compressed-depth-image-transport
  ros-kinetic-compressed-image-transport ros-kinetic-control-msgs
  ros-kinetic-control-toolbox ros-kinetic-controller-interface
  ros-kinetic-controller-manager ros-kinetic-controller-manager-msgs
  ros-kinetic-cpp-common ros-kinetic-cv-bridge ros-kinetic-depth-image-proc
  ros-kinetic-desktop ros-kinetic-diagnostic-aggregator
  ros-kinetic-diagnostic-analysis ros-kinetic-diagnostic-common-diagnostics
  ros-kinetic-diagnostic-msgs ros-kinetic-diagnostic-updater
  ros-kinetic-diagnostics ros-kinetic-diff-drive-controller
  ros-kinetic-dynamic-reconfigure ros-kinetic-eigen-conversions
  ros-kinetic-eigen-stl-containers ros-kinetic-executive-smach
  ros-kinetic-filters ros-kinetic-forward-command-controller
  ros-kinetic-gazebo-msgs ros-kinetic-gazebo-plugins ros-kinetic-gazebo-ros
  ros-kinetic-gazebo-ros-control ros-kinetic-gazebo-ros-pkgs
  ros-kinetic-gencpp ros-kinetic-geneus ros-kinetic-genlisp ros-kinetic-genmsg
  ros-kinetic-gennodejs ros-kinetic-genpy ros-kinetic-geometric-shapes
  ros-kinetic-geometry ros-kinetic-geometry-msgs
  ros-kinetic-geometry-tutorials ros-kinetic-gl-dependency
  ros-kinetic-hardware-interface ros-kinetic-image-common
  ros-kinetic-image-geometry ros-kinetic-image-pipeline ros-kinetic-image-proc
  ros-kinetic-image-publisher ros-kinetic-image-rotate
  ros-kinetic-image-transport ros-kinetic-image-transport-plugins
  ros-kinetic-image-view ros-kinetic-interactive-marker-tutorials
  ros-kinetic-interactive-markers ros-kinetic-joint-limits-interface
  ros-kinetic-joint-state-controller ros-kinetic-joint-state-publisher
  ros-kinetic-kdl-conversions ros-kinetic-kdl-parser
  ros-kinetic-laser-assembler ros-kinetic-laser-filters
  ros-kinetic-laser-geometry ros-kinetic-laser-pipeline
  ros-kinetic-librviz-tutorial ros-kinetic-map-msgs ros-kinetic-media-export
  ros-kinetic-message-filters ros-kinetic-message-generation
  ros-kinetic-message-runtime ros-kinetic-mk ros-kinetic-nav-msgs
  ros-kinetic-nodelet ros-kinetic-nodelet-core ros-kinetic-nodelet-topic-tools
  ros-kinetic-nodelet-tutorial-math ros-kinetic-octomap ros-kinetic-opencv3
  ros-kinetic-orocos-kdl ros-kinetic-pcl-conversions ros-kinetic-pcl-msgs
  ros-kinetic-pcl-ros ros-kinetic-perception ros-kinetic-perception-pcl
  ros-kinetic-pluginlib ros-kinetic-pluginlib-tutorials
  ros-kinetic-polled-camera ros-kinetic-position-controllers
  ros-kinetic-python-orocos-kdl ros-kinetic-python-qt-binding
  ros-kinetic-qt-dotgraph ros-kinetic-qt-gui ros-kinetic-qt-gui-cpp
  ros-kinetic-qt-gui-py-common ros-kinetic-qwt-dependency
  ros-kinetic-random-numbers ros-kinetic-realtime-tools
  ros-kinetic-resource-retriever ros-kinetic-robot ros-kinetic-robot-model
  ros-kinetic-robot-state-publisher ros-kinetic-ros ros-kinetic-ros-base
  ros-kinetic-ros-comm ros-kinetic-ros-core ros-kinetic-ros-tutorials
  ros-kinetic-rosbag ros-kinetic-rosbag-migration-rule
  ros-kinetic-rosbag-storage ros-kinetic-rosbash ros-kinetic-rosboost-cfg
  ros-kinetic-rosbuild ros-kinetic-rosclean ros-kinetic-rosconsole
  ros-kinetic-rosconsole-bridge ros-kinetic-roscpp ros-kinetic-roscpp-core
  ros-kinetic-roscpp-serialization ros-kinetic-roscpp-traits
  ros-kinetic-roscpp-tutorials ros-kinetic-roscreate ros-kinetic-rosgraph
  ros-kinetic-rosgraph-msgs ros-kinetic-roslang ros-kinetic-roslaunch
  ros-kinetic-roslib ros-kinetic-roslint ros-kinetic-roslisp
  ros-kinetic-roslz4 ros-kinetic-rosmake ros-kinetic-rosmaster
  ros-kinetic-rosmsg ros-kinetic-rosnode ros-kinetic-rosout
  ros-kinetic-rospack ros-kinetic-rosparam ros-kinetic-rospy
  ros-kinetic-rospy-tutorials ros-kinetic-rosservice ros-kinetic-rostest
  ros-kinetic-rostime ros-kinetic-rostopic ros-kinetic-rosunit
  ros-kinetic-roswtf ros-kinetic-rqt-action ros-kinetic-rqt-bag
  ros-kinetic-rqt-bag-plugins ros-kinetic-rqt-common-plugins
  ros-kinetic-rqt-console ros-kinetic-rqt-dep ros-kinetic-rqt-graph
  ros-kinetic-rqt-gui ros-kinetic-rqt-gui-cpp ros-kinetic-rqt-gui-py
  ros-kinetic-rqt-image-view ros-kinetic-rqt-launch
  ros-kinetic-rqt-logger-level ros-kinetic-rqt-moveit ros-kinetic-rqt-msg
  ros-kinetic-rqt-nav-view ros-kinetic-rqt-plot ros-kinetic-rqt-pose-view
  ros-kinetic-rqt-publisher ros-kinetic-rqt-py-common
  ros-kinetic-rqt-py-console ros-kinetic-rqt-reconfigure
  ros-kinetic-rqt-robot-dashboard ros-kinetic-rqt-robot-monitor
  ros-kinetic-rqt-robot-plugins ros-kinetic-rqt-robot-steering
  ros-kinetic-rqt-runtime-monitor ros-kinetic-rqt-rviz
  ros-kinetic-rqt-service-caller ros-kinetic-rqt-shell ros-kinetic-rqt-srv
  ros-kinetic-rqt-tf-tree ros-kinetic-rqt-top ros-kinetic-rqt-topic
  ros-kinetic-rqt-web ros-kinetic-rviz ros-kinetic-rviz-plugin-tutorials
  ros-kinetic-rviz-python-tutorial ros-kinetic-self-test
  ros-kinetic-sensor-msgs ros-kinetic-shape-msgs ros-kinetic-simulators
  ros-kinetic-smach ros-kinetic-smach-msgs ros-kinetic-smach-ros
  ros-kinetic-smclib ros-kinetic-stage ros-kinetic-stage-ros
  ros-kinetic-std-msgs ros-kinetic-std-srvs ros-kinetic-stereo-image-proc
  ros-kinetic-stereo-msgs ros-kinetic-tf ros-kinetic-tf-conversions
  ros-kinetic-tf2 ros-kinetic-tf2-eigen ros-kinetic-tf2-geometry-msgs
  ros-kinetic-tf2-kdl ros-kinetic-tf2-msgs ros-kinetic-tf2-py
  ros-kinetic-tf2-ros ros-kinetic-theora-image-transport
  ros-kinetic-topic-tools ros-kinetic-trajectory-msgs
  ros-kinetic-transmission-interface ros-kinetic-turtle-actionlib
  ros-kinetic-turtle-tf ros-kinetic-turtle-tf2 ros-kinetic-turtlesim
  ros-kinetic-urdf ros-kinetic-urdf-parser-plugin ros-kinetic-urdf-tutorial
  ros-kinetic-vision-opencv ros-kinetic-visualization-marker-tutorials
  ros-kinetic-visualization-msgs ros-kinetic-visualization-tutorials
  ros-kinetic-viz ros-kinetic-webkit-dependency ros-kinetic-xacro
  ros-kinetic-xmlrpcpp ruby ruby-did-you-mean ruby-minitest ruby-net-telnet
  ruby-power-assert ruby-test-unit ruby2.3 rubygems-integration sbcl
  sdformat-sdf shiboken2 sip-dev tango-icon-theme tcl-vtk6 tk8.6-blt2.5
  ttf-bitstream-vera ttf-dejavu-core ttf-liberation unixodbc unixodbc-dev
  uuid-dev vtk6
Suggested packages:
  blt-demo gazebo7-doc graphviz-doc ksensors apache2 | lighttpd | httpd
  krb5-doc libbullet2-dev libbullet2 libcurl4-doc libcurl3-dbg libidn11-dev
  libkrb5-dev librtmp-dev libeigen3-doc libmrpt-dev libgdal-doc krb5-user
  libgtk2.0-doc libgts-doc libhdf4-doc hdf4-tools libnetcdf4 libhdf5-doc
  libjs-jquery-ui-docs liblapack-doc-man liblapack-doc liblog4cxx-doc
  netcdf-bin netcdf-doc libmyodbc odbc-postgresql tdsodbc unixodbc-bin
  ogdi-bin ogre-1.9-doc libogre-1.9.0v5-dbg openni-doc libpcl-doc libpoco-doc
  libpococrypto9v5-dbg libpocodata9v5-dbg libpocofoundation9v5-dbg
  libpocomysql9v5-dbg libpoconet9v5-dbg libpoconetssl9v5-dbg
  libpocoodbc9v5-dbg libpocosqlite9v5-dbg libpocoutil9v5-dbg libpocoxml9v5-dbg
  libpocozip9v5-dbg postgresql-doc-9.5 firebird-dev libsqlite0-dev
  qt4-dev-tools qt4-doc lksctp-tools spacenavd libtinyxml-doc
  java-virtual-machine libvtk5-dev vtk-doc vtk-examples vtk6-doc vtk6-examples
  libxerces-c-doc python-crypto-dbg python-crypto-doc python-cryptography-doc
  python-cryptography-vectors texlive-latex-recommended texlive-latex-base
  texlive-lang-french fonts-linuxlibertine | ttf-linux-libertine
  python-enum34-doc python-gtk2-doc python-gobject-2-dbg dvipng ffmpeg
  inkscape ipython python-cairocffi python-configobj python-excelerator
  python-gobject python-matplotlib-doc python-qt4 python-scipy python-tornado
  python-traits python-wxgtk3.0 texlive-extra-utils texlive-latex-extra
  ttf-staypuft python-coverage python-nose-doc python-numpy-dbg
  python-numpy-doc libgle3 python-openssl-doc python-openssl-dbg
  python-pam-dbg python-pil-doc python-pil-dbg python-psutil-doc
  python-pyqt5-dbg python-wxgtk3.0 | python-wxgtk python-setuptools-doc
  python-sip-doc tix python-tk-dbg python-twisted-bin-dbg python-qt3
  python-txaio-doc mayavi2 ri ruby-dev bundler sbcl-doc sbcl-source slime
  gnome-icon-theme kdelibs-data
The following NEW packages will be installed
  binfmt-support blt comerr-dev docutils-common docutils-doc fltk1.3-doc fluid
  fonts-lato fonts-lyx freeglut3 freeglut3-dev gazebo7 gazebo7-common
  gazebo7-plugin-base gir1.2-gtk-2.0 graphviz hddtemp hdf5-helpers
  javascript-common krb5-multidev libaec-dev libaec0 libapr1 libapr1-dev
  libaprutil1 libaprutil1-dev libarmadillo6 libarpack2 libassimp-dev
  libassimp3v5 libbulletcollision2.83.6 libbulletdynamics2.83.6 libcdt5
  libcgraph6 libcollada-dom2.4-dp-dev libcollada-dom2.4-dp0
  libconsole-bridge-dev libconsole-bridge0.2v5 libcurl4-openssl-dev libdap-dev
  libdap17v5 libdapclient6v5 libdapserver7v5 libeigen3-dev libepsilon1
  libflann-dev libflann1.8 libfltk-cairo1.3 libfltk-forms1.3 libfltk-gl1.3
  libfltk-images1.3 libfltk1.3 libfltk1.3-dev libfreeimage-dev libfreeimage3
  libfreexl1 libgazebo7 libgazebo7-dev libgdal-dev libgdal1i libgeos-3.5.0
  libgeos-c1v5 libgeos-dev libgif-dev libgif7 libgl1-mesa-dev libgl2ps-dev
  libgl2ps0 libglade2-0 libgles2-mesa-dev libglu1-mesa-dev libgssrpc4
  libgtest-dev libgtk2.0-dev libgts-0.7-5 libgts-bin libgts-dev libgvc6
  libgvpr2 libhdf4-0-alt libhdf4-alt-dev libhdf5-10 libhdf5-cpp-11 libhdf5-dev
  libhdf5-mpi-dev libhdf5-openmpi-10 libhdf5-openmpi-dev libignition-math2
  libignition-math2-dev libinput-dev libjs-jquery libjs-jquery-ui
  libjs-sphinxdoc libjs-underscore libjsoncpp-dev libjxr0 libkadm5clnt-mit9
  libkadm5srv-mit9 libkdb5-8 libkmlbase1 libkmldom1 libkmlengine1
  liblapack-dev liblapack3 libldap2-dev liblinearmath2.83.6 liblog4cxx-dev
  liblog4cxx10-dev liblog4cxx10v5 liblz4-dev libminizip1 libmysqlclient-dev
  libmysqlclient20 libnetcdf-c++4 libnetcdf-cxx-legacy-dev libnetcdf-dev
  libnetcdf11 libodbc1 libogdi3.2 libogg-dev libogre-1.9-dev libogre-1.9.0v5
  libopenjp2-7 libopenni-dev libopenni-sensor-pointclouds0 libopenni0
  libpathplan4 libpcl-apps1.7 libpcl-common1.7 libpcl-dev libpcl-features1.7
  libpcl-filters1.7 libpcl-io1.7 libpcl-kdtree1.7 libpcl-keypoints1.7
  libpcl-octree1.7 libpcl-outofcore1.7 libpcl-people1.7 libpcl-recognition1.7
  libpcl-registration1.7 libpcl-sample-consensus1.7 libpcl-search1.7
  libpcl-segmentation1.7 libpcl-surface1.7 libpcl-tracking1.7
  libpcl-visualization1.7 libpcl1.7 libpoco-dev libpococrypto9v5
  libpocodata9v5 libpocofoundation9v5 libpocomysql9v5 libpoconet9v5
  libpoconetssl9v5 libpocoodbc9v5 libpocosqlite9v5 libpocoutil9v5
  libpocoxml9v5 libpocozip9v5 libpq-dev libpq5 libproj-dev libproj9
  libprotoc-dev libprotoc9v5 libpyside-py3-2.0 libpyside2-dev libpyside2.0
  libqgsttools-p1 libqhull-dev libqhull7 libqt4-designer libqt4-dev
  libqt4-dev-bin libqt4-help libqt4-opengl libqt4-opengl-dev libqt4-qt3support
  libqt4-scripttools libqt4-svg libqt4-test libqt5clucene5 libqt5concurrent5
  libqt5designer5 libqt5designercomponents5 libqt5help5
  libqt5multimediaquick-p5 libqt5multimediawidgets5 libqt5opengl5-dev
  libqt5quickparticles5 libqt5quickwidgets5 libqt5script5 libqt5scripttools5
  libqt5svg5-dev libqt5webkit5-dev libqt5x11extras5-dev libqt5xmlpatterns5
  libqt5xmlpatterns5-dev libqt5xmlpatterns5-private-dev libqtwebkit-dev
  libqtwebkit4 libruby2.3 libsctp-dev libsctp1 libsdformat4 libsdformat4-dev
  libshiboken-py3-2.0 libshiboken2-dev libshiboken2.0 libsimbody-dev
  libsimbody3.5v5 libspatialite-dev libspatialite7 libspnav0 libsuperlu4
  libsz2 libtar-dev libtar0 libtheora-dev libtinyxml-dev libtinyxml2-2v5
  libtinyxml2.6.2v5 liburdfdom-dev liburdfdom-headers-dev
  liburdfdom-model-state0.4 liburdfdom-model0.4 liburdfdom-sensor0.4
  liburdfdom-tools liburdfdom-world0.4 liburiparser1 libusb-1.0-0-dev
  libusb-1.0-doc libvtk-java libvtk5.10 libvtk6-dev libvtk6-java
  libvtk6-qt-dev libvtk6.2 libvtk6.2-qt libwebp-dev libwebpdemux1
  libxerces-c-dev libxerces-c3.1 libxml2-dev libxml2-utils libxmu-dev
  libxmu-headers libyaml-cpp-dev libyaml-cpp0.5v5 libzzip-0-13 mesa-common-dev
  mysql-common odbcinst odbcinst1debian2 openni-utils proj-bin proj-data
  pyqt5-dev python-attr python-autobahn python-cairo python-catkin-pkg
  python-catkin-pkg-modules python-cffi-backend python-chardet
  python-concurrent.futures python-crypto python-cryptography python-cycler
  python-dateutil python-defusedxml python-docutils python-ecdsa python-empy
  python-enum34 python-glade2 python-gobject-2 python-gtk2 python-idna
  python-imaging python-ipaddress python-lz4 python-matplotlib
  python-matplotlib-data python-mpi4py python-msgpack python-netifaces
  python-nose python-numpy python-opengl python-openssl python-pam
  python-paramiko python-pil python-pkg-resources python-psutil python-pyasn1
  python-pyasn1-modules python-pydot python-pygments python-pyparsing
  python-pyqt5 python-pyqt5.qtopengl python-pyqt5.qtsvg python-pyqt5.qtwebkit
  python-pyside2 python-pyside2.qtconcurrent python-pyside2.qtcore
  python-pyside2.qtgui python-pyside2.qthelp python-pyside2.qtnetwork
  python-pyside2.qtprintsupport python-pyside2.qtqml python-pyside2.qtquick
  python-pyside2.qtquickwidgets python-pyside2.qtscript python-pyside2.qtsql
  python-pyside2.qtsvg python-pyside2.qttest python-pyside2.qtuitools
  python-pyside2.qtwebkit python-pyside2.qtwebkitwidgets
  python-pyside2.qtwidgets python-pyside2.qtx11extras python-pyside2.qtxml
  python-roman python-rosdep python-rosdistro python-rosdistro-modules
  python-rospkg python-rospkg-modules python-serial python-service-identity
  python-setuptools python-sip python-sip-dev python-six python-snappy
  python-tk python-trollius python-twisted python-twisted-bin
  python-twisted-core python-txaio python-tz python-vtk6 python-yaml
  python-zope.interface qt4-linguist-tools qt4-qmake qt5-qmake qtbase5-dev
  qtbase5-dev-tools qtbase5-private-dev qtdeclarative5-dev
  qtdeclarative5-private-dev qtmultimedia5-dev qtscript5-dev
  qtscript5-private-dev qttools5-dev qttools5-dev-tools qttools5-private-dev
  rake ros-kinetic-actionlib ros-kinetic-actionlib-msgs
  ros-kinetic-actionlib-tutorials ros-kinetic-angles ros-kinetic-bond
  ros-kinetic-bond-core ros-kinetic-bondcpp ros-kinetic-bondpy
  ros-kinetic-camera-calibration ros-kinetic-camera-calibration-parsers
  ros-kinetic-camera-info-manager ros-kinetic-catkin ros-kinetic-class-loader
  ros-kinetic-cmake-modules ros-kinetic-collada-parser
  ros-kinetic-collada-urdf ros-kinetic-common-msgs
  ros-kinetic-common-tutorials ros-kinetic-compressed-depth-image-transport
  ros-kinetic-compressed-image-transport ros-kinetic-control-msgs
  ros-kinetic-control-toolbox ros-kinetic-controller-interface
  ros-kinetic-controller-manager ros-kinetic-controller-manager-msgs
  ros-kinetic-cpp-common ros-kinetic-cv-bridge ros-kinetic-depth-image-proc
  ros-kinetic-desktop ros-kinetic-desktop-full
  ros-kinetic-diagnostic-aggregator ros-kinetic-diagnostic-analysis
  ros-kinetic-diagnostic-common-diagnostics ros-kinetic-diagnostic-msgs
  ros-kinetic-diagnostic-updater ros-kinetic-diagnostics
  ros-kinetic-diff-drive-controller ros-kinetic-dynamic-reconfigure
  ros-kinetic-eigen-conversions ros-kinetic-eigen-stl-containers
  ros-kinetic-executive-smach ros-kinetic-filters
  ros-kinetic-forward-command-controller ros-kinetic-gazebo-msgs
  ros-kinetic-gazebo-plugins ros-kinetic-gazebo-ros
  ros-kinetic-gazebo-ros-control ros-kinetic-gazebo-ros-pkgs
  ros-kinetic-gencpp ros-kinetic-geneus ros-kinetic-genlisp ros-kinetic-genmsg
  ros-kinetic-gennodejs ros-kinetic-genpy ros-kinetic-geometric-shapes
  ros-kinetic-geometry ros-kinetic-geometry-msgs
  ros-kinetic-geometry-tutorials ros-kinetic-gl-dependency
  ros-kinetic-hardware-interface ros-kinetic-image-common
  ros-kinetic-image-geometry ros-kinetic-image-pipeline ros-kinetic-image-proc
  ros-kinetic-image-publisher ros-kinetic-image-rotate
  ros-kinetic-image-transport ros-kinetic-image-transport-plugins
  ros-kinetic-image-view ros-kinetic-interactive-marker-tutorials
  ros-kinetic-interactive-markers ros-kinetic-joint-limits-interface
  ros-kinetic-joint-state-controller ros-kinetic-joint-state-publisher
  ros-kinetic-kdl-conversions ros-kinetic-kdl-parser
  ros-kinetic-laser-assembler ros-kinetic-laser-filters
  ros-kinetic-laser-geometry ros-kinetic-laser-pipeline
  ros-kinetic-librviz-tutorial ros-kinetic-map-msgs ros-kinetic-media-export
  ros-kinetic-message-filters ros-kinetic-message-generation
  ros-kinetic-message-runtime ros-kinetic-mk ros-kinetic-nav-msgs
  ros-kinetic-nodelet ros-kinetic-nodelet-core ros-kinetic-nodelet-topic-tools
  ros-kinetic-nodelet-tutorial-math ros-kinetic-octomap ros-kinetic-opencv3
  ros-kinetic-orocos-kdl ros-kinetic-pcl-conversions ros-kinetic-pcl-msgs
  ros-kinetic-pcl-ros ros-kinetic-perception ros-kinetic-perception-pcl
  ros-kinetic-pluginlib ros-kinetic-pluginlib-tutorials
  ros-kinetic-polled-camera ros-kinetic-position-controllers
  ros-kinetic-python-orocos-kdl ros-kinetic-python-qt-binding
  ros-kinetic-qt-dotgraph ros-kinetic-qt-gui ros-kinetic-qt-gui-cpp
  ros-kinetic-qt-gui-py-common ros-kinetic-qwt-dependency
  ros-kinetic-random-numbers ros-kinetic-realtime-tools
  ros-kinetic-resource-retriever ros-kinetic-robot ros-kinetic-robot-model
  ros-kinetic-robot-state-publisher ros-kinetic-ros ros-kinetic-ros-base
  ros-kinetic-ros-comm ros-kinetic-ros-core ros-kinetic-ros-tutorials
  ros-kinetic-rosbag ros-kinetic-rosbag-migration-rule
  ros-kinetic-rosbag-storage ros-kinetic-rosbash ros-kinetic-rosboost-cfg
  ros-kinetic-rosbuild ros-kinetic-rosclean ros-kinetic-rosconsole
  ros-kinetic-rosconsole-bridge ros-kinetic-roscpp ros-kinetic-roscpp-core
  ros-kinetic-roscpp-serialization ros-kinetic-roscpp-traits
  ros-kinetic-roscpp-tutorials ros-kinetic-roscreate ros-kinetic-rosgraph
  ros-kinetic-rosgraph-msgs ros-kinetic-roslang ros-kinetic-roslaunch
  ros-kinetic-roslib ros-kinetic-roslint ros-kinetic-roslisp
  ros-kinetic-roslz4 ros-kinetic-rosmake ros-kinetic-rosmaster
  ros-kinetic-rosmsg ros-kinetic-rosnode ros-kinetic-rosout
  ros-kinetic-rospack ros-kinetic-rosparam ros-kinetic-rospy
  ros-kinetic-rospy-tutorials ros-kinetic-rosservice ros-kinetic-rostest
  ros-kinetic-rostime ros-kinetic-rostopic ros-kinetic-rosunit
  ros-kinetic-roswtf ros-kinetic-rqt-action ros-kinetic-rqt-bag
  ros-kinetic-rqt-bag-plugins ros-kinetic-rqt-common-plugins
  ros-kinetic-rqt-console ros-kinetic-rqt-dep ros-kinetic-rqt-graph
  ros-kinetic-rqt-gui ros-kinetic-rqt-gui-cpp ros-kinetic-rqt-gui-py
  ros-kinetic-rqt-image-view ros-kinetic-rqt-launch
  ros-kinetic-rqt-logger-level ros-kinetic-rqt-moveit ros-kinetic-rqt-msg
  ros-kinetic-rqt-nav-view ros-kinetic-rqt-plot ros-kinetic-rqt-pose-view
  ros-kinetic-rqt-publisher ros-kinetic-rqt-py-common
  ros-kinetic-rqt-py-console ros-kinetic-rqt-reconfigure
  ros-kinetic-rqt-robot-dashboard ros-kinetic-rqt-robot-monitor
  ros-kinetic-rqt-robot-plugins ros-kinetic-rqt-robot-steering
  ros-kinetic-rqt-runtime-monitor ros-kinetic-rqt-rviz
  ros-kinetic-rqt-service-caller ros-kinetic-rqt-shell ros-kinetic-rqt-srv
  ros-kinetic-rqt-tf-tree ros-kinetic-rqt-top ros-kinetic-rqt-topic
  ros-kinetic-rqt-web ros-kinetic-rviz ros-kinetic-rviz-plugin-tutorials
  ros-kinetic-rviz-python-tutorial ros-kinetic-self-test
  ros-kinetic-sensor-msgs ros-kinetic-shape-msgs ros-kinetic-simulators
  ros-kinetic-smach ros-kinetic-smach-msgs ros-kinetic-smach-ros
  ros-kinetic-smclib ros-kinetic-stage ros-kinetic-stage-ros
  ros-kinetic-std-msgs ros-kinetic-std-srvs ros-kinetic-stereo-image-proc
  ros-kinetic-stereo-msgs ros-kinetic-tf ros-kinetic-tf-conversions
  ros-kinetic-tf2 ros-kinetic-tf2-eigen ros-kinetic-tf2-geometry-msgs
  ros-kinetic-tf2-kdl ros-kinetic-tf2-msgs ros-kinetic-tf2-py
  ros-kinetic-tf2-ros ros-kinetic-theora-image-transport
  ros-kinetic-topic-tools ros-kinetic-trajectory-msgs
  ros-kinetic-transmission-interface ros-kinetic-turtle-actionlib
  ros-kinetic-turtle-tf ros-kinetic-turtle-tf2 ros-kinetic-turtlesim
  ros-kinetic-urdf ros-kinetic-urdf-parser-plugin ros-kinetic-urdf-tutorial
  ros-kinetic-vision-opencv ros-kinetic-visualization-marker-tutorials
  ros-kinetic-visualization-msgs ros-kinetic-visualization-tutorials
  ros-kinetic-viz ros-kinetic-webkit-dependency ros-kinetic-xacro
  ros-kinetic-xmlrpcpp ruby ruby-did-you-mean ruby-minitest ruby-net-telnet
  ruby-power-assert ruby-test-unit ruby2.3 rubygems-integration sbcl
  sdformat-sdf shiboken2 sip-dev tango-icon-theme tcl-vtk6 tk8.6-blt2.5
  ttf-bitstream-vera ttf-dejavu-core ttf-liberation unixodbc unixodbc-dev
  uuid-dev vtk6
0 to upgrade, 625 to newly install, 0 to remove and 22 not to upgrade.
Need to get 385 MB/385 MB of archives.
After this operation, 1,959 MB of additional disk space will be used.
Do you want to continue? [Y/n]

```


# Initialize rosdep
```
map479@map479-W2600CR:~$ sudo rosdep init
Wrote /etc/ros/rosdep/sources.list.d/20-default.list
Recommended: please run

	rosdep update
```

```
map479@map479-W2600CR:~$ rosdep update
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
updated cache in /home/map479/.ros/rosdep/sources.cache


```

### Environment setup

```
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
```



### Getting rosinstall

```
$ sudo apt-get install python-rosinstall
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages were automatically installed and are no longer required:
  linux-headers-4.4.0-31 linux-headers-4.4.0-31-generic linux-image-4.4.0-31-generic linux-image-extra-4.4.0-31-generic ubuntu-core-launcher
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  bzr libjs-excanvas libserf-1-1 libsvn1 mercurial mercurial-common python-bzrlib python-configobj python-dbus python-gi python-gpgme python-httplib2 python-keyring python-launchpadlib python-lazr.restfulclient
  python-lazr.uri python-oauth python-secretstorage python-simplejson python-vcstools python-wadllib python-wstool subversion
Suggested packages:
  bzr-doc bzrtools python-bzrlib.tests qct kdiff3 | kdiff3-qt | kompare | meld | tkcvs | mgdiff python-mysqldb python-bzrlib-dbg python-kerberos python-pycurl python-configobj-doc python-dbus-doc
  python-dbus-dbg python-gi-cairo python-fs python-gdata python-kde4 python-keyczar python-testresources python-secretstorage-doc db5.3-util subversion-tools
The following NEW packages will be installed
  bzr libjs-excanvas libserf-1-1 libsvn1 mercurial mercurial-common python-bzrlib python-configobj python-dbus python-gi python-gpgme python-httplib2 python-keyring python-launchpadlib python-lazr.restfulclient
  python-lazr.uri python-oauth python-rosinstall python-secretstorage python-simplejson python-vcstools python-wadllib python-wstool subversion
0 to upgrade, 24 to newly install, 0 to remove and 22 not to upgrade.
Need to get 5,606 kB of archives.
After this operation, 28.3 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y

```



# Installing and Configuring Your ROS Environment

Testing version of ROS and python-catkin



```
$ echo $ROS_PACKAGE_PATH
/opt/ros/kinetic/share
```




```
$ printenv | grep ROS
ROS_ROOT=/opt/ros/kinetic/share/ros
ROS_PACKAGE_PATH=/opt/ros/kinetic/share
ROS_MASTER_URI=http://localhost:11311
ROSLISP_PACKAGE_DIRECTORIES=
ROS_DISTRO=kinetic
ROS_ETC_DIR=/opt/ros/kinetic/etc/ros
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




```
cd && mkdir -p ~/catkin_ws/src &&  cd ~/catkin_ws/
```


```
$ catkin_make
Base path: /home/map479/catkin_ws
Source space: /home/map479/catkin_ws/src
Build space: /home/map479/catkin_ws/build
Devel space: /home/map479/catkin_ws/devel
Install space: /home/map479/catkin_ws/install
####
#### Running command: "cmake /home/map479/catkin_ws/src -DCATKIN_DEVEL_PREFIX=/home/map479/catkin_ws/devel -DCMAKE_INSTALL_PREFIX=/home/map479/catkin_ws/install -G Unix Makefiles" in "/home/map479/catkin_ws/build"
####
-- Using CATKIN_DEVEL_PREFIX: /home/map479/catkin_ws/devel
-- Using CMAKE_PREFIX_PATH: /opt/ros/kinetic
-- This workspace overlays: /opt/ros/kinetic
-- Using PYTHON_EXECUTABLE: /usr/local/bin/python
-- Using Debian Python package layout
-- Using empy: /usr/bin/empy
-- Using CATKIN_ENABLE_TESTING: ON
-- Call enable_testing()
-- Using CATKIN_TEST_RESULTS_DIR: /home/map479/catkin_ws/build/test_results
-- Found gtest sources under '/usr/src/gtest': gtests will be built
-- Using Python nosetests: /usr/bin/nosetests-2.7
ImportError: "from catkin_pkg.package import parse_package" failed: No module named catkin_pkg.package
Make sure that you have installed "catkin_pkg", it is up to date and on the PYTHONPATH.
CMake Error at /opt/ros/kinetic/share/catkin/cmake/safe_execute_process.cmake:11 (message):
  execute_process(/usr/local/bin/python
  "/opt/ros/kinetic/share/catkin/cmake/parse_package_xml.py"
  "/opt/ros/kinetic/share/catkin/cmake/../package.xml"
  "/home/map479/catkin_ws/build/catkin/catkin_generated/version/package.cmake")
  returned error code 1
Call Stack (most recent call first):
  /opt/ros/kinetic/share/catkin/cmake/catkin_package_xml.cmake:63 (safe_execute_process)
  /opt/ros/kinetic/share/catkin/cmake/all.cmake:151 (_catkin_package_xml)
  /opt/ros/kinetic/share/catkin/cmake/catkinConfig.cmake:20 (include)
  CMakeLists.txt:52 (find_package)


-- Configuring incomplete, errors occurred!
See also "/home/map479/catkin_ws/build/CMakeFiles/CMakeOutput.log".
See also "/home/map479/catkin_ws/build/CMakeFiles/CMakeError.log".
Invoking "cmake" failed
```


```
$ sudo pip install catkin_pkg
[sudo] password for map479:
The directory '/home/map479/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/map479/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Collecting catkin_pkg
  Downloading catkin_pkg-0.3.3.tar.gz (44kB)
    100% |████████████████████████████████| 51kB 2.2MB/s
Collecting argparse (from catkin_pkg)
  Downloading argparse-1.4.0-py2.py3-none-any.whl
Collecting docutils (from catkin_pkg)
  Downloading docutils-0.13.1-py2-none-any.whl (537kB)
    100% |████████████████████████████████| 542kB 1.5MB/s
Requirement already satisfied: python-dateutil in /usr/local/lib/python2.7/site-packages (from catkin_pkg)
Requirement already satisfied: six>=1.5 in /usr/local/lib/python2.7/site-packages (from python-dateutil->catkin_pkg)
Installing collected packages: argparse, docutils, catkin-pkg
  Running setup.py install for catkin-pkg ... done
Successfully installed argparse-1.4.0 catkin-pkg-0.3.3 docutils-0.13.1

```


```
$ cd && rm -rf ~/catkin_ws &&  mkdir -p ~/catkin_ws/src &&  cd ~/catkin_ws/
map479@map479-W2600CR:~/catkin_ws$ catkin_make
Traceback (most recent call last):
  File "/opt/ros/kinetic/bin/catkin_make", line 12, in <module>
    from catkin.init_workspace import init_workspace
ImportError: No module named catkin.init_workspace
```



```
cd && rm -rf ~/catkin_ws &&  mkdir -p ~/catkin_ws/src &&  cd ~/catkin_ws/src && catkin_init_workspace
cd ~/catkin_ws/ && catkin_make
```
