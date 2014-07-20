library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Calculate Body Mass Index (BMI)"),
        sidebarPanel(
                h3('Enter your data and click Calculate BMI'),
                numericInput('height','Enter your height in cm', 182, min=0,max=300,step=1),
                numericInput('weight', 'Enter your weight in kg', 80, min=0,max=300,step=1),
                actionButton('calculate', 'Calculate BMI')
        ),
        mainPanel(
                h3('Calculated Body Mass Index (BMI)'),
                p('Body mass index (BMI) is one method used to estimate your body condition. It is calculated by dividing your weight in kilograms by your height in metres to the power of 2. For more information refer to the World Health Organisation BMI Classification or seek medical advice.'),
                h4('Your BMI:'),verbatimTextOutput("bmi"),
                h4('Your BMI result indicates that your weight falls within the range that is:'),verbatimTextOutput('bmiclass')
        )
))