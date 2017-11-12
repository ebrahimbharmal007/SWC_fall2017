# Scrpit for data visulization portion of SWC fall of 2017
# Ebrahim Bharmal
# UTA SWC workshop
# 11/12/17

#install.packages("ggplot2")
#library(ggplot2)
rm(list = ls())
gapminder <- read.table("gapminder.txt", header = TRUE)
# View(gapminder)


# ggplot(gapminder, aes(year,lifeExp,color = country)) + 
# #   geom_line()+
# #   geom_point() +
# #   theme(legend.position = "none")+
# #   labs(x = "Years", y = "Life Expectancy", title = "Figure 1")
#    
# #MANIPULATE SCALES
# 
# # ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
# #   geom_point() +
# #   scale_x_log10()
# 
# ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
#   geom_point() +
#   scale_x_log10() +
#   geom_smooth(method = "loess")

#Faceting the data

starts.with <- substr(gapminder$country,start =1,stop = 1)
az.countries <- gapminder[starts.with == c("A","Z"),]


ggplot(az.countries, aes(year,lifeExp,color = country)) + 
     
    geom_point() +
     theme(legend.position = "none")+
    labs(x = "Years", y = "Life Expectancy", title = "Figure 1")+
  facet_wrap( ~ country)
  


















