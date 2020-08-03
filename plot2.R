#Data from plot2.R

SelectedData$weekday <- weekdays(SelectedData$Date)
SelectedData[1:1440, "Time"] <- format(SelectedData[1:1440,"Time"],"2007-02-01 %H:%M:%S")
SelectedData[1441:2880, "Time"] <- format(SelectedData[1441:2880, "Time"], "2007-02-02 %H:%M:%S" )
#plot2 drawing
plot(SelectedData$Time, SelectedData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)" )
