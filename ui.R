library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Predict your car MPG"),
  sidebarPanel(
    h2('Enter your car data here'),
    #numericInput('id4','Number of cylinder in your car',4, min = 4, max = 30, step = 1),
    selectInput('id1','Number of cylinders in your car',selected = "cyl",choices=list("4","6","8")),
    selectInput("id2", "is your car Automatic(0) or Manual(1)?",selected="am",choices=list("0","1")),
    p(em("Documentation:",a("PredictMPG",href="index.html"))),
    submitButton('Submit')
    #numericInput('id3','Horse power of your car',0,min=2,max=10,step=2)
  ),
  mainPanel(
    h1('Results of Prediction'),
    p('We are using this formula behind the scene to calculate your prediction'),
    p('newdata <- data.frame(cyl,am)'),
    p('fit1 <- lm(mpg ~ factor(cyl) + factor(am), data=mtcars)'),
    p(' '),
    p('predict(fit1,newdata)'),
    h4('Your car will have a MPG of'),
    verbatimTextOutput("mpg")
    
  )
))
