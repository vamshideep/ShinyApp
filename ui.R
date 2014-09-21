library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Predict your car MPG"),
  sidebarPanel(
    h2('Enter your car data here'),
    selectInput('id1','Number of cylinders in your car',selected = "cyl",choices=list("4","6","8")),
    selectInput("id2", "is your car Automatic(0) or Manual(1)?",selected="am",choices=list("0","1")),
    p(em("Documentation:",a("PredictMPG",href="index.html"))),
    submitButton('Submit')
    #numericInput('id3','Horse power of your car',0,min=2,max=10,step=2)
  ),
  mainPanel(
    h3('Results of Prediction'),
    h4('Your car will have a MPG of'),
    verbatimTextOutput("mpg")
    
  )
))
