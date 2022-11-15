# Chart 2 - Visualization of the Greenhousehouse Gases per Region

# import dataset
library("readxl")

# read in data file
unsdg_2002_2021 <- read_excel("../data/unsdg_2002_2021.xlsx")

region <- unsdg_2002_2021$region
unique_location <- unique(region)
greenhouse <- unsdg_2002_2021$greenhousegas_emissione_mtco2equivalent

# Load ggplot2
library(ggplot2)

# Create data
data <- data.frame(
  Regions=c(unique_location) ,  
  Greenhouse_Gases=c(greenhouse)
)

# Barplot
bargraph <- ggplot(data, aes(Regions, Greenhouse_Gases)) + 
  geom_bar(color="blue", fill=rgb(0.1,0.4,0.5,0.7), stat = "identity", width = 0.5) +
  coord_flip() 

# Purpose of the Chart
# The purpose of this chart is to determine the correlation between greenhouse gas emissions per regions. This is 
# especially important to take a look at as it is evident that more devloped areas have less emissions as a whole. 
# As seen in the chart, more modern regions such as Europe and North America have vastly lesser amounts of emissions;
# sitting at roughly 45,000MTCOe, whereas Sub Saharan Africa is currently developing and now produces
# over 62,000MTCOe per year.
