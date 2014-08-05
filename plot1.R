## EDA, Project 1

## Plot 1
## Using the start date and time, skip to start of 1/2/2007 and read 2880 rows (two days in minutes)
## Prevent conversion to factors; note separators are ';'
data <- read.table("./household_power_consumption.txt",sep=";", stringsAsFactors=FALSE,skip=66637,nrows=2880)

## open graphics device
png("./plot1.png")

## make histogram as shown
hist(as.numeric(data[,3]), main="Global Active Power", xlab= "Global Active Power (kilowatts)",col="Red")

## close graphics device again
dev.off()




                