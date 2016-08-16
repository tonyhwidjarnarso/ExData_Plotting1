Originalwd <- getwd()
# ------------------------------------------------------------------
# 1. Checks to see if the data had already been downloaded. In the
# event that it hasn't, creates a "data" folder, download & unzips
# the file to the folder

if(!file.exists("./data")){
    dir.create("./data")
URL<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(URL,destfile = "Electric_Consumption")
unzip("Electric_Consumption", exdir = "./data")
setwd("./data")
}
# ------------------------------------------------------------------
# 2. Reads the data & sets back the working directory to the original
# Converts the format of data into its appropriate format from character
setwd("./data")
EConsumption<-read.table("household_power_consumption.txt",
                         stringsAsFactors = FALSE,header = TRUE,sep = ";")
# Format / data class conversion
EConsumption$Date<-as.Date(EConsumption$Date, "%d/%m/%Y")
EConsumption$Time<-strptime(EConsumption$Time, "%T")
EConsumption[,3:8]<-sapply(EConsumption[,3:8],as.numeric)
setwd(Originalwd)

# Subsetting data to contain only data whose date is 2007-02-01 
# and 2007-02-02. Differentiates the "dates" of the Time variable
ESubset<-subset(EConsumption,Date == "2007-02-01" | Date == "2007-02-02")

id<-1:dim(ESubset)[1]
for (i in id){
    if (ESubset$Date[i] == "2007-02-01")
    {ESubset$Time[i] <- ESubset$Time[i]}
    else if (ESubset$Date[i] == "2007-02-02")
    {ESubset$Time[i] <- ESubset$Time[i]+86400}
}

# ------------------------------------------------------------------
# 3. Plots the functions required in the assignment. See individual
# R files to create the individual plots