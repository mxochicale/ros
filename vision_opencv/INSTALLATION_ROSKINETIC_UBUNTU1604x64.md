



1.
```
cd ~/catkin_ws/src/
git clone https://github.com/ros-perception/vision_opencv
cd vision_opencv/
rm -rf image_geometry/
```

2.
 then run catkin_make from the catkin workspace root folder.
```
cd ../.. && catkin_make
```



3. source usb_cam
 Make sure the <catkin_workspace>/devel/setup.bash file is sourced.

```
source ~/.bashrc
```




## ISSUES /image_geometry/pinhole_camera_model.h:273:8: error:

```
Scanning dependencies of target depth_image_proc
In file included from /home/map479/catkin_ws/src/image_pipeline/image_proc/include/image_proc/processor.h:38:0,
                 from /home/map479/catkin_ws/src/image_pipeline/image_proc/src/libimage_proc/processor.cpp:34:
/home/map479/catkin_ws/src/vision_opencv/image_geometry/include/image_geometry/pinhole_camera_model.h:273:8: error: ‘shared_ptr’ in namespace ‘std’ does not name a template type
   std::shared_ptr<Cache> cache_; // Holds cached data for internal use
        ^
/home/map479/catkin_ws/src/vision_opencv/image_geometry/include/image_geometry/pinhole_camera_model.h: In member function ‘bool image_geometry::PinholeCameraModel::initialized() const’:
/home/map479/catkin_ws/src/vision_opencv/image_geometry/include/image_geometry/pinhole_camera_model.h:260:43: error: ‘cache_’ was not declared in this scope
   bool initialized() const { return (bool)cache_; }
                                           ^
[ 57%] Building CXX object image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/src/nodelets/convert_metric.cpp.o
image_pipeline/image_proc/CMakeFiles/image_proc.dir/build.make:62: recipe for target 'image_pipeline/image_proc/CMakeFiles/image_proc.dir/src/libimage_proc/processor.cpp.o' failed
make[2]: *** [image_pipeline/image_proc/CMakeFiles/image_proc.dir/src/libimage_proc/processor.cpp.o] Error 1
CMakeFiles/Makefile2:4272: recipe for target 'image_pipeline/image_proc/CMakeFiles/image_proc.dir/all' failed
make[1]: *** [image_pipeline/image_proc/CMakeFiles/image_proc.dir/all] Error 2
make[1]: *** Waiting for unfinished jobs....
[ 58%] Building CXX object image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/src/nodelets/crop_foremost.cpp.o
[ 60%] Linking CXX executable /home/map479/catkin_ws/devel/lib/image_view/image_view
[ 60%] Built target image_view_exe
[ 61%] Building CXX object image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/src/nodelets/disparity.cpp.o
[ 63%] Building CXX object image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/src/nodelets/point_cloud_xyz.cpp.o
[ 64%] Building CXX object image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/src/nodelets/point_cloud_xyzrgb.cpp.o
In file included from /home/map479/catkin_ws/src/image_pipeline/depth_image_proc/src/nodelets/point_cloud_xyz.cpp:38:0:
/home/map479/catkin_ws/src/vision_opencv/image_geometry/include/image_geometry/pinhole_camera_model.h:273:8: error: ‘shared_ptr’ in namespace ‘std’ does not name a template type
   std::shared_ptr<Cache> cache_; // Holds cached data for internal use
        ^
/home/map479/catkin_ws/src/vision_opencv/image_geometry/include/image_geometry/pinhole_camera_model.h: In member function ‘bool image_geometry::PinholeCameraModel::initialized() const’:
/home/map479/catkin_ws/src/vision_opencv/image_geometry/include/image_geometry/pinhole_camera_model.h:260:43: error: ‘cache_’ was not declared in this scope
   bool initialized() const { return (bool)cache_; }
                                           ^
In file included from /home/map479/catkin_ws/src/image_pipeline/depth_image_proc/src/nodelets/point_cloud_xyzrgb.cpp:50:0:
/home/map479/catkin_ws/src/vision_opencv/image_geometry/include/image_geometry/pinhole_camera_model.h:273:8: error: ‘shared_ptr’ in namespace ‘std’ does not name a template type
   std::shared_ptr<Cache> cache_; // Holds cached data for internal use
        ^
/home/map479/catkin_ws/src/vision_opencv/image_geometry/include/image_geometry/pinhole_camera_model.h: In member function ‘bool image_geometry::PinholeCameraModel::initialized() const’:
/home/map479/catkin_ws/src/vision_opencv/image_geometry/include/image_geometry/pinhole_camera_model.h:260:43: error: ‘cache_’ was not declared in this scope
   bool initialized() const { return (bool)cache_; }
                                           ^
image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/build.make:134: recipe for target 'image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/src/nodelets/point_cloud_xyz.cpp.o' failed
make[2]: *** [image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/src/nodelets/point_cloud_xyz.cpp.o] Error 1
make[2]: *** Waiting for unfinished jobs....
image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/build.make:158: recipe for target 'image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/src/nodelets/point_cloud_xyzrgb.cpp.o' failed
make[2]: *** [image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/src/nodelets/point_cloud_xyzrgb.cpp.o] Error 1
CMakeFiles/Makefile2:4950: recipe for target 'image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/all' failed
make[1]: *** [image_pipeline/depth_image_proc/CMakeFiles/depth_image_proc.dir/all] Error 2
[ 65%] Linking CXX executable /home/map479/catkin_ws/devel/lib/image_view/stereo_view
[ 65%] Built target stereo_view
Makefile:138: recipe for target 'all' failed
make: *** [all] Error 2
Invoking "make -j4 -l4" failed

```

```
~/catkin_ws/devel/share$ rm -rf cv_bridge/
~/catkin_ws/devel/share$ rm -rf image_geometry/
~/catkin_ws/devel/share$ rm -rf opencv_tests/
```
