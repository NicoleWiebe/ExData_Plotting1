setwd("C:/Users/nicole.wiebe/Desktop/Coursera")
epc <- read.table("household_power_consumption.txt",sep=";",header=T)
epc2 <- epc[epc$Date == "1/2/2007" | epc$Date == "2/2/2007", ]
epc2$Global_active_power <- as.numeric(epc2$Global_active_power)
png(filename = "plot1.png", width = 480, height = 480)
hist(epc2$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()