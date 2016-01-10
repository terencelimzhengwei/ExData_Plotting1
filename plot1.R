plot1 <- function(){
  #run load_data function to load data from txt
  source('./load_data.R')
  
  #set graphic device as png
  png(filename="plot1.png")
  
  hist(hpcData$Global_active_power,           #plot histogram
       col="red",                             #set color to red
       main="Global Active Power",            #set title as "Global Active Power"
       xlab="Global Active Power (kilowatts)",#set xlabel as"Global Active Power (kilowatts)"
       ylab="Frequency")                      #set ylabel as frequency
      
  dev.off()                                   #off graphic device and save as png
}