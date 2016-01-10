#load libraries
library(dplyr)
library(tidyr)

#read data into variable hpcData. Set ? to NA
hpcData<-tbl_df(read.table("./household_power_consumption.txt",header=TRUE,sep=";", na.strings = "?"))

#-----Reshaping Data------

#Convert to date class
hpcData$Date<- as.Date(hpcData$Date, format="%d/%m/%Y")
hpcData$Time <- as.POSIXct(strptime(paste(hpcData$Date, hpcData$Time), format="%Y-%m-%d %H:%M:%S"))

#filter only relevant dates
hpcData <- hpcData %>%
  filter(Date>="2007-02-01"& Date<="2007-02-02")