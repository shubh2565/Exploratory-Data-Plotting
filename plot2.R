setwd('/home/shubham/data_science/exploratory_data_analysis')
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

baltimoreNEI <- NEI[NEI$fips=="24510",]
aggTotal <- aggregate(Emissions ~ year,baltimoreNEI, sum)

png("plot2.png", width=720, height=480)
plot(aggTotal$year,
     aggTotal$Emissions,
     type = "o",
     col = "red",
     main = expression("Total Baltimore City"~ PM[2.5]~ "Emissions by Year"),
     ylab = expression("Total Baltimore City"~   PM[2.5] ~ "Emissions (in Tons)"),
     xlab = "Year")
dev.off()