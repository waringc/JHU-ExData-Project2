## Coursera- Data Analysis Course Project 2

This is the final course project for the Johns Hopkins Getting and Cleaning data course found here: https://www.coursera.org/learn/exploratory-data-analysis

The project instructions are as follows:

>The overall goal of this assignment is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008. You may use any R package you want to support your analysis.

>Questions

>You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.

>1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

>2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (𝚏𝚒𝚙𝚜 == "𝟸𝟺𝟻𝟷𝟶") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

>3. Of the four types of sources indicated by the 𝚝𝚢𝚙𝚎 (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

>4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

>5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

>6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (𝚏𝚒𝚙𝚜 == "𝟶𝟼𝟶𝟹𝟽"). Which city has seen greater changes over time in motor vehicle emissions?

## Repo Contents

The files contained in this repo are as follows:

* **"plotX.r"** - Where X is 1 to 6.  Each r script generates one png plot of the data.

* **"plotX.png"** - Where X is 1 to 6.  Each file is a png image of each plot for the data.

## Answers

1.  Yes, referring to **plot1.PNG**  total PM2.5 emissions from all sources have decreased for each of the four years 1999, 2002, 2005 and 2008.

2.  No, referring to **plot2.PNG**  total PM2.5 emissions from all sources in Baltimore have not decreased for each of the four years 1999, 2002, 2005 and 2008.  From 2002 to 2005 the total pollution increased.

3.  Referring to **plot3.PNG** Non-Road, Non-Point and On-Road pollutions sources have decreased in Baltimore City from 1999 to 2008.  Point pollution sources have increased from 1999 to 2008

4.  Referring to **plot4.PNG** across the entire US the total production of pollution from coal related sources has decreased from 1999 to 2008.

5.  Referring to **plot5.PNG** pollution from motor vehicle sources from 1999 to 2008 decreased in Baltimore City.

6.  Referring to **plot6.PNG** pollution from motor vehicle sources from 1999 to 2008 has seen greater changes in Los Angeles compared to Baltimore city.
