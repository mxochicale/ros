Accelerometer Min and Max calibration values
---
@N310, Gisbert Kapp(G8)



Calibrating the accelerometer:

    We'll try to find the minimum and maximum output values for the earth gravitation on each axis. When you move the board, move it real slowly, so the acceleration you apply to it is as small as possible. We only want pure gravity!


 __________________________
|o              +y        o|
|--             /\       * |
|  |        -x <  > +x   * |
|--             \/       * |
|               -y       * |
|o________________________o|





1. Pair the bluetooth module to /dev/rfcomm0

```
rfcomm -i 00:1A:7D:DA:71:11 connect 0
```

2. Open Arduino and go to Tool/Serial Port and choose /dev/rfcomm0


3. Open Serial Monitor and set the baudrate to 57600
Lay the Razor still on the table.  


3.1. AX+
  Take the board and point straight down with the x-axis
  (remember: x-axis = towards the short edge with the connector holes).
  ```
  #osrt #o1
  ```
  30 seconds of data
  ```
  #o0
  ```
  Sava the data as
  razor1_acc_x_plus.raw


3.2 AX-
  Invert the board and point straight up with the x-axis

  ```
  #osrt #o1
  ```
  30 seconds of data
  ```
  #o0
  ```
  Sava the data as
  razor1_acc_x_neg.raw



  3.3. AY+
    Take the board and point straight down with the y-axis
    (remember: x-axis = towards the short edge with the connector holes).
    ```
    #osrt #o1
    ```
    30 seconds of data
    ```
    #o0
    ```
    Sava the data as
    razor1_acc_y_plus.raw


  3.4 AY-
    Invert the board and point straight up with the y-axis

    ```
    #osrt #o1
    ```
    30 seconds of data
    ```
    #o0
    ```
    Sava the data as
    razor1_acc_y_neg.raw




  3.5. AZ+
    Take the board and point straight down with the z-axis
    (remember: z-axis is when you can read sparkfunk.com).
    ```
    #osrt #o1
    ```
    30 seconds of data
    ```
    #o0
    ```
    Sava the data as
    razor1_acc_z_plus.raw


  3.6 AZ-
    Invert the board and point straight up with the z-axis

    ```
    #osrt #o1
    ```
    30 seconds of data
    ```
    #o0
    ```
    Sava the data as
    razor1_acc_z_neg.raw




  4. For the Gyroscope:
    Wait for 30 seconds, and do not move the Razor. It will collect data from the gyroscope on all three axes.  
    razor1_gyr_xyz.raw



https://github.com/Razor-AHRS/razor-9dof-ahrs/wiki/Tutorial






Run the following R script with for different sensors: source(paste(getwd(),"/acc_cal.R", sep=""), echo=TRUE)
```
setwd(paste(main_path,"/razor4",sep=""));
```


```
> ############################################################
> # FUNCTION USAGE: sensor_vector_means(filename, chosen_axis)
> sensor_vector_means <- .... [TRUNCATED]

> ## call functions and present mean values
>
> sensor_vector_means(files[1], "ACCX")
Filename: razor4_acc_x_neg.raw
mean AX  -271.655193992491

> sensor_vector_means(files[2], "ACCX")
Filename: razor4_acc_x_pos.raw
mean AX  238.077456647399

> sensor_vector_means(files[3], "ACCY")
Filename: razor4_acc_y_neg.raw
mean AY  255.458858858859

> sensor_vector_means(files[4], "ACCY")
Filename: razor4_acc_y_pos.raw
mean AY  -249.865104496517

> sensor_vector_means(files[5], "ACCZ")
Filename: razor4_acc_z_neg.raw
mean AZ  228.446312364425

> sensor_vector_means(files[6], "ACCZ")
Filename: razor4_acc_z_pos.raw
mean AZ  -264.095994914177

> setwd(main_path)
```


## for Gyroscope
run the following script on R
source(paste(getwd(),"/gyr_cal.R", sep=""), echo=TRUE)
Change this lines which are dependent on the sensor number
setwd(paste(main_path,"/razor4",sep=""));
sensor_vector_means("razor4_gyr_xyz.raw")




## TODO


In the acc_cal.R, it might be useful to create a file that generate the following file

```
#define ACCEL_X_MIN ((float) -268)
#define ACCEL_X_MAX ((float) 254)
#define ACCEL_Y_MIN ((float) -255)
#define ACCEL_Y_MAX ((float) 247)
#define ACCEL_Z_MIN ((float) -269)
#define ACCEL_Z_MAX ((float) 238)


#define GYRO_AVERAGE_OFFSET_X ((float) -32.54)
#define GYRO_AVERAGE_OFFSET_Y ((float) -11.31)
#define GYRO_AVERAGE_OFFSET_Z ((float) -10.03)

```
