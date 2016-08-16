# Plot 4 - 2x2 Plot of Global_active_power, Voltage, Energy
# sub-metering, Global_reactive_power
# ------------------------------------------------------------------

png(filename="Plot 4.png",width = 480,height = 480,units="px")
par(mfrow = c(2,2))

# 1st Plot -- Date & Global Active power
with(ESubset,plot(Time,Global_active_power,type = "l"
                  ,ylab = "Global Active Power (kilowatts)"))

# 2nd Plot -- Date & Voltage
with(ESubset,plot(Time,Voltage,type = "l"
                  ,ylab = "Global Active Power (kilowatts)",xlab = "datetime"))

# 3rd Plot -- Date & Energy sub metering
with(ESubset,plot(Time,Sub_metering_1,type = "n",ylab = "Energy Sub Metering"))
with(ESubset,lines(Time,Sub_metering_1,col="black"))
with(ESubset,lines(Time,Sub_metering_2,col="red"))
with(ESubset,lines(Time,Sub_metering_3,col="blue"))
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"
),lty=1,col = c("black","red","blue"))

# 4th Plot -- Date & Global reactive power
with(ESubset,plot(Time,Global_reactive_power,type = "l"
                  ,ylab = "Global Reactive Power",xlab = "datetime"))

dev.off()