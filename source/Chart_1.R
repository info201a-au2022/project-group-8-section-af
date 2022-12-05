# Chart 1 - Visualization of the sustainability scores for over 15K corporates.

# loading ESG Ratings and Companies by Industry Data 
library(tidyverse)
library("dplyr")
library("tidyr")
library(ggplot2)

data <- read_csv('https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/sustainability_scores.csv')
View(data)

# Chart 1 - Visualization of the sustainability scores for over 15K corporates.

# loading ESG Ratings and Companies by Industry Data 
library(tidyverse)
library("dplyr")
library("tidyr")
library(ggplot2)

data <- read_csv('https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/sustainability_scores.csv')
View(data)

data <- with(data, 
             data[!(Subsector == "" | is.na(Subsector)), ])

# ESG Scores Dataframe 
esg_scores <- data %>%
  select(Country, Sector, Subsector, Overall_ESG_SCORE) %>% 
  slice_head(n=20)

# Create a stacked bar chart of ESG Scores as compared by Subsector Industries
ggplot(esg_scores) +
  geom_col(mapping = aes(x = Country, y = Overall_ESG_SCORE, fill = Subsector)) +
  labs(
    title = "Countries vs. ESG Scores based on Industry Sectors Globally",
    y = "ESG Overall",
    x = "Country"
  ) +
  guides(x = guide_axis(n.dodge = 2), y.sec = guide_axis())
  
# Descriptive Paragraph:
# The purpose of this chart is to compare Environmental, Social and Governance (ESG) scores across a diverse set of subsector industries.
# This takes into consideration environmental, social and governance scores independently and how their average which is documented by overall ESG scores,
# is compared to the varying range of industry types which is helpful in understanding how ESG scores are impacted across multiple companies that are from 
# various backgrounds ranging from sustainable sectors like renewable energy being the highest to cars and automobiles too.
