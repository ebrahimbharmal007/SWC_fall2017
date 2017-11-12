# This scrpit computes the GDP for a country uisng the gapminder data

#clear all variables

rm(list=ls())

#location of data

filename <- 'gapminder.txt'

#read data

gapminder <- read.table(filename, header = TRUE)

#Enter the country

getaveragegdppercapita <- function(country){
   
  selectedcountrydata <- gapminder[gapminder$country == country, "gdpPercap"]
  mean(selectedcountrydata)
 }
# 
# gdpjapan <- getaveragegdppercapita("Japan",gapminder)
# gdpindia <- getaveragegdppercapita("India"?,gapminder)
# gdpusa <- getaveragegdppercapita("United_States",gapminder)
# 
# print(paste('GDP per capita of Japan is ',gdpjapan))
# print(paste('GDP per capita of India is ',gdpindia))
# print(paste('GDP per capita of USA is ',gdpusa))

# process gdp from a large vector

southAmericanCountries <- c('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia', 'Ecuador', 'Paraguay', 'Peru', 'Uruguay', 'Venezuela') 

#use sapply to invoke getaverage gdp per capita() on all elements of southamerica vextor

averageGDPofsouthAmerica <- sapply(southAmericanCountries, getaveragegdppercapita)

#sort averageGDPofsouthAmerica by ascending order

averageGDPofsouthAmerica <- averageGDPofsouthAmerica[order(averageGDPofsouthAmerica)]
averageGDPofsouthAmerica

#plot the data

barplot(averageGDPofsouthAmerica, las = 3)
