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
ggplot(data=gapminder, aes(x = year, y=lifeExp, by=country))+geom_line(color="blue")+ geom_point()  +theme_bw()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) +geom_point()
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point(alpha = 0.5) + scale_x_log10()
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point(size=2, color="red") + scale_x_log10() + geom_smooth(method="lm", size=1.0)
starts.with <- substr(gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A", "Z"), ]
ggplot(data = az.countries, aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + facet_wrap( ~ country) +
  labs(
    x = "Year",              # x axis title
    y = "Life expectancy",   # y axis title
    title = "Figure 1",      # main title of figure
    color = "Continent"      # title of legend
  ) + 
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank())
lifeExp_plot <- ggplot(data = az.countries, aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + facet_wrap( ~ country) +
  labs(
    x = "Year",              # x axis title
    y = "Life expectancy",   # y axis title
    title = "Figure 1",      # main title of figure
    color = "Continent"      # title of legend
  ) +
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank())

ggsave(filename = "results/lifeExp.png", plot = lifeExp_plot, width = 12, height = 10, dpi = 300, units = "cm")
