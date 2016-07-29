##Load in files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

##calculate means
sumPoll<-aggregate(NEI$Emissions, by=list(year=NEI$year), FUN=sum)
names(sumPoll)<-c("Year", "Total Annual Pollution (Tons)")


##create PNG graphic device
png(filename = "plot1.png", width = 480, height = 480, units = "px")
plot(sumPoll, type="b", main = "Total Pollution by Weight in US vs Year", col="Blue")

dev.off()