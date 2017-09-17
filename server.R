library(shiny)

# "Wrangle" sunspots dataset that came with R
sunspotsbymonth<-matrix(sunspots, ncol=13)

shinyServer(function(input, output) {

  calcRow<-reactive({
    rowval <- input$slideryr
  })
  
  calcRow2<-reactive({
    colval <- input$slidermo
  })
  
  
  output$plot1<-renderPlot({
    rowval <- input$slideryr 
    newrowval<-(rowval-1748+1) # Calculates row number, if row number 1 corresponds to yr 1749  
    plot(sunspotsbymonth[newrowval,], xlim=c(1,12), xlab="Calendar Month", 
         ylab="Number of sunspots per month", pch=19, cex=2, col="red")
  })
  
  output$plot2<-renderPlot({
    colval <- input$slidermo
    plot(sunspotsbymonth[,colval], xlab="Calendar Year", xaxt="n",
        ylab="Number of sunspots per year", pch=17, cex=1.5, col="blue")
    axis(1, at=1:235, labels=c(1749:1983))
    })
  
} )
