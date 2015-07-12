setwd("c:/users/hp1/desktop")
abc <- read.table("household_power_consumption.txt",sep = ";", stringsAsFactors = FALSE, header = TRUE)
req_data <- abc[abc$Date %in% c("1/2/2007","2/2/2007"),]
gap <- as.numeric(req_data$Global_active_power)
hist(gap,col = "red", xlab = "Global active power(kilowatts)", ylab = "frequency")
dev.copy(png, file = "plot1.png")
dev.off()


