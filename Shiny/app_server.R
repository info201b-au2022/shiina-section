# server
library(shiny)

server <- function(input, output) {
  num <- 17
  
  # this can be anything but make sure whatever 'message' you use 
  # is the same as the output ID you used in your UI
  output$message <- renderText({
    str <- paste0("My favorite number is ", num, ".")
    return(str)
  })
}