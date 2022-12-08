library(shiny)
library(ggplot2)
library(dplyr)

page_one <- tabPanel(
  "Introduction",
  mainPanel(
    ui <- fluidPage(
      h1("Introduction"),
      h5("Our project largely revolves around analyzing the ESG criteria and how closely large companies on a global scale follow set standards. The criteria set in place is typically used for investors to have a better grasp when making decisions regarding potential investment, as the ESG is a large indicator on how socially conscious a company chooses to be. We take a look at how companies either lower or increase their carbon footprint, and how meticulously these institutions take action to be either a steward or destroyer of nature. However, there are other factors at play. We also focus on the relationships between company and consumer, and how thoughtful said company is about operating within their own communities. This plays hand in hand with looking at the company's leadership, and how these internal controls impact those surrounding them. Overall, a true test of how one interacts with the world with mindfulness."),
        
      h5("Our research topic falls within the domain of environmental, social, and corporate concerns. These concerns can be embodied into a sustainability rating system known as ESG in the business world. We can use ESG ratings as well as their individual breakdowns to understand how well a company interacts with the environment as a measure of its own sustainability. According to researchers from Korea University, "with the rapid pace of globalization, every single individualis chasing the technology while ignoring environmental changes accelerated as a consequence" (2021). For our project, we will want to pay special attention to the "E" of ESG, which pertains to environmental risks. According to S&P Global, "the environmental portion of ESG considers how that company performs as a steward of natural or physical environment" (2019). The risks/factors that these corporations are attempting to manage include greenhouse gas emissions, water use, waste and pollution, and land use and biodiversity (2019). Companies have begun to realize that their own economic success could be severely damaged if they do not do their part to protect the environment. They also are being held to higher and higher standards by governments and are incorporating social responsibility initiatives to appeal to consumers. Ultimately, ESG is a “quantifiable measure of sustainability” (techtarget.com, 2022) that can serve as a way to hold corporations accountable for the impacts they have on our natural world, as well as protect people who could suffer from consumerism and capitalism left unchecked."),
      
      img(src = "sustain.png", height = 300, width = 300),
      h3("sustain"),
      tags$h3("sustain"),
      "picture",
       tags$a(href="https://saaccionasostenibilidad.blob.core.windows.net/media/816156/desarrollo-sostenible.jpg")
        )
  )
),

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
