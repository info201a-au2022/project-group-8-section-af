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
  select(Subsector, Overall_ESG_SCORE, Environmental_SCORE, Social_SCORE, Governance_SCORE) %>%
  filter((Overall_ESG_SCORE == 10)) %>%
  slice_head(n=10) %>%
  gather(key = ESG, value = scores, -Subsector) # all columns except 'Subsector' 
  
# Create a stacked bar chart of ESG Scores as compared by Subsector Industries
chart_1 <- ggplot(esg_scores) +
  geom_col(mapping = aes(x = Subsector, y = scores, fill = ESG)) +
  labs(
    title = "ESG Scores across Subsector Industries",
    y = "Scores",
    x = "Subsectors"
  ) 
  
# Descriptive Paragraph HERE
# 
