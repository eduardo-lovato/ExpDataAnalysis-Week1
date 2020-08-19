#loading the data base
eletric <- read.table("household_power_consumption.txt", skip = 1, sep = ";")
names(eletric) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
subsetEletric <- subset(eletric, eletric$Date== "1/2/2007" | eletric$Date == "2/2/2007")

#Plot 1
hist(as.numeric(as.character(subsetEletric$Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")

#Plot 1 Title
title(main = "Global Active Power")


