abc <- read.table("household_power_consumption.txt",sep = ";", stringsAsFactors = FALSE, header = TRUE)
req_data <- abc[abc$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- as.POSIXct(paste(req_data$Date, req_data$Time), format="%d/%m/%Y %H:%M:%S")
gap <- as.numeric(req_data$Global_active_power)
par(mfrow = c(2,2))
plot( datetime,gap,type="l",ylab = "Global active power", xlab = " ")
plot(datetime,req_data$Voltage,type = "l", ylab = "Voltage")

plot(datetime, req_data$Sub_metering_1,type = "l", ylab = "Energy sub metering")
lines(datetime,req_data$Sub_metering_2, type = "l", col = "red")
lines(datetime,req_data$Sub_metering_3, type = "l", col = "blue")
plot(datetime, req_data$Global_reactive_power, type = "l", ylab = "Global_reactive_power")
dev.copy(png, file = "plot4.png")
dev.off()