#ESG Summary Info

library(tidyverse)
library(dplyr)
library(ggplot2)

#CO2 Emissions Data
emissions_data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/emissions.csv", na.strings=c(""))
emissions_data = emissions_data[-1]
emissions_data <- with(emissions_data, 
                         emissions_data[!(Country == "" | is.na(Country)), ])

#ESG Ratings and Companies Data
ESG_ratings_data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/sustainability_scores.csv")

ESG_ratings_data <- with(ESG_ratings_data,
             ESG_ratings_data[!(Subsector == "" | is.na(Subsector)), ])

#Greenhouse Gases and Region
unsdg_data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/unsdg.csv")

summary_info <- list()

#Info 1: Country with highest CO2 emissions in 2018
summary_info$highest_emissions_2018 <- emissions_data %>% 
  filter(X.28 == 2018) %>% 
    filter(CO2.emissions..latest.year == max(CO2.emissions..latest.year, 
                                             na.rm = TRUE)) %>% 
      pull(Country) 

#Info 2: Country with highest emissions per capita (latest year)
summary_info$highest_emissions_per_capita <- emissions_data %>% 
  filter(CO2.emissions..per.capita...latest.year == max(CO2.emissions..per.capita...latest.year, 
                                                        na.rm = TRUE)) %>%
    pull(Country)

#Info 3: Highest renewable energy in comparison to total energy consumption (Democratic Republic of the Congo)
summary_info$highest_renewable_energy_share <- unsdg_data %>%
  filter(renewable_energy_share_on_the_total_energy_consumption == max(renewable_energy_share_on_the_total_energy_consumption, na.rm = TRUE)) %>%
  pull(renewable_energy_share_on_the_total_energy_consumption)

#Info 4: Subsector with highest environmental ESG score
summary_info$subsector_highest_environ_esg <- ESG_ratings_data %>%
  select(Subsector, Overall_ESG_SCORE, Environmental_SCORE) %>%
  arrange(desc(Environmental_SCORE)) %>%
  slice_head(n=1) %>%
  pull(Subsector)

#Info 5: Largest Change in Emissions since 1990
summary_info$largest_change <- emissions_data %>% 
  arrange(desc(X..change.since.1990)) %>% 
  slice_head(n=1) %>% 
  pull(X..change.since.1990)

#Info 6: Country with largest change since 1990
summary_info$country_largest_change <- carbon_emissions %>% 
  arrange(desc(X..change.since.1990)) %>% 
  slice_head(n=1) %>% 
  pull(Country)

