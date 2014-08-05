## EDA, Project 1

## Plot 3
## Using the start date and time, skip to start of 1/2/2007 and read 2880 rows (two days minutes)
## Prevent conversion to factors; note separators are ';'
data <- read.table("./household_power_consumption.txt",sep=";", stringsAsFactors=FALSE,skip=66637,nrows=2880)

## open graphics device
##png("./plot4.png")

## make line graph as shown

par(mfrow=c(2,2))
hist(as.numeric(data[,3]),main="Global Active Power", xlab= "Global Active Power (kilowatts)",col="Red")
plot(as.numeric(data[,5]),type="l", ylab="Voltage", axes=FALSE,frame.plot=TRUE,xlab="",cex.lab=0.75,sub="datetime",cex.sub=.75)
axis(1,at=c(1,1441,2880),label=c("Thu","Fri","Sat"),cex.axis=.9) 
axis(2,cex.axis=.9)
plot(as.numeric(data[,7]),type="l", ylab="Energy sub metering", axes=FALSE,frame.plot=TRUE,xlab="",cex.lab=.9)
points(as.numeric(data[,8]),type="l", col="Red")
points(as.numeric(data[,9]),type="l", col="Blue")
axis(1,at=c(1,1441,2880),label=c("Thu","Fri","Sat"),cex.axis=.9) 
axis(2,cex.axis=.9)
legend(1150,40,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=.6, lty = c(1,1,1),lwd=c(1.5,1.5,1.5),col=c("black","blue","red"),bty="n")
plot(as.numeric(data[,4]),type="l", ylab="Global-reactive_power", axes=FALSE,frame.plot=TRUE,xlab="",cex.lab=0.75,sub="datetime",cex.sub=.75) 
axis(1,at=c(1,1441,2880),label=c("Thu","Fri","Sat"),cex.axis=0.75) 
axis(2,cex.axis=0.75)









## close graphics device again
##dev.off()

