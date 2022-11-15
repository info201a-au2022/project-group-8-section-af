# Chart 2 - Visualization of the Greenhousehouse Gases per Region

# import dataset
library("readxl")

# if absolute path does not work, this also will
# unsdg_2002_2021 <- read_excel("../data/unsdg_2002_2021.xlsx")

unsdg_2002_2021 <- read_excel("C:/Users/S/Downloads/Documents/info201/assignments/project-group-8-section-af/data/unsdg_2002_2021.xlsx")

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
