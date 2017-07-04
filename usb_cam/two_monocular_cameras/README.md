2 USB cameras for stereo vision
---

```

 <launch>
   <group ns="stereo">
     <node name="left" pkg="usb_cam" type="usb_cam_node" output="screen" >
         <param name="video_device" value="/dev/video1" />
         <param name="image_width" value="640" />
         <param name="image_height" value="480" />
         <param name="pixel_format" value="mjpeg" />
         <param name="camera_frame_id" value="left" />
         <param name="io_method" value="mmap"/>      
     </node>

     <node name="right" pkg="usb_cam" type="usb_cam_node" output="screen" >
         <param name="video_device" value="/dev/video2" />
         <param name="image_width" value="640" />
         <param name="image_height" value="480" />
         <param name="pixel_format" value="mjpeg" />
         <param name="camera_frame_id" value="right" />
         <param name="io_method" value="mmap"/>      
     </node>
   </group>  
 </launch>
```


http://answers.ros.org/question/62778/ros_camera_info-service-not-found-for-usb_cam/


TODO
* reply on the forum to ask about the sucess of the calibration of stereo cameras
