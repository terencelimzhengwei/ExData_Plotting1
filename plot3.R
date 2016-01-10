plot3 <- function(){
  #run load_data function to load data from txt
  source('./load_data.R')
  
  #set graphic device as png
  png(filename="plot3.png",bg="transparent")
  
  
  plot(hpcData$Time, hpcData$Sub_metering_1,  #plot line chart of Time vs Sub metering 1
       type="l",                              
       col="black",                           #set line color as black
       ylab="Energy sub metering",            #set y labels as "Energy sub metering"
       xlab="")                               #set x labels as empty
  
  points(hpcData$Time, hpcData$Sub_metering_2,# add Time against Sub metering 2 with red lines
         type="l",
         col="red")
  
  points(hpcData$Time, hpcData$Sub_metering_3,# add Time against Sub metering 3 with blue lines
         type="l",
         col="blue")
  
  legend("topright",                         # add legend to chart 
         col = c("black", "red","blue"),     # set col as black,red,blue
         legend = c("Sub_metering_1",        # set names of legends
                    "Sub_metering_2",
                    "Sub_metering_3"),
         lty=c(1,1),                         #set line type
         lwd=c(2.5,2.5))                     #set line width
  
  dev.off()                                  #off graphic device and save as png
}