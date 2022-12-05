# tab_panel_chart1

library(shiny)
library(dplyr)
library(plotly)
library(ggplot2)

tab_panel_chart1 <- tabPanel(
    "Chart 1",
    p("This is chart 1."),
    fluidPage(
      sidebarLayout(
        sidebarPanel(
          checkboxGroupInput(
            "checkGroup",
            label = h3("Methods of Self Care: "),
            choices = c("Listening to music",
                        "Online gaming",
                        "Watching web series",
                        "Reading Books",
                        "Scrolling through social media",
                        "Sleeping",
                        "Online surfing",
                        "Mediation",
                        "Cooking",
                        "Talking to your relatives",
                        "Dancing"),
            selected = c("Listening to music",
                         "Online gaming",
                         "Watching web series")
          )
        ),
        mainPanel(
          plotlyOutput("chart1"),
          p("test")
        )
      )
    )
)

