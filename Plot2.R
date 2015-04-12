#after choose a directory, load the file

Data<-read.table("./household_power_consumption.txt",sep=";",
                     header=TRUE)

names(Data)

Data2<-Data[which(Data$Date %in% c("01/02/2007","02/02/2007")),]

plot(Data2$Time, Data2$Global_active_power, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="")

