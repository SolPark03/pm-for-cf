# library(shiny)

UI <- fluidPage(
  
  titlePanel(h2(" Predictive model for compensation factor ")),
  
  sidebarLayout(
    sidebarPanel( 
      fileInput("filepath", "Modeling data",
                accept = c( "text/csv", "text/comma-separated-values,text/plain", ".csv") ),
      tags$hr(),
      textInput("device", "Device name", value=NA),
      tags$hr(),
      fluidRow(
        column(6, 
          numericInput("Package_X", "Pkg size X (mm)" , value=NA ),
          numericInput("Die.size.X", "Die size X (mm)" , value=NA ),
          numericInput("Pitch_X", "Pitch X (mm)" , value=NA ),
          numericInput("Row", "Row" , value=NA ) ) ,
        column(6, 
          numericInput("Package_Y", "Pkg size Y (mm)" , value=NA ),
          numericInput("Die.size.Y", "Die size Y (mm)" , value=NA ),
          numericInput("Pitch_Y", "Pitch Y (mm)" , value=NA ),
          numericInput("Column", "Column" , value=NA ) )
      ),
      numericInput("Die.thickness", "Die thickness (um)" , value=NA ),
      numericInput("Mold.clearance", "Mold clearance (um)" , value=NA ),
      tags$hr(),
      fileInput("filepath", "Modeling data",
                accept = c( "text/csv", "text/comma-separated-values,text/plain", ".csv") ),
      submitButton("Run", width= validateCssUnit("100%"))
    ),
  mainPanel()
 )
)

server <- function(input, output) {
  
}


shinyApp(ui = UI, server = server)

