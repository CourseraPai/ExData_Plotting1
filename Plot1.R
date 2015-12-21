tab  <- read.table("household_power_consumption.txt",fill=TRUE, header = FALSE,sep=";",skip=(grep("1/2/2007", readLines("household_power_consumption.txt"))-1),nrows=2880)
names(tab)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
png(filename="plot1.png",width=480,height=480)
par(oma=c(1,1,1,1))
par(mar=c(5,4,4,2) + 0.1)   
hist(tab$Global_active_power,main="Global Active Power",xlab="Global Active Power (Kilowatts)",col="Red",ylim = c(0,1200))
dev.off()

