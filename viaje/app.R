#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(DT)

# Define UI for application that draws a histogram
ui <- fluidPage(
    
    tags$head(
        tags$link(rel = "stylesheet", type = "text/css", href = "fonts.css")
    ),
    
    # Application title
    titlePanel(h1("¡VIAJE A MEXICO!")),
    
    tabsetPanel(                
        type = "pills",
        tabPanel(
            "¡¡FELIZ CUMPLEAÑOS!!"
        ),
        tabPanel(
            "DESTINO 1",
            img(src="https://raw.githubusercontent.com/jesupb/wedding-shiny-app/main/wedding_info/www/cronograma.png", 
                height="100%", width="100%", align="left")
        ),
        tabPanel(
            "DESTINO 2",
            img(src="https://raw.githubusercontent.com/jesupb/wedding-shiny-app/main/wedding_info/www/menu.png", 
                height="100%", width="100%", align="left")
        ),
        tabPanel(
            "DESTINO 3",
            img(src="https://raw.githubusercontent.com/jesupb/wedding-shiny-app/main/wedding_info/www/menu_coctel.png", 
                height="100%", width="100%", align="left")
        ),
        tabPanel(
            "Bebidas",
            img(src="https://raw.githubusercontent.com/jesupb/wedding-shiny-app/main/wedding_info/www/menu_bar.png", 
                height="100%", width="100%", align="left")
        )
    )
    
    
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    filedata <- read.csv(url("https://raw.githubusercontent.com/jesupb/wedding-shiny-app/main/wedding_info/sitting_distro.csv"))
    #filedata <- read.csv("sitting_distro.csv")
    
    output$mytable = DT::renderDT(
        filedata, options = list(dom = 'f'),rownames= FALSE
    )
}

# Run the application 
shinyApp(ui = ui, server = server)
