abc <- read.table("household_power_consumption.txt",sep = ";", stringsAsFactors = FALSE, header = TRUE)
req_data <- abc[abc$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- as.POSIXct(paste(req_data$Date, req_data$Time), format="%d/%m/%Y %H:%M:%S")
plot(datetime, req_data$Sub_metering_1,type = "l", ylab = "Energy sub metering")
lines(datetime,req_data$Sub_metering_2, type = "l", col = "red")
lines(datetime,req_data$Sub_metering_3, type = "l", col = "blue")
legend("topright",lty = 1,col = c("black", "blue","red"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),fill = 1:8)
dev.copy(png, file = "plot3.png")
dev.off()
