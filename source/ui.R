library(shiny)
library(ggplot2)
library(dplyr)
library(shinydashboard)
library(markdown)
library(leaflet)
library(tidyverse)
library(shinythemes)
library(plotly)

page_one <- tabPanel(
  "Introduction",
  
  sidebarLayout(
    sidebarPanel(
      includeMarkdown("./about.md")
    ),
  
    mainPanel(
      imageOutput("image"),
      p("Picture Credits: https://www.activesustainability.com/sustainable-development/what-is-sustainability/?_adin=02021864894"),
      includeMarkdown("introduction.md"), 
    
      ui <- fluidPage(
        theme = shinytheme("cerulean")
      )
    )
  )
)

page_two <- tabPanel(
  "Countries vs. ESG Scores based on Industry Sectors Globally",
  
  sidebarLayout(
        sidebarPanel(
            uiOutput("selectScore")
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
          ui <- fluidPage(
             plotOutput("subsectorPlot"),
            textOutput("sampleText")
          )
        )
   )  
)

page_three <- tabPanel(
  "Renewable Energy Shares",
  
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
          uiOutput("select_region"),
          
        ),

        # Show a plot of the generated distribution
         mainPanel(
         ui <- fluidPage(
           plotOutput("co2_plot"),
           textOutput("text")
         )
         
         )
     )
)

page_four <- tabPanel(
  "Emissions Data based on Country",
  
  sidebarLayout(
    sidebarPanel(
      #uiOutput("selectCountry")
      textInput("search", label = "Find a country", value = "")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      ui <- fluidPage(
        #plotOutput("countryPlot"),
        plotlyOutput("scatter"),
        textOutput("text4")
      )
    )
  )
)

page_five <- tabPanel(
  "Final Thoughts",
  mainPanel(
    ui <- fluidPage(
      tabsetPanel(
        tabPanel("Summary Takeaways", includeMarkdown("summary.md")),
        tabPanel("Report", includeMarkdown("report.md"))
      )
    )
  )
)

ui <- navbarPage(
  "Sustainability Worldwide: An Analysis of ESG Scores",
  page_one,
  page_two,
  page_three,
  page_four,
  page_five
)


 
