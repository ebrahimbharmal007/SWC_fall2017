#This scrpit computes the average gdp for Albania using gapminder dataset

filename <- 'gapminder.txt'
#Read the data
gapminder <- read.table(filename, header = TRUE)

#read data file

albaniaData <- gapminder[gapminder$country == "Japan",]

# select the column containing gdp per capita from our albania data

albaniaGDP <- albaniaData$gdpPercap

albaniamean <- mean(albaniaGDP)

#print a message 

print(paste("The average GDP of albania is ",albaniamean))

