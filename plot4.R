t <- read.table("chopped.txt", header=TRUE, sep=";")

dates <- as.POSIXct(paste(t$Date, t$Time), format="%d/%m/%Y %H:%M:%S")
png("./plot4.png")
layout(matrix(c(1,2,3,4), 2, 2, byrow=TRUE))

plot(dates, t$Global_active_power, type="l", ylab="Global Active Power", xlab="")

plot(dates, t$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(dates, t$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(dates, t$Sub_metering_2, col="red", type="l")
lines(dates, t$Sub_metering_3, col="blue", type="l")
legend("topright", c("sub_metering_1", "sub_metering_2", "sub_metering_3"), bty="n", lty=1, col=c("black", "red", "blue"))

plot(dates, t$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
