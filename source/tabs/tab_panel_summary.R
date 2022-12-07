# tab_panel_summary

library(shiny)

tab_panel_summary <-tabPanel(
    "Summary",
    h3("Key Points"),
    br(),
    p("Looking at and observing our data sets we have determined that mental health is a much bigger issue than commonly understood.
      The prevalence of this issue is all around the world and the resources available to students to address their mental health issues are pretty lousy and need
      drastic improvements to make a big impact towards improvement. Especially in underprivaledged areas this research has concluded that the awareness as well as resources are 
      near to none causing the spread of mental illness and the feelings of hopelessness. Our data sets and analysis have also concluded that there
      are a multitude of factors that lead to illness that are very hard to be narrowed down and self-care plays a very important role in mitigating the issues no matter the trigger."),
    img(src = 'IMG_5499 3.png'),
    p("As seen in the chart the sheer amount of cases in all of these districts represent the magnitude of this problem and how more needs to be done for it to be solved."),
)

