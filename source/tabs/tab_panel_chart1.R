# tab_panel_chart1

library(shiny)
library(dplyr)
library(plotly)
library(ggplot2)

tab_panel_chart1 <- tabPanel(
  "Chart 1",
    fluidPage(
      h1("Ways Students Practiced Self-Care"),
      sidebarLayout(
        sidebarPanel(
          checkboxGroupInput(
            "checkGroup",
            label = h3("Methods of Self-Care: "),
            choices = c("Listening to music",
                        "Online gaming",
                        "Watching web series",
                        "Reading books",
                        "Scrolling through social media",
                        "Sleeping",
                        "Online surfing",
                        "Meditation",
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
          p("This barchart illustrates ways in which college students practiced self care. This 
            survey was given to all college students in New Delhi, India and was conducted in 2020.
            Hovering over a bar will let the users know more specifically the number of students
            that practiced that form of self-care in their daily lives. This bar chart lets us know 
            the most popular ways in which students tended to their mental health through self-care. We believe that 
            there are many ways to take care of one's mental health that they can do either
            at home or by themselves. This barchart reveals the variety of methods that students 
            do to take care of their mental health. By knowing the most popular ways of self-care, we can recommend these ways 
            of self-care to other students to ensure that they have ways to take care of themselves.")
        )
      )
    )
)

