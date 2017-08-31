library(shiny)

shinyUI(fluidPage(
        
        titlePanel("How much is your diamond?"),
        
        sidebarLayout(
                sidebarPanel(helpText("Choose characteristics of your dimond"),
                        selectInput("cut", "Cut", 
                                    choices = list("Select the cut" = "",
                                                   "Fair" = "Fair", 
                                                   "Good" = "^Good",
                                                   "Very Good" = "Very Good", 
                                                   "Premium" = "Premium",
                                                   "Ideal" = "Ideal")),
                        selectInput("color", "Color", 
                                    choices = list("Select the color" = "", 
                                                   "J (worst)" = "J", "I" = "I",
                                                   "H" = "H", "G" ="G", 
                                                   "F" = "F", "E" = "E", 
                                                   "D (best)" = "D")),
                        selectInput("clarity", "Clarity", 
                                    choices = list("Select the clarity" = "", 
                                                   "I1 (worst)" = "I1", "SI1" = "SI1",
                                                   "SI2" = "SI2", "VS1" = "VS1", 
                                                   "VS2" = "VS2", "VVS1" = "VVS1", 
                                                   "VVS2" = "VVS2", "IF (best)" = "IF" )),
                        numericInput("carat", "Carats",
                                     step = 0.01, 
                                     value = 1)
                        ),
                
                
                mainPanel(
                        h4(textOutput("result")),
                        submitButton("Submit")
                )
                )
))