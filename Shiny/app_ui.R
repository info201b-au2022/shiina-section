# UI
library(shiny)

## PAGE 1
page_one <- tabPanel(
  "Select First Page",
  titlePanel("Here's the first page"),
  h3("Some heading"),
  p("Output text from server below:"),
  textOutput(outputId = 'message') # this is all from the server
)

## PAGE 2 (split text example)
p2text <- fluidPage(
  h3("Some other heading"),
  p("This is a paragraph text")
)

page_two <- tabPanel(
  "Select Second Page", 
  titlePanel("Here's the second page"),
  p2text
)

## UI
ui <- navbarPage(
  "Shiny Demo",
  page_one,
  page_two
)

