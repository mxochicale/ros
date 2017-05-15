#------------------------------------------------------------
#  Calibrating Gyroscope
#
# Miguel P. Xochicale  [http://mxochicale.github.io]
# Doctoral Researcher in Human-Robot Interaction
# University of Birmingham, U.K. (2014-2018)
#------------------------------------------------------------

main_path <- getwd()
setwd(paste(main_path,"/razor4",sep=""));


############################################################
# FUNCTION USAGE: sensor_vector_means(filename)
sensor_vector_means <- function(filename)
{
message( "Filename: ", filename )

rawdata<-read.csv(filename, sep=',', header=FALSE)
MD <- as.matrix(rawdata)

LengthMatrix <- dim(MD)[1]

GX<-c()
GY<-c()
GZ<-c()

for (k in 1:LengthMatrix){

sensortag_k <- substr(MD[k,1], 1, 5) # extract sensortag for each row

if (sensortag_k == "#G-R=")
{
##extract values to variables
GX_k <- substr(MD[k,1], 6, 15)
GY_k <- substr(MD[k,2], 1, 10)
GZ_k <- substr(MD[k,3], 1, 10)

##append values into the vectors
GX <- append(GX,GX_k)
GY <- append(GY,GY_k)
GZ <- append(GZ,GZ_k)

}

}

## compute the mean of the vectors
mGX <- mean(as.numeric(GX))
mGY <- mean(as.numeric(GY))
mGZ <- mean(as.numeric(GZ))

message("mean GX  ",  mGX)
message("mean GY  ",  mGY)
message("mean GZ  ",  mGZ)

#return the result
#return(final)

}


# call function
sensor_vector_means("razor4_gyr_xyz.raw")


setwd(main_path)
