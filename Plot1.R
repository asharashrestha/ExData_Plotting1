dataLocation <- "./household_power_consumption.txt"
data <- read.table(dataLocation, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Data2007 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower_data <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower_data, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()