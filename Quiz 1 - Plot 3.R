# Plot 3 - Energy Sub-Metering
# ------------------------------------------------------------------

png(filename="Plot 3.png",width = 480,height = 480,units="px")
with(ESubset,plot(Time,Sub_metering_1,type = "n",ylab = "Energy sub metering"))

# Adds individual lines to the plot
with(ESubset,lines(Time,Sub_metering_1,col="black"))
with(ESubset,lines(Time,Sub_metering_2,col="red"))
with(ESubset,lines(Time,Sub_metering_3,col="blue"))
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"
                             ),lty=1,col = c("black","red","blue"))
dev.off()