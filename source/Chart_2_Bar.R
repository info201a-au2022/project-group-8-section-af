# Chart 2 - Visualization of the Greenhousehouse Gases per Region

# import/read dataset
unsdg_2002_2021 <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/unsdg.csv")

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
  ggtitle("Greenhouse Gas Emissions per Region (Globally)") +
  coord_flip() 

# Purpose of the Chart
# The purpose of this chart is to determine the correlation between greenhouse gas emissions per regions. This is 
# especially important to take a look at as it is evident that more devloped areas have less emissions as a whole. 
# Each of the darker blue lines is indicative of the country of that region, the entirety of the bar being a cumulation
# of all of the data points. As seen in the chart, more modern regions such as Europe and North America have vastly 
# lesser amounts of emissions; sitting at roughly 45,000MTCOe, whereas Sub Saharan Africa is currently developing and 
# now produces over 62,000MTCOe per year.
