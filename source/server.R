library(shiny)
library(ggplot2)
library(dplyr)

data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/sustainability_scores.csv")

server <- function(input, output) {
  
#Page 2
  output$selectScore <- renderUI({
      selectInput("sectors", "Choose an Industry Sector:", choices = unique(data$Sector))
    })
    
    stackedBarChart <- reactive({
      plotData <- data %>% 
        filter(Sector %in% input$sectors)
      
      ggplot(plotData, aes(x = Country, y = Overall_ESG_SCORE)) +
        geom_col(aes(fill = Subsector)) +
        labs(
          x = "Country Name",
          y = "Overall ESG Scores", 
          title = "Countries vs. ESG Scores based on Industry Sectors Globally"
        )

    })
    
    output$subsectorPlot <- renderPlot({
      stackedBarChart()
    })
    
    output$sampleText <- renderText({
      paste("Hello! Welcome to my sample Shiny web app. This visualization shows a stacked bar chart of ESG scores across varying subsector industries.")
    })
})

  
# Page 3
  

  
# Page 4
  

}
