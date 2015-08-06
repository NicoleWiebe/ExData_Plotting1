setwd("C:/Users/nicole.wiebe/Desktop/Coursera")
epc <- read.table("household_power_consumption.txt",sep=";",header=T)
epc2 <- epc[epc$Date == "1/2/2007" | epc$Date == "2/2/2007", ]
epc2$Global_active_power <- as.numeric(epc2$Global_active_power)
x <- paste(epc2$Date, epc2$Time)
epc2$Datetime <- strptime(x, "%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png", width = 480, height = 480)
plot(epc2$Datetime,epc2$Global_active_power, type="l", xlab="",ylab="Global Active Power (kilowatts)")
dev.off()