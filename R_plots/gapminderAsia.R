
library(ggplot2)
gapminder <- read.table("gapminder.txt", header = TRUE)

GapminderAsia <- gapminder[gapminder$continent == "Asia",]

gapminderyear <- GapminderAsia[GapminderAsia$year == 2002,]


Gapminderpopulation <- gapminderyear$pop

gapminderpopmean2002 <- mean(Gapminderpopulation)


ggplot(GapminderAsia, aes(year,pop,color = country)) + 
  geom_point() +
  theme(legend.position = "none")+
  labs(x = "Years", y = "Population", title = "Life expectancy of asian countries")
 
