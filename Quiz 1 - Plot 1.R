# Plot 1 - Global Active Power Histogram
# ------------------------------------------------------------------

png(filename="Plot 1.png",width = 480,height = 480,units="px")
hist(ESubset$Global_active_power,xlab = "Global Active Power (kilowatts)"
     ,col = "red",main = "Global Active Power")
dev.off()