setwd('/home/shubham/data_science/exploratory_data_analysis')
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

aggTotal <- aggregate(Emissions ~ year,NEI, sum)

png("plot1.png", width=720, height=480)
plot(aggTotal$year,
     aggTotal$Emissions/10^6,
     type = "o",
     col = "steelblue",
     main = expression("Total US "~ PM[2.5]~ "Emissions by Year"),
     ylab = expression("Total US "~   PM[2.5] ~ "Emissions (in Million Tons)"),
     xlab = "Year")
dev.off()