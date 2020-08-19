#loading the data base
eletric <- read.table("household_power_consumption.txt", skip = 1, sep = ";")
names(eletric) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
subsetEletric <- subset(eletric, eletric$Date== "1/2/2007" | eletric$Date == "2/2/2007")

#changing Date and Time from character
subsetEletric$Date <- as.Date(subsetEletric$Date, format="%d/%m/%Y")
subsetEletric$Time <- strptime(subsetEletric$Time, format="%H:%M:%S")
subsetEletric[1:1440,"Time"] <- format(subsetEletric[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subsetEletric[1441:2880,"Time"] <- format(subsetEletric[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

#Plot 2
plot(subsetEletric$Time,as.numeric(as.character(subsetEletric$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)") 


