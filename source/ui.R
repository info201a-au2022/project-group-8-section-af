library(shiny)
library(ggplot2)
library(dplyr)

page_one <- tabPanel(
  "Introduction",
  mainPanel(
    ui <- fluidPage(
      h1("Introduction"),
      h5("..."),
        
      h5("..."),
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
),

page_three <- tabPanel(
  "Renewable Energy Shares"
  
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
),

page_four <- tabPanel(
  "Emissions Data based on Country",
    sidebarLayout(
      sidebarPanel(
         uiOutput("selectCountry")
     ),

     # Show a plot of the generated distribution
     mainPanel(
         ui <- fluidPage(
           plotOutput("countryPlot")
         )
     )
),

page_five <- tabPanel(
  "Final Thoughts",
  mainPanel(
    ui <- fluidPage(
      h1("Final Thoughts"),
      h5(".Findings.."),
        
        h5("..."),
        
        h5("..."),
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
