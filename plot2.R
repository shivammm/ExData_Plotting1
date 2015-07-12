abc <- read.table("household_power_consumption.txt",sep = ";", stringsAsFactors = FALSE, header = TRUE)
req_data <- abc[abc$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- as.POSIXct(paste(req_data$Date, req_data$Time), format="%d/%m/%Y %H:%M:%S")
gap <- as.numeric(req_data$Global_active_power)
plot( datetime,gap,type="l", ylab = "global active power(kilowatts)")
dev.copy(png, file = "plot2.png")
dev.off()