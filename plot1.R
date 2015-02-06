
t <- read.table("chopped.txt", header=TRUE, sep=";")
t$Date <- as.Date(strptime(t$Date, "%d/%M/%Y"))
hist(t$Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red", main="Global Active Power")
png("./plot1.png")
hist(t$Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red", main="Global Active Power")
dev.off()
