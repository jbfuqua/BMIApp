library(shiny)

BMI<-function(weight,height) (weight/(height^2))*703
Eval<-function(x) {
  if( x <18.5) return('You are under weight')
  
  if(x >= 18.5 & x < 25) return('Your weight is normal')

  if(x >=25) return('You are over weight')

}


shinyServer(
  function(input, output) {
      answer<-reactive({as.numeric(BMI(input$weight, input$height))})
    
      output$calculation<-renderText(answer())
      output$evaluation<-renderText({Eval(answer())})
  }
)