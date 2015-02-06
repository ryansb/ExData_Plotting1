t <- read.table("chopped.txt", header=TRUE, sep=";")

dates <- as.POSIXct(paste(t$Date, t$Time), format="%d/%m/%Y %H:%M:%S")
png("./plot3.png")
plot(dates, t$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(dates, t$Sub_metering_2, col="red", type="l")
lines(dates, t$Sub_metering_3, col="blue", type="l")
legend("topright", c("sub_metering_1", "sub_metering_2", "sub_metering_3"), bty="y", lty=1, col=c("black", "red", "blue"))
dev.off()
