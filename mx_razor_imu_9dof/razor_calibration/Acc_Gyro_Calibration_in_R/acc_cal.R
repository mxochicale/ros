#------------------------------------------------------------
#  Calibrating Accelerometer
#
# Miguel P. Xochicale  [http://mxochicale.github.io]
# Doctoral Researcher in Human-Robot Interaction
# University of Birmingham, U.K. (2014-2018)
#------------------------------------------------------------

main_path <- getwd()
setwd(paste(main_path,"/razor4",sep=""));

details = file.info(list.files(pattern="*.raw"))
#details = details[with(details, order(as.POSIXct(atime))), ]
files = rownames(details)


############################################################
# FUNCTION USAGE: sensor_vector_means(filename, chosen_axis)
sensor_vector_means <- function(filename, chosen_axis)
{
message( "Filename: ", filename )

rawdata<-read.csv(filename, sep=',', header=FALSE)
MD <- as.matrix(rawdata)

LengthMatrix <- dim(MD)[1]

AX<-c()
AY<-c()
AZ<-c()

for (k in 1:LengthMatrix){

sensortag_k <- substr(MD[k,1], 1, 5) # extract sensortag for each row

if (sensortag_k == "#A-R=")
{
##extract values to variables
AX_k <- substr(MD[k,1], 6, 15)
AY_k <- substr(MD[k,2], 1, 10)
AZ_k <- substr(MD[k,3], 1, 10)

##append values into the vectors
AX <- append(AX,AX_k)
AY <- append(AY,AY_k)
AZ <- append(AZ,AZ_k)

}

}

## compute the mean of the vectors
mAX <- mean(as.numeric(AX))
mAY <- mean(as.numeric(AY))
mAZ <- mean(as.numeric(AZ))




if (chosen_axis=="ACCX")
{
message("mean AX  ",  mAX)

} else if(chosen_axis=="ACCY") {
message("mean AY  ",  mAY)

} else if(chosen_axis=="ACCZ") {
message("mean AZ  ",  mAZ)

} else {
message ("this is not an axis")
}

#return the result
#return(final)

}




## call functions and present mean values

sensor_vector_means(files[1], "ACCX")
sensor_vector_means(files[2], "ACCX")
sensor_vector_means(files[3], "ACCY")
sensor_vector_means(files[4], "ACCY")
sensor_vector_means(files[5], "ACCZ")
sensor_vector_means(files[6], "ACCZ")



setwd(main_path)
