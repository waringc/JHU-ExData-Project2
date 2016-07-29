library(ggplot2)

##Load in files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

##Subset out motor sources in SCC
motorSCC<-subset(SCC, grepl("On-Road", EI.Sector)) 

##Subset out  motor sources in NEI
motorNEI<-subset(NEI, (fips=="24510" | fips=="06037") & (NEI$SCC %in% motorSCC$SCC))

##Calculate total motor pollution by year
sumMotor<-aggregate(motorNEI$Emissions, by=list(year=motorNEI$year, fips=motorNEI$fips), FUN=sum)

#Rename fips values for plotting labels
sumMotor$fips[sumMotor$fips == "24510"] <- "Balitmore City"
sumMotor$fips[sumMotor$fips == "06037"] <- "Los Angeles"


##create ggplot
g<-ggplot(sumMotor, aes(year, x))
g+geom_point(colour="blue")+facet_grid(.~fips)+labs(title="Total Pollution from Motor Vehicles in Baltimore City vs Los Angeles per Year", x="Year", y="Total Annual Pollution in Tons")+theme(plot.title = element_text(size = rel(.75)))
ggsave(filename="plot6.png")