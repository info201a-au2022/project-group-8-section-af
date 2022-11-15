library(ggplot2)
library(dplyr)
library(tidyverse)

carbon_emissions <- read.csv("emissions.csv", na.strings=c(""))

carbon_emissions = carbon_emissions[-1]
carbon_emissions <- with(carbon_emissions, 
                         carbon_emissions[!(Country == "" | is.na(Country)), ])

top_30_emissions <- select(Country, CO2.emissions..latest.year,
                           CO2.emissions..per.capita...latest.year) %>% 
  arrange(desc(CO2.emissions..latest.year)) %>% 
  slice_head(n=30)

#The purpose of this chart is to compare the total CO2 emissions of a country in the latest year recorded to their CO2 emissions per capita.
#This demonstrates how much a country emits CO2 compared to the size of the population, which is helpful in analyzing how well a country manages
#emissions given its size. 
