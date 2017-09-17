library(shiny); library(dplyr)
data(sunspots)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Sunspots by Month"),
  
  # Sidebars allowing users to select months and years to plot
  sidebarLayout(
    sidebarPanel(
      sliderInput("slideryr", "Which year would you like to see?", 1749, 1983, value=1800),
      sliderInput("slidermo", "Which calendar month would you like to see?  This is independent of 1st slider.", 
                  1, 12, value=6)
    ),
    
    mainPanel(
      h3("Plot of sunspots for that year"),
      plotOutput("plot1"),
      
      h3("Plot of sunspots for that month: this is independent of above plot."),
      plotOutput("plot2")
    )
  )
)
)
