#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("REGALO DE CUMPLEAÑOS - CON CARIÑO DE MARI Y CHUS"),

    # Sidebar with a slider input for number of bins 
    tabsetPanel(                
        type = "pills",
        tabPanel(
            "¡¡FELIZ CUMPLEAÑOS!!",
            img(src="https://raw.githubusercontent.com/jesupb/viaje/main/viaje/www/Slide1.JPG", 
                height="100%", width="100%", align="left")
        ),
        tabPanel(
            "DESTINO 1",
            img(src="https://raw.githubusercontent.com/jesupb/viaje/main/viaje/www/Slide2.JPG", 
                height="100%", width="100%", align="left")
        ),
        tabPanel(
            "DESTINO 2",
            img(src="https://raw.githubusercontent.com/jesupb/viaje/main/viaje/www/Slide4.JPG", 
                height="100%", width="100%", align="left")
        ),
        tabPanel(
            "DESTINO 3",
            img(src="https://raw.githubusercontent.com/jesupb/viaje/main/viaje/www/Slide5.JPG", 
                height="100%", width="100%", align="left")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
