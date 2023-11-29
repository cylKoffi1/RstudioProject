library(shiny)
library(shinydashboard)
library(shinydashboardPlus)

# Chemin vers le dossier d'images
chemin_images <- file.path(".", "images/")

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
    tabItems(
      tabItem(tabName = "Acceuil",
              tags$div(
                id = "myCarousel",
                class = "carousel slide",
                tags$ol(
                  class = "carousel-indicators",
                  tags$li(data_target = "#myCarousel", data_slide_to = "0", class = "active"),
                  tags$li(data_target = "#myCarousel", data_slide_to = "1"),
                  tags$li(data_target = "#myCarousel", data_slide_to = "2")
                ),
                tags$div(
                  class = "carousel-inner",
                  tags$div(class = "item active", tags$img(src="images/image1.jpg", width = '100%')),
                  tags$div(class = "item", tags$img(src = file.path(chemin_images, "image2.jpg"), width = "100%")),
                  tags$div(class = "item", tags$img(src = file.path(chemin_images, "image1.jpg"), width = "100%"))
                ),
                tags$a(class = "left carousel-control", href = "#myCarousel", role = "button", data_slide = "prev",
                       tags$span(class = "glyphicon glyphicon-chevron-left", "aria-hidden" = "true"),
                       tags$span(class = "sr-only", "Previous")),
                tags$a(class = "right carousel-control", href = "#myCarousel", role = "button", data_slide = "next",
                       tags$span(class = "glyphicon glyphicon-chevron-right", "aria-hidden" = "true"),
                       tags$span(class = "sr-only", "Next"))
              ),
              # Ajoutez le script pour activer le défilement automatique
              tags$script("
                $(document).ready(function() {
                  $('#myCarousel').carousel({
                    interval: 1000  # Réglage de l'intervalle en millisecondes (par exemple, 2000 pour 2 secondes)
                  });
                });
              ")
      ),
      tabItem(tabName = "Données_mpg", 
              h2("Contenu de l'onglet Données_mpg")
      ),
      tabItem(tabName = "Données_faithful", 
              h2("Contenu de l'onglet Données_faithful")
      ),
      tabItem(tabName = "Leaflet", 
              h2("Contenu de l'onglet Leaflet")
      ),
      tabItem(tabName = "Rep_Questions_fp", 
              h2("Contenu de l'onglet Rep_Questions_fp")
      )
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  # Aucune logique de serveur nécessaire pour le carrousel d'images
}

# Run the application 
shinyApp(ui = ui, server = server)
