#reading data
powerConsumptionData <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

library(dplyr)
#Subsetting Data
SelectedData <- filter(powerConsumptionData, powerConsumptionData$Date == "1/2/2007" | powerConsumptionData$Date == "2/2/2007")

# converting classes of columns as per their characteristics
SelectedData$Date <- as.Date(SelectedData$Date, "%d/%m/%Y")
SelectedData$Time <- strptime(SelectedData$Time, format = "%H:%M:%S")
SelectedData$Global_active_power <- as.numeric(SelectedData$Global_active_power)
SelectedData$Global_reactive_power <- as.numeric(SelectedData$Global_reactive_power)
SelectedData$Voltage <- as.numeric(SelectedData$Voltage)
SelectedData$Global_intensity <- as.numeric(SelectedData$Global_intensity)
SelectedData$Sub_metering_1 <- as.numeric(SelectedData$Sub_metering_1)
SelectedData$Sub_metering_2 <- as.numeric(SelectedData$Sub_metering_2)
str(SelectedData)
# Plot1 drawing
hist(SelectedData$Global_active_power, xlab = "Global Active Power(kilowatts)", col = "Red", main = "Global Active Power")
