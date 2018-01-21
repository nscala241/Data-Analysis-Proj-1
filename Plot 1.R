##find the data file in the computer and load it
dataFile <- "~/Desktop/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", 
                   stringsAsFactors=FALSE, dec=".")
##Create a subset of the data based on dates
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)

##Generate historgram of data 
hist(globalActivePower, col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")

dev.off()
