
## Shiny application to estimate diamond price based on its quality

library(shiny)

shinyUI(fluidPage(
  
  # Title
  titlePanel("Diamond price estimator"),
  
  # Sidebar with options selectors
  sidebarLayout(
    sidebarPanel(
      helpText("This application estimates the price of diamond"),
      h3(helpText("Select dimaond properties:")),
      numericInput("car", label = h4("Carats"), step = 0.025, value = 2.5),
      selectInput("cut", label = h4("Cut"),
                  choices = list("Unknown" = "*", "Fair" = "Fair", "Good" = "^Good",
                                 "Very Good" = "Very Good", "Premium" = "Premium",
                                 "Ideal" = "Ideal")),
      selectInput("col", label = h4("Color"),
                  choices = list("Unknown" = "*", "D" = "D", "E" = "E",
                                 "F" = "F", "G" ="G",
                                 "H" = "H", "I" = "I",
                                 "J" = "J")),
      selectInput("clar", label = h4("Clarity"),
                  choices = list("Unknown" = "*", "I1" = "I1", "SI2" = "SI2",
                                 "SI1" = "SI1", "VS2" = "VS2", "VS1" = "VS1",
                                 "VVS2" = "VVS2", "VVS1" = "VVS1", "IF" = "IF" ))
    ),
    
    
    mainPanel(
      h4("Predicted value of this diamond is: "),
      h3(textOutput("result"))
    )
  )
))
