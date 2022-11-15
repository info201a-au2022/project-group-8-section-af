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
