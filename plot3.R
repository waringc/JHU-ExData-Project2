library(ggplot2)

##Load in files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

##Create data subsets
baltimoreData<-subset(NEI, fips=="24510")

##aggregate data
sumPoll<-aggregate(baltimoreData$Emissions, by=list(year=baltimoreData$year, type=baltimoreData$type), FUN=sum)


##create ggplot
g<-ggplot(sumPoll, aes(year, x))
g+geom_point(colour="blue")+facet_grid(.~type)+labs(title="Total Pollution in Baltimore City per Year by Source Type", x="Year", y="Total Annual Pollution in Tons")+theme(axis.text.x=element_text(angle = -90, hjust = 0))
ggsave(filename="plot3.png")
