data <- read.table("data/household_power_consumption.txthousehold_power_consumption.txt", skip = 66637, nrows = 69517 - 66637, sep = ";", na.strings = "?", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
# Reading in data previously downloaded during plot 1 assignment.
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
# Structuring the data into a readble format
png('plot2.png')
plot(data$DateTime, data$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="n")
lines(data$DateTime, data$Global_active_power, type= "l")
# creating the plot
dev.off()