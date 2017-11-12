
rm(list=ls())
MenuItems <- c("chicken","soup","salad","tea")
FoodType <- factor(c("solid","liquid","solid","liquid"))
ItemCost <- c(4.99,2.99,3.29,1.89)
myOrder <- list(MenuItems,FoodType,ItemCost)
myOrder_df <- data.frame(MenuItems,FoodType,ItemCost)
myOrder_df
myOrder_df[3,3]
myOrder_df$MenuItems
df1 <- myOrder_df[myOrder_df$ItemCost>3,]
df1

df2
myData <- read.table("../Data/gapminder.txt", header = TRUE)
View(myData)

df1 <- myData[1:6,]
df1


df3 = myData[3,5]
df3

df4 <- myData[,1]
df4

df5 <- myData[myData$country=="Sweden",]
df5

df6 <- myData[myData$lifeExp<70,]
df6

df7 <- c(myData,myData[5])
df7
View(df7)
