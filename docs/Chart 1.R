# Chart 1 - Visualization of the sustainability scores for over 15K corporates.

# loading ESG Ratings and Companies by Industry Data 
library(tidyverse)
library(ggplot2)

data <- read_csv('https://media.githubusercontent.com/media/info201a-au2022/project-group-8-section-af/main/data/sustainability_scores.csv')
View(data)

