#after choose a directory, load the file

Data<-read.table("./household_power_consumption.txt",sep=";",
                     header=TRUE)

names(Data)

Data2<-Data[which(Data$Date %in% c("01/02/2007","02/02/2007")),]

plot(Data2$Time, Data2$Sub_metering_1, xlab ="",
  ylab = "Energy sub metering", type ="l", col = 'black')
lines( Data2$Time, Data2$Sub_metering_2, col = "red")
lines( Data2$Time,Data2$Sub_metering_3,col = "blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
