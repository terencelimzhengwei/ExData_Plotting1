plot3 <- function(){
  source('./load_data.R')
  png(filename="plot3.png")
  plot(hpcData$Time, hpcData$Sub_metering_1,type="l",col="black",ylab="Energy sub metering",xlab="")
  points(hpcData$Time, hpcData$Sub_metering_2,type="l",col="red")
  points(hpcData$Time, hpcData$Sub_metering_3,type="l",col="blue")
  legend("topright",
         col = c("black", "red","blue"),
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         lty=c(1,1),
         lwd=c(2.5,2.5))
  dev.off()
}