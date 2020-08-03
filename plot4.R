par(mfrow = c(2,2))

plot(SelectedData$Time, SelectedData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)" )

plot(SelectedData$Time, SelectedData$Voltage, type = "l", xlab = "datetime", ylab = "Voltage" )

# Plot3
plot(SelectedData$Time, SelectedData$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(SelectedData$Time, SelectedData$Sub_metering_2,  col = "Red" )

lines(SelectedData$Time, SelectedData$Sub_metering_3,  col = "Blue" )
legend("topright", legend = c("Sub_meetering_1", "Sub_meetering_2", "Sub_meetering_3"), bty = "n", lwd = c(1,1,1), col = c("Black", "Red", "Blue"))

# Plot4
plot(SelectedData$Time, SelectedData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")


