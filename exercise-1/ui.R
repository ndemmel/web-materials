# ui.R
library(shiny)
library(plotly)
library(shinythemes)
shinyUI(navbarPage(theme = shinytheme("cerulean"),
                   "Electoral College",
                   # Create a tab panel for your map
                   tabPanel(
                     "Map",
                     titlePanel("Votas del Colegio Electoral"),
                     # Create sidebar layout
                     sidebarLayout(
                       
                       # Side panel for controls
                       sidebarPanel(
                         tags$h2("Esa es una mapa interactiva"),
                         # Input to select variable to map
                         selectInput(
                           "mapvar",
                           label = "Variable to Map",
                           choices = list(
                             "Population" = "population",
                             "Number of Electoral Votes" = "votes",
                             "Votes per Person" = "ratio"
                           )
                         ), 
                         tags$br(),
                         HTML("<strong>Soy... fatigada</strong>"),
                         tags$div(class = "sidebar"),
                         tags$blockquote("Soy un blockquote flotante!")
                       ),
                       
                       # Main panel: display plotly map
                       mainPanel(
                         plotlyOutput("map"),
                         tags$link(rel = "stylesheet", type = "text/css", href = "style.css"),
                         tags$div(class = "summary", checked = NA,
                                  tags$p("Esa mapa muestra el colegio electoral por estados. El mas oscuro
                                         el color, el mas alta el numero de votas."))
                                  )
                       )
                     )
                   
                   # Create a tabPanel to show your scatter plot
                   ))