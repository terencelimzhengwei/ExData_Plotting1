plot4 <- function(){
  #run load_data function to load data from txt
  source('./load_data.R')
  
  #set graphic device as png
  png(filename="plot4.png")
  
  # set charts to plot -> 2 x 2
  attach(hpcData)
  par(mfrow=c(2,2))
  
  # plot the 4 charts
  plot(Time, Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
  plot(Time, Voltage,type="l",xlab="datetime",ylab="Voltage")
  plot(Time, Sub_metering_1,type="l",col="black",ylab="Energy sub metering",xlab="")
  points(Time, Sub_metering_2,type="l",col="red")
  points(Time, Sub_metering_3,type="l",col="blue")
  legend("topright",
         col = c("black", "red","blue"),
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         lty=c(1,1),
         lwd=c(2.5,2.5))
  plot(Time, Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
  
  #off graphic device and save as png
  dev.off()
}