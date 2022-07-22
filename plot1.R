###### Course_4_week1 - Quiz - Sören Nonnengart
path <-  "/Users/sorennonnengart/Coursera/Data_science/Datensätze/c4_week1"
setwd(path)
getwd()

## read the data and create a subset for two days
hpc <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
sub_hpc <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]

# Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
sub_hpc$globactpow <- as.numeric(sub_hpc$Global_active_power)
sub_hpc$date <- as.Date(sub_hpc$Date, format = "%d/%m/%y")

## plot the histogram
png("plot1.png", width=480, height=480)
hist(sub_hpc$globactpow, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()



