t <- read.table("chopped.txt", header=TRUE, sep=";")

png("./plot2.png")
plot(as.POSIXct(paste(t$Date, t$Time), format="%d/%m/%Y %H:%M:%S"), t$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
