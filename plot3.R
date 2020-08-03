plot(1,1)
#plot3 drawing
plot(SelectedData$Time, SelectedData$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(SelectedData$Time, SelectedData$Sub_metering_2,  col = "Red" )

lines(SelectedData$Time, SelectedData$Sub_metering_3,  col = "Blue" )
legend("topright", legend = c("Sub_meetering_1", "Sub_meetering_2", "Sub_meetering_3"), lwd = c(1,1,1), col = c("Black", "Red", "Blue"))
