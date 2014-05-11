png(file="plot1.png",width = 480, height = 480)

filea <- read.csv("household_power_consumption.txt",sep=";")
file1 <- subset(filea, Date == "1/2/2007" | Date == "2/2/2007")

Date3 <- as.POSIXct(paste(file1$Date,file1$Time),format="%d/%m/%Y %H:%M:%S",tz="")
file2 <- cbind(file1, Date3)
hist(as.numeric(file2$Global_active_power),col="RED",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
