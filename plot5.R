library(ggplot2)

##Load in files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

##Subset out motor sources in SCC
motorSCC<-subset(SCC, grepl("On-Road", EI.Sector)) 

##Subset out  motor sources in NEI
motorNEI<-subset(NEI, fips=="24510" & (NEI$SCC %in% motorSCC$SCC))

##Calculate total motor pollution by year
sumMotor<-aggregate(motorNEI$Emissions, by=list(year=motorNEI$year), FUN=sum)

##create ggplot
g<-ggplot(sumMotor, aes(year, x))
g+geom_point(colour="blue")+ labs(title="Total Pollution in Baltimore City from Motor Vehicle Sources per Year", x="Year", y="Total Annual Pollution in Tons")+theme(plot.title = element_text(size = rel(.75)))
ggsave(filename="plot5.png")