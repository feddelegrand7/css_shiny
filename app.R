

library(shiny)
library(colourpicker)

ui <- fluidPage(
    theme = "styles.css",

    navbarPage(
        title = "CSS Properties", collapsible = TRUE,
        tabPanel(
            title = "Basic",

            div(
                class = "property-set",
                h1("color"),
                sidebarLayout(
                    sidebarPanel(
                        helpText(
                            "The < color > property allows us to modify the text color.
                       Try to change the color widget below and see how the text on the right changes.
                       "
                        ),

                        colourInput(
                            inputId = "color",
                            label = "Pick a Color",
                            value = "black"
                        )

                    ),
                    mainPanel(
                        uiOutput(outputId = "color_output")
                    ),
                )
            )
        ),
        tabPanel(
            title = "Advanced",

            "UIContent"
        ),
        tabPanel(
            title = "Rare",








            "UIContent"
        ),
        tabPanel(
            title = "About",








            "UI COntent"
        )
    )
)

server <- function(input, output) {

output$color_output <- renderUI({
    p(style = glue::glue("color: {input$color}"),

    "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Error praesentium obcaecati ab consequatur expedita, impedit ducimus omnis sunt non nihil odio quam ea deleniti? Quasi quam consequatur quibusdam recusandae tempore!"

    )
})

}

# Run the application
shinyApp(ui = ui, server = server)
