library(ggplot2)

##Load in files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

##Subset out coal sources in SCC
coalSCC<-subset(SCC, grepl("Coal", EI.Sector)) 

##Subset out coal sources in NEI
coalNEI<-subset(NEI, NEI$SCC %in% coalSCC$SCC)

##Calculate total coal pollution by year
sumCoal<-aggregate(coalNEI$Emissions, by=list(year=coalNEI$year), FUN=sum)

##create ggplot
g<-ggplot(sumCoal, aes(year, x))
g+geom_point(colour="blue")+ labs(title="Total Pollution in US from Coal Sources per Year", x="Year", y="Total Annual Pollution in Tons")
ggsave(filename="plot4.png")
