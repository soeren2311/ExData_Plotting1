
# convert the data as numeric
sub_hpc$globreacpow <- as.numeric(sub_hpc$Global_reactive_power)
sub_hpc$voltage <- as.numeric(sub_hpc$Voltage)

## plot the data
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(sub_hpc$dt, sub_hpc$globactpow, type="l", xlab="", ylab="Global Active Power", cex=0.5)

plot(sub_hpc$dt, sub_hpc$voltage, type="l", xlab="datetime", ylab="Voltage")

plot(sub_hpc$dt, sub_hpc$subMetering1, type="l", ylab="Energy sub metering", xlab="")
lines(sub_hpc$dt, sub_hpc$subMetering2, type="l", col="red")
lines(sub_hpc$dt, sub_hpc$subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(sub_hpc$dt, sub_hpc$globreacpow, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
