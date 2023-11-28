#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(shinydashboardPlus)


# Define UI for application that draws a histogram
ui <- dashboardPage(
  
  # Header du dashboard
  dashboardHeader(
    title = "CESTIA/DATAVIZ2023"
  ),
  
  # Sidebar du dashboard
  dashboardSidebar(
    sidebarMenu(
      menuItem("Acceuil", tabName = "Acceuil"),
      menuItem("Données_mpd", tabName = "Données_mpg"),
      menuItem("Données_faithful", tabName = "Données_faithful"),
      menuItem("Leaflet", tabName = "Leaflet"),
      menuItem("Rep_Questions_fp", tabName = "Rep_Questions_fp")
    )
  ),
  
  # Body du dashboard
  dashboardBody(
    
  )
    
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    
}

# Run the application 
shinyApp(ui = ui, server = server)
