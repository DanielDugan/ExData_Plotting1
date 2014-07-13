data <- read.table("household_power_consumption.txt", skip = 66637, nrows = 69517 - 66637, sep = ";", na.strings = "?", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
# readng in data downloaded for Plot 1 assignment
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
# Structure data into a usable format
png('plot4.png')
par(mfrow=c(2,2)) 
# Combine multiple plots
plot(data$DateTime, data$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="n")
lines(data$DateTime, data$Global_active_power, type= "l")
plot(data$DateTime, data$Voltage, ylab="Voltage", xlab="datetime", type="n")
lines(data$DateTime, data$Voltage, type= "l")
plot(data$DateTime, data$Sub_metering_1, ylab="Energy sub metering", xlab="", type="n")
lines(data$DateTime, data$Sub_metering_1, type= "l", col="grey")
lines(data$DateTime, data$Sub_metering_2, type= "l", col="red")
lines(data$DateTime, data$Sub_metering_3, type= "l", col="blue")
plot(data$DateTime, data$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="n")
lines(data$DateTime, data$Global_reactive_power, type= "l")
# Generate Plot 4
dev.off()