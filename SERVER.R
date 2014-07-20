library(shiny)

calcBMI <- function(height, weight) weight / (height/100)^2
bmiclass <- function(bmi) {
        if(bmi < 19) "Underweight"
        else if(bmi < 25) "Normal"
        else if(bmi < 30) "Overweight"
        else if(bmi < 35) "Obese Level 1"
        else if(bmi < 40) "Obese Level 2"
        else "Obese Level 3"
}
shinyServer(
        function(input, output) {
                output$bmi <- renderText({calcBMI(input$height,input$weight)})
                output$bmiclass <- renderText({bmiclass(calcBMI(input$height,input$weight))})
        }
)