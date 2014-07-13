data <- read.table("data/household_power_consumption.txt", skip = 66637, nrows = 69517 - 66637, sep = ";", na.strings = "?", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
# Reading in data that was downloaded for Plot 1
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
# Creating usable data 
png('plot3.png')
plot(data$DateTime, data$Sub_metering_1, ylab="Energy sub metering", xlab="", type="n")
lines(data$DateTime, data$Sub_metering_1, type= "l", col="grey")
lines(data$DateTime, data$Sub_metering_2, type= "l", col="red")
lines(data$DateTime, data$Sub_metering_3, type= "l", col="blue")
# Creating the plot
dev.off()