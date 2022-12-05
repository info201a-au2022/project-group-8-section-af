library(shiny)
library(ggplot2)
library(dplyr)

data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/sustainability_scores.csv")
bar <-  read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/unsdg.csv")

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
   # Creating an output widget for the user to choose
  output$select_region <- renderUI ({
    selectInput("Country", "Choose a Country:", choices = unique(bar$country),
                selected = bar)
  })

  
 # Plotting the chart based on renewable energy share throughout 2 decades
  barPlot <- reactive({

   plotting_data <- bar %>% 
  filter(country %in% input$Country)

    ggplot(plotting_data, aes(x = dt_date, y = region)) +
      geom_col(aes(fill = renewable_energy_share_on_the_total_energy_consumption)) +
      labs(x = "Years",
           y = "Country Region",
           fill = "Renewable Energy Share
           of Total Consumption (from 0 - 100%)",
           title = "Countries Renewable Energy Share (2002 - 2021)")
  })
  
  # Rendering of the plot
  output$co2_plot <- renderPlot ({
    barPlot()
  })
  
  # Description of plot
  output$text <- renderText({
    paste("This plot shows the renewable energy share in total final consumption
          is the percentage of the final consumption of energy. In short, it shows
          the user out of the 100% total energy used, how much of the energy is 
          from a renewable source? How has it changed over the last few decades?
          After clicking on every country, a very obvious pattern to be found is
          that more developed countries use non - renweable energy sources wheras
          smaller countries tend to use more renewable sources. It is also interesting
          to notice that countries within the Sourth/Eastern Asia region have become more focused on 
          renewablity within the last couple decades, in comparison to the North Africa
          and Western Asia region where they seemed to have declined in that aspect.")
  })
    })

  
# Page 4
  

}
