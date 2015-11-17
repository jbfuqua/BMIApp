library(shiny)
shinyUI(
  pageWithSidebar(
  headerPanel("Body Mass Index Calculator"),
  sidebarPanel(
    numericInput('weight', 'Weight in lbs',165),
    numericInput('height', 'height in inches',70),
    submitButton('Enter')
  ),
  mainPanel(
    h3('Results'),
    h4('Your BMI'),
    verbatimTextOutput("calculation"),
    h4('That suggests that:'),
    verbatimTextOutput("evaluation")
  )
))