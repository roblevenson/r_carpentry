#Practice for r_software_carpentry
library("ggplot2")
gapminder<- read.csv("gapminder_data.csv", header=TRUE)
summary(gapminder)
head(gapminder)
tail(gapminder)
gapminder[1,1]
gapminder[sample(nrow(gapminder), 5), ]
ggplot(data=gapminder, aes(x = gdpPercap, y=lifeExp))+geom_point()
ggplot(data=gapminder, aes(x = gdpPercap, y=lifeExp))
geom_point()
ggplot(data=gapminder, aes(x = year, y=lifeExp, color=continent))+geom_point()
ggplot(data=gapminder, aes(x = year, y=lifeExp, by=country, color=continent))+geom_line()
ggplot(data=gapminder, aes(x = year, y=lifeExp, color=continent))+geom_point()
ggplot(data=gapminder, aes(x = year, y=lifeExp, by=continent, color=continent))+geom_line() + geom_point() +theme_bw()

