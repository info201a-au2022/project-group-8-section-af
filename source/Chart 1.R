# Chart 1 - Visualization of the sustainability scores for over 15K corporates.

# loading ESG Ratings and Companies by Industry Data 
library(tidyverse)
library(ggplot2)

data <- read_csv('https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/sustainability_scores.csv')
View(data)

data <- with(data, 
             data[!(Subsector == "" | is.na(Subsector)), ])

# industries <- data$Subsector
# unique_subsector <- unique(industries)

esg_ratings_highest <- data %>%
  select(Subsector, Overall_ESG_SCORE, Environmental_SCORE, Social_SCORE, Governance_SCORE) %>%
  arrange(desc(Overall_ESG_SCORE)) %>%
  # mutate(unique_industries = unique(industries)) %>%
  slice_head(n=10)

esg_ratings_lowest <- data %>%
  select(Subsector, Overall_ESG_SCORE, Environmental_SCORE, Social_SCORE, Governance_SCORE) %>%
  arrange(Overall_ESG_SCORE) %>%
  # mutate(unique_industries = unique(industries)) %>%
  slice_head(n=10)

# Plot 1
ggplot(esg_ratings_highest, aes(x= Subsector, y= Environmental_SCORE)) + 
  geom_bar(position= "stack", stat="identity") + 
  ggtitle("Highest Environmental ESG Scores compared to Industry Setcors")


# Plot 2  
ggplot(esg_ratings_lowest, aes(x= Subsector, y= Environmental_SCORE)) + 
  geom_bar(position= "stack", stat="identity") +
  ggtitle("Lowest Environmental ESG Scores compared to Industry Setcors")
