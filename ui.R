#This is a simple shiny application that acts according to the user entered numbers and selection.
shinyUI(
  pageWithSidebar(
    headerPanel("Shiny Application and Reproducible Pitch / Project"),
    sidebarPanel(
      h4("Instructions"),
      p("This app calculates the user selected function with entered input values."),
      h4("Values"),
h5("Please nter values in each box below."),
      numericInput("in1", "Input 1", 0, min = 1, max = 10, step = 1),
      numericInput("in2", "Input 2", 0, min = 1, max = 10, step = 1),
      numericInput("in3", "Input 3", 0, min = 1, max = 10, step = 1),
      
      selectInput("operation", label = h4("Select Operation"), 
                  choices = list("SUM" = 1, "MEAN" = 2, "product" = 3, selected = 1))
                  ),
    mainPanel(
      h3("Operation Results"),
      verbatimTextOutput("results")
    )
  )
)
