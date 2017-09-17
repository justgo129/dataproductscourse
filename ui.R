library(shiny)
data(sunspots)


# Define UI for application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Sunspots by Year and Month"),
  
  # Sidebars allowing users to select months and years to plot
  sidebarLayout(
    sidebarPanel(
      sliderInput("slideryr", "Which year would you like to see?", 1749, 1983, value=1800),
      sliderInput("slidermo", "Which calendar month would you like to see?  This is independent of 1st slider.", 
                  1, 12, value=6)
    ),
    
    mainPanel(
      h2("Using the sidebars, choose a year and/or month to plot.  Plots will appear.  Note that the plotting
         occurs in real time; the plots update upon selection in the sliders."),
      h3("Plot of sunspots for the chosen year"),
      plotOutput("plot1"),
      
      h3("Plot of sunspots for the chosen month.  This is independent of above plot."),
      plotOutput("plot2")
      
    )
  )
)
)
