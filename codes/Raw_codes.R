rm(list=ls())
library(WDI)
library(tidyverse)
date <- '10-21-2020'
covid_url <- paste0('https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/',
                    date,'.csv')
covid_raw <- read.csv(covid_url)
pop_raw <- WDI(indicator=c('SP.POP.TOTL'), 
               country="all", start=2019, end=2019)
my_path <- "/Users/agnesnagy/NagyAgnesIndividualAssignment_2/data/"
write_csv(covid_raw, paste0(my_path,'raw/covid_10_21_2020_raw.csv'))
write_csv(pop_raw, paste0(my_path,'raw/pop_WDI_2019.csv'))

