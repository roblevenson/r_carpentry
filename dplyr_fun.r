#Learning about dplyr package
install.packages('dplyr')
#Activate package
library(dplyr)
#Import data
gapminder <- read.csv("gapminder_data.csv")
#Subset in base R
mean(gapminder[gapminder$continent=="Africa","gdpPercap"])
#Start by selecting columns, save to new object
year_country_gdp <- gapminder %>% select(year,country,gdpPercap)
#Can search for all fxns with name with double ??, like ??select
year_country_gdp_africa <- gapminder %>% filter(continent=="Africa")
year_country_gdp_africa
year_country_gdp_africa <- gapminder %>% filter(continent=="Africa") %>% select(year,country,gdpPercap)
head(year_country_gdp_africa)
gdp_by_continents <- gapminder %>% group_by(continent) %>% summarize(mean_gdp = mean(gdpPercap))
gdp_by_continents
lifeExp_by_countr <- gapminder %>% group_by(country) %>% summarize(mean_lifeexp = mean(lifeExp))
max(lifeExp_by_countr$mean_lifeexp)
min(lifeExp_by_countr$mean_lifeexp)
lifeExp_by_countr %>% filter(mean_lifeexp == min(mean_lifeexp) | mean_lifeexp == max(mean_lifeExp))
lifeExp_by_countr %>% arrange(m)
lifeExp_by_countr[lifeExp_by_countr$mean_lifeexp==max(lifeExp_by_countr$mean_lifeexp),]
#Use count to find number of rows
gapminder %>% filter(year == 2002) %>% count(continent)
unique(gapminder$year)
gapminder %>% group_by(continent) %>% summarize(mean_life=mean(lifeExp), se_life=sd(lifeExp)/sqrt(n()))

# using mutate
gdp_pop_summary <- gapminder %>% mutate(gdp_billions = gdpPercap*pop/10^9)
head(gdp_pop_summary)
gdp_pop_summary <- gapminder %>% mutate(gdp_billions = gdpPercap*pop/10^9)
head(gdp_pop_summary) %>% group_by(continent,year) %>% summarize(mean_gdp_bill =mean(gdp_billions))
