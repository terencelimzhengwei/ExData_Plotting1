plot2 <- function(){
  #run load_data function to load data from txt
  source('./load_data.R')
  
  #set graphic device as png
  png(filename="plot2.png",bg="transparent")
  
  
  plot(hpcData$Time,                           #plot line chart
       hpcData$Global_active_power,            #of Time against Global Active Power
       type="l",                               
       xlab="",                                #set x label as empty
       ylab="Global Active Power (kilowatts)") #set y label as "Global Active Power (kilowatts)"
  
  dev.off()                                    #off graphic device and save as png
}