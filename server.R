library(shiny)
data(mtcars)

predictMPG <- function(cyl,am){
  newdata <- data.frame(cyl,am)
  fit1 <- lm(mpg ~ factor(cyl) + factor(am), data=mtcars)
  predict(fit1,newdata)
}

shinyServer(
  function(input, output) {
    output$mpg <- renderPrint({
      predictMPG(as.numeric(input$id1),as.numeric(input$id2))})
  }
)