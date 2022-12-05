library(shiny)
library(ggplot2)
library(dplyr)

data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-af/main/data/sustainability_scores.csv")

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
  
  
),

page_four <- tabPanel(

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
