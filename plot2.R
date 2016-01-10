plot2 <- function(){
  source('./load_data.R')
  png(filename="plot2.png")
  plot(hpcData$Time, hpcData$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
  dev.off()
}