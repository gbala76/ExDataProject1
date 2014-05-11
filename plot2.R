png(file="plot2.png",width = 480, height = 480)

filea <- read.csv("household_power_consumption.txt",sep=";")
file1 <- subset(filea, Date == "1/2/2007" | Date == "2/2/2007")

Date3 <- as.POSIXct(paste(file1$Date,file1$Time),format="%d/%m/%Y %H:%M:%S",tz="")
file2 <- cbind(file1, Date3)
plot(file2$Date3, file2$Global_active_power, xlab="",ylab="Global Active Power (kilowatts)", type="n")
lines(file2$Date3, file2$Global_active_power)
dev.off()
