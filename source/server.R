library(shiny)
library(ggplot2)
library(dplyr)

data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/sustainability_scores.csv")
bar <-  read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/unsdg.csv")
carbon_emissions <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/emissions.csv", 
                             na.strings=c(""))
carbon_emissions = carbon_emissions[-1]
carbon_emissions <- with(carbon_emissions, 
                         carbon_emissions[!(Country == "" | is.na(Country)), ])
top_emissions <- carbon_emissions %>% 
  select(Country, CO2.emissions..latest.year,
         CO2.emissions..per.capita...latest.year) %>% 
  arrange(desc(as.numeric(CO2.emissions..latest.year)))

top_emissions$CO2.emissions..latest.year <- as.numeric(as.character(top_emissions$CO2.emissions..latest.year))
top_emissions$CO2.emissions..per.capita...latest.year <- as.numeric(as.character(top_emissions$CO2.emissions..per.capita...latest.year))

typeof(top_emissions$CO2.emissions..latest.year)
typeof(top_emissions$CO2.emissions..per.capita...latest.year)

build_scatter <- function(top_emissions,  search = "", xvar = "CO2.emissions..latest.year",
                          yvar = "CO2.emissions..per.capita...latest.year") {
  xmax <- max(top_emissions[,xvar]) * 1.5
  ymax <- max(top_emissions[,yvar]) * 1.5
  
  top_emissions <- top_emissions %>% 
    filter(grepl(search, Country))
  
  scatter <- plot_ly(x = top_emissions[, xvar],
                     y = top_emissions[, yvar], 
                     mode="markers", 
                     marker = list(
                       opacity = .4, 
                       size = 10
                     )) %>% 
    layout(xaxis = list(range = c(0, xmax), title = xvar), 
           yaxis = list(range = c(0, ymax), title = yvar)
    )
  return(scatter)
}

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
      theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
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
    paste("The purpose of this chart is to determine the correlation between renewability of total energy
           consumption over large time span.")
  })
    })

  
# Page 4
  output$searchCountry <- renderUI({
    textInput("search", label = "Find a Country", value = "")
  })

  output$scatter <- renderPlotly({
    return(build_scatter(top_emissions, input$search))
  })

  output$text4 <- renderText({
    paste("This plot shows how a country's total CO2 emissions (in the latest year recorded) compare to their CO2 emissions per capita (in latest year).")
   })
}
