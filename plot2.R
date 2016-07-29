##Load in files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

baltimoreData<-subset(NEI, fips=="24510")

##calculate means
sumPoll<-aggregate(baltimoreData$Emissions, by=list(year=baltimoreData$year), FUN=sum)
names(sumPoll)<-c("Year", "Total Annual Pollution (Tons)")


##create PNG graphic device
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(sumPoll, type="b", main = "Total Pollution by Weight in Baltimore vs Year", col="Blue")

dev.off()