# tab_panel_chart2

library(shiny)
source("app_server.R")

tab_panel_chart2 <- tabPanel(
  "Chart 2",
   h1("The relationship between CGPA and mental health"),
   course_input_chart2,
   plotlyOutput("chart2"),
   p("This Pie Chart shows the relationship between students' CGPA and mental 
  illness under different majors. By selecting different kinds of majors, users
  can clearly see the percentage of mental illness among students with different
  grades in a specific major. In college, the requirements for different majors
  are different. For example, while Education courses are easy to get a high CGPA,
  most of these courses require a lot of writing and extensive volunteer experience.
  People with high CGPA may still suffer from mental illness due to the large 
  amount of time squeezed from their lives. Therefore, we wanted to explore whether
  the association between CGPA and mental illness is affected by the type of course
  by comparing different courses."
    )
)
