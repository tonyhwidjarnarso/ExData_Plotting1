# Plot 2 - Global Active Power Histogram
# ------------------------------------------------------------------

png(filename="Plot 2.png",width = 480,height = 480,units="px")
with(ESubset,plot(Time,Global_active_power,type = "l"
                  ,ylab = "Global Active Power (kilowatts)"))
dev.off()