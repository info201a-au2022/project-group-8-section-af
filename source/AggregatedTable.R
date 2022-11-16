library("tidyverse")
library("dplyr")

sustainability <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/sustainability_scores.csv")

# removes blank values (or na variables) within the data set
sustainability <- with(sustainability,
                       sustainability[!(Sector == "" | is.na(Sector)), ])

# Shows sector/countries that are considered to be excellent environmentally
agg_table <- sustainability %>% 
  select(Country, Sector, Overall_ESG_RATING, Overall_ESG_SCORE, Social_SCORE) %>% 
  group_by(Country) %>% 
  slice_head(n=38) %>% 
  # https://www.infogrid.io/blog/what-is-good-esg-score-your-helpful-guide helped us reference 
  # the metric that out of  0-10 range a score below 5 is considered  "bad" rating while a score 
  # above 7 out of 10 is considered excellent and can be classified as a 'high esg score' 
  filter(Overall_ESG_SCORE >= 7) %>% 
  filter(Social_SCORE >= 7) %>% 
  filter(Overall_ESG_RATING == "AA")



# The purpose of this table is to show which sectors in which countries have an 
# acceptable/higher ESG rate on a global scale. This is important to note as these
# areas have spearheaded the way sustainability has dynamically shifted the impact
# between big wig industries and being graceful towards our Earth. This reveals 
# excellent scores on a basis that has been federally recognized and they have been
# classified as acceptable on a government standard.
  


