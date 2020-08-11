
#Reading the Data

nakul <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
View(nakul)
summary(nakul)
str(nakul)


#Plot1
## Create the histogram
hist(nakul$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="blue")

## Save file and close device
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()