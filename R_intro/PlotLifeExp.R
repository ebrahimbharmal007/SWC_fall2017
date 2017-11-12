
myDataFull <- read.table("../Data/gapminder.txt", header = TRUE)

Canada <- myDataFull[myDataFull$country == "Canada",]
png("Canada.png")
plot(Canada$year,Canada$lifeExp,col = "blue", type = "l")
dev.off()
