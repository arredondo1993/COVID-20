library(openxlsx)
library(reshape2)
setwd("C:/Users/danie/Downloads/COVID-20/csse_covid_19_data/csse_covid_19_time_series")

d_global <- read.csv("time_series_covid19_deaths_global.csv")
str(d_global)
unique(d_global$Country.Region)
d_global$X10.8.20[d_global$Country.Region== "Chile"]


d_global2 <- melt(d_global, id=c("Province.State","Country.Region","Lat","Long"), measure.vars = names(d_global)[5:265], value.name = "Deaths") 
d_global2 <- d_global2[order(d_global2$Country.Region),]
