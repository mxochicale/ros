RAZOR MAGNETOMETER CALIBRATION
---

* Date/Place:
on Wed Mar 15 GMT 2017 @N310, Gisbert Kapp(G8)


* Download processing with
```
./download_processing.sh
```


* Open Processing 
```
map479-admin@EEE-003124:~/.processing/processing-3.3$ ./processing
```

* connect bluetooth module to /dev/rfcomm0  

```
rfcomm -i 00:1A:7D:DA:71:11 connect 0
```

then, run magnetomer_calibration_processing.pde  on processing and follow the instructions on  
 https://github.com/ptrbrtz/razor-9dof-ahrs/wiki/Tutorial#standard-calibration

and get the following parameters:

## razor1

```
 #define CALIBRATION__MAGN_USE_EXTENDED true
 const float magn_ellipsoid_center[3] = {-3.71961, 73.8437, 2.10235};
 const float magn_ellipsoid_transform[3][3] = {{0.961444, -0.0163218, -0.0288059}, {-0.0163218, 0.967658, -0.00569518}, {-0.0288059, -0.00569518, 0.976817}};
```

## razor2

```
#define CALIBRATION__MAGN_USE_EXTENDED true
const float magn_ellipsoid_center[3] = {-11.7011, 102.424, -24.1370};
const float magn_ellipsoid_transform[3][3] = {{0.866006, -0.00849207, -0.0298571}, {-0.00849207, 0.870295, -0.0102009}, {-0.0298571, -0.0102009, 0.992813}};
```

## razor3

```
#define CALIBRATION__MAGN_USE_EXTENDED true
const float magn_ellipsoid_center[3] = {-5.50514, 97.0566, 50.5974};
const float magn_ellipsoid_transform[3][3] = {{0.949220, -0.0141226, -0.0117998}, {-0.0141226, 0.978607, 0.00336626}, {-0.0117998, 0.00336626, 0.994728}};
```


## razor4

```
#define CALIBRATION__MAGN_USE_EXTENDED true
const float magn_ellipsoid_center[3] = {8.62950, 97.8913, 34.7287};
const float magn_ellipsoid_transform[3][3] = {{0.904583, -0.00939965, -0.0274138}, {-0.00939965, 0.942178, -0.00448517}, {-0.0274138, -0.00448517, 0.992068}};
```
