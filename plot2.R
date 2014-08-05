## EDA, Project 1

## Plot 2
## Using the start date and time, skip to start of 1/2/2007 and read 2880 rows (two days minutes)
## Prevent conversion to factors; note separators are ';'
data <- read.table("./household_power_consumption.txt",sep=";", stringsAsFactors=FALSE,skip=66637,nrows=2880)

## open graphics device
png("./plot2.png")

## make line graph as shown
plot(as.numeric(data[,3]),type="l", ylab="Global Active Power (kilowatts)", axes=FALSE,frame.plot=TRUE,xlab="",cex.lab=0.75) 
axis(1,at=c(1,1441,2880),label=c("Thu","Fri","Sat"),cex.axis=0.75) 
axis(2,cex.axis=0.75)

## close graphics device again
dev.off()