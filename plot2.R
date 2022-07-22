
# convert date and time variables with strptime
sub_hpc$dt <- strptime(paste(sub_hpc$Date, sub_hpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)
plot(sub_hpc$dt, sub_hpc$globactpow, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()